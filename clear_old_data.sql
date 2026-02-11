-- Clear old company and offer letter data
USE admin_placement_db;

-- Delete old data
DELETE FROM on_off_campus_students;
DELETE FROM drive_data;

-- Show counts
SELECT 'Data cleared successfully' AS Status;
