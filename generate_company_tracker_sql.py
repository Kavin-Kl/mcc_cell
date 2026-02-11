import pandas as pd

excel_file = r'C:\Users\Kavin\Downloads\placement_backup_all (1).xlsx'

print("Reading Excel file...")
xl = pd.ExcelFile(excel_file)
df_tracker = pd.read_excel(xl, 'Company Tracker')

print(f"Generating SQL for {len(df_tracker)} company records...")

with open('insert_company_tracker.sql', 'w', encoding='utf-8') as f:
    f.write("-- Insert company tracker data\n")
    f.write("USE admin_placement_db;\n\n")
    f.write("-- Clear old company data first\n")
    f.write("DELETE FROM drive_data;\n\n")

    for idx, row in df_tracker.iterrows():
        # Get values and escape quotes
        company_name = str(row['company_name']).replace("'", "''") if pd.notna(row['company_name']) else ''
        drive_no = str(row['drive_no']).replace("'", "''") if pd.notna(row['drive_no']) else ''
        role = str(row['role']).replace("'", "''") if pd.notna(row['role']) else ''
        offer_type = str(row['offer_type']).replace("'", "''") if pd.notna(row['offer_type']) else ''
        sector = str(row['sector']).replace("'", "''") if pd.notna(row['sector']) else ''
        eligible_courses = str(row['eligible_courses']).replace("'", "''") if pd.notna(row['eligible_courses']) else ''
        spo_name = str(row['spo_name']).replace("'", "''") if pd.notna(row['spo_name']) else ''
        contact_no = str(row['contact_no']).replace("'", "''") if pd.notna(row['contact_no']) else ''
        follow_status = str(row['follow_status']).replace("'", "''") if pd.notna(row['follow_status']) else ''
        final_status = str(row['final_status']).replace("'", "''") if pd.notna(row['final_status']) else ''
        hired_count = int(row['hired_count']) if pd.notna(row['hired_count']) else 0
        follow_up_person = str(row['follow_up_person']).replace("'", "''") if pd.notna(row['follow_up_person']) else ''

        # Build INSERT statement
        f.write(f"""INSERT INTO drive_data
(company_name, drive_no, role, offer_type, sector, eligible_courses,
 spo_name, contact_no, follow_status, final_status, hired_count, follow_up_person)
VALUES
('{company_name}', '{drive_no}', '{role}', '{offer_type}', '{sector}', '{eligible_courses}',
 '{spo_name}', '{contact_no}', '{follow_status}', '{final_status}', {hired_count}, '{follow_up_person}');

""")

    f.write("\nSELECT 'Company tracker import completed!' AS Status, COUNT(*) AS TotalRecords FROM drive_data;\n")

print("SQL file generated: insert_company_tracker.sql")
