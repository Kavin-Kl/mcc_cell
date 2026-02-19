<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fix Vantage Students</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 800px; margin: 50px auto; padding: 20px; }
        .success { background: #d4edda; color: #155724; padding: 15px; border-radius: 5px; margin: 10px 0; }
        .error { background: #f8d7da; color: #721c24; padding: 15px; border-radius: 5px; margin: 10px 0; }
        .info { background: #d1ecf1; color: #0c5460; padding: 15px; border-radius: 5px; margin: 10px 0; }
        table { width: 100%; border-collapse: collapse; margin: 20px 0; }
        table th, table td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        table th { background: #650000; color: white; }
        button { background: #650000; color: white; border: none; padding: 10px 20px; cursor: pointer; border-radius: 4px; margin: 5px; }
        button:hover { background: #4a0000; }
        a { color: #650000; text-decoration: none; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
<?php
session_start();

if (!isset($_SESSION['admin_id'])) {
    header("Location: index");
    exit;
}

include("config.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['fix_recent'])) {
        // Fix the most recent non-vantage students
        $limit = isset($_POST['count']) ? (int)$_POST['count'] : 3;

        $sql = "
            UPDATE students
            SET vantage_participant = 'yes'
            WHERE (vantage_participant IS NULL OR vantage_participant != 'yes')
            ORDER BY student_id DESC
            LIMIT $limit
        ";

        if ($conn->query($sql)) {
            $affected = $conn->affected_rows;
            echo "<div class='success'><strong>Success!</strong> Updated $affected student(s) to be vantage participants.</div>";
        } else {
            echo "<div class='error'><strong>Error:</strong> " . $conn->error . "</div>";
        }
    } elseif (isset($_POST['fix_by_batch'])) {
        // Fix all students from a specific batch
        $batch = $_POST['batch'];

        $sql = "
            UPDATE students
            SET vantage_participant = 'yes'
            WHERE batch = ?
              AND (vantage_participant IS NULL OR vantage_participant != 'yes')
        ";

        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $batch);

        if ($stmt->execute()) {
            $affected = $stmt->affected_rows;
            echo "<div class='success'><strong>Success!</strong> Updated $affected student(s) from batch $batch to be vantage participants.</div>";
        } else {
            echo "<div class='error'><strong>Error:</strong> " . $stmt->error . "</div>";
        }
        $stmt->close();
    }
}

// Show students that are not marked as vantage participants
$result = $conn->query("
    SELECT student_id, upid, reg_no, student_name, batch, program_type, course, vantage_participant
    FROM students
    WHERE vantage_participant IS NULL OR vantage_participant != 'yes'
    ORDER BY student_id DESC
    LIMIT 20
");

?>

<h1>Fix Vantage Students</h1>

<div class='info'>
    <strong>Issue:</strong> Students imported via the Vantage page need to have <code>vantage_participant = 'yes'</code> to appear in the table.
    <br><strong>Solution:</strong> Use one of the options below to mark students as Vantage participants.
</div>

<?php if ($result && $result->num_rows > 0): ?>
    <h2>Non-Vantage Students (Most Recent 20)</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>UPID</th>
                <th>Reg No</th>
                <th>Name</th>
                <th>Batch</th>
                <th>Program</th>
                <th>Course</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($row = $result->fetch_assoc()): ?>
                <tr>
                    <td><?= htmlspecialchars($row['student_id']) ?></td>
                    <td><?= htmlspecialchars($row['upid']) ?></td>
                    <td><?= htmlspecialchars($row['reg_no']) ?></td>
                    <td><?= htmlspecialchars($row['student_name']) ?></td>
                    <td><?= htmlspecialchars($row['batch']) ?></td>
                    <td><?= htmlspecialchars($row['program_type']) ?></td>
                    <td><?= htmlspecialchars($row['course']) ?></td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

    <h2>Fix Options</h2>

    <form method="POST" style="margin: 20px 0;">
        <h3>Option 1: Fix Most Recent Students</h3>
        <p>Mark the most recent N students as Vantage participants:</p>
        <input type="number" name="count" value="3" min="1" max="100" style="padding: 8px; margin-right: 10px;">
        <button type="submit" name="fix_recent">Update Recent Students</button>
    </form>

    <form method="POST" style="margin: 20px 0;">
        <h3>Option 2: Fix by Batch</h3>
        <p>Mark all students from a specific batch as Vantage participants:</p>
        <input type="text" name="batch" placeholder="e.g., 2024-2027" required style="padding: 8px; margin-right: 10px;">
        <button type="submit" name="fix_by_batch">Update Batch</button>
    </form>

<?php else: ?>
    <div class='success'>
        <strong>All good!</strong> All students are either marked as Vantage participants or there are no students to fix.
    </div>
<?php endif; ?>

<p style="margin-top: 30px;">
    <a href="vantage_registered_students.php">← Back to Vantage Registered Students</a>
</p>

<?php $conn->close(); ?>
</body>
</html>
