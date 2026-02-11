import pandas as pd
import pymysql
import json
from datetime import datetime

# Database configuration
db_config = {
    'host': '127.0.0.1',
    'user': 'root',
    'password': '',
    'database': 'admin_placement_db',
    'port': 3308
}

# Excel file path
excel_file = r'C:\Users\Kavin\Downloads\placement_backup_all (1).xlsx'

def connect_db():
    """Connect to the database"""
    return pymysql.connect(**db_config)

def clear_old_data(conn):
    """Clear old company and offer letter data"""
    print("Clearing old data...")
    cursor = conn.cursor()

    try:
        # Clear offer letter collection data
        cursor.execute("DELETE FROM on_off_campus_students;")
        print("  Cleared on_off_campus_students")

        # Clear company tracker if exists
        try:
            cursor.execute("DELETE FROM company_tracker;")
            print("  Cleared company_tracker")
        except:
            print("  No company_tracker table found")

        # Clear drive_data if exists
        try:
            cursor.execute("DELETE FROM drive_data;")
            print("  Cleared drive_data")
        except:
            print("  No drive_data table found")

        conn.commit()
        print("[OK] Old data cleared successfully\n")
    except Exception as e:
        print(f"Error clearing data: {e}")
        conn.rollback()
        raise

def import_offer_letter_data(conn, df_overall_placed):
    """Import offer letter collection data from Overall_Placed_Students sheet"""
    print("Importing offer letter collection data...")
    cursor = conn.cursor()

    try:
        imported = 0
        skipped = 0

        for _, row in df_overall_placed.iterrows():
            # Get student data
            upid = row['Placement_id'] if pd.notna(row['Placement_id']) else None
            reg_no = row['reg_no'] if pd.notna(row['reg_no']) else None

            # Get student_id
            if upid:
                cursor.execute("SELECT student_id FROM students WHERE upid = %s", (upid,))
                result = cursor.fetchone()
                if not result:
                    cursor.execute("SELECT student_id FROM students WHERE reg_no = %s", (reg_no,))
                    result = cursor.fetchone()
                    if not result:
                        skipped += 1
                        continue
                student_id = result[0]
            else:
                skipped += 1
                continue

            # Prepare offer letter data
            company_name = row['company_name'] if pd.notna(row['company_name']) else None
            full_name = row['full_name'] if pd.notna(row['full_name']) else None
            email = row['email'] if pd.notna(row['email']) else None
            role = row['role'] if pd.notna(row['role']) else None
            course_name = row['course_name'] if pd.notna(row['course_name']) else None
            phone_no = str(row['phone_no']) if pd.notna(row['phone_no']) else None
            offer_letter_received = row['offer_letter_received'] if pd.notna(row['offer_letter_received']) else 'no'
            intent_letter_received = row['intent_letter_received'] if pd.notna(row['intent_letter_received']) else 'no'
            onboarding_date = row['onboarding_date'] if pd.notna(row['onboarding_date']) else None
            campus_type = row['campus_type'] if pd.notna(row['campus_type']) else 'on'
            photo_path = row['photo_path'] if pd.notna(row['photo_path']) else None
            offer_letter_file = row['offer_letter_file'] if pd.notna(row['offer_letter_file']) else None
            comments = row['comments'] if pd.notna(row['comments']) else None
            passing_year = int(row['passing_year']) if pd.notna(row['passing_year']) else None
            intent_letter_file = row['intent_letter_file'] if pd.notna(row['intent_letter_file']) else None
            register_type = row['register_type'] if pd.notna(row['register_type']) else 'registered'

            # Insert offer letter record
            cursor.execute("""
                INSERT INTO on_off_campus_students
                (student_id, company_name, full_name, reg_no, upid, email, role,
                course_name, phone_no, offer_letter_received, intent_letter_received,
                onboarding_date, campus_type, photo_path, offer_letter_file,
                comments, passing_year, intent_letter_file, register_type)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """, (student_id, company_name, full_name, reg_no, upid, email, role,
                  course_name, phone_no, offer_letter_received, intent_letter_received,
                  onboarding_date, campus_type, photo_path, offer_letter_file,
                  comments, passing_year, intent_letter_file, register_type))

            imported += 1

        conn.commit()
        print(f"[OK] Imported {imported} offer letter records (skipped {skipped})\n")
        return imported
    except Exception as e:
        print(f"Error importing offer letter data: {e}")
        conn.rollback()
        raise

