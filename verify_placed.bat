@echo off
echo Checking placed_students table...
"C:\xampp\mysql\bin\mysql.exe" -u root -P 3308 -h 127.0.0.1 admin_placement_db -e "SELECT COUNT(*) as total FROM placed_students; SELECT upid, student_name, company_name FROM placed_students LIMIT 3;"
pause
