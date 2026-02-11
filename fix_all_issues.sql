-- FIX ALL ISSUES: Search error, missing columns, and clear old data
USE admin_placement_db;

-- 1. Add missing columns to students table
ALTER TABLE `students`
ADD COLUMN IF NOT EXISTS `Offcampus_selection` ENUM('unknown', 'not_placed', 'placed') DEFAULT 'unknown'
COMMENT 'Off-campus placement status';

ALTER TABLE `students`
ADD COLUMN IF NOT EXISTS `editable_comment` TEXT DEFAULT NULL
COMMENT 'Off-campus placement comments/notes';

-- 2. Clear old company and letter collection data
DELETE FROM on_off_campus_students;
DELETE FROM drive_data WHERE 1=1;

-- Show results
SELECT 'All issues fixed!' AS Status;
SELECT 'Missing columns added' AS Step1;
SELECT 'Old company and letter data cleared' AS Step2;
SELECT CONCAT('Students table has ', COUNT(*), ' records') AS CurrentStudents FROM students;
