<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Docker Compose Demo</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/dark.min.css">
</head>
<body>

    <h1>This is a Docker Compose Demo Page.</h1>
    <p>This content is being served by an PHP and HTTPD container.</p>
    <p> Links: php-info.php / index.php </p>

</body>
</html>

<?php

$hostname = gethostname();
echo "<br>";
echo "Hostname: $hostname";
echo "<br>";

?>
