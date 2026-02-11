import pandas as pd

excel_file = r'C:\Users\Kavin\Downloads\placement_backup_all (1).xlsx'

print("Generating DIRECT SQL import...")
xl = pd.ExcelFile(excel_file)
df_placed = pd.read_excel(xl, 'On_Campus_Placed_Students')

with open('import_placed_direct.sql', 'w', encoding='utf-8') as f:
    f.write("-- DIRECT SQL IMPORT - NO FOREIGN KEYS\n")
    f.write("USE admin_placement_db;\n\n")
    f.write("SET FOREIGN_KEY_CHECKS = 0;\n")
    f.write("SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';\n\n")

    f.write("-- Remove all foreign key constraints\n")
    f.write("ALTER TABLE placed_students DROP FOREIGN KEY IF EXISTS placed_students_ibfk_1;\n")
    f.write("ALTER TABLE placed_students DROP FOREIGN KEY IF EXISTS placed_students_ibfk_2;\n")
    f.write("ALTER TABLE placed_students DROP FOREIGN KEY IF EXISTS placed_students_ibfk_3;\n")
    f.write("ALTER TABLE placed_students DROP KEY IF EXISTS unique_placed;\n\n")

    f.write("-- Clear table\n")
    f.write("TRUNCATE TABLE placed_students;\n\n")

    imported = 0
    for _, row in df_placed.iterrows():
        placement_id = str(row['Placement_id']).replace("'", "''") if pd.notna(row['Placement_id']) else ''

        # Get student_id from UPID
        f.write(f"""
INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    '{placement_id}',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    '{str(row['company_name']).replace("'", "''")}',
    '{str(row['drive_no']).replace("'", "''")}',
    '{str(row['role']).replace("'", "''") if pd.notna(row['role']) else ''}',
    '{str(row['ctc']).replace("'", "''") if pd.notna(row['ctc']) else ''}',
    '{str(row['stipend']).replace("'", "''") if pd.notna(row['stipend']) else ''}',
    '{str(row['offer_letter_accepted']).replace("'", "''") if pd.notna(row['offer_letter_accepted']) else 'unknown'}',
    '{str(row['offer_letter_received']).replace("'", "''") if pd.notna(row['offer_letter_received']) else 'unknown'}',
    '{str(row['joining_status']).replace("'", "''") if pd.notna(row['joining_status']) else 'unknown'}',
    '{str(row['comment']).replace("'", "''") if pd.notna(row['comment']) else ''}',
    '{str(row['filled_on_off_form']).replace("'", "''") if pd.notna(row['filled_on_off_form']) else 'not filled'}',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = '{str(row['company_name']).replace("'", "''")}' AND d.drive_no = '{str(row['drive_no']).replace("'", "''")}'
WHERE s.upid = '{placement_id}'
LIMIT 1;
""")
        imported += 1

    f.write("\nSET FOREIGN_KEY_CHECKS = 1;\n")
    f.write(f"\nSELECT 'Imported {imported} placed students' AS Status;\n")
    f.write("SELECT COUNT(*) as total FROM placed_students;\n")

print(f"SQL file created: import_placed_direct.sql ({imported} records)")
