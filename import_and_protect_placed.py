import pandas as pd
import pymysql

db_config = {
    'host': '127.0.0.1',
    'user': 'root',
    'password': '',
    'database': 'admin_placement_db',
    'port': 3308
}

excel_file = r'C:\Users\Kavin\Downloads\placement_backup_all (1).xlsx'

print("=" * 60)
print("ATOMIC IMPORT - PLACED STUDENTS + APPLICATIONS UPDATE")
print("=" * 60)
print()

xl = pd.ExcelFile(excel_file)
df_placed = pd.read_excel(xl, 'On_Campus_Placed_Students')
print(f"Found {len(df_placed)} records in Excel\n")

conn = pymysql.connect(**db_config)
cursor = conn.cursor()

# START TRANSACTION - Everything happens atomically
print("Starting transaction...")
conn.begin()

try:
    # Remove foreign keys
    print("Removing foreign key constraints...")
    try:
        cursor.execute("ALTER TABLE placed_students DROP FOREIGN KEY placed_students_ibfk_1")
    except:
        pass
    try:
        cursor.execute("ALTER TABLE placed_students DROP FOREIGN KEY placed_students_ibfk_2")
    except:
        pass
    try:
        cursor.execute("ALTER TABLE placed_students DROP FOREIGN KEY placed_students_ibfk_3")
    except:
        pass
    try:
        cursor.execute("ALTER TABLE placed_students DROP KEY unique_placed")
    except:
        pass
    print("[OK]\n")

    # Clear table
    print("Clearing placed_students...")
    cursor.execute("TRUNCATE TABLE placed_students")
    print("[OK]\n")

    # Import placed students
    print("Importing placed students...")
    imported = 0
    skipped = 0
    student_drive_pairs = []

    for _, row in df_placed.iterrows():
        placement_id = row['Placement_id']

        cursor.execute("SELECT student_id, program_type, program, course, reg_no, student_name, email, phone_no FROM students WHERE upid = %s", (placement_id,))
        student = cursor.fetchone()

        if not student:
            skipped += 1
            continue

        student_id, program_type, program, course, reg_no, student_name, email, phone_no = student

        company_name = row['company_name']
        drive_no = row['drive_no']
        cursor.execute("SELECT drive_id FROM drives WHERE company_name = %s AND drive_no = %s", (company_name, drive_no))
        drive = cursor.fetchone()
        drive_id = drive[0] if drive else None

        if not drive_id:
            skipped += 1
            continue

        # Store for applications update
        student_drive_pairs.append((student_id, drive_id))

        offer_type = None
        cursor.execute("SELECT offer_type FROM drive_roles WHERE drive_id = %s LIMIT 1", (drive_id,))
        ot = cursor.fetchone()
        offer_type = ot[0] if ot else None

        role = row['role'] if pd.notna(row['role']) else None
        ctc = row['ctc'] if pd.notna(row['ctc']) else None
        stipend = row['stipend'] if pd.notna(row['stipend']) else None
        offer_letter_accepted = row['offer_letter_accepted'] if pd.notna(row['offer_letter_accepted']) else 'unknown'
        offer_letter_received = row['offer_letter_received'] if pd.notna(row['offer_letter_received']) else 'unknown'
        joining_status = row['joining_status'] if pd.notna(row['joining_status']) else 'unknown'
        comment = row['comment'] if pd.notna(row['comment']) else None
        filled_on_off_form = row['filled_on_off_form'] if pd.notna(row['filled_on_off_form']) else 'not filled'

        cursor.execute("""
            INSERT INTO placed_students
            (student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
             company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
             joining_status, comment, filled_on_off_form, placement_batch, offer_type)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """, (student_id, drive_id, placement_id, program_type, program, course, reg_no, student_name, email, phone_no,
              company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
              joining_status, comment, filled_on_off_form, 'original', offer_type))

        imported += 1
        if imported % 50 == 0:
            print(f"  Imported {imported}...")

    print(f"[OK] Imported {imported} placed students\n")

    # NOW IMMEDIATELY UPDATE APPLICATIONS
    print("Updating applications to 'placed' status...")
    updated = 0
    for student_id, drive_id in student_drive_pairs:
        cursor.execute("""
            UPDATE applications
            SET status = 'placed'
            WHERE student_id = %s AND drive_id = %s AND status != 'placed'
        """, (student_id, drive_id))
        if cursor.rowcount > 0:
            updated += 1

    print(f"[OK] Updated {updated} applications\n")

    # COMMIT - Everything happens at once
    print("Committing transaction...")
    conn.commit()
    print("[OK]\n")

    # Verify
    cursor.execute("SELECT COUNT(*) FROM placed_students")
    ps_count = cursor.fetchone()[0]
    cursor.execute("SELECT COUNT(*) FROM applications WHERE status = 'placed'")
    app_count = cursor.fetchone()[0]

    print("=" * 60)
    print("SUCCESS!")
    print("=" * 60)
    print(f"Placed students: {ps_count}")
    print(f"Applications marked 'placed': {app_count}")
    print(f"Skipped: {skipped}")
    print("=" * 60)

except Exception as e:
    print(f"\n[ERROR] {e}")
    conn.rollback()
    import traceback
    traceback.print_exc()

finally:
    conn.close()
