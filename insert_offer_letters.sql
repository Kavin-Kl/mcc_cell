-- Insert offer letter collection data
USE admin_placement_db;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS ',
    'Janhavi Samit Pawar ',
    'MC223624 ',
    'MCC24PLC146 ',
    'janhavipawar8577@gmail.com',
    'Assurance ',
    'B.Com Honors ',
    '6361613387',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC24PLC146 ' OR reg_no = 'MC223624 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY  GDS ',
    'HEMA.S',
    'MC233522',
    'MCC25PLC268',
    'hemashekar2113@gmail.com',
    'Tax Analyst ',
    'BCOM SF (UG)',
    '7975051769',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC268' OR reg_no = 'MC233522'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY-GDS',
    'Preksha A',
    'MC233242',
    'MCC25PLC749',
    'prekshamymails@gmail.com',
    'Assurance ',
    'B.com Industry Integrated ',
    '8867342063',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC749' OR reg_no = 'MC233242'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY Global Delivery Services India LLP',
    'Khushi A Kumar ',
    'MC223238 ',
    'MCC25PLC110 ',
    'khushiashwinkumar@gmail.com',
    'Assurance ',
    'Bcom Honours ',
    '8867656571',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC110 ' OR reg_no = 'MC223238 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'RSM US LLP',
    'Varsha Sathyanarayanan ',
    'MC233373',
    'MCC25PLC82',
    'varshaveesa@gmail.com',
    'Associate 1, Assurance',
    'B.Com International Accounting and Finance',
    '8861320689',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC82' OR reg_no = 'MC233373'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS ',
    'Varsha K Ravi ',
    'MC233372 ',
    'MCC25PLC155',
    'varshakadambi@gmail.com',
    'Tax analyst ',
    'BCom IAF',
    '9035399028',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC155' OR reg_no = 'MC233372 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'RSM',
    'Diya R',
    'MC233319',
    'MCC25PLC83',
    'diyar2865@gmail.com',
    'Audit Associate',
    'B.Com - IAF (International Accounting & Finance)',
    '8088964030',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC83' OR reg_no = 'MC233319'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Manya .S. P',
    'MC233539',
    'MCC25PLC137',
    'manyasp12@gmail.com',
    'Audit Assurance ',
    'B.com Strategic Finance ',
    '9036179427',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC137' OR reg_no = 'MC233539'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Kalvium ',
    'Shireen javed',
    'MB237147',
    'MCC25PLC66',
    'sheenjbhat@gmail.com',
    'Founder’s intern ',
    'Bba regular',
    '9906433572',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC66' OR reg_no = 'MB237147'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Naksha Vinod',
    'MB237232',
    'MCC25PLC_MB237232_2026',
    'nakshavinod45@gmail.com',
    'Operations analyst under tax',
    'UG BBA Business Analytics ',
    '9663687258',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC_MB237232_2026' OR reg_no = 'MB237232'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Kalvium',
    'Namitha Baiju',
    'MB237111',
    'MCC25PLC77',
    'namithabaiju0203@gmail.com',
    'Founder’s intern',
    'BBA- REGULAR',
    '7406142329',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC77' OR reg_no = 'MB237111'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Ankeeta',
    'MC232056',
    'MCC25PLC31',
    'ankeeta916@gmail.com',
    'Assurance associate ',
    'Bachelors of Commerce ',
    '9845744764',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC31' OR reg_no = 'MC232056'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Nitasha Jasmine John',
    'MC233441',
    'MCC25PLC506',
    'nitashajasminej@gmail.com',
    'Audit and Assurance',
    'BCom Proffesional ',
    '9035620734',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC506' OR reg_no = 'MC233441'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Ramya S ',
    'MC232512 ',
    'MCC25PLC445',
    'itsramyas.2005@gmail.com',
    'Assurance ',
    'Bcom General ',
    '7483473346',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC445' OR reg_no = 'MC232512 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Goldman Sachs ',
    'Aditi Gudi ',
    'MC233504',
    'MCC25PLC_MC233504_2026',
    'aditigudi2005@gmail.com',
    'Analyst',
    'BCom Strategic Finance ',
    '8310080662',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC_MC233504_2026' OR reg_no = 'MC233504'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'K Prithvika ',
    'MC232237',
    'MCC25PLC470',
    'prithvika6@gmail.com',
    'Assurance associate ',
    'Bcom general ''c'' ',
    '8197713704',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC470' OR reg_no = 'MC232237'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Sania Fathima ',
    'MB237245',
    'MCC25PLC868',
    'fathimasania76@gmail.com',
    'Tax Data Operator ',
    'BBA-Business Analytics ',
    '9206838162',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC868' OR reg_no = 'MB237245'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Razia Aafrin',
    'MB237238',
    'MCC25PLC74',
    'raziaaafrin505@gmail.com',
    'Tax data operate analyst ',
    'BBA-Business Analytics ',
    '8792161636',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC74' OR reg_no = 'MB237238'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Ey GDS',
    'P veena ',
    'M24MBA61 ',
    'MCC25PLC624',
    'veenaparamareddy5@gmail.come',
    'Tax analyst ',
    'Pg MBA',
    '7386566905',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC624' OR reg_no = 'M24MBA61 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Krupa Bhawani Sethuraman ',
    'MC233031 ',
    'MCC25PLC117',
    'krupabhawani@gmail.com',
    'Assurance associate ',
    'BCOM Business Process Services ',
    '8296615578',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC117' OR reg_no = 'MC233031 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Nithya R Chavan',
    'MC233341',
    'MCC25PLC467',
    'rnithyachavan23@gmail.com',
    'Assurance Associate ',
    'B.com IAF',
    '9480531541',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC467' OR reg_no = 'MC233341'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'S R Prathiksha ',
    'M24MBA70',
    'MCC25PLC680',
    'prathikshaiyer15@gamil.com',
    'Tax analyst ',
    'MBA finance and analytics ',
    '6362350694',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC680' OR reg_no = 'M24MBA70'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'RSM',
    'Gurupriya Srinivasan',
    'MC233417',
    'MCC25PLC175',
    'gurupriyasrinivasan001@gmail.com',
    'Associate 1, Assurance',
    'Bcom Professional',
    '9487224428',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC175' OR reg_no = 'MC233417'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Embark',
    'Syeda Aamna Fathima ',
    'MB237255',
    'MCC25PLC931',
    'aamnafathimasyeda@gmail.com',
    'talent acquisition ',
    'BBA business analytics ',
    '8660613653',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC931' OR reg_no = 'MB237255'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS India',
    'SULAGNA DUTTA',
    'MC223132',
    'MCC25PLC113',
    'sulagna733@gmail.com',
    'ASSURANCE',
    'UG- BCOM HONOURS(CF)',
    '7584010692',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC113' OR reg_no = 'MC223132'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Kavya U ',
    'MC232245',
    'MCC25PLC345',
    'kauva026@gmail.com',
    'Assurance',
    'Bachelor of Commerce (General)',
    '8073020569',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC345' OR reg_no = 'MC232245'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS ',
    'Sayeeda Fathima ',
    'MC223657',
    'MCC24PLC429',
    'sayeedafathima2004@gmail.Com',
    'Assurance ',
    'BCOM Honours ',
    '8147009217',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC24PLC429' OR reg_no = 'MC223657'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY',
    'Annavarapu Rajyalakshmi',
    'MC223504',
    'MCC25PLC784',
    'arajyalakshmi16092@gmail.com',
    'Tax Analyst',
    'B.COM - Honours',
    '6362349690',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC784' OR reg_no = 'MC223504'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'RSM ',
    'Noorul Huda',
    'MC233342',
    'MCC25PLC386',
    'noorulhuda7779@gmail.com',
    'Audit Associate',
    'B.Com International Accounting and Finance',
    '9740919079',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC386' OR reg_no = 'MC233342'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'YESHICA SHIVARAM',
    'MB237261',
    'MCC25PLC790',
    'yeshicashivaram01@gmail.com',
    'TAX-DATA OPERATE ANALYST',
    'BBA BUSINESS ANALYTICS',
    '9742498210',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC790' OR reg_no = 'MB237261'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Viharika Poojasree S',
    'MB237260',
    'MCC25PLC177',
    'viharikas03@gmail.com',
    'Data Operate',
    'BBA Business Analytics',
    '7411453201',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC177' OR reg_no = 'MB237260'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'RSM US LLP ',
    'Tejaswini C K ',
    'MC233368',
    'MCC25PLC244',
    'tejaswinick0915@gmail.com',
    'Audit Associate ',
    'BCOM - International Accounting and Finance ',
    '8867713332',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC244' OR reg_no = 'MC233368'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'RSM US integrated services India Pvt. Ltd ',
    'Karishma D',
    'MC233121',
    'MCC25PLC674',
    'karishma7627@gmail.com',
    'Audit Associate ',
    'BCom-Corporate Finance ',
    '9555692072',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC674' OR reg_no = 'MC233121'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Deeksha Shree R',
    'MC223609',
    'MCC_PLC_Reg_734',
    'deekshashree16404@gmail.com',
    'Tax',
    '4th year B.com Honors',
    '7795373958',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC_PLC_Reg_734' OR reg_no = 'MC223609'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Bambinos',
    'Muskan Fathima',
    'MB237106',
    'MCC25PLC857',
    'muskanfathima027@gmail.com',
    'Business development executive ',
    'BBA( bachelors in business administration)',
    '7975961687',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC857' OR reg_no = 'MB237106'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'BAMBINOS',
    'Stuti P Worah ',
    'MC233567',
    'MCC25PLC238',
    'stutiworah@gmail.com',
    'BUSINESS DEVELOPMENT ASSOCIATE ',
    'UG',
    '9513166331',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC238' OR reg_no = 'MC233567'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Ernst & Young (GDS)',
    'Karthika L',
    ' M24FA06',
    ' MCC25PLC310',
    'karthikanarayan14@gmail.com',
    'Tax Anaysts',
    'M.Com (Financial Analysis)',
    '9600098241',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = ' MCC25PLC310' OR reg_no = ' M24FA06'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Bambino''s . live ',
    'Swetha Pandey ',
    'MC232644 ',
    'MCC25PLC50 ',
    'swethapandey013@gmail.com',
    'Business Development Associate ',
    'B.com general G section ',
    '9110884167',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC50 ' OR reg_no = 'MC232644 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Vanshika Bhattacharya',
    'MC223149',
    'MCC25PLC120',
    'vanshikabhattacharya15@gmail.com',
    'Assurance analyst',
    'B.com honors (CF)',
    '9109784925',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC120' OR reg_no = 'MC223149'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Xanadu realty ',
    'Bhumi gupta ',
    'MC232119 ',
    'MCC25PLC715',
    'bhumi7303@gmail.com',
    'Sales ( Management traine)',
    'B.com gen',
    '8949714959',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC715' OR reg_no = 'MC232119 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS ',
    'PB POORNA SHREE',
    'MC233137',
    'MCC25PLC194',
    'pbpoornashree@gmail.com',
    'Assurance Staff',
    'Bcom - Corporate Finance',
    '7892942325',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC194' OR reg_no = 'MC233137'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'KPMG India',
    'TAMANNA E SUSHIL',
    'MC233569',
    'MCC25PLC21',
    'tamanna.sushil19@gmail.com',
    'risk analyst',
    'Bcom strategic finance',
    '8088271080',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC21' OR reg_no = 'MC233569'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'RSM ',
    'S Deva Dharshini ',
    'MC232142',
    'MCC25PLC126',
    'devadharshinis1000@gmail.com',
    'Associate 1 assurance ',
    'Bcom general (finance)',
    '9620554521',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC126' OR reg_no = 'MC232142'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY',
    'Swathi bk',
    'M24MBA52 ',
    'MCC25PLC227',
    'swathibk44@gmail.com',
    'Tax core',
    'MBA',
    '8123917503',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC227' OR reg_no = 'M24MBA52 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'KAITLYN MASCARENHAS NISHANTH',
    'MC223115',
    'MCC25PLC170',
    'kaitymnishanth5@gmail.com',
    'Assurance',
    'B.COM HONS',
    '7418631922',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC170' OR reg_no = 'MC223115'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'NIKITAA VENKATESH',
    'MC223639',
    'MCC25PLC440',
    'nikitaav@gmail.com',
    'AUDIT ASSURANCE',
    'UG BCOM HONOURS(SF)',
    '6385655347',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC440' OR reg_no = 'MC223639'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Akshaya P',
    'M24FA26',
    'MCC25PLC609',
    'akshayap1917@gmail.com',
    'Tax Analyst',
    'M.Com Financial Analysis',
    '9845573371',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC609' OR reg_no = 'M24FA26'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Arti Kumari ',
    'MC232280',
    'MCC25PLC153',
    'karti180905@gmail.com',
    'Assurance ',
    'B.com General ',
    '8125509190',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC153' OR reg_no = 'MC232280'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY',
    'Neha Elizabeth Abraham',
    'MC233339',
    'MCC25PLC419',
    'nehaelizaby@gmail.com',
    'Taxation',
    'B.Com IAF(International Accounting and Finance)',
    '8129532165',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC419' OR reg_no = 'MC233339'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Ey gde',
    'Anushika Anand',
    'MC232062',
    'MCC25PLC81',
    'anandanushika5@gmail.com',
    'Assurance analyst',
    'Bcom general A ',
    '7739488639',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC81' OR reg_no = 'MC232062'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'bambino''s.live ',
    'Arfa Baig',
    'MC233008',
    'MCC25PLC487',
    '4.arfabaig.10d@gmail.com',
    'Business Development Associate ',
    'B.com-Business Process services',
    '7899137075',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC487' OR reg_no = 'MC233008'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Deeksha N',
    'MC232138',
    'MCC25PLC745',
    'deekshan151@gmail.com',
    'Tax Analyst',
    'B.com Regular',
    '7795523507',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC745' OR reg_no = 'MC232138'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'RSM US LLP',
    'Asmath Afza N',
    'MC233311',
    'MCC25PLC256',
    'asmathafza3@gmail.com',
    'Audit Associate ',
    'BCOM IAF',
    '8217779421',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC256' OR reg_no = 'MC233311'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'KPMG ',
    'Ridhika Anand ',
    'MC223650 ',
    'MCCPLC_MC223650_727',
    'ridhikaanand17@gmail.com',
    'Risk Analyst ',
    'Ug',
    '8603332620',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCCPLC_MC223650_727' OR reg_no = 'MC223650 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Goldman Sachs',
    'Adithi A R',
    'MS235101',
    'MCC25PLC_MS235101_2026',
    'adithiar05@gmail.com',
    'Operations Analyst',
    'B.Sc Data Science',
    '8792257434',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC_MS235101_2026' OR reg_no = 'MS235101'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Goldman Sachs ',
    'Kalyani V Pillai ',
    'MC232241 ',
    ' MCC25PLC_MC232241_2026',
    'kalyanipillai2005@gmail.com',
    'Operations Analyst ',
    'B.com General',
    '6364689615',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = ' MCC25PLC_MC232241_2026' OR reg_no = 'MC232241 '
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Salesforce',
    'Nukso Chakma',
    'MA221012',
    'NULL',
    'nukso.chakma@gmail.com',
    'Technical Writer Analyst',
    'BA Communication Studies ',
    '9591565001',
    'yes',
    'no',
    'on',
    2026,
    'not_registered'
