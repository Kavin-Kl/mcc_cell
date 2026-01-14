<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Check if student is logged in
if (!isset($_SESSION['student_id'])) {
    header("Location: student_login.php");
    exit;
}

include("config.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <script>
  (function () {
    const isSidebarOpen = localStorage.getItem("studentSidebarOpen") === "true";
    if (isSidebarOpen) {
      document.documentElement.classList.add("sidebar-open");
    }
  })();
  </script>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <?php
    $fileName = basename($_SERVER['PHP_SELF'], ".php");

    $customTitles = [
        "student_dashboard" => "Dashboard",
        "student_profile" => "My Profile",
        "student_drives" => "Available Opportunities",
        "student_applications" => "My Applications",
        "student_notifications" => "Notifications"
    ];

    $pageTitle = isset($customTitles[$fileName])
        ? $customTitles[$fileName]
        : ucwords(str_replace("_", " ", $fileName));

    $fullTitle = $pageTitle . " - Student Portal - Mount Carmel College";
  ?>
  <title><?= htmlspecialchars($fullTitle) ?></title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
  <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

  <style>
body {
  background-color: #f8f9fa;
  padding: 0;
  margin: 0;
  overflow-y: auto;
  overflow-x: hidden;
  position: relative;
  min-height: 100vh;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.sidebar {
    position: fixed;
    left: 0;
    top: 0;
    height: 100%;
    width: 75px;
    background: linear-gradient(180deg, #581729 0%, #7a1f38 100%);
    padding: 6px;
    z-index: 100;
    transition: all 0.5s ease;
    display: flex;
    flex-direction: column;
    box-shadow: 4px 0 10px rgba(0, 0, 0, 0.1);
}

.sidebar.open {
    width: 280px;
}

.sidebar .logo-details {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 10px;
    background: rgba(255, 255, 255, 0.1);
    border-radius: 8px;
    margin-bottom: 20px;
}

.sidebar .logo-details i {
    font-size: 28px;
    color: white;
    cursor: pointer;
}

.sidebar .logo-details .logo_name {
    color: white;
    font-size: 18px;
    font-weight: 600;
    opacity: 0;
    transition: opacity 0.3s ease;
    white-space: nowrap;
}

.sidebar.open .logo_name {
    opacity: 1;
}

.sidebar .nav-list {
    list-style: none;
    padding: 0;
    margin: 0;
    flex: 1;
    overflow-y: auto;
}

.sidebar .nav-list li {
    position: relative;
    margin: 8px 0;
}

.sidebar .nav-list li a {
    display: flex;
    align-items: center;
    padding: 12px 10px;
    color: rgba(255, 255, 255, 0.9);
    text-decoration: none;
    border-radius: 8px;
    transition: all 0.3s ease;
}

.sidebar .nav-list li a:hover {
    background: rgba(255, 255, 255, 0.15);
    color: white;
}

.sidebar .nav-list li a.active {
    background: rgba(255, 255, 255, 0.2);
    color: white;
    font-weight: 600;
}

.sidebar .nav-list li a i {
    min-width: 40px;
    font-size: 20px;
    text-align: center;
}

.sidebar .nav-list li a .links_name {
    opacity: 0;
    transition: opacity 0.3s ease;
    white-space: nowrap;
}

.sidebar.open .nav-list li a .links_name {
    opacity: 1;
}

.sidebar .profile {
    position: relative;
    padding: 12px;
    background: rgba(255, 255, 255, 0.1);
    border-radius: 8px;
    margin-top: auto;
}

.sidebar .profile-details {
    display: flex;
    align-items: center;
}

.sidebar .profile-details i {
    font-size: 28px;
    color: white;
    min-width: 40px;
}

.sidebar .profile-details .name_job {
    opacity: 0;
    transition: opacity 0.3s ease;
    color: white;
}

.sidebar.open .profile-details .name_job {
    opacity: 1;
}

.sidebar .profile-details .name {
    font-size: 14px;
    font-weight: 600;
}

.sidebar .profile-details .job {
    font-size: 12px;
    opacity: 0.8;
}

.sidebar .profile i.bx-log-out {
    position: absolute;
    right: 10px;
    font-size: 22px;
    cursor: pointer;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.sidebar.open .profile i.bx-log-out {
    opacity: 1;
}

.home-section {
    position: relative;
    margin-left: 75px;
    transition: all 0.5s ease;
    padding: 20px;
    min-height: 100vh;
}

html.sidebar-open .home-section {
    margin-left: 280px;
}

.notification-badge {
    position: absolute;
    top: -5px;
    right: 0;
    background: #ff4444;
    color: white;
    border-radius: 10px;
    padding: 2px 6px;
    font-size: 10px;
    font-weight: bold;
}

@media (max-width: 768px) {
    .sidebar {
        width: 0;
        padding: 0;
    }

    .sidebar.open {
        width: 280px;
        padding: 6px;
    }

    .home-section {
        margin-left: 0;
    }

    html.sidebar-open .home-section {
        margin-left: 0;
    }

    .sidebar .logo-details {
        padding: 10px;
    }

    .sidebar-overlay {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5);
        z-index: 99;
    }

    .sidebar.open ~ .sidebar-overlay {
        display: block;
    }
}
  </style>
</head>
<body>

<div class="sidebar" id="studentSidebar">
  <div class="logo-details">
    <i class='bx bx-menu' id="btn"></i>
    <span class="logo_name">Student Portal</span>
  </div>
  <ul class="nav-list">
    <li>
      <a href="student_dashboard.php" class="<?= ($fileName == 'student_dashboard') ? 'active' : '' ?>">
        <i class='bx bx-grid-alt'></i>
        <span class="links_name">Dashboard</span>
      </a>
    </li>
    <li>
      <a href="student_drives.php" class="<?= ($fileName == 'student_drives') ? 'active' : '' ?>">
        <i class='bx bx-briefcase'></i>
        <span class="links_name">Available Opportunities</span>
      </a>
    </li>
    <li>
      <a href="student_applications.php" class="<?= ($fileName == 'student_applications') ? 'active' : '' ?>">
        <i class='bx bx-list-ul'></i>
        <span class="links_name">My Applications</span>
      </a>
    </li>
    <li>
      <a href="student_profile.php" class="<?= ($fileName == 'student_profile') ? 'active' : '' ?>">
        <i class='bx bx-user'></i>
        <span class="links_name">My Profile</span>
      </a>
    </li>
    <li>
      <a href="student_notifications.php" class="<?= ($fileName == 'student_notifications') ? 'active' : '' ?>">
        <i class='bx bx-bell'></i>
        <span class="links_name">Notifications</span>
        <?php
        // Get unread notifications count
        $student_id = $_SESSION['student_id'];
        $notif_stmt = $conn->prepare("SELECT COUNT(*) as unread FROM student_notifications WHERE student_id = ? AND is_read = 0");
        $notif_stmt->bind_param("i", $student_id);
        $notif_stmt->execute();
        $notif_result = $notif_stmt->get_result();
        $unread = $notif_result->fetch_assoc()['unread'];
        if ($unread > 0):
        ?>
          <span class="notification-badge"><?= $unread ?></span>
        <?php endif; ?>
      </a>
    </li>
  </ul>
  <div class="profile">
    <div class="profile-details">
      <i class='bx bx-user-circle'></i>
      <div class="name_job">
        <div class="name"><?= htmlspecialchars($_SESSION['student_name']) ?></div>
        <div class="job">Student</div>
      </div>
    </div>
    <i class='bx bx-log-out' id="log_out" onclick="logout()"></i>
  </div>
</div>

<div class="sidebar-overlay" onclick="closeSidebar()"></div>

<script>
let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector("#btn");

function updateSidebarState() {
  if (sidebar.classList.contains("open")) {
    document.documentElement.classList.add("sidebar-open");
    localStorage.setItem("studentSidebarOpen", "true");
  } else {
    document.documentElement.classList.remove("sidebar-open");
    localStorage.setItem("studentSidebarOpen", "false");
  }
}

if (localStorage.getItem("studentSidebarOpen") === "true") {
  sidebar.classList.add("open");
}

sidebarBtn.addEventListener("click", () => {
  sidebar.classList.toggle("open");
  updateSidebarState();
});

function closeSidebar() {
  sidebar.classList.remove("open");
  updateSidebarState();
}

function logout() {
  if (confirm("Are you sure you want to logout?")) {
    window.location.href = "student_login.php?logout=1";
  }
}
</script>
