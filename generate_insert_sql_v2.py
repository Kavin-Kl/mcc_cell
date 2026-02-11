import pandas as pd

excel_file = r'C:\Users\Kavin\Downloads\placement_backup_all (1).xlsx'

print("Reading Excel file...")
xl = pd.ExcelFile(excel_file)
df_overall_placed = pd.read_excel(xl, 'Overall_Placed_Students')

print(f"Generating SQL for {len(df_overall_placed)} records...")

with open('insert_offer_letters_fixed.sql', 'w', encoding='utf-8') as f:
    f.write("-- Insert offer letter collection data\n")
    f.write("USE admin_placement_db;\n\n")
    f.write("-- Clear old data first\n")
    f.write("DELETE FROM on_off_campus_students;\n\n")

    for idx, row in df_overall_placed.iterrows():
        # Get values and escape quotes
        company_name = str(row['company_name']).replace("'", "''") if pd.notna(row['company_name']) else ''
        full_name = str(row['full_name']).replace("'", "''") if pd.notna(row['full_name']) else ''
        reg_no = str(row['reg_no']).replace("'", "''") if pd.notna(row['reg_no']) else ''
        upid = str(row['Placement_id']).replace("'", "''") if pd.notna(row['Placement_id']) else ''
        email = str(row['email']).replace("'", "''") if pd.notna(row['email']) else ''
        role = str(row['role']).replace("'", "''") if pd.notna(row['role']) else ''
        course_name = str(row['course_name']).replace("'", "''") if pd.notna(row['course_name']) else ''
        phone_no = str(row['phone_no']).replace("'", "''") if pd.notna(row['phone_no']) else ''
        offer_letter_received = 'yes' if pd.notna(row['offer_letter_received']) and str(row['offer_letter_received']).lower() == 'yes' else 'no'
        intent_letter_received = 'yes' if pd.notna(row['intent_letter_received']) and str(row['intent_letter_received']).lower() == 'yes' else 'no'
        campus_type = 'on' if pd.notna(row['campus_type']) and str(row['campus_type']).lower() == 'on' else 'off'
        passing_year = str(int(row['passing_year'])) if pd.notna(row['passing_year']) else 'NULL'
        register_type = str(row['register_type']).replace("'", "''") if pd.notna(row['register_type']) else 'registered'

        # Handle optional fields
        photo_path = str(row['photo_path']).replace("'", "''") if pd.notna(row['photo_path']) else ''
        offer_letter_file = str(row['offer_letter_file']).replace("'", "''") if pd.notna(row['offer_letter_file']) else ''
        comments = str(row['comments']).replace("'", "''") if pd.notna(row['comments']) else ''
        intent_letter_file = str(row['intent_letter_file']).replace("'", "''") if pd.notna(row['intent_letter_file']) else ''
        onboarding_date = f"'{row['onboarding_date']}'" if pd.notna(row['onboarding_date']) else 'NULL'

        # Build INSERT statement
        f.write(f"""INSERT INTO on_off_campus_students
(company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type,
 photo_path, offer_letter_file, comments, intent_letter_file, onboarding_date)
VALUES
('{company_name}', '{full_name}', '{reg_no}', '{upid}', '{email}', '{role}', '{course_name}', '{phone_no}',
 '{offer_letter_received}', '{intent_letter_received}', '{campus_type}', '{passing_year}', '{register_type}',
 '{photo_path}', '{offer_letter_file}', '{comments}', '{intent_letter_file}', {onboarding_date});

""")

    f.write("\nSELECT 'Import completed!' AS Status, COUNT(*) AS TotalRecords FROM on_off_campus_students;\n")

print("SQL file generated: insert_offer_letters_fixed.sql")
