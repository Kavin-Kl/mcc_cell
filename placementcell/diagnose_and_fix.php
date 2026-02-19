<?php
session_start();
if (!isset($_SESSION['admin_id'])) {
    die("Unauthorized access. Please <a href='index.php'>login as admin</a>.");
}

include("config.php");
include("header.php");

$fixes_applied = [];
$diagnostics = [];

// 1. Check and fix placed_students sync
$diagnostics[] = "<h4>1. Checking placed_students table sync</h4>";

// Count placed applications
$placed_apps = $conn->query("SELECT COUNT(*) as count FROM applications WHERE status = 'placed'")->fetch_assoc()['count'];
$diagnostics[] = "Applications with status='placed': <strong>$placed_apps</strong>";

// Count placed_students records
$placed_records = $conn->query("SELECT COUNT(*) as count FROM placed_students")->fetch_assoc()['count'];
$diagnostics[] = "Records in placed_students table: <strong>$placed_records</strong>";

if ($placed_apps > 0 && $placed_records < $placed_apps) {
    $diagnostics[] = "<span style='color: orange;'>⚠️ Mismatch detected. Running sync...</span>";

    include_once 'sync_placed_students.php';
    $sync_result = sync_placed_students($conn);

    $diagnostics[] = "Sync results: Inserted={$sync_result['inserted']}, Updated={$sync_result['updated']}, Deleted={$sync_result['deleted']}";
    if (!empty($sync_result['errors'])) {
        $diagnostics[] = "<span style='color: red;'>Errors: " . implode(", ", $sync_result['errors']) . "</span>";
    } else {
        $fixes_applied[] = "Synced placed_students table";
    }
}

// 2. Check for duplicate students in registered_students query
$diagnostics[] = "<h4>2. Checking for duplicate students</h4>";

$total_students = $conn->query("SELECT COUNT(*) as count FROM students")->fetch_assoc()['count'];
$diagnostics[] = "Total unique students in database: <strong>$total_students</strong>";

// Check query without GROUP BY to see if there are duplicates
$query_without_group = "
SELECT COUNT(*) as count FROM (
    SELECT s.student_id
    FROM students s
    LEFT JOIN (
        SELECT
            a1.student_id,
            a1.drive_id,
            a1.role_id,
            ROW_NUMBER() OVER (
                PARTITION BY a1.student_id
                ORDER BY
                    CASE a1.status
                        WHEN 'placed' THEN 1
                        WHEN 'blocked' THEN 2
                        WHEN 'original' THEN 3
                        ELSE 4
                    END,
                    a1.status_changed DESC
            ) AS rn
        FROM applications a1
        WHERE a1.placement_batch IN ('original', 'reapplied')
    ) ra ON s.student_id = ra.student_id AND ra.rn = 1
    LEFT JOIN drives d ON ra.drive_id = d.drive_id
    LEFT JOIN drive_roles dr ON ra.role_id = dr.role_id
    LEFT JOIN drive_data dd ON ra.drive_id = dd.drive_id AND ra.role_id = dd.role_id
) as subquery
";

$without_group = $conn->query($query_without_group)->fetch_assoc()['count'];
$diagnostics[] = "Students returned without GROUP BY: <strong>$without_group</strong>";

if ($without_group > $total_students) {
    $diagnostics[] = "<span style='color: orange;'>⚠️ Found " . ($without_group - $total_students) . " duplicate rows. GROUP BY is needed.</span>";
    $fixes_applied[] = "GROUP BY already applied in registered_students.php";
}

// 3. Check resume files
$diagnostics[] = "<h4>3. Checking resume files</h4>";

$resumes = $conn->query("SELECT application_id, resume_file FROM applications WHERE resume_file IS NOT NULL AND resume_file != ''");
$missing_resumes = 0;
$fixed_resumes = 0;

while ($row = $resumes->fetch_assoc()) {
    if (!file_exists($row['resume_file'])) {
        $missing_resumes++;

        // Try to find and fix
        $filename = basename($row['resume_file']);
        $possible_locations = [
            'uploads/' . $filename,
            'uploads/resumes/' . $filename
        ];

        foreach ($possible_locations as $path) {
            if (file_exists($path)) {
                // Create directory if needed
                if (!is_dir('uploads/resumes/')) {
                    mkdir('uploads/resumes/', 0777, true);
                }

                $new_path = 'uploads/resumes/' . $filename;
                if (copy($path, $new_path)) {
                    $conn->query("UPDATE applications SET resume_file = '$new_path' WHERE application_id = {$row['application_id']}");
                    $fixed_resumes++;
                }
                break;
            }
        }
    }
}

