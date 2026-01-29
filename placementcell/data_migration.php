<?php
session_start();
require 'config.php';

// Check if admin is logged in
if (!isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}

$success_message = '';
$error_message = '';

// Handle Export
if (isset($_POST['export_data'])) {
    $selected_tables = $_POST['tables'] ?? [];

    if (empty($selected_tables)) {
        $error_message = "Please select at least one table to export.";
    } else {
        // Create export directory if it doesn't exist
        $export_dir = 'exports/';
        if (!is_dir($export_dir)) {
            mkdir($export_dir, 0777, true);
        }

        $export_file = $export_dir . 'data_export_' . date('Y-m-d_H-i-s') . '.sql';
        $output = '';

        foreach ($selected_tables as $table) {
            // Validate table name to prevent SQL injection
            $table = $conn->real_escape_string($table);

            // Get table structure
            $create_table = $conn->query("SHOW CREATE TABLE `$table`");
            if ($create_table) {
                $row = $create_table->fetch_row();
                $output .= "\n\n-- Table: $table\n";
                $output .= "DROP TABLE IF EXISTS `$table`;\n";
                $output .= $row[1] . ";\n\n";

                // Get table data
                $result = $conn->query("SELECT * FROM `$table`");
                if ($result && $result->num_rows > 0) {
                    while ($data = $result->fetch_assoc()) {
                        $output .= "INSERT INTO `$table` VALUES(";
                        $values = [];
                        foreach ($data as $value) {
                            if ($value === null) {
                                $values[] = 'NULL';
                            } else {
                                $values[] = "'" . $conn->real_escape_string($value) . "'";
                            }
                        }
                        $output .= implode(',', $values) . ");\n";
                    }
                }
            }
        }

        // Save to file
        file_put_contents($export_file, $output);

        // Download file
        header('Content-Type: application/sql');
        header('Content-Disposition: attachment; filename="placement_data_export_' . date('Y-m-d') . '.sql"');
        header('Content-Length: ' . filesize($export_file));
        readfile($export_file);

        // Clean up
        unlink($export_file);
        exit;
    }
}

// Handle Import
if (isset($_POST['import_data']) && isset($_FILES['import_file'])) {
    $file = $_FILES['import_file'];

    if ($file['error'] === UPLOAD_ERR_OK) {
        $filename = $file['tmp_name'];
        $sql = file_get_contents($filename);

        if ($sql) {
            // Disable foreign key checks temporarily
            $conn->query("SET FOREIGN_KEY_CHECKS = 0");

            // Execute SQL statements
            $statements = explode(';', $sql);
            $success_count = 0;
            $error_count = 0;

            foreach ($statements as $statement) {
                $statement = trim($statement);
                if (!empty($statement)) {
                    if ($conn->query($statement)) {
                        $success_count++;
                    } else {
                        $error_count++;
                        error_log("SQL Error: " . $conn->error);
                    }
                }
            }

            // Re-enable foreign key checks
            $conn->query("SET FOREIGN_KEY_CHECKS = 1");

            if ($error_count > 0) {
                $success_message = "Import completed with some errors. Successful: $success_count, Failed: $error_count";
            } else {
                $success_message = "Import completed successfully! Imported $success_count statements.";
            }
        } else {
            $error_message = "Error reading SQL file.";
        }
    } else {
        $error_message = "Error uploading file.";
    }
}

// Get all tables in database
$tables = [];
$result = $conn->query("SHOW TABLES");
while ($row = $result->fetch_array()) {
    $tables[] = $row[0];
}

require 'header.php';
?>

<style>
.migration-card {
    background: white;
    border-radius: 8px;
    padding: 30px;
    margin-bottom: 20px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.table-checkbox-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 10px;
    margin: 20px 0;
}

.table-checkbox {
    padding: 10px;
    background: #f8f9fa;
    border-radius: 4px;
    border: 1px solid #dee2e6;
}

.table-checkbox:hover {
    background: #e9ecef;
}

.table-checkbox label {
    cursor: pointer;
    display: flex;
    align-items: center;
    gap: 8px;
    margin: 0;
}

.export-section, .import-section {
    border: 1px solid #dee2e6;
    border-radius: 8px;
    padding: 20px;
    margin-bottom: 20px;
}

.section-header {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 15px;
    font-size: 1.2rem;
    font-weight: 600;
    color: #650000;
}

.btn-group-custom {
    display: flex;
    gap: 10px;
    margin-top: 20px;
}

.alert-info {
    background: #cff4fc;
    border: 1px solid #0dcaf0;
    color: #055160;
    padding: 15px;
    border-radius: 4px;
    margin-bottom: 20px;
}
</style>

<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="migration-card">
                <h3><i class='bx bx-transfer'></i> Data Migration - Import/Export</h3>
                <p class="text-muted">Import data from old website or export current data for backup/migration</p>

                <?php if ($success_message): ?>
                    <div class="alert alert-success alert-dismissible fade show">
                        <?php echo $success_message; ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                <?php endif; ?>

                <?php if ($error_message): ?>
                    <div class="alert alert-danger alert-dismissible fade show">
                        <?php echo $error_message; ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                <?php endif; ?>

                <!-- Export Section -->
                <div class="export-section">
                    <div class="section-header">
                        <i class='bx bx-export'></i> Export Data
                    </div>
                    <div class="alert-info">
                        <strong>Note:</strong> Export selected tables to SQL file. This file can be imported to another installation.
                    </div>
                    <form method="POST">
                        <label class="mb-2"><strong>Select tables to export:</strong></label>
                        <div class="mb-3">
                            <button type="button" class="btn btn-sm btn-outline-primary" onclick="selectAll()">Select All</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary" onclick="deselectAll()">Deselect All</button>
                        </div>
                        <div class="table-checkbox-grid">
                            <?php foreach ($tables as $table): ?>
                                <div class="table-checkbox">
                                    <label>
                                        <input type="checkbox" name="tables[]" value="<?= htmlspecialchars($table) ?>" class="table-check">
                                        <?= htmlspecialchars($table) ?>
                                    </label>
                                </div>
                            <?php endforeach; ?>
                        </div>
                        <div class="btn-group-custom">
                            <button type="submit" name="export_data" class="btn btn-primary">
                                <i class='bx bx-export'></i> Export Selected Tables
                            </button>
                        </div>
                    </form>
                </div>

                <!-- Import Section -->
                <div class="import-section">
                    <div class="section-header">
                        <i class='bx bx-import'></i> Import Data
                    </div>
                    <div class="alert-info">
                        <strong>Warning:</strong> Importing will replace existing data in the tables. Make sure to backup your current data before importing.
                    </div>
                    <form method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label><strong>Select SQL file to import:</strong></label>
                            <input type="file" name="import_file" accept=".sql" required class="form-control mt-2">
                            <small class="text-muted">Upload the SQL export file from your old website</small>
                        </div>
                        <div class="btn-group-custom">
                            <button type="submit" name="import_data" class="btn btn-success">
                                <i class='bx bx-import'></i> Import Data
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
function selectAll() {
    document.querySelectorAll('.table-check').forEach(cb => cb.checked = true);
}

function deselectAll() {
    document.querySelectorAll('.table-check').forEach(cb => cb.checked = false);
}
</script>

<?php require 'footer.php'; ?>
