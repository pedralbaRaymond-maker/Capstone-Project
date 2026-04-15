<?php 
session_start();
if (!isset($_SESSION['table_name'])) {
	
	header("location:homePage.php");
}
 ?> 