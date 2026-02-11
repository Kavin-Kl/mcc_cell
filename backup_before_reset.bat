@echo off
echo Creating backup of your database...
echo.

cd C:\xampp\mysql\bin

echo Backing up admin_placement_db...
mysqldump -u root -P 3308 admin_placement_db > "C:\Users\Kavin\Downloads\placementcell041225\admin_placement_db_backup.sql"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✓ Backup created successfully!
    echo File: C:\Users\Kavin\Downloads\placementcell041225\admin_placement_db_backup.sql
    echo.
    echo You can now safely do the MySQL reset.
) else (
    echo.
    echo ✗ Backup failed! Do NOT proceed with reset yet.
)

pause
