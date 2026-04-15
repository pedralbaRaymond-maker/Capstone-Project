<?php
include('connect.php');
date_default_timezone_set('Asia/Manila');

$b = $_POST['cID'];
$c = $_POST['totalp'];
$a = $_POST['tblNumber'];
$date = date('Y-m-d H:i:s');
$d = 'KVS';

mysqli_query($conn,"INSERT INTO `receipt`(`table_name`, `customer_id`, `total`, `date`, `station`) VALUES ('$a','$b','$c','$date','$d')");

mysqli_query($conn,"UPDATE `customer_order_list` SET `station`='$d'WHERE `table_name` = '$a' AND `customer_id` ='$b'");

header('location:homePage.php');
?>
