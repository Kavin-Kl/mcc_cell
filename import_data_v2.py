import pandas as pd
import pymysql
import json
from datetime import datetime
import sys

# Database configuration
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'admin_placement_db',
    'port': 3307
}

# Excel file path
excel_file = r'C:\Users\Kavin\Downloads\placement_backup_all (1).xlsx'

def connect_db():
    """Connect to the database"""
    return pymysql.connect(**db_config)

def clear_dummy_data(conn):
    """Clear all dummy/test data from database"""
    print("Clearing dummy data...")
    cursor = conn.cursor()

    try:
        # Disable foreign key checks
        cursor.execute("SET FOREIGN_KEY_CHECKS = 0;")

        # Clear main tables
        cursor.execute("DELETE FROM applications;")
        print("  Cleared applications")

        cursor.execute("DELETE FROM placed_students;")
        print("  Cleared placed_students")

        cursor.execute("DELETE FROM drive_roles;")
        print("  Cleared drive_roles")

        cursor.execute("DELETE FROM drives;")
        print("  Cleared drives")

        cursor.execute("DELETE FROM students;")
        print("  Cleared students")

        # Clear notification tables
        cursor.execute("DELETE FROM admin_notifications;")
        cursor.execute("DELETE FROM student_notifications;")
        cursor.execute("DELETE FROM deadline_notifications_sent;")
        print("  Cleared notifications")

        # Re-enable foreign key checks
        cursor.execute("SET FOREIGN_KEY_CHECKS = 1;")

        conn.commit()
        print("[OK] Dummy data cleared successfully\n")
    except Exception as e:
        print(f"Error clearing data: {e}")
        conn.rollback()
        raise

def import_students(conn, df_students):
    """Import student data"""
    print("Importing students...")
    cursor = conn.cursor()

    try:
        imported = 0
        skipped = 0

        for _, row in df_students.iterrows():
            # Prepare student data
            upid = row['Placement_id'] if pd.notna(row['Placement_id']) else None
            program_type = row['program_type'] if pd.notna(row['program_type']) else None
            program = row['program'] if pd.notna(row['program']) else None
            course = row['course'] if pd.notna(row['course']) else None
            reg_no = row['reg_no'] if pd.notna(row['reg_no']) else None
            student_name = row['student_name'] if pd.notna(row['student_name']) else None
            email = row['email'] if pd.notna(row['email']) else None
            phone_no = str(row['phone_no']) if pd.notna(row['phone_no']) else None
            batch = row['batch'] if pd.notna(row['batch']) else None
            year_of_passing = int(row['year_of_passing']) if pd.notna(row['year_of_passing']) else None
            placed_status = row['placed_status'] if pd.notna(row['placed_status']) else 'not_placed'
            allow_reapply = 'yes' if (pd.notna(row['allow_reapply']) and row['allow_reapply'] == 'yes') else 'no'
            comment = row['comment'] if pd.notna(row['comment']) else None

            # Insert student
            cursor.execute("""
                INSERT INTO students
                (upid, program_type, program, course, reg_no, student_name, email, phone_no, batch,
                year_of_passing, placed_status, allow_reapply, comment)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """, (upid, program_type, program, course, reg_no, student_name, email, phone_no, batch,
                  year_of_passing, placed_status, allow_reapply, comment))

            imported += 1
            if imported % 100 == 0:
                print(f"  Imported {imported} students...")

        conn.commit()
        print(f"[OK] Imported {imported} students (skipped {skipped})\n")
        return imported
    except Exception as e:
        print(f"Error importing students: {e}")
        conn.rollback()
        raise

def import_drives(conn, df_drives):
    """Import drive data"""
    print("Importing drives...")
    cursor = conn.cursor()

    try:
        imported = 0
        drive_ids = {}

        for _, row in df_drives.iterrows():
            company_name = row['company_name'] if pd.notna(row['company_name']) else None
            drive_no = row['drive_no'] if pd.notna(row['drive_no']) else None
            open_date = row['open_date'] if pd.notna(row['open_date']) else datetime.now()
            close_date = row['close_date'] if pd.notna(row['close_date']) else datetime.now()
            created_by = row['created_by'] if pd.notna(row['created_by']) else 'admin'
            form_fields = row['form_fields'] if pd.notna(row['form_fields']) else None
            company_url = row['company_url'] if pd.notna(row['company_url']) else None
            graduating_year = row['graduating_year'] if pd.notna(row['graduating_year']) else None
            work_location = row['work_location'] if pd.notna(row['work_location']) else None

            # Insert drive
            cursor.execute("""
                INSERT INTO drives
                (company_name, drive_no, open_date, close_date, created_by,
                form_fields, company_url, graduating_year, work_location)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
            """, (company_name, drive_no, open_date, close_date, created_by,
                  form_fields, company_url, graduating_year, work_location))

            drive_id = cursor.lastrowid
            drive_ids[(company_name, drive_no)] = drive_id

            # Insert drive role
            designation_name = row['designation_name'] if pd.notna(row['designation_name']) else None
            eligible_courses = row['eligible_courses'] if pd.notna(row['eligible_courses']) else None
            min_percentage = float(row['min_percentage']) if pd.notna(row['min_percentage']) else None
            ctc = row['ctc'] if pd.notna(row['ctc']) else None
            stipend = row['stipend'] if pd.notna(row['stipend']) else None
            offer_type = row['offer_type'] if pd.notna(row['offer_type']) else None
            sector = row['sector'] if pd.notna(row['sector']) else None
            work_timings = row['work_timings'] if pd.notna(row['work_timings']) else None

            cursor.execute("""
                INSERT INTO drive_roles
                (drive_id, designation_name, eligible_courses,
                min_percentage, ctc, stipend, offer_type, sector, work_timings)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
            """, (drive_id, designation_name, eligible_courses,
                  min_percentage, ctc, stipend, offer_type, sector, work_timings))

            imported += 1
            if imported % 20 == 0:
                print(f"  Imported {imported} drives...")

        conn.commit()
        print(f"[OK] Imported {imported} drives\n")
        return drive_ids
    except Exception as e:
        print(f"Error importing drives: {e}")
        conn.rollback()
        raise

