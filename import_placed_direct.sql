-- DIRECT SQL IMPORT - NO FOREIGN KEYS
USE admin_placement_db;

SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';

-- Remove all foreign key constraints
ALTER TABLE placed_students DROP FOREIGN KEY IF EXISTS placed_students_ibfk_1;
ALTER TABLE placed_students DROP FOREIGN KEY IF EXISTS placed_students_ibfk_2;
ALTER TABLE placed_students DROP FOREIGN KEY IF EXISTS placed_students_ibfk_3;
ALTER TABLE placed_students DROP KEY IF EXISTS unique_placed;

-- Clear table
TRUNCATE TABLE placed_students;


INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC423',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Verity Knowledge Solutions',
    'Drive 1',
    'Analyst',
    '8,68,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Verity Knowledge Solutions' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC423'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC_PLC-Reg_730',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Verity Knowledge Solutions',
    'Drive 1',
    'Analyst',
    '8,68,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Verity Knowledge Solutions' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC_PLC-Reg_730'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC108',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Bain & Co.',
    'Drive 1',
    'Analyst',
    '15,98,400',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Bain & Co.' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC108'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC30',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Bain & Co.',
    'Drive 1',
    'Analyst',
    '15,98,400',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Bain & Co.' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC30'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC204',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Bain & Co.',
    'Drive 1',
    'Analyst',
    '15,98,400',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Bain & Co.' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC204'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC791',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Embark',
    'Drive 1',
    'Management Trainee ',
    'Qualification  CGPA Criteria  Stipend  CTC (Post I',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Embark' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC791'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC95',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Embark',
    'Drive 1',
    'Management Trainee ',
    'Qualification  CGPA Criteria  Stipend  CTC (Post I',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Embark' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC95'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC203',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Embark',
    'Drive 1',
    'Management Trainee ',
    'Qualification  CGPA Criteria  Stipend  CTC (Post I',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Embark' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC203'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC931',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Embark',
    'Drive 1',
    'Management Trainee ',
    'Qualification  CGPA Criteria  Stipend  CTC (Post I',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Embark' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC931'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC803',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Embark',
    'Drive 1',
    'Management Trainee ',
    'Qualification  CGPA Criteria  Stipend  CTC (Post I',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Embark' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC803'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC422',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Verity Knowledge Solutions',
    'Drive 1',
    'Analyst',
    '8,68,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Verity Knowledge Solutions' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC422'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC232',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Verity Knowledge Solutions',
    'Drive 1',
    'Analyst',
    '8,68,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Verity Knowledge Solutions' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC232'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC425',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC425'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC868',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC868'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC116',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC116'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC712',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC712'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC177',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC177'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC154',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC154'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC790',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC790'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC74',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC74'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC41',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC41'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MB237232_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 1',
    'Data Operations Analyst',
    '3,83,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MB237232_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC238',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC238'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC718',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC718'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC50',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC50'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC857',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC857'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC487',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC487'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC60',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC60'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC118',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC118'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC133',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC133'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC368',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC368'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC323',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Verity Knowledge Solutions',
    'Drive 1',
    'Analyst',
    '8,68,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Verity Knowledge Solutions' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC323'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC62',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG Global',
    'Drive 1',
    'Audit Associate ',
    '365000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG Global' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC62'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC246',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG Global',
    'Drive 1',
    'Audit Associate ',
    '365000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG Global' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC246'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC370',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG India',
    'Drive 1',
    ' GRCS FS - Analyst',
    '3,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC370'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC206',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG India',
    'Drive 1',
    ' GRCS FS - Analyst',
    '3,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC206'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCCPLC_Reg_727',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG India',
    'Drive 1',
    ' GRCS FS - Analyst',
    '3,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCCPLC_Reg_727'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC795',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Eli Lilly',
    'Drive 1',
    'Intern - Global Learning & Content Services',
    '',
    '40,000',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Eli Lilly' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC795'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC813',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Eli Lilly',
    'Drive 1',
    'Intern - Commercial Learning Services Writer',
    '',
    '40,000',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Eli Lilly' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC813'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MA230882_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Eli Lilly',
    'Drive 1',
    'Intern - Commercial Learning Services Writer',
    '',
    '40,000',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Eli Lilly' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MA230882_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MA230872_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Eli Lilly',
    'Drive 1',
    'Intern - Commercial Learning Services Writer',
    '',
    '40,000',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Eli Lilly' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MA230872_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MA230957_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Eli Lilly',
    'Drive 1',
    'Intern - Commercial Learning Services Writer',
    '',
    '40,000',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Eli Lilly' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MA230957_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MA230654_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Eli Lilly',
    'Drive 1',
    'Intern - Commercial Learning Services Writer',
    '',
    '40,000',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Eli Lilly' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MA230654_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC920',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC920'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MC233105_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MC233105_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MC232241_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MC232241_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MA221012_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Safesforce',
    'Drive 1',
    'Technical Writing Analyst',
    '15,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Safesforce' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MA221012_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC312',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Safesforce',
    'Drive 1',
    'Technical Writing Analyst',
    '15,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Safesforce' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC312'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_M24PY35 _2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Eli Lilly',
    'Drive 1',
    'Intern - Global Learning & Content Services',
    '',
    '40,000',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Eli Lilly' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_M24PY35 _2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MS235101 _2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MS235101 _2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC332',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC332'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MC233504_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MC233504_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MC233461_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MC233461_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MC232414_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MC232414_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MC233375_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MC233375_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC359',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Goldman Sachs ',
    'Drive 1',
    'Analyst',
    '9,00,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Goldman Sachs ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC359'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC257',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'RSM USI',
    'Drive 1',
    'Audit Associate',
    '5,25,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'RSM USI' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC257'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC674',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'RSM USI',
    'Drive 1',
    'Audit Associate',
    '5,25,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'RSM USI' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC674'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC82',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'RSM USI',
    'Drive 1',
    'Audit Associate',
    '5,25,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'RSM USI' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC82'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC83',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'RSM USI',
    'Drive 1',
    'Audit Associate',
    '5,25,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'RSM USI' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC83'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC126',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'RSM USI',
    'Drive 1',
    'Audit Associate',
    '5,25,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'RSM USI' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC126'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC175',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'RSM USI',
    'Drive 1',
    'Audit Associate',
    '5,25,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'RSM USI' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC175'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC256',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'RSM USI',
    'Drive 1',
    'Audit Associate',
    '5,25,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'RSM USI' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC256'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC386',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'RSM USI',
    'Drive 1',
    'Audit Associate',
    '5,25,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'RSM USI' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC386'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC244',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'RSM USI',
    'Drive 1',
    'Audit Associate',
    '5,25,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'RSM USI' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC244'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC701',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC701'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC227',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC227'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC407',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC407'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC418',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC418'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC444',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC444'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC784',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC784'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC419',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC419'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC_PLC_Reg_734',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC_PLC_Reg_734'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC268',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC268'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC745',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC745'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC155',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC155'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC853',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC853'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC29',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance AOA',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC29'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC120',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC120'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC262',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC262'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC113',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC113'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC137',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC137'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC132',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC132'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC470',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC470'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC749',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC749'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC445',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC445'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC345',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC345'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC506',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC506'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC117',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC117'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC475',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC475'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC467',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC467'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC153',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC153'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC440',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC440'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC81',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC81'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC31',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC31'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC8',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC8'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC194',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC194'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC170',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC170'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC249',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC249'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC24PLC429',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC24PLC429'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC24PLC146',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC24PLC146'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC110',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Assurance Core Audit',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC110'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC683',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC683'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC380',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Bambinos.live',
    'Drive 1',
    'Business Development Associate',
    '5,20,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Bambinos.live' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC380'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC156',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Accenture',
    'Drive 1',
    'HR',
    '6,05,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Accenture' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC156'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC329',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Accenture',
    'Drive 1',
    'HR',
    '6,05,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Accenture' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC329'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC925',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Accenture',
    'Drive 1',
    'HR',
    '6,05,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Accenture' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC925'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC27',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Accenture',
    'Drive 1',
    'HR',
    '6,05,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Accenture' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC27'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC828',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Arcesium',
    'Drive 1',
    'Financial Operations',
    '',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Arcesium' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC828'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC722',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Arcesium',
    'Drive 1',
    'Financial Operations',
    '',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Arcesium' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC722'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC14',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Arcesium',
    'Drive 1',
    'Financial Operations',
    '',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Arcesium' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC14'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC609',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC609'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC678',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC678'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC624',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC624'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC680',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC680'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC310',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'EY GDS',
    'Drive 2',
    'Tax Core',
    '3,83,250-4,46,250',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'EY GDS' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC310'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC135',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Acies Global ',
    'Drive 1',
    'Associate Trainee',
    '6,00,000PA',
    '•	During the Traineeship period: Rs.23,800/- (Incl',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Acies Global ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC135'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC21',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG India',
    'Drive 1',
    ' GRCS FS - Analyst',
    '3,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC21'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC145',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC145'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC357',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC357'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC187',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC187'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC193',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC193'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC87',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC87'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC79',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC79'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC139',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC139'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MB237256_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'JPMorgan Chase & Co',
    'Drive 1',
    'Operation Analyst ',
    '5,75,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'JPMorgan Chase & Co' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MB237256_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC10',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC10'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC330',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC330'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC507',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC507'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC143',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC143'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC710',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC710'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC638',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC638'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC451',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC451'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC276',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC276'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC52',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC52'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC759',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC759'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC689',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC689'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC219',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC219'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC210',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Ditto Insurance ',
    'Drive 1',
    'Insurance Advisor - Falcon',
    '4,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Ditto Insurance ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC210'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC754',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Ditto Insurance ',
    'Drive 1',
    'Insurance Advisor - Bliss',
    '4,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Ditto Insurance ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC754'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC879',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Ditto Insurance ',
    'Drive 1',
    'Quality Associate',
    '4,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Ditto Insurance ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC879'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC77',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KALVIUM',
    'Drive 1',
    'Founders Office Intern - Growth',
    '10 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KALVIUM' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC77'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC66',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KALVIUM',
    'Drive 1',
    'Founders Office Intern - Growth',
    '10 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KALVIUM' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC66'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC15',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Ditto Insurance ',
    'Drive 1',
    'Quality Associate',
    '4,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Ditto Insurance ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC15'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC84',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'JPMorgan Chase & Co',
    'Drive 1',
    'Operation Analyst ',
    '5,75,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'JPMorgan Chase & Co' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC84'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC33',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'JPMorgan Chase & Co',
    'Drive 1',
    'Operation Analyst ',
    '5,75,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'JPMorgan Chase & Co' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC33'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC13',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'JPMorgan Chase & Co',
    'Drive 1',
    'Operation Analyst ',
    '5,75,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'JPMorgan Chase & Co' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC13'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC127',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'JPMorgan Chase & Co',
    'Drive 1',
    'Operation Analyst ',
    '5,75,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'JPMorgan Chase & Co' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC127'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MB237302_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'JPMorgan Chase & Co',
    'Drive 1',
    'Operation Analyst ',
    '5,75,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'JPMorgan Chase & Co' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MB237302_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MA230134_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'JPMorgan Chase & Co',
    'Drive 1',
    'Operation Analyst ',
    '5,75,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'JPMorgan Chase & Co' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MA230134_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC833',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'JPMorgan Chase & Co',
    'Drive 1',
    'Operation Analyst ',
    '5,75,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'JPMorgan Chase & Co' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC833'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC311',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deutsche Bank',
    'Drive 1',
    'Operations',
    '4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deutsche Bank' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC311'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC556',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Ditto Insurance ',
    'Drive 1',
    'Insurance Advisor - Bliss',
    '4,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Ditto Insurance ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC556'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC136',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Ditto Insurance ',
    'Drive 1',
    'Quality Associate',
    '4,50,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Ditto Insurance ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC136'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC295',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Grant Thornton ',
    'Drive 1',
    'Analyst',
    '6,97,318PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Grant Thornton ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC295'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC865',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Grant Thornton ',
    'Drive 1',
    'Analyst',
    '6,97,318PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Grant Thornton ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC865'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC106',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Grant Thornton ',
    'Drive 1',
    'Analyst',
    '6,97,318PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Grant Thornton ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC106'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC737',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Grant Thornton ',
    'Drive 1',
    'Analyst',
    '6,97,318PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Grant Thornton ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC737'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC151',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Grant Thornton ',
    'Drive 1',
    'Analyst',
    '6,97,318PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Grant Thornton ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC151'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC362',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Grant Thornton ',
    'Drive 1',
    'Analyst',
    '6,97,318PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Grant Thornton ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC362'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC266',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Grant Thornton ',
    'Drive 1',
    'Analyst',
    '6,97,318PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Grant Thornton ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC266'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC832',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Social Panga',
    'Drive 1',
    'Brand Solutions',
    'UG: INR 400,000; PG: INR 470,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Social Panga' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC832'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC260',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Social Panga',
    'Drive 1',
    'Brand Solutions',
    'UG: INR 400,000; PG: INR 470,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Social Panga' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC260'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC213',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Baker Tilly One India',
    'Drive 1',
    'Junior Associate – Tax',
    'BCom - 600,000 Fixed + 30,000 Discretionary Perfor',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Baker Tilly One India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC213'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC199',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Baker Tilly One India',
    'Drive 1',
    'Junior Associate – Tax',
    'BCom - 600,000 Fixed + 30,000 Discretionary Perfor',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Baker Tilly One India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC199'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC104',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Baker Tilly One India',
    'Drive 1',
    'Junior Associate – Tax',
    'BCom - 600,000 Fixed + 30,000 Discretionary Perfor',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Baker Tilly One India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC104'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC57',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Baker Tilly One India',
    'Drive 1',
    'Junior Associate – Tax',
    'BCom - 600,000 Fixed + 30,000 Discretionary Perfor',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Baker Tilly One India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC57'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC447',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Baker Tilly One India',
    'Drive 1',
    'Junior Associate – Tax',
    'BCom - 600,000 Fixed + 30,000 Discretionary Perfor',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Baker Tilly One India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC447'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC456',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Baker Tilly One India',
    'Drive 1',
    'Junior Associate – Tax',
    'BCom - 600,000 Fixed + 30,000 Discretionary Perfor',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Baker Tilly One India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC456'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC670',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Baker Tilly One India',
    'Drive 1',
    'Junior Associate – Tax',
    'BCom - 600,000 Fixed + 30,000 Discretionary Perfor',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Baker Tilly One India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC670'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_M25PBIA12_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Baker Tilly One India',
    'Drive 1',
    'Junior Associate – Tax',
    'BCom - 600,000 Fixed + 30,000 Discretionary Perfor',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Baker Tilly One India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_M25PBIA12_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC534',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Baker Tilly One India',
    'Drive 1',
    'Junior Associate – Tax',
    'BCom - 600,000 Fixed + 30,000 Discretionary Perfor',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Baker Tilly One India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC534'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC185',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Societe Generale',
    'Drive 1',
    'Analyst',
    '3,83,216 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Societe Generale' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC185'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC229',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Breathe ESG',
    'Drive 1',
    'Sales Development Representative',
    '',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Breathe ESG' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC229'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC67',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Breathe ESG',
    'Drive 1',
    'Sales Development Representative',
    '',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Breathe ESG' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC67'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC503',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG Global',
    'Drive 2',
    'Audit Associate',
    '3.65LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG Global' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC503'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC296',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG Global',
    'Drive 2',
    'Audit Associate',
    '3.65LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG Global' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC296'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC411',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG Global',
    'Drive 2',
    'Audit Associate',
    '3.65LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG Global' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC411'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC235',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG Global',
    'Drive 2',
    'Audit Associate',
    '3.65LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG Global' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC235'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC46',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG Global',
    'Drive 2',
    'Audit Associate',
    '3.65LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG Global' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC46'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC254',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG Global',
    'Drive 2',
    'Audit Associate',
    '3.65LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG Global' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC254'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC75',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'KPMG Global',
    'Drive 2',
    'Audit Associate',
    '3.65LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'KPMG Global' AND d.drive_no = 'Drive 2'