FROM students
WHERE upid = 'NULL' OR reg_no = 'MA221012'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Sahana Kulkarni',
    'MS235143',
    ' MCC25PLC41',
    'sahanakulkarni49@gmail.com',
    'Tax Data Operator',
    'BSc Data Science',
    '8971060662',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = ' MCC25PLC41' OR reg_no = 'MS235143'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY',
    'Druthi R',
    'MC232154',
    'MCC25PLC262',
    'druthir06@gmail.com',
    'Assurance',
    'Bcom Regular',
    '8618797387',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC262' OR reg_no = 'MC232154'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Bain Capability Network',
    'Ritu Vinod',
    'MC233555',
    'MCC25PLC204',
    'rituvinod5434@gmail.com',
    'Analyst',
    'BCOM SF',
    '7022094002',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC204' OR reg_no = 'MC233555'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Umae Haani',
    'MC232701',
    'MCC25PLC8 ',
    'haaniumae01@gmail.com',
    'Assurance ',
    'B.Com - Regular ',
    '7204517963',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC8 ' OR reg_no = 'MC232701'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'AARIBA ZEYA',
    'MC233101',
    'MCC25PLC853',
    'aaribazeya02@gmail.com',
    'TAX ANALYST ',
    'B.com  Corporate Finance',
    '8210365498',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC853' OR reg_no = 'MC233101'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Acies Global',
    'Natasha Hirje',
    'MS234926',
    'MCC25PLC135',
    'natashahirje@gmail.com',
    'Associate',
    'Bsc Economics and Statistics',
    '7666297595',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC135' OR reg_no = 'MS234926'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Goldman Sachs',
    'Nandita Shankar',
    'MC232414',
    'NULL',
    'nanditashankar10@gmail.com',
    'Analyst',
    'BCom Regular',
    '8296732809',
    'yes',
    'no',
    'on',
    2026,
    'not_registered'
