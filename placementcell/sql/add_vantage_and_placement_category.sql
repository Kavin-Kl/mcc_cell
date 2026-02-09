-- Add columns for Vantage tracking and placement categorization
-- Run this migration to support Vantage and Internship features

-- Add vantage_participant column to track Vantage event participants
ALTER TABLE `students`
ADD COLUMN `vantage_participant` ENUM('yes', 'no') DEFAULT 'no'
COMMENT 'Tracks if student is registered for Vantage event'
AFTER `year_of_passing`;

-- Add vantage_placed column to track Vantage placements
ALTER TABLE `students`
ADD COLUMN `vantage_placed` ENUM('yes', 'no') DEFAULT 'no'
COMMENT 'Tracks if student got placed through Vantage'
AFTER `vantage_participant`;

-- Add placement_category to differentiate placement types
-- This helps filter between final year (full-time), internship, and vantage placements
ALTER TABLE `students`
ADD COLUMN `placement_category` ENUM('full-time', 'internship', 'vantage', 'none') DEFAULT 'none'
COMMENT 'Category of placement opportunity student is eligible for'
AFTER `vantage_placed`;

-- Add index for faster filtering
ALTER TABLE `students` ADD INDEX `idx_vantage_participant` (`vantage_participant`);
ALTER TABLE `students` ADD INDEX `idx_vantage_placed` (`vantage_placed`);
ALTER TABLE `students` ADD INDEX `idx_placement_category` (`placement_category`);

-- Update existing students based on their year
-- Final year students (4th year/3rd year PG) -> full-time
-- 1st and 2nd year students -> internship
UPDATE `students`
SET `placement_category` = CASE
    WHEN `class` IN ('Fourth Year', 'Third Year') THEN 'full-time'
    WHEN `class` IN ('First Year', 'Second Year') THEN 'internship'
    ELSE 'none'
END
WHERE `placement_category` = 'none';
