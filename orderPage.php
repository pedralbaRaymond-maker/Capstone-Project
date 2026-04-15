<?php include('session.php'); ?>
<?php
  include('connect.php');
  $id = $_GET['id'];
  $query=mysqli_query($conn,"SELECT * FROM `product` WHERE `id` = '$id'");
  $row=mysqli_fetch_array($query)
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Order</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="orderStyle.css">
    <link rel="stylesheet" href="./FontAwesomefile/fontawesome.css">
    <script src="./FontAwesomefile/fontawesome.js"></script>

</head>
<body>

 <form method="POST" action="insertOrder.php?id=<?php echo $row['id'];?>">  
    <div class="menu">
            <div class="Order-Item">
                <img src="DigitalOrderingSystem/uploads/<?php echo $row['image'];?>"class="image" alt="Menu Image" width = 100% height = 450px>
                <div class="order-details">
                    <div class="order-details-sub">
                        <h2 class="prodname"><?php echo $row['prod_name'];?></h2>
                        <h2 class="order-price">₱<?php echo number_format($row['price'],1);?></h2>

                        <!-- input magic -->
                        
                        <input type="number" name="prod_id" value="<?php echo $row['prodid'];?>" style="display: none;">
                        <input type="text" name="prod_name" value="<?php echo $row['prod_name'];?>" style="display: none;">

                        <span class="quantity-label">Quantity:</span>
                        <input type="number" name="quantity" value="1"><br>

                        <input type="text" name="currnrtQyt" value="<?php echo $row['quantity'];?>" style="display: none;">
                        <input type="text" name="price" value="<?php echo $row['price'];?>" style="display: none;">
                        <input type="text" name="type" value="<?php echo $row['type'];?>" style="display: none;">
                        <input type="text" name="image" value="<?php echo $row['image'];?>" style="display: none;">
                        <input type="text" name="tblname" value="<?php echo $_SESSION['table_name'];?>" style="display: none;">
                         <!-- input end -->
                    </div>
                     <br>
                         <div class="button-container">
                        <button type="submit" class="btn-order">Order</button>
                        <button class="btn-order"><a href="homePage.php" style="color: #ffffff; text-decoration:none;">Cancel</a></button> 
                        </div>
                </div>
            </div>
        </div>
</form>
</body>
</html>