FROM students
WHERE upid = 'NULL' OR reg_no = 'MC232414'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Akhila M R ',
    'MC233304',
    'MCC25PLC475',
    'akhilaaa26@gmail.com',
    'Assurance audit ',
    'Bcom IAF ',
    '9901232005',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC475' OR reg_no = 'MC233304'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS ',
    'B R SUBRAHMANYA',
    'M24MBA116',
    'MCC25PLC678',
    'subrahmanyabr2003@gmail.com',
    'Tax ANALYST ',
    'MBA ',
    '7975657827',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC678' OR reg_no = 'M24MBA116'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Goldman Sachs',
    'Zahraa Ilyas',
    'MC233375',
    'MCC25PLC_MC233375_2026',
    'zahraailyas23@gmail.com',
    'Analyst',
    'Bcom International Accounting and Finance',
    '8296683298',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC_MC233375_2026' OR reg_no = 'MC233375'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'EY GDS',
    'Archi Soni',
    'MS235109',
    'MCC25PLC425',
    'archi2004soni@gmail.com',
    'Tax Data Operation ',
    'B.Sc Data Science',
    '7828556635',
    'no',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC425' OR reg_no = 'MS235109'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Ditto by finshots',
    'M Niharika ',
    'MC233037',
    'MCC25PLC210',
    'niharikam2024@gmail.com',
    'Insurance advisory ',
    'B.Com bps ',
    '7761959942',
    'yes',
    'yes',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC210' OR reg_no = 'MC233037'
LIMIT 1;


INSERT INTO on_off_campus_students
(student_id, company_name, full_name, reg_no, upid, email, role, course_name, phone_no,
 offer_letter_received, intent_letter_received, campus_type, passing_year, register_type)
SELECT
    student_id,
    'Bambinos ',
    'Disha Kanwar',
    'MC233214',
    'MCC25PLC60',
    'dishakanwar909@gmail.com',
    'Business Development Associate ',
    'Bcom Industry Integrated ',
    '9098770256',
    'yes',
    'no',
    'on',
    2026,
    'registered'
FROM students
WHERE upid = 'MCC25PLC60' OR reg_no = 'MC233214'
LIMIT 1;


SELECT 'Import completed!' AS Status, COUNT(*) AS TotalRecords FROM on_off_campus_students;
