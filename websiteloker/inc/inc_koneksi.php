<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "loker";

$koneksi = mysqli_connect($host, $user, $pass, $db);
if (!$koneksi) {
    die("Gagal Terkoneksi");
}
