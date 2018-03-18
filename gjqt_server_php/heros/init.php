<?php
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Credentials:true');

$conn = mysqli_connect('127.0.0.1','root','','gjqt',3306);
mysqli_query($conn, "SET NAMES UTF8");

header('Content-Type: application/json;charset=UTF-8');