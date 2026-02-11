-- Step 1: Clear old company and offer letter data
USE admin_placement_db;

-- Clear old offer letter collection data
DELETE FROM on_off_campus_students;

-- Clear old company tracker data (if table exists)
DELETE FROM drive_data WHERE 1=1;

-- Show result
SELECT 'Old data cleared successfully!' AS Status;
SELECT COUNT(*) AS remaining_records FROM on_off_campus_students;
