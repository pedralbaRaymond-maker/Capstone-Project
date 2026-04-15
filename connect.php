<?php
$conn = mysqli_connect("localhost","root","","digital_ordiring_system");
if (mysqli_connect_errno())
{
	echo "faild to connect" . mysqli_connect_error();
}
?>