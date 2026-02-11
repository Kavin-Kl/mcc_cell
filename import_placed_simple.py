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
print("SIMPLE PLACED STUDENTS IMPORT - NO FOREIGN KEYS")
print("=" * 60)
print()

xl = pd.ExcelFile(excel_file)
df_placed = pd.read_excel(xl, 'On_Campus_Placed_Students')
print(f"Found {len(df_placed)} records in Excel\n")

conn = pymysql.connect(**db_config)
cursor = conn.cursor()

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
conn.commit()
print("[OK] Constraints removed\n")

# Clear table
print("Clearing table...")
cursor.execute("TRUNCATE TABLE placed_students")
conn.commit()
print("[OK] Table cleared\n")

# Import data WITHOUT foreign key relationships
print("Importing data...")
imported = 0
skipped = 0

for _, row in df_placed.iterrows():
    placement_id = row['Placement_id']

    # Get student details
    cursor.execute("SELECT student_id, program_type, program, course, reg_no, student_name, email, phone_no FROM students WHERE upid = %s", (placement_id,))
    student = cursor.fetchone()

    if not student:
        skipped += 1
        continue

    student_id, program_type, program, course, reg_no, student_name, email, phone_no = student

    # Get drive_id - make it optional
    company_name = row['company_name']
    drive_no = row['drive_no']
    cursor.execute("SELECT drive_id FROM drives WHERE company_name = %s AND drive_no = %s", (company_name, drive_no))
    drive = cursor.fetchone()
    drive_id = drive[0] if drive else None

    # Get offer_type
    offer_type = None
    if drive_id:
        cursor.execute("SELECT offer_type FROM drive_roles WHERE drive_id = %s LIMIT 1", (drive_id,))
        ot = cursor.fetchone()
        offer_type = ot[0] if ot else None

    # Prepare data
    role = row['role'] if pd.notna(row['role']) else None
    ctc = row['ctc'] if pd.notna(row['ctc']) else None
    stipend = row['stipend'] if pd.notna(row['stipend']) else None
    offer_letter_accepted = row['offer_letter_accepted'] if pd.notna(row['offer_letter_accepted']) else 'unknown'
    offer_letter_received = row['offer_letter_received'] if pd.notna(row['offer_letter_received']) else 'unknown'
    joining_status = row['joining_status'] if pd.notna(row['joining_status']) else 'unknown'
    comment = row['comment'] if pd.notna(row['comment']) else None
    filled_on_off_form = row['filled_on_off_form'] if pd.notna(row['filled_on_off_form']) else 'not filled'

    # Insert - allow NULL drive_id
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
        conn.commit()

conn.commit()
conn.close()

print(f"\n[OK] Imported {imported} placed students (skipped {skipped})")
print("=" * 60)
