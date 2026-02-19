<?php
// Temporary diagnostic script to check PHP upload configuration
echo "<h2>PHP Upload Configuration</h2>";
echo "<table border='1' cellpadding='10'>";
echo "<tr><th>Setting</th><th>Value</th></tr>";
echo "<tr><td>upload_max_filesize</td><td>" . ini_get('upload_max_filesize') . "</td></tr>";
echo "<tr><td>post_max_size</td><td>" . ini_get('post_max_size') . "</td></tr>";
echo "<tr><td>max_execution_time</td><td>" . ini_get('max_execution_time') . " seconds</td></tr>";
echo "<tr><td>memory_limit</td><td>" . ini_get('memory_limit') . "</td></tr>";
echo "<tr><td>file_uploads</td><td>" . (ini_get('file_uploads') ? 'Enabled' : 'Disabled') . "</td></tr>";
echo "<tr><td>upload_tmp_dir</td><td>" . (ini_get('upload_tmp_dir') ?: sys_get_temp_dir()) . "</td></tr>";
echo "</table>";

echo "<h2>PhpSpreadsheet Check</h2>";
require 'vendor/autoload.php';
if (class_exists('PhpOffice\PhpSpreadsheet\IOFactory')) {
    echo "<p style='color: green;'>✓ PhpSpreadsheet is properly installed</p>";
} else {
    echo "<p style='color: red;'>✗ PhpSpreadsheet is NOT loaded</p>";
}

echo "<h2>Test File Upload</h2>";
echo "<form method='POST' enctype='multipart/form-data'>";
echo "<input type='file' name='test_file' accept='.xlsx,.xls,.csv'>";
echo "<button type='submit'>Test Upload</button>";
echo "</form>";

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['test_file'])) {
    echo "<h3>Upload Result:</h3>";
    echo "<pre>";
    print_r($_FILES['test_file']);
    echo "</pre>";

    if ($_FILES['test_file']['error'] === UPLOAD_ERR_OK) {
        echo "<p style='color: green;'>✓ File uploaded successfully!</p>";
    } else {
        $errors = [
            UPLOAD_ERR_INI_SIZE => 'File exceeds upload_max_filesize',
            UPLOAD_ERR_FORM_SIZE => 'File exceeds MAX_FILE_SIZE',
            UPLOAD_ERR_PARTIAL => 'File was only partially uploaded',
            UPLOAD_ERR_NO_FILE => 'No file was uploaded',
            UPLOAD_ERR_NO_TMP_DIR => 'Missing temporary folder',
            UPLOAD_ERR_CANT_WRITE => 'Failed to write file to disk',
            UPLOAD_ERR_EXTENSION => 'Upload stopped by extension'
        ];
        echo "<p style='color: red;'>✗ Upload Error: " . ($errors[$_FILES['test_file']['error']] ?? 'Unknown error') . "</p>";
    }
}
?>
