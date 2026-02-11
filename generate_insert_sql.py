import pandas as pd
import json

excel_file = r'C:\Users\Kavin\Downloads\placement_backup_all (1).xlsx'

print("Reading Excel file...")
xl = pd.ExcelFile(excel_file)
df_overall_placed = pd.read_excel(xl, 'Overall_Placed_Students')

print(f"Generating SQL for {len(df_overall_placed)} records...")

with open('insert_offer_letters.sql', 'w', encoding='utf-8') as f:
    f.write("-- Insert offer letter collection data\n")
    f.write("USE admin_placement_db;\n\n")

    for idx, row in df_overall_placed.iterrows():
        # Get values
        company_name = str(row['company_name']).replace("'", "''") if pd.notna(row['company_name']) else 'NULL'
        full_name = str(row['full_name']).replace("'", "''") if pd.notna(row['full_name']) else 'NULL'
        reg_no = str(row['reg_no']).replace("'", "''") if pd.notna(row['reg_no']) else 'NULL'
        upid = str(row['Placement_id']).replace("'", "''") if pd.notna(row['Placement_id']) else 'NULL'
        email = str(row['email']).replace("'", "''") if pd.notna(row['email']) else 'NULL'
        role = str(row['role']).replace("'", "''") if pd.notna(row['role']) else 'NULL'
        course_name = str(row['course_name']).replace("'", "''") if pd.notna(row['course_name']) else 'NULL'
        phone_no = str(row['phone_no']).replace("'", "''") if pd.notna(row['phone_no']) else 'NULL'
        offer_letter_received = str(row['offer_letter_received']).replace("'", "''") if pd.notna(row['offer_letter_received']) else 'no'
        intent_letter_received = str(row['intent_letter_received']).replace("'", "''") if pd.notna(row['intent_letter_received']) else 'no'
        campus_type = str(row['campus_type']).replace("'", "''") if pd.notna(row['campus_type']) else 'on'
        passing_year = str(int(row['passing_year'])) if pd.notna(row['passing_year']) else 'NULL'
        register_type = str(row['register_type']).replace("'", "''") if pd.notna(row['register_type']) else 'registered'

        # Build INSERT with student lookup
        f.write(f"""
INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    '{company_name}',
    '{full_name}',
    '{reg_no}',
    '{upid}',
    '{email}',
    '{role}',
    '{course_name}',
    '{phone_no}',
    '{offer_letter_received}',
    '{intent_letter_received}',
    '{campus_type}',
    {passing_year},
    '{register_type}'
FROM students
WHERE upid = '{upid}' OR reg_no = '{reg_no}'
LIMIT 1;

""")

    f.write("\nSELECT 'Import completed!' AS Status, COUNT(*) AS TotalRecords FROM on_off_campus_students;\n")

print("SQL file generated: insert_offer_letters.sql")
