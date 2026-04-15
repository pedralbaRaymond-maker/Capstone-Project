<?php
require('connect.php');
session_start();

if (isset($_POST['item_id'])) {
    $tableCode = stripcslashes($_POST['item_id']);
    $password = stripcslashes($_POST['input']);
    $tableCode = mysqli_real_escape_string($conn, $tableCode);
    $password = mysqli_real_escape_string($conn,  $password);

    $query = "SELECT * FROM `tablecode` WHERE `table_code` = '$password' AND `table_name` = '$tableCode'";
    $result = mysqli_query($conn, $query) or die(mysqli_error($conn));
    $get = mysqli_fetch_array($result);
    $rows = mysqli_num_rows($result);

    if ($rows == 1) {
        $_SESSION['table_name'] = $get['table_name'];
        mysqli_query($conn, "UPDATE `tablecode` SET `status`='active' WHERE `table_name`='$tableCode'");

        header("Location: homepage.php");
        exit(); // Make sure to exit after redirect
    } else {
        $_SESSION['error'] = 'invalid_code'; // Set error flag in session
        header("Location: index.php");
        exit();
    }
}
?>
