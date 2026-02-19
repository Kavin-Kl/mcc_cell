<?php
/**
 * ONE-CLICK FIX FOR ALL PLACEMENT SYSTEM ISSUES
 * This script applies all fixes automatically
 * Run this ONCE after updating code files
 */

session_start();
if (!isset($_SESSION['admin_id'])) {
    die("❌ Unauthorized access. Please <a href='index.php'>login as admin</a>.");
}

include("config.php");

// Disable output buffering to show progress in real-time
if (ob_get_level()) ob_end_clean();
header('Content-Type: text/html; charset=UTF-8');
flush();

?>
<!DOCTYPE html>
<html>
<head>
    <title>Apply All Fixes</title>
    <style>
        body { font-family: monospace; padding: 20px; background: #1e1e1e; color: #00ff00; }
        .success { color: #00ff00; }
        .error { color: #ff0000; }
        .warning { color: #ffaa00; }
        .info { color: #00aaff; }
        .step { margin: 10px 0; padding: 10px; background: #2d2d2d; border-left: 3px solid #00ff00; }
        h2 { color: #00ff00; }
    </style>
</head>
<body>

<h2>🔧 ONE-CLICK FIX SCRIPT</h2>
<p>Applying all fixes automatically...</p>
<hr>

<?php

function log_step($message, $type = 'info') {
    $class = $type;
    echo "<div class='step $class'>$message</div>";
    flush();
}

function run_query($conn, $sql, $description) {
    log_step("🔄 $description...", 'info');
    try {
        if ($conn->query($sql)) {
            $affected = $conn->affected_rows;
            log_step("✓ $description - Success ($affected rows affected)", 'success');
            return true;
        } else {
            log_step("✗ $description - Error: " . $conn->error, 'error');
            return false;
        }
    } catch (Exception $e) {
        log_step("✗ $description - Exception: " . $e->getMessage(), 'error');
        return false;
    }
}

// ==================== FIX 1: SYNC PLACED_STUDENTS ====================
log_step("📊 FIX 1: Syncing placed_students table", 'info');

// Delete orphaned records
$sql = "DELETE ps FROM placed_students ps
        LEFT JOIN applications a
            ON ps.student_id = a.student_id
            AND ps.drive_id = a.drive_id
            AND ps.role_id = a.role_id
        WHERE a.application_id IS NULL OR a.status != 'placed'";
run_query($conn, $sql, "Remove orphaned placed_students records");

// Insert missing records
$sql = "INSERT IGNORE INTO placed_students
        (student_id, drive_id, role_id, upid, program_type, program, course, reg_no, student_name, email, phone_no, drive_no, company_name, role, ctc, stipend, offer_type, placement_batch, percentage)
        SELECT DISTINCT
            s.student_id, a.drive_id, a.role_id, s.upid, s.program_type, s.program, s.course, s.reg_no, s.student_name,
            s.email, s.phone_no, d.drive_no, d.company_name, dr.designation_name, dr.ctc, dr.stipend,
            dd.offer_type, COALESCE(a.placement_batch, 'original'), COALESCE(a.percentage, s.percentage)
        FROM applications a
        INNER JOIN students s ON a.student_id = s.student_id
        INNER JOIN drives d ON a.drive_id = d.drive_id
        INNER JOIN drive_roles dr ON a.role_id = dr.role_id
        LEFT JOIN drive_data dd ON a.drive_id = dd.drive_id AND a.role_id = dd.role_id
        WHERE a.status = 'placed'";
run_query($conn, $sql, "Insert missing placed students");

// ==================== FIX 2: UPDATE RESUME PATHS ====================
log_step("📁 FIX 2: Fixing resume file paths", 'info');

$sql = "UPDATE applications
        SET resume_file = CONCAT('uploads/resumes/', SUBSTRING_INDEX(resume_file, '/', -1))
        WHERE resume_file IS NOT NULL
          AND resume_file != ''
          AND resume_file NOT LIKE 'uploads/resumes/%'
          AND resume_file LIKE 'uploads/%'";
run_query($conn, $sql, "Update resume paths to new structure");

// Create resumes directory if not exists
if (!is_dir('uploads/resumes/')) {
    mkdir('uploads/resumes/', 0777, true);
    log_step("✓ Created uploads/resumes/ directory", 'success');
}

// ==================== FIX 3: VERIFY DATA INTEGRITY ====================
log_step("🔍 FIX 3: Verifying data integrity", 'info');

// Check for duplicate students
$result = $conn->query("SELECT student_id, COUNT(*) as cnt FROM students GROUP BY student_id HAVING cnt > 1");
$duplicates = $result->num_rows;
if ($duplicates > 0) {
    log_step("⚠️  Found $duplicates duplicate student IDs - Manual review needed", 'warning');
} else {
    log_step("✓ No duplicate students found", 'success');
}

// ==================== FIX 4: CLEAR CACHES ====================
log_step("🗑️  FIX 4: Clearing caches", 'info');

if (function_exists('opcache_reset')) {
    opcache_reset();
    log_step("✓ PHP opcache cleared", 'success');
}

if (function_exists('apcu_clear_cache')) {
    apcu_clear_cache();
    log_step("✓ APCu cache cleared", 'success');
}

// ==================== SUMMARY ====================
log_step("📊 GENERATING SUMMARY REPORT", 'info');

$stats = [];

$result = $conn->query("SELECT COUNT(*) as count FROM students");
$stats['Total Students'] = $result->fetch_assoc()['count'];

$result = $conn->query("SELECT COUNT(*) as count FROM applications WHERE status = 'placed'");
$stats['Placed Applications'] = $result->fetch_assoc()['count'];

$result = $conn->query("SELECT COUNT(*) as count FROM placed_students");
$stats['Placed Students Records'] = $result->fetch_assoc()['count'];

$result = $conn->query("SELECT COUNT(*) as count FROM drives");
$stats['Total Drives'] = $result->fetch_assoc()['count'];

$result = $conn->query("SELECT COUNT(*) as count FROM drives WHERE (jd_file IS NOT NULL AND jd_file != '') OR (jd_link IS NOT NULL AND jd_link != '')");
$stats['Drives with JD'] = $result->fetch_assoc()['count'];

echo "<div class='step info'><h3>📈 SYSTEM STATISTICS</h3><ul>";
foreach ($stats as $label => $value) {
    echo "<li><strong>$label:</strong> $value</li>";
}
echo "</ul></div>";

// ==================== HIRED COUNTS PER DRIVE ====================
log_step("📋 HIRED COUNTS BY DRIVE", 'info');

$result = $conn->query("
    SELECT
        d.drive_id,
        d.company_name,
        d.drive_no,
        COUNT(DISTINCT ps.student_id) as hired_count
    FROM drives d
    LEFT JOIN placed_students ps ON d.drive_id = ps.drive_id
    GROUP BY d.drive_id, d.drive_no, d.company_name
    ORDER BY d.drive_no DESC
    LIMIT 20
");

echo "<div class='step'><table style='width:100%; border-collapse: collapse;'>";
echo "<tr style='background:#333;'><th>Drive ID</th><th>Company</th><th>Drive No</th><th>Hired Count</th></tr>";
while ($row = $result->fetch_assoc()) {
    $color = $row['hired_count'] > 0 ? '#00ff00' : '#ff6666';
    echo "<tr><td>{$row['drive_id']}</td><td>{$row['company_name']}</td><td>{$row['drive_no']}</td><td style='color:$color; font-weight:bold;'>{$row['hired_count']}</td></tr>";
}
echo "</table></div>";

// ==================== COMPLETION ====================
echo "<hr>";
log_step("✅ ALL FIXES COMPLETED SUCCESSFULLY!", 'success');

?>

<div class="step info">
    <h3>🎯 NEXT STEPS:</h3>
    <ol>
        <li><strong>Clear your browser cache:</strong> Press Ctrl+F5 (or Cmd+Shift+R)</li>
        <li><strong>Verify dashboard:</strong> <a href="dashboard.php" style="color:#00ff00;">Go to Dashboard</a></li>
        <li><strong>Check hired counts:</strong> They should now show correct numbers</li>
        <li><strong>Test logout:</strong> Login as student and try logout function</li>
        <li><strong>Check students:</strong> <a href="registered_students.php" style="color:#00ff00;">View Registered Students</a></li>
    </ol>
</div>

<div class="step warning">
    <h3>⚠️  IF ISSUES PERSIST:</h3>
    <ul>
        <li>Run this script again</li>
        <li>Check if applications have status='placed' in database</li>
        <li>Verify drive_data table has matching entries</li>
        <li>Check PHP error logs</li>
        <li>Manual SQL: Run <code>fix_all_issues.sql</code> in phpMyAdmin</li>
    </ul>
</div>

<div style="margin-top: 30px; text-align: center;">
    <a href="dashboard.php" style="background:#650000; color:white; padding:15px 30px; text-decoration:none; border-radius:5px; display:inline-block;">
        ← Back to Dashboard
    </a>
    <a href="?rerun=1" style="background:#006500; color:white; padding:15px 30px; text-decoration:none; border-radius:5px; display:inline-block; margin-left:10px;">
        🔄 Run Again
    </a>
</div>

</body>
</html>
