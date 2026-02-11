import pandas as pd
import pymysql

# Database configuration
db_config = {
    'host': '127.0.0.1',
    'user': 'root',
    'password': '',
    'database': 'admin_placement_db',
    'port': 3308
}

excel_file = r'C:\Users\Kavin\Downloads\placement_backup_all (1).xlsx'

def connect_db():
    return pymysql.connect(**db_config)

def import_placed_students_complete(conn, df_placed):
    print("Importing placed students with complete data...")
    cursor = conn.cursor()

    try:
        imported = 0
        skipped = 0

        for _, row in df_placed.iterrows():
            placement_id = row['Placement_id']

            # Get student details from students table
            cursor.execute("""
                SELECT student_id, upid, program_type, program, course, reg_no,
                       student_name, email, phone_no
                FROM students
                WHERE upid = %s
            """, (placement_id,))
            student_result = cursor.fetchone()

            if not student_result:
                print(f"  Skipping {placement_id} - student not found")
                skipped += 1
                continue

            student_id, upid, program_type, program, course, reg_no, student_name, email, phone_no = student_result

            company_name = row['company_name']
            drive_no = row['drive_no']

            # Get drive details
            cursor.execute("""
                SELECT d.drive_id, dr.offer_type
                FROM drives d
                LEFT JOIN drive_roles dr ON d.drive_id = dr.drive_id
                WHERE d.company_name = %s AND d.drive_no = %s
                LIMIT 1
            """, (company_name, drive_no))
            drive_result = cursor.fetchone()

            if not drive_result:
                print(f"  Skipping {placement_id} - drive not found for {company_name}")
                skipped += 1
                continue

            drive_id, offer_type = drive_result

            # Prepare placed student data from Excel
            role = row['role'] if pd.notna(row['role']) else None
            ctc = row['ctc'] if pd.notna(row['ctc']) else None
            stipend = row['stipend'] if pd.notna(row['stipend']) else None
            offer_letter_accepted = row['offer_letter_accepted'] if pd.notna(row['offer_letter_accepted']) else 'unknown'
            offer_letter_received = row['offer_letter_received'] if pd.notna(row['offer_letter_received']) else 'unknown'
            joining_status = row['joining_status'] if pd.notna(row['joining_status']) else 'unknown'
            comment = row['comment'] if pd.notna(row['comment']) else None
            filled_on_off_form = row['filled_on_off_form'] if pd.notna(row['filled_on_off_form']) else 'not filled'
            placement_batch = 'original' if (pd.notna(row['Application_type']) and row['Application_type'] == 'original') else 'original'

            # Insert with ALL required columns
            cursor.execute("""
                INSERT INTO placed_students
                (student_id, drive_id, upid, program_type, program, course, reg_no,
                 student_name, email, phone_no, company_name, drive_no, role,
                 ctc, stipend, offer_type, offer_letter_accepted, offer_letter_received,
                 joining_status, comment, filled_on_off_form, placement_batch)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """, (student_id, drive_id, upid, program_type, program, course, reg_no,
                  student_name, email, phone_no, company_name, drive_no, role,
                  ctc, stipend, offer_type, offer_letter_accepted, offer_letter_received,
                  joining_status, comment, filled_on_off_form, placement_batch))

            imported += 1
            if imported % 50 == 0:
                print(f"  Imported {imported} placed students...")
                conn.commit()  # Commit in batches

        conn.commit()
        print(f"\n[OK] Imported {imported} placed students (skipped {skipped})")
        return imported
    except Exception as e:
        print(f"[ERROR] {e}")
        import traceback
        traceback.print_exc()
        conn.rollback()
        raise

def main():
    print("=" * 60)
    print("IMPORT PLACED STUDENTS - COMPLETE DATA")
    print("=" * 60)
    print()

    print("Loading Excel file...")
    xl = pd.ExcelFile(excel_file)
    df_placed = pd.read_excel(xl, 'On_Campus_Placed_Students')
    print(f"[OK] Found {len(df_placed)} placed students in Excel\n")

    print("Connecting to database...")
    conn = connect_db()
    print("[OK] Connected\n")

    # Clear old data
    print("Clearing old placed students data...")
    cursor = conn.cursor()
    cursor.execute("DELETE FROM placed_students;")
    conn.commit()
    print("[OK] Cleared\n")

    placed_count = import_placed_students_complete(conn, df_placed)
    conn.close()

    print("\n" + "=" * 60)
    print(f"SUCCESS! Imported {placed_count} placed students")
    print("=" * 60)

if __name__ == '__main__':
    main()