WHERE s.upid = 'MCC25PLC75'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC1',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Societe Generale',
    'Drive 1',
    'Analyst',
    '3,83,216 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Societe Generale' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC1'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC758',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Learning Routes Pvt',
    'Drive 1',
    'Sales Associate',
    'UG -5,70,000 ; PG - 6,60,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Learning Routes Pvt' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC758'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC489',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Learning Routes Pvt',
    'Drive 1',
    'Sales Associate',
    'UG -5,70,000 ; PG - 6,60,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Learning Routes Pvt' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC489'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC289',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Learning Routes Pvt',
    'Drive 1',
    'Sales Associate',
    'UG -5,70,000 ; PG - 6,60,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Learning Routes Pvt' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC289'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC1023',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    ' Learning Routes Pvt',
    'Drive 1',
    'Sales Associate',
    'UG -5,70,000 ; PG - 6,60,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = ' Learning Routes Pvt' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC1023'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC659',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Compulease Networks',
    'Drive 1',
    'Inside Sales Specialist',
    '5.5LPA - 6LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Compulease Networks' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC659'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC375',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Compulease Networks',
    'Drive 1',
    'Key Account Managers',
    '5.5LPA - 6LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Compulease Networks' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC375'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC236',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Accenture ',
    'Drive 1',
    'S&C Delivery Associate',
    '6,96,000',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Accenture ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC236'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC342',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'GrowthSchool',
    'Drive 1',
    ' Graduate Trainee',
    '9 LPA ;Fixed: ₹4.5 LPA ,Variable: ₹4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'GrowthSchool' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC342'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC818',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'GrowthSchool',
    'Drive 1',
    ' Graduate Trainee',
    '9 LPA ;Fixed: ₹4.5 LPA ,Variable: ₹4.5 LPA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'GrowthSchool' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC818'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC212',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Jaro Education',
    'Drive 1',
    'Management Trainee ',
    'CTC - 13,96,000PM (Zone 1 - Mumbai, Pune, Bengalur',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Jaro Education' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC212'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC643',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Evolve Back (Orange County)',
    'Drive 1',
    'Sales Executive',
    'UG: INR 41,343 pm; PG: INR 44, 982',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Evolve Back (Orange County)' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC643'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC558',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Evolve Back (Orange County)',
    'Drive 1',
    'Sales Executive',
    'UG: INR 41,343 pm; PG: INR 44, 982',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Evolve Back (Orange County)' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC558'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC109',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Evolve Back (Orange County)',
    'Drive 1',
    'Sales Executive',
    'UG: INR 41,343 pm; PG: INR 44, 982',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Evolve Back (Orange County)' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC109'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC536',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Adecco India',
    'Drive 1',
    'Finance Trainee',
    '4,50,000 fixed plus 10% yearly variable',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Adecco India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC536'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC316',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Adecco India',
    'Drive 1',
    'Finance Trainee',
    '4,50,000 fixed plus 10% yearly variable',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Adecco India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC316'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC657',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Adecco India',
    'Drive 1',
    'Finance Trainee',
    '4,50,000 fixed plus 10% yearly variable',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Adecco India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC657'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC568',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Adecco India',
    'Drive 1',
    'Finance Trainee',
    '4,50,000 fixed plus 10% yearly variable',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Adecco India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC568'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC17',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Adecco India',
    'Drive 1',
    'Finance Trainee',
    '4,50,000 fixed plus 10% yearly variable',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Adecco India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC17'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC627',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Adecco India',
    'Drive 1',
    'Finance Trainee',
    '4,50,000 fixed plus 10% yearly variable',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Adecco India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC627'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC535',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Adecco India',
    'Drive 1',
    'Finance Trainee',
    '4,50,000 fixed plus 10% yearly variable',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Adecco India' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC535'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC124',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deloitte India ',
    'Drive 1',
    ' Operate - Associate Analyst',
    '3,19,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deloitte India ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC124'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC196',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deloitte India ',
    'Drive 1',
    ' Operate - Associate Analyst',
    '3,19,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deloitte India ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC196'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC_MC232417_2026',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deloitte India ',
    'Drive 1',
    ' Operate - Associate Analyst',
    '3,19,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deloitte India ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC_MC232417_2026'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC130',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deloitte India ',
    'Drive 1',
    ' Operate - Associate Analyst',
    '3,19,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deloitte India ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC130'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC878',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deloitte India ',
    'Drive 1',
    ' Operate - Associate Analyst',
    '3,19,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deloitte India ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC878'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC684',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deloitte India ',
    'Drive 1',
    ' Operate - Associate Analyst',
    '3,19,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deloitte India ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC684'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC72',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deloitte India ',
    'Drive 1',
    ' Operate - Associate Analyst',
    '3,19,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deloitte India ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC72'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC493',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deloitte India ',
    'Drive 1',
    ' Operate - Associate Analyst',
    '3,19,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deloitte India ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC493'
LIMIT 1;

INSERT INTO placed_students
(student_id, drive_id, upid, program_type, program, course, reg_no, student_name, email, phone_no,
 company_name, drive_no, role, ctc, stipend, offer_letter_accepted, offer_letter_received,
 joining_status, comment, filled_on_off_form, placement_batch, offer_type)
SELECT
    s.student_id,
    d.drive_id,
    'MCC25PLC248',
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    'Deloitte India ',
    'Drive 1',
    ' Operate - Associate Analyst',
    '3,19,000PA',
    '',
    'unknown',
    'unknown',
    'unknown',
    '',
    'not filled',
    'original',
    (SELECT offer_type FROM drive_roles WHERE drive_id = d.drive_id LIMIT 1)
FROM students s
JOIN drives d ON d.company_name = 'Deloitte India ' AND d.drive_no = 'Drive 1'
WHERE s.upid = 'MCC25PLC248'
LIMIT 1;

SET FOREIGN_KEY_CHECKS = 1;

SELECT 'Imported 212 placed students' AS Status;
SELECT COUNT(*) as total FROM placed_students;
