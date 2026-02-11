-- Fix the sync issue by marking applications as 'placed'
USE admin_placement_db;

-- Update applications to 'placed' status for all placed students
UPDATE applications a
JOIN placed_students ps ON a.student_id = ps.student_id AND a.drive_id = ps.drive_id
SET a.status = 'placed'
WHERE a.status != 'placed';

SELECT CONCAT('Updated ', ROW_COUNT(), ' applications to placed status') AS Status;
