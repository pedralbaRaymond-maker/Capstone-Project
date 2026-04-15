<?php

include('connect.php');
include('session.php');

if(isset($_POST['data'])) {
    // Corrected query with proper quotes and variable handling
    $querySelect = "SELECT count(*) FROM `notify` WHERE `table_name` = '" . $_SESSION['table_name'] . "' AND `status` = 'unseen'";

    $result = $conn->query($querySelect);

    if($result) {
        // Fetch the count value
        $row = $result->fetch_row();
        echo $row[0]; // This will print the count
    } else {
        echo 0; // In case of query failure
    }
}

if(isset($_POST['update'])){

    mysqli_query($conn,"UPDATE `notify` SET `status`='seen' WHERE `table_name` = '".$_SESSION['table_name']."'");

}

?>