def import_company_tracker_data(conn, df_tracker):
    """Import company tracker data"""
    print("Importing company tracker data...")
    cursor = conn.cursor()

    try:
        # First check if company_tracker table exists and get its structure
        cursor.execute("DESCRIBE company_tracker;")
        columns = [row[0] for row in cursor.fetchall()]
        print(f"  Company tracker table columns: {columns}")

        imported = 0
        for _, row in df_tracker.iterrows():
            company_name = row['company_name'] if pd.notna(row['company_name']) else None
            drive_no = row['drive_no'] if pd.notna(row['drive_no']) else None
            role = row['role'] if pd.notna(row['role']) else None
            created_by = row['created_by'] if pd.notna(row['created_by']) else None
            offer_type = row['offer_type'] if pd.notna(row['offer_type']) else None
            sector = row['sector'] if pd.notna(row['sector']) else None
            eligible_courses = row['eligible_courses'] if pd.notna(row['eligible_courses']) else None
            form_open_date = row['Form Open Date'] if pd.notna(row['Form Open Date']) else None
            role_close_date = row['Role Close Date'] if pd.notna(row['Role Close Date']) else None
            spo_name = row['spo_name'] if pd.notna(row['spo_name']) else None
            contact_no = row['contact_no'] if pd.notna(row['contact_no']) else None
            follow_status = row['follow_status'] if pd.notna(row['follow_status']) else None
            final_status = row['final_status'] if pd.notna(row['final_status']) else None
            hired_count = int(row['hired_count']) if pd.notna(row['hired_count']) else 0
            follow_up_person = row['follow_up_person'] if pd.notna(row['follow_up_person']) else None
            updated_at = row['updated_at'] if pd.notna(row['updated_at']) else None

            # Build dynamic insert based on available columns
            insert_cols = []
            insert_vals = []

            field_mapping = {
                'company_name': company_name,
                'drive_no': drive_no,
                'role': role,
                'created_by': created_by,
                'offer_type': offer_type,
                'sector': sector,
                'eligible_courses': eligible_courses,
                'form_open_date': form_open_date,
                'role_close_date': role_close_date,
                'spo_name': spo_name,
                'contact_no': contact_no,
                'follow_status': follow_status,
                'final_status': final_status,
                'hired_count': hired_count,
                'follow_up_person': follow_up_person,
                'updated_at': updated_at
            }

            for col, val in field_mapping.items():
                if col in columns:
                    insert_cols.append(col)
                    insert_vals.append(val)

            if insert_cols:
                placeholders = ', '.join(['%s'] * len(insert_cols))
                cols_str = ', '.join(insert_cols)
                query = f"INSERT INTO company_tracker ({cols_str}) VALUES ({placeholders})"
                cursor.execute(query, insert_vals)
                imported += 1

        conn.commit()
        print(f"[OK] Imported {imported} company tracker records\n")
        return imported
    except Exception as e:
        print(f"Error importing company tracker: {e}")
        print(f"  Note: This is optional. Continuing...")
        return 0

def main():
    try:
        print("=" * 60)
        print("COMPANY & OFFER LETTER DATA IMPORT")
        print("=" * 60)
        print()

        # Load Excel file
        print("Loading Excel file...")
        xl = pd.ExcelFile(excel_file)
        df_overall_placed = pd.read_excel(xl, 'Overall_Placed_Students')
        df_tracker = pd.read_excel(xl, 'Company Tracker')
        print("[OK] Excel file loaded\n")

        # Connect to database
        print("Connecting to database...")
        conn = connect_db()
        print("[OK] Connected to database\n")

        # Step 1: Clear old data
        clear_old_data(conn)

        # Step 2: Import offer letter data
        offer_count = import_offer_letter_data(conn, df_overall_placed)

        # Step 3: Import company tracker data
        company_count = import_company_tracker_data(conn, df_tracker)

        # Close connection
        conn.close()

        print("=" * 60)
        print("IMPORT COMPLETED SUCCESSFULLY!")
        print("=" * 60)
        print(f"Offer letter records imported: {offer_count}")
        print(f"Company tracker records imported: {company_count}")
        print("=" * 60)

    except Exception as e:
        print(f"\n[ERROR] Import failed: {e}")
        import traceback
        traceback.print_exc()

if __name__ == '__main__':
    main()
