<?php
session_start();
if (!isset($_SESSION['admin_id'])) {
    die("Unauthorized");
}

include("config.php");

// Force sync
include_once 'sync_placed_students.php';
$sync_result = sync_placed_students($conn);

?>
<!DOCTYPE html>
<html>
<head>
    <title>Verify Hired Counts</title>
    <style>
        body { font-family: Arial; padding: 20px; }
        table { border-collapse: collapse; width: 100%; margin: 20px 0; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background: #650000; color: white; }
        .success { color: green; font-weight: bold; }
        .error { color: red; font-weight: bold; }
        h3 { color: #650000; }
    </style>
</head>
<body>

<h2>🔍 Hired Counts Verification</h2>

<h3>1. Sync Results:</h3>
<p>Inserted: <strong><?= $sync_result['inserted'] ?></strong> |
   Updated: <strong><?= $sync_result['updated'] ?></strong> |
   Deleted: <strong><?= $sync_result['deleted'] ?></strong></p>
<?php if (!empty($sync_result['errors'])): ?>
    <p class="error">Errors: <?= implode(', ', $sync_result['errors']) ?></p>
<?php endif; ?>

<h3>2. Total Placed Students:</h3>
<?php
$total = $conn->query("SELECT COUNT(*) as count FROM placed_students")->fetch_assoc()['count'];
echo "<p class='success'>$total students in placed_students table</p>";
?>

<h3>3. Hired Counts by Drive and Role:</h3>
<table>
    <tr>
        <th>Drive ID</th>
        <th>Role ID</th>
        <th>Company</th>
        <th>Drive No</th>
        <th>Role</th>
        <th>Hired Count</th>
        <th>Students</th>
    </tr>
    <?php
    $result = $conn->query("
        SELECT
            ps.drive_id,
            ps.role_id,
            d.company_name,
            d.drive_no,
            ps.role,
            COUNT(DISTINCT ps.student_id) as hired_count,
            GROUP_CONCAT(DISTINCT ps.student_name ORDER BY ps.student_name SEPARATOR ', ') as students
        FROM placed_students ps
        JOIN drives d ON ps.drive_id = d.drive_id
        GROUP BY ps.drive_id, ps.role_id, d.company_name, d.drive_no, ps.role
        ORDER BY d.drive_no DESC, ps.role_id
    ");

    while ($row = $result->fetch_assoc()):
    ?>
    <tr>
        <td><?= $row['drive_id'] ?></td>
        <td><?= $row['role_id'] ?></td>
        <td><?= htmlspecialchars($row['company_name']) ?></td>
        <td><?= $row['drive_no'] ?></td>
        <td><?= htmlspecialchars($row['role']) ?></td>
        <td class="success"><?= $row['hired_count'] ?></td>
        <td><?= htmlspecialchars(substr($row['students'], 0, 100)) ?><?= strlen($row['students']) > 100 ? '...' : '' ?></td>
    </tr>
    <?php endwhile; ?>
</table>

<h3>4. Verify Dashboard Query:</h3>
<?php
// Test the exact query used in dashboard
$test_drive_id = 1; // Change this to an actual drive_id
$test_role_id = 1;  // Change this to an actual role_id

$stmt = $conn->prepare("
    SELECT COUNT(DISTINCT student_id) AS hired_count
    FROM placed_students
    WHERE drive_id = ? AND role_id = ?
");
$stmt->bind_param("ii", $test_drive_id, $test_role_id);
$stmt->execute();
$test_result = $stmt->get_result()->fetch_assoc();
?>
<p>Test query for drive_id=<?= $test_drive_id ?>, role_id=<?= $test_role_id ?>:
   <strong><?= $test_result['hired_count'] ?></strong> hired</p>

<h3>5. Check for Mismatches:</h3>
<?php
// Check if there are drive_id/role_id in placed_students that don't exist in drives/drive_roles
$mismatches = $conn->query("
    SELECT ps.drive_id, ps.role_id, COUNT(*) as count
    FROM placed_students ps
    LEFT JOIN drives d ON ps.drive_id = d.drive_id
    LEFT JOIN drive_roles dr ON ps.role_id = dr.role_id
    WHERE d.drive_id IS NULL OR dr.role_id IS NULL
    GROUP BY ps.drive_id, ps.role_id
");

if ($mismatches->num_rows > 0):
?>
    <p class="error">Found mismatched records:</p>
    <table>
        <tr><th>Drive ID</th><th>Role ID</th><th>Count</th></tr>
        <?php while ($row = $mismatches->fetch_assoc()): ?>
        <tr>
            <td><?= $row['drive_id'] ?></td>
            <td><?= $row['role_id'] ?></td>
            <td><?= $row['count'] ?></td>
        </tr>
        <?php endwhile; ?>
    </table>
<?php else: ?>
    <p class="success">✓ No mismatches found - all placed_students have valid drive_id and role_id</p>
<?php endif; ?>

<h3>6. Resume Files Check:</h3>
<?php
$total_resumes = $conn->query("SELECT COUNT(*) as count FROM applications WHERE resume_file IS NOT NULL AND resume_file != ''")->fetch_assoc()['count'];
$missing_resumes = 0;

$resumes = $conn->query("SELECT resume_file FROM applications WHERE resume_file IS NOT NULL AND resume_file != '' LIMIT 100");
while ($row = $resumes->fetch_assoc()) {
    if (!file_exists($row['resume_file'])) {
        $missing_resumes++;
    }
}
?>
<p>Total resumes in DB: <strong><?= $total_resumes ?></strong></p>
<p>Missing files (first 100 checked): <strong class="<?= $missing_resumes > 0 ? 'error' : 'success' ?>"><?= $missing_resumes ?></strong></p>

<?php if ($missing_resumes > 0): ?>
    <p><a href="fix_resume_paths.php">→ Run Resume Fix Tool</a></p>
<?php endif; ?>

<hr>
<p><a href="dashboard.php">← Back to Dashboard</a> | <a href="?refresh=1">🔄 Refresh</a></p>

</body>
</html>
