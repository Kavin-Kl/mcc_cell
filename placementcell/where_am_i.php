<?php
echo "<h2>Current File Location</h2>";
echo "<p><strong>This file is located at:</strong><br>" . __FILE__ . "</p>";
echo "<p><strong>Directory:</strong><br>" . __DIR__ . "</p>";
echo "<p><strong>Document Root (Web Server):</strong><br>" . $_SERVER['DOCUMENT_ROOT'] . "</p>";

echo "<h3>Instructions:</h3>";
echo "<ol>";
echo "<li>Copy all new PHP files TO: <code>" . $_SERVER['DOCUMENT_ROOT'] . "/placementcell/</code></li>";
echo "<li>Then access them via: <code>http://localhost/placementcell/filename.php</code></li>";
echo "</ol>";
?>
