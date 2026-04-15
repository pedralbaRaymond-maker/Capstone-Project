<?php
session_start();
include('connect.php');

$sql = "SELECT `table_name` FROM `tablecode`";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>QRCode Scanner</title>
    <link rel="stylesheet"href="index.css">
</head>
<body>
    <h1>Select Your Table</h1>
    <form method="POST" action = "loginform.php">
        <select name="item_id" required>
            <option value="">CHOOSE TABLE</option>
            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<option value='" . $row['table_name'] . "'>" . $row['table_name'] . "</option>";
                }
            } else {
                echo "<option value=''>No items available</option>";
            }
            ?>
        </select>
       
        <div class="coolinput">
            <label for="input" class="text">Table Code:</label> 
            <input type="text" placeholder="Write here..." name="input" class="input">
        </div>
        <?php
        if (isset($_SESSION['error']) && $_SESSION['error'] == 'invalid_code') {
            echo '<h5 class="error-message" style = "color: red; margin-top: 5px; font-size: 10px; margin-left: 10px">Please try again. Invalid table code or table name!</h5>';
            unset($_SESSION['error']); // Clear the error after displaying it
        }
        ?>    
        <button type="submit">OK</button>
    </form>
</body>
</html>
