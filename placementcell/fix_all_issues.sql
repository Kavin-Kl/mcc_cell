-- ===============================================
-- COMPREHENSIVE FIX SCRIPT FOR PLACEMENT SYSTEM
-- Run this directly in phpMyAdmin or MySQL client
-- ===============================================

-- 1. SYNC PLACED_STUDENTS TABLE
-- This ensures placed_students table is up to date with applications

-- First, let's see what we have
SELECT 'Current placed_students count:' as info, COUNT(*) as count FROM placed_students;
SELECT 'Applications with placed status:' as info, COUNT(*) as count FROM applications WHERE status = 'placed';

-- Delete orphaned records (students not actually placed)
DELETE ps FROM placed_students ps
LEFT JOIN applications a
    ON ps.student_id = a.student_id
    AND ps.drive_id = a.drive_id
    AND ps.role_id = a.role_id
    AND COALESCE(ps.placement_batch, 'original') = COALESCE(a.placement_batch, 'original')
WHERE a.application_id IS NULL
   OR a.status != 'placed';

-- Insert missing placed students
INSERT INTO placed_students
(student_id, drive_id, role_id, upid, program_type, program, course, reg_no, student_name, email, phone_no, drive_no, company_name, role, ctc, stipend, offer_type, placement_batch, percentage)
SELECT DISTINCT
    s.student_id,
    a.drive_id,
    a.role_id,
    s.upid,
    s.program_type,
    s.program,
    s.course,
    s.reg_no,
    s.student_name,
    s.email,
    s.phone_no,
    d.drive_no,
    d.company_name,
    dr.designation_name,
    dr.ctc,
    dr.stipend,
    dd.offer_type,
    COALESCE(a.placement_batch, 'original'),
    COALESCE(a.percentage, s.percentage)
FROM applications a
INNER JOIN students s ON a.student_id = s.student_id
INNER JOIN drives d ON a.drive_id = d.drive_id
INNER JOIN drive_roles dr ON a.role_id = dr.role_id
LEFT JOIN drive_data dd ON a.drive_id = dd.drive_id AND a.role_id = dd.role_id
WHERE a.status = 'placed'
AND NOT EXISTS (
    SELECT 1 FROM placed_students ps
    WHERE ps.student_id = a.student_id
    AND ps.drive_id = a.drive_id
    AND ps.role_id = a.role_id
    AND COALESCE(ps.placement_batch, 'original') = COALESCE(a.placement_batch, 'original')
);

-- Verify the fix
SELECT 'After sync - placed_students count:' as info, COUNT(*) as count FROM placed_students;

-- 2. FIX DUPLICATE STUDENTS IN QUERIES
-- This is already fixed in PHP code with GROUP BY, but let's verify data

-- Check for any duplicate student_id in students table (there shouldn't be any)
SELECT student_id, COUNT(*) as count
FROM students
GROUP BY student_id
HAVING count > 1;

-- If any duplicates exist, you'll need to manually review and delete them

-- 3. FIX RESUME FILE PATHS
-- Update old resume paths to new structure
UPDATE applications
SET resume_file = CONCAT('uploads/resumes/', SUBSTRING_INDEX(resume_file, '/', -1))
WHERE resume_file IS NOT NULL
  AND resume_file != ''
  AND resume_file NOT LIKE 'uploads/resumes/%'
  AND resume_file LIKE 'uploads/%';

-- 4. VERIFY HIRED COUNTS PER DRIVE
-- This query shows actual hired counts
SELECT
    d.drive_id,
    d.company_name,
    d.drive_no,
    dr.role_id,
    dr.designation_name,
    COUNT(DISTINCT ps.student_id) as hired_count
FROM drives d
INNER JOIN drive_roles dr ON d.drive_id = dr.drive_id
LEFT JOIN placed_students ps ON d.drive_id = ps.drive_id AND dr.role_id = ps.role_id
GROUP BY d.drive_id, d.drive_no, d.company_name, dr.role_id, dr.designation_name
ORDER BY d.drive_no DESC, d.company_name, dr.role_id;

-- 5. CHECK FOR MISSING JD AND FORM LINKS
SELECT
    drive_id,
    company_name,
    drive_no,
    CASE
        WHEN (jd_file IS NULL OR jd_file = '') AND (jd_link IS NULL OR jd_link = '') THEN 'MISSING JD'
        ELSE 'Has JD'
    END as jd_status,
    CASE
        WHEN form_link IS NULL OR form_link = '' THEN 'MISSING FORM'
        ELSE 'Has Form'
    END as form_status
FROM drives
ORDER BY drive_no DESC;

-- 6. FINAL VERIFICATION QUERIES
SELECT 'SUMMARY REPORT' as '================';
SELECT 'Total Students:' as metric, COUNT(*) as value FROM students;
SELECT 'Total Applications:' as metric, COUNT(*) as value FROM applications;
SELECT 'Placed Applications:' as metric, COUNT(*) as value FROM applications WHERE status = 'placed';
SELECT 'Placed Students Records:' as metric, COUNT(*) as value FROM placed_students;
SELECT 'Total Drives:' as metric, COUNT(*) as value FROM drives;
SELECT 'Drives with JD:' as metric, COUNT(*) as value FROM drives WHERE (jd_file IS NOT NULL AND jd_file != '') OR (jd_link IS NOT NULL AND jd_link != '');
SELECT 'Drives with Form:' as metric, COUNT(*) as value FROM drives WHERE form_link IS NOT NULL AND form_link != '';

-- ===============================================
-- NOTES:
-- 1. Run this script in phpMyAdmin SQL tab
-- 2. After running, clear browser cache (Ctrl+F5)
-- 3. If hired counts still show 0, check if applications have status='placed'
-- 4. To add JD for a drive, use: UPDATE drives SET jd_link = 'your_link' WHERE drive_id = XX;
-- ===============================================