$diagnostics[] = "Missing resume files: <strong>$missing_resumes</strong>";
if ($fixed_resumes > 0) {
    $diagnostics[] = "<span style='color: green;'>✓ Fixed $fixed_resumes resume file paths</span>";
    $fixes_applied[] = "Fixed $fixed_resumes resume file paths";
}

// 4. Force refresh all drive hired counts
$diagnostics[] = "<h4>4. Recalculating hired counts for all drives</h4>";

$drives = $conn->query("SELECT drive_id, company_name, drive_no FROM drives");
$hired_stats = [];

while ($drive = $drives->fetch_assoc()) {
    $hired_count = $conn->query("
        SELECT COUNT(DISTINCT ps.student_id) as count
        FROM placed_students ps
        WHERE ps.drive_id = {$drive['drive_id']}
    ")->fetch_assoc()['count'];

    $hired_stats[] = "{$drive['company_name']} (Drive {$drive['drive_no']}): <strong>$hired_count</strong> hired";
}

$diagnostics[] = "<ul><li>" . implode("</li><li>", $hired_stats) . "</li></ul>";

// 5. Check JD and Form links
$diagnostics[] = "<h4>5. Checking JD and Form Links</h4>";

$drives_without_jd = $conn->query("
    SELECT drive_id, company_name, drive_no
    FROM drives
    WHERE (jd_file IS NULL OR jd_file = '')
    AND (jd_link IS NULL OR jd_link = '')
")->num_rows;

$diagnostics[] = "Drives without JD: <strong>$drives_without_jd</strong>";

$drives_without_form = $conn->query("
    SELECT drive_id, company_name
    FROM drives
    WHERE form_link IS NULL OR form_link = ''
")->num_rows;

$diagnostics[] = "Drives without form link: <strong>$drives_without_form</strong>";

// 6. Clear any PHP opcode cache
if (function_exists('opcache_reset')) {
    opcache_reset();
    $fixes_applied[] = "Cleared PHP opcode cache";
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Diagnostic & Fix Tool</title>
    <style>
        .container { padding: 20px; max-width: 1200px; margin: 0 auto; }
        .diagnostic-box { background: #f8f9fa; padding: 15px; margin: 10px 0; border-left: 4px solid #650000; }
        .success-box { background: #d4edda; padding: 15px; margin: 10px 0; border-left: 4px solid #28a745; }
        h3 { color: #650000; }
        h4 { color: #333; margin-top: 20px; }
        ul { margin: 10px 0; }
        .btn-group { margin: 20px 0; }
        .btn { padding: 10px 20px; margin: 5px; background: #650000; color: white; text-decoration: none; border-radius: 5px; display: inline-block; }
        .btn:hover { background: #450000; color: white; }
    </style>
</head>
<body>

<div class="container">
    <h3>🔧 Diagnostic & Fix Tool</h3>
    <p>This tool diagnoses and fixes common issues in the placement system.</p>

    <?php if (!empty($fixes_applied)): ?>
    <div class="success-box">
        <h4>✅ Fixes Applied:</h4>
        <ul>
            <?php foreach ($fixes_applied as $fix): ?>
                <li><?= htmlspecialchars($fix) ?></li>
            <?php endforeach; ?>
        </ul>
    </div>
    <?php endif; ?>

    <div class="diagnostic-box">
        <h4>📊 Diagnostic Results:</h4>
        <?php foreach ($diagnostics as $diag): ?>
            <div><?= $diag ?></div>
        <?php endforeach; ?>
    </div>

    <div class="btn-group">
        <a href="dashboard.php" class="btn">← Back to Dashboard</a>
        <a href="?refresh=1" class="btn">🔄 Run Again</a>
        <a href="fix_resume_paths.php" class="btn">📁 Fix Resume Paths</a>
        <a href="registered_students.php" class="btn">👥 View Students</a>
    </div>

    <div class="diagnostic-box" style="margin-top: 30px;">
        <h4>💡 Manual Steps to Complete:</h4>
        <ol>
            <li><strong>Clear browser cache:</strong> Press Ctrl+F5 (or Cmd+Shift+R on Mac) to hard refresh</li>
            <li><strong>Check placed applications:</strong> Make sure applications table has status='placed' for hired students</li>
            <li><strong>Verify drive data:</strong> Ensure drive_data table has matching drive_id and role_id entries</li>
            <li><strong>Add missing JDs:</strong> Edit drives that are missing JD files/links</li>
        </ol>
    </div>
</div>

</body>
</html>

<?php include("footer.php"); ?>
