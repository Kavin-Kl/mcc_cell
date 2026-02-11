-- Disable foreign key checks to avoid constraint errors during import
SET FOREIGN_KEY_CHECKS = 0;

-- Drop database if exists and recreate
DROP DATABASE IF EXISTS admin_placement_db;
CREATE DATABASE admin_placement_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE admin_placement_db;

-- Now you need to paste the contents of your admin_placement_db.sql file HERE
-- (everything EXCEPT the CREATE DATABASE line if it has one)

-- Re-enable foreign key checks at the end
SET FOREIGN_KEY_CHECKS = 1;

SELECT 'Database import ready - now paste your SQL file content between the USE and SET FOREIGN_KEY_CHECKS lines' AS Instructions;
