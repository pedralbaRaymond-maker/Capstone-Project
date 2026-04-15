<?php
include('connect.php');
date_default_timezone_set('Asia/Manila'); 

function getNewCustomerId($conn) {

    try {
        // Fetch the maximum customer_id from the 'customer' table
        $query = "SELECT MAX(customer_id) AS max_customer_id FROM customer_order_list";
        $result = $conn->query($query);
        $row = $result->fetch_assoc();
        $cID = isset($row['max_customer_id']) ? (int)$row['max_customer_id'] : 0;

        // Fetch the maximum customer_id from the 'receipt' table
        $query = "SELECT MAX(customer_id) AS max_customer_id FROM receipt";
        $result = $conn->query($query);
        $row = $result->fetch_assoc();
        $checkID = isset($row['max_customer_id']) ? (int)$row['max_customer_id'] : 0;

        // Determine the new customer ID
        if ($cID == 0) {
            $cID = 1;
        } elseif ($cID == $checkID) {
            $cID = ($cID + 1);
        }

        return $cID;

    } catch (Exception $e) {
        echo "Error: " . $e->getMessage();
        return null; // or handle error appropriately
    }
}
?>
