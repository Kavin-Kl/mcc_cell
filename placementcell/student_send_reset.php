<?php
session_start();
include("config.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['email'])) {
    $email = trim($_POST['email']);

    if (empty($email)) {
        echo "Email is required.";
        exit;
    }

    $stmt = $conn->prepare("SELECT student_id, student_name FROM students WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $res = $stmt->get_result();

    if ($res->num_rows === 0) {
        echo "No account found with that email.";
        exit;
    }

    $row = $res->fetch_assoc();

    // Generate unique token
    $token = bin2hex(random_bytes(32));

    // Store token in database
    $stmt = $conn->prepare("INSERT INTO student_password_resets (email, token) VALUES (?, ?)");
    $stmt->bind_param("ss", $email, $token);
    $stmt->execute();

    // Build reset link
    $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
    $host = $_SERVER['HTTP_HOST'];
    $scriptPath = dirname($_SERVER['SCRIPT_NAME']);
    $resetLink = $protocol . '://' . $host . $scriptPath . '/student_reset_password.php?token=' . $token;

    echo $resetLink;
    exit;
}
?>