def import_applications(conn, df_applications, drive_ids):
    """Import application data"""
    print("Importing applications...")
    cursor = conn.cursor()

    try:
        imported = 0
        skipped = 0

        for idx, row in df_applications.iterrows():
            placement_id = row['Placement_id']
            company_name = row['company_name']
            drive_no = 'Drive 1'  # Most applications are for Drive 1

            drive_key = (company_name, drive_no)
            drive_id = drive_ids.get(drive_key)
            if not drive_id:
                skipped += 1
                continue

            # Get student_id
            cursor.execute("SELECT student_id FROM students WHERE upid = %s", (placement_id,))
            result = cursor.fetchone()
            if not result:
                skipped += 1
                continue
            student_id = result[0]

            # Prepare application data
            reg_no = row['reg_no'] if pd.notna(row['reg_no']) else None
            course = row['course'] if pd.notna(row['course']) else None
            upid = row['Placement_id'] if pd.notna(row['Placement_id']) else None
            percentage = float(row['percentage']) if pd.notna(row['percentage']) else None
            priority = int(row['priority']) if pd.notna(row['priority']) else 1
            status = row['status'] if pd.notna(row['status']) else 'applied'
            comments = row['comments'] if pd.notna(row['comments']) else None
            applied_at = row['applied_at'] if pd.notna(row['applied_at']) else datetime.now()
            resume_file = row['resume_file'] if pd.notna(row['resume_file']) else None

            # Get all form field data
            student_data = {}
            for col in df_applications.columns:
                if col not in ['Sl No', 'Placement_id', 'reg_no', 'course', 'percentage',
                               'company_name', 'designation_name', 'priority', 'status',
                               'comments', 'applied_at', 'resume_file']:
                    if pd.notna(row[col]):
                        student_data[col] = str(row[col])

            student_data_json = json.dumps(student_data) if student_data else None

            # Insert application
            cursor.execute("""
                INSERT INTO applications
                (student_id, drive_id, reg_no, course, percentage, upid,
                priority, status, comments, applied_at, resume_file, student_data)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """, (student_id, drive_id, reg_no, course, percentage, upid,
                  priority, status, comments, applied_at, resume_file, student_data_json))

            imported += 1
            if imported % 500 == 0:
                print(f"  Imported {imported} applications...")
                conn.commit()  # Commit in batches

        conn.commit()
        print(f"[OK] Imported {imported} applications (skipped {skipped})\n")
        return imported
    except Exception as e:
        print(f"Error importing applications: {e}")
        conn.rollback()
        raise

def import_placed_students(conn, df_placed, drive_ids):
    """Import placed students data"""
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

            drive_key = (company_name, drive_no)
            drive_id = drive_ids.get(drive_key)
            if not drive_id:
                skipped += 1
                continue

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

        conn.commit()
        print(f"[OK] Imported {imported} placed students (skipped {skipped})\n")
        return imported
    except Exception as e:
        print(f"Error importing placed students: {e}")
        conn.rollback()
        raise

def main():
    try:
        print("=" * 60)
        print("PLACEMENT DATA IMPORT")
        print("=" * 60)
        print()

        # Load Excel file
        print("Loading Excel file...")
        xl = pd.ExcelFile(excel_file)
        df_drives = pd.read_excel(xl, 'Drives')
        df_students = pd.read_excel(xl, 'Register Students')
        df_applications = pd.read_excel(xl, 'Applications')
        df_placed = pd.read_excel(xl, 'On_Campus_Placed_Students')
        print("[OK] Excel file loaded\n")

        # Connect to database
        print("Connecting to database...")
        conn = connect_db()
        print("[OK] Connected to database\n")

        # Step 1: Clear dummy data
        clear_dummy_data(conn)

        # Step 2: Import students
        students_count = import_students(conn, df_students)

        # Step 3: Import drives
        drive_ids = import_drives(conn, df_drives)

        # Step 4: Import applications
        applications_count = import_applications(conn, df_applications, drive_ids)

        # Step 5: Import placed students
        placed_count = import_placed_students(conn, df_placed, drive_ids)

        # Close connection
        conn.close()

        print("=" * 60)
        print("IMPORT COMPLETED SUCCESSFULLY!")
        print("=" * 60)
        print(f"Total students imported: {students_count}")
        print(f"Total drives imported: {len(drive_ids)}")
        print(f"Total applications imported: {applications_count}")
        print(f"Total placed students imported: {placed_count}")
        print("=" * 60)

    except Exception as e:
        print(f"\n[ERROR] Import failed: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)

if __name__ == '__main__':
    main()
