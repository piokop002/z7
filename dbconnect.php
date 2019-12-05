<?php
    //dane bazy danych
	$dbhost="serwer1911950.home.pl";
	$dbuser="31571216_zad7";
	$dbpassword="_Vrf07smg";
	$dbname="31571216_zad7";
    
    //sprawdzanie połączenia
    $polaczenie = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);
    if (!$polaczenie) {
        echo "Błąd połączenia z MySQL." . PHP_EOL;
        echo "Errno: " . mysqli_connect_errno() . PHP_EOL;
        echo "Error: " . mysqli_connect_error() . PHP_EOL;
        exit;
    }
?>