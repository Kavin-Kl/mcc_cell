<?php
session_start();
include "config.php";
include "course_groups.php";

$error = $_SESSION['error'] ?? "";
$success = $_SESSION['success'] ?? "";
unset($_SESSION['error'], $_SESSION['success']);

if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['register'])) {
    $upid = trim($_POST['upid']);
    $reg_no = trim($_POST['reg_no']);
    $student_name = trim($_POST['student_name']);
    $email = trim($_POST['email']);
    $phone_no = trim($_POST['phone_no']);
    $program_type = $_POST['program_type'];
    $program = $_POST['program'];
    $course = $_POST['course'];
    $class = $_POST['class'];
    $year_of_passing = $_POST['year_of_passing'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    // Validation
    if (empty($upid) || empty($reg_no) || empty($student_name) || empty($email) ||
        empty($phone_no) || empty($program_type) || empty($program) || empty($course) ||
        empty($class) || empty($year_of_passing) || empty($password) || empty($confirm_password)) {
        $_SESSION['error'] = "All fields are required.";
        header("Location: student_register.php");
        exit;
    }

    if ($password !== $confirm_password) {
        $_SESSION['error'] = "Passwords do not match.";
        header("Location: student_register.php");
        exit;
    }

    if (strlen($password) < 6) {
        $_SESSION['error'] = "Password must be at least 6 characters long.";
        header("Location: student_register.php");
        exit;
    }

    // Check if UPID or Reg No already exists
    $check_stmt = $conn->prepare("SELECT student_id FROM students WHERE upid = ? OR reg_no = ? OR email = ?");
    $check_stmt->bind_param("sss", $upid, $reg_no, $email);
    $check_stmt->execute();
    $check_res = $check_stmt->get_result();

    if ($check_res->num_rows > 0) {
        $_SESSION['error'] = "A student with this UPID, Register Number, or Email already exists.";
        header("Location: student_register.php");
        exit;
    }

    // Hash password
    $password_hash = password_hash($password, PASSWORD_DEFAULT);

    // Insert student
    $stmt = $conn->prepare("INSERT INTO students (upid, reg_no, student_name, email, phone_no, program_type, program, course, class, year_of_passing, password_hash, placed_status, is_active, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'not_placed', 1, NOW())");
    $stmt->bind_param("sssssssssss", $upid, $reg_no, $student_name, $email, $phone_no, $program_type, $program, $course, $class, $year_of_passing, $password_hash);

    if ($stmt->execute()) {
        $_SESSION['success'] = "Registration successful! Please login.";
        header("Location: student_login.php");
        exit;
    } else {
        $_SESSION['error'] = "Registration failed. Please try again.";
        header("Location: student_register.php");
        exit;
    }
}

// Flatten all courses for dropdown
$allUG = [];
foreach ($ug_courses_grouped as $group) {
    foreach ($group as $programs) {
        $allUG = array_merge($allUG, $programs);
    }
}
$allPG = array_merge(...array_values($pg_courses));
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student Registration - Placement Cell</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Libertinus+Serif:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&display=swap" rel="stylesheet">
  <style>
  *, *::before, *::after {
    box-sizing: inherit;
  }

  html, body {
  margin: 0;
  padding: 0;
  width: 100%;
  font-family: "Libertinus Serif", serif;
  font-weight: 400;
  font-style: normal;
  box-sizing: border-box;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  min-height: 100vh;
  padding: 40px 20px;
}

.center-wrapper {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}

.register-container {
  background: rgba(255, 255, 255, 0.98);
  border-radius: 12px;
  width: 100%;
  max-width: 600px;
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
  padding: 30px;
  margin: 20px auto;
}

.register-box h2 {
  text-align: center;
  color: #581729;
  margin-bottom: 10px;
  font-size: 28px;
}

.register-box p {
  text-align: center;
  color: #666;
  margin-bottom: 25px;
}

.form-group {
  margin-bottom: 20px;
}

.form-group label {
  display: block;
  margin-bottom: 5px;
  font-weight: 600;
  color: #581729;
  font-size: 14px;
}

.form-group input,
.form-group select {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 6px;
  font-size: 14px;
  transition: all 0.2s ease;
}

.form-group input:focus,
.form-group select:focus {
  outline: none;
  border-color: #581729;
  box-shadow: 0 0 5px rgba(88, 23, 41, 0.2);
}

.form-row {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 15px;
}

.password-wrapper {
  position: relative;
}

.password-wrapper input {
  padding-right: 60px;
}

.toggle-password {
  position: absolute;
  top: 50%;
  right: 12px;
  transform: translateY(-50%);
  cursor: pointer;
  font-size: 13px;
  color: #581729;
  font-weight: normal;
}

.toggle-password:hover {
  text-decoration: underline;
}

button[type="submit"] {
  width: 100%;
  padding: 12px;
  border: none;
  background-color: #581729;
  color: white;
  font-weight: bold;
  border-radius: 6px;
  cursor: pointer;
  font-size: 16px;
  margin-top: 10px;
}

button[type="submit"]:hover {
  background-color: #3d0f1c;
}

.links {
  margin-top: 20px;
  text-align: center;
  font-size: 14px;
}

.links a {
  color: #581729;
  text-decoration: none;
}

.links a:hover {
  color: blue;
  text-decoration: underline;
}

.error-msg {
  background-color: #fdd;
  padding: 10px;
  margin-bottom: 15px;
  color: #900;
  border-radius: 5px;
  text-align: center;
}

.success-msg {
  background-color: #dfd;
  padding: 10px;
  margin-bottom: 15px;
  color: #090;
  border-radius: 5px;
  text-align: center;
}

.logo {
  text-align: center;
  margin-bottom: 20px;
}

.logo img {
  max-width: 250px;
  height: auto;
}

@media (max-width: 600px) {
  .form-row {
    grid-template-columns: 1fr;
  }

  .register-container {
    padding: 20px;
  }
}
  </style>
</head>
<body>
  <div class="center-wrapper">
    <div class="register-container">
      <div class="register-box">
        <div class="logo">
          <img src="images/MCC_login_logo.png" alt="Placement Logo">
        </div>
        <h2>Student Registration</h2>
        <p>Create your placement cell account</p>

        <?php if (!empty($error)): ?>
          <div class="error-msg"><?= htmlspecialchars($error) ?></div>
        <?php endif; ?>
        <?php if (!empty($success)): ?>
          <div class="success-msg"><?= htmlspecialchars($success) ?></div>
        <?php endif; ?>

        <form method="POST">
          <div class="form-row">
            <div class="form-group">
              <label for="upid">Placement ID (UPID) *</label>
              <input type="text" id="upid" name="upid" placeholder="e.g., UP12345" required>
            </div>
            <div class="form-group">
              <label for="reg_no">Register Number *</label>
              <input type="text" id="reg_no" name="reg_no" placeholder="e.g., REG2023001" required>
            </div>
          </div>

          <div class="form-group">
            <label for="student_name">Full Name *</label>
            <input type="text" id="student_name" name="student_name" placeholder="Enter your full name" required>
          </div>

          <div class="form-row">
            <div class="form-group">
              <label for="email">Email *</label>
              <input type="email" id="email" name="email" placeholder="your.email@college.edu" required>
            </div>
            <div class="form-group">
              <label for="phone_no">Phone Number *</label>
              <input type="tel" id="phone_no" name="phone_no" placeholder="1234567890" required>
            </div>
          </div>

          <div class="form-row">
            <div class="form-group">
              <label for="program_type">Program Type *</label>
              <select id="program_type" name="program_type" required onchange="updateProgramOptions()">
                <option value="">Select Program Type</option>
                <option value="UG">UG (Undergraduate)</option>
                <option value="PG">PG (Postgraduate)</option>
              </select>
            </div>
            <div class="form-group">
              <label for="program">Program *</label>
              <select id="program" name="program" required onchange="updateCourseOptions()">
                <option value="">Select Program</option>
              </select>
            </div>
          </div>

          <div class="form-row">
            <div class="form-group">
              <label for="course">Course *</label>
              <select id="course" name="course" required>
                <option value="">Select Course</option>
              </select>
            </div>
            <div class="form-group">
              <label for="class">Class/Year *</label>
              <input type="text" id="class" name="class" placeholder="e.g., Final Year, 3rd Year" required>
            </div>
          </div>

          <div class="form-group">
            <label for="year_of_passing">Year of Passing *</label>
            <input type="number" id="year_of_passing" name="year_of_passing" placeholder="e.g., 2025" min="2020" max="2030" required>
          </div>

          <div class="form-row">
            <div class="form-group">
              <label for="password">Password *</label>
              <div class="password-wrapper">
                <input type="password" id="password" name="password" placeholder="At least 6 characters" required>
                <span class="toggle-password" onclick="togglePassword('password', this)">
                  <span class="toggle-text">Show</span>
                </span>
              </div>
            </div>
            <div class="form-group">
              <label for="confirm_password">Confirm Password *</label>
              <div class="password-wrapper">
                <input type="password" id="confirm_password" name="confirm_password" placeholder="Re-enter password" required>
                <span class="toggle-password" onclick="togglePassword('confirm_password', this)">
                  <span class="toggle-text">Show</span>
                </span>
              </div>
            </div>
          </div>

          <button type="submit" name="register">Register</button>

          <div class="links">
            Already have an account? <a href="student_login.php">Login here</a>
          </div>
        </form>
      </div>
    </div>
  </div>

  <script>
  const courseData = <?= json_encode([
    'UG' => [
      'BCA' => $ug_courses_grouped['BCA'],
      'B.COM' => $ug_courses_grouped['B.COM'],
      'BBA' => $ug_courses_grouped['BBA'],
      'BSc' => $ug_courses_grouped['BSc'],
      'BA' => $ug_courses_grouped['BA']
    ],
    'PG' => $pg_courses
  ]) ?>;

  function updateProgramOptions() {
    const programType = document.getElementById('program_type').value;
    const programSelect = document.getElementById('program');
    const courseSelect = document.getElementById('course');

    programSelect.innerHTML = '<option value="">Select Program</option>';
    courseSelect.innerHTML = '<option value="">Select Course</option>';

    if (programType && courseData[programType]) {
      Object.keys(courseData[programType]).forEach(prog => {
        const option = document.createElement('option');
        option.value = prog;
        option.textContent = prog;
        programSelect.appendChild(option);
      });
    }
  }

  function updateCourseOptions() {
    const programType = document.getElementById('program_type').value;
    const program = document.getElementById('program').value;
    const courseSelect = document.getElementById('course');

    courseSelect.innerHTML = '<option value="">Select Course</option>';

    if (programType && program && courseData[programType][program]) {
      const courses = courseData[programType][program];

      // Handle nested structure
      if (typeof courses === 'object' && !Array.isArray(courses)) {
        Object.values(courses).flat().forEach(course => {
          const option = document.createElement('option');
          option.value = course;
          option.textContent = course;
          courseSelect.appendChild(option);
        });
      } else {
        courses.forEach(course => {
          const option = document.createElement('option');
          option.value = course;
          option.textContent = course;
          courseSelect.appendChild(option);
        });
      }
    }
  }

  function togglePassword(inputId, element) {
    const input = document.getElementById(inputId);
    const toggleText = element.querySelector('.toggle-text');

    if (input.type === 'password') {
      input.type = 'text';
      toggleText.textContent = 'Hide';
    } else {
      input.type = 'password';
      toggleText.textContent = 'Show';
    }
  }

  window.onload = function () {
    const errorMsg = document.querySelector('.error-msg');
    const successMsg = document.querySelector('.success-msg');
    if (errorMsg || successMsg) {
      setTimeout(() => {
        if (errorMsg) errorMsg.style.display = 'none';
        if (successMsg) successMsg.style.display = 'none';
      }, 5000);
    }
  };
  </script>
</body>
</html>
