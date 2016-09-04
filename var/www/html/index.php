<?php

$pdo = new \PDO(
    'mysql:host=web_db;dbname=web_db;port:3306',
    'arnottg',
    'pa33word'
);

$query = $pdo->prepare( 'SELECT comment FROM web_db_table' );
$query->execute();
$result = $query->fetch( PDO::FETCH_ASSOC );

foreach( $result as $row ){
    echo "<h1>$row</h1>";
}

echo "<p>Powered by Docker, PHP-FPM, MySQL, and NGINX</p>";

?>
