<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Notification</title>
  <link rel="stylesheet" href="notify.css">
</head>
<body >

<div class = "grid-container">

<?php

    include('connect.php');
    include('session.php');

    $table_name = $_SESSION['table_name'];

    $querySelect = "SELECT * FROM `notify` WHERE `table_name` = '$table_name' AND (`status` = 'seen' OR `status` = 'unseen') ORDER BY `id` DESC";

    $result = $conn->query($querySelect);

    if($result){

    while($rows = $result->fetch_assoc()){
?>
    <div class="notifications-container">
    <div class="success">
        <div class="flex">
            <div class="flex-shrink-0">
                <svg class="succes-svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                    <path fill-rule="evenodd" d="M3 3a2 2 0 012-2h10a2 2 0 012 2v12a2 2 0 01-2 2H7l-4 4V3z" clip-rule="evenodd" />
                </svg>
            </div>
            <div class="success-prompt-wrap">
                <p class="success-prompt-heading">Order</p>
                <div class="success-prompt-prompt">
                    <p><?php echo htmlspecialchars($rows['mgs']); ?></p>
                </div>
            </div>
        </div>
    </div>                                                          
</div>

<?php
    }
} else {
    echo "Error executing query: " . $conn->error;
}
?>
</div>


</body>
</html>
