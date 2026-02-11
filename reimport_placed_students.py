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

def import_placed_students(conn, df_placed):
    print("Importing placed students...")
    cursor = conn.cursor()

    try:
        imported = 0
        skipped = 0

        for _, row in df_placed.iterrows():
            placement_id = row['Placement_id']

            # Get student_id
            cursor.execute("SELECT student_id FROM students WHERE upid = %s", (placement_id,))
            result = cursor.fetchone()
            if not result:
                skipped += 1
                continue
            student_id = result[0]

            company_name = row['company_name']
            drive_no = row['drive_no']

            # Get drive_id
            cursor.execute("SELECT drive_id FROM drives WHERE company_name = %s AND drive_no = %s",
                         (company_name, drive_no))
            result = cursor.fetchone()
            if not result:
                skipped += 1
                continue
            drive_id = result[0]

            # Prepare placed student data
            role = row['role'] if pd.notna(row['role']) else None
            ctc = row['ctc'] if pd.notna(row['ctc']) else None
            stipend = row['stipend'] if pd.notna(row['stipend']) else None
            offer_letter_accepted = row['offer_letter_accepted'] if pd.notna(row['offer_letter_accepted']) else 'unknown'
            offer_letter_received = row['offer_letter_received'] if pd.notna(row['offer_letter_received']) else 'unknown'
            joining_status = row['joining_status'] if pd.notna(row['joining_status']) else 'unknown'
            comment = row['comment'] if pd.notna(row['comment']) else None

            # Insert placed student
            cursor.execute("""
                INSERT INTO placed_students
                (student_id, drive_id, company_name, role, ctc, stipend,
                offer_letter_accepted, offer_letter_received, joining_status, comment)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """, (student_id, drive_id, company_name, role, ctc, stipend,
                  offer_letter_accepted, offer_letter_received, joining_status, comment))

            imported += 1
            if imported % 50 == 0:
                print(f"  Imported {imported} placed students...")

        conn.commit()
        print(f"[OK] Imported {imported} placed students (skipped {skipped})")
        return imported
    except Exception as e:
        print(f"[ERROR] {e}")
        conn.rollback()
        raise

def main():
    print("=" * 60)
    print("RE-IMPORT PLACED STUDENTS")
    print("=" * 60)
    print()

    print("Loading Excel file...")
    xl = pd.ExcelFile(excel_file)
    df_placed = pd.read_excel(xl, 'On_Campus_Placed_Students')
    print(f"[OK] Found {len(df_placed)} placed students\n")

    print("Connecting to database...")
    conn = connect_db()
    print("[OK] Connected\n")

    placed_count = import_placed_students(conn, df_placed)
    conn.close()

    print("\n" + "=" * 60)
    print(f"SUCCESS! Imported {placed_count} placed students")
    print("=" * 60)

if __name__ == '__main__':
    main()
