-- Permanent fix for placed_students table
USE admin_placement_db;

-- Drop foreign key constraints that might be causing cascade deletes
ALTER TABLE placed_students DROP FOREIGN KEY placed_students_ibfk_1;
ALTER TABLE placed_students DROP FOREIGN KEY placed_students_ibfk_2;
ALTER TABLE placed_students DROP FOREIGN KEY placed_students_ibfk_3;

-- Drop the unique constraint that requires role_id
ALTER TABLE placed_students DROP KEY unique_placed;

-- Add back foreign keys WITHOUT cascade delete
ALTER TABLE placed_students
ADD CONSTRAINT placed_students_ibfk_1
FOREIGN KEY (student_id) REFERENCES students(student_id)
ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE placed_students
ADD CONSTRAINT placed_students_ibfk_2
FOREIGN KEY (drive_id) REFERENCES drives(drive_id)
ON DELETE NO ACTION ON UPDATE CASCADE;

-- Don't add back role_id constraint since we set it to NULL

SELECT 'Foreign key constraints fixed' AS Status;
