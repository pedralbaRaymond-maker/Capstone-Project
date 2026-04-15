<?php 
include('session.php');?>

<?php
     include('connect.php');
     include('CID.php');
     $cID = getNewCustomerId($conn);
    ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Order List</title>
    <link rel="stylesheet" href="orderListStyle.css"> <!-- Ensure this path is correct -->
</head>
<body>


    <?php
    include('connect.php');

    // Fetch total price
    $query = "SELECT SUM(totalp) AS total FROM customer_order_list  WHERE `station` = 'Pending' AND `table_name` = '{$_SESSION['table_name']}'";
    $result = $conn->query($query);

    if ($result) {
        $row = $result->fetch_assoc();
        $total = isset($row['total']) ? (float)$row['total'] : 0;
    } else {
        echo "Error executing query: " . $conn->error;
        $total = 0;
    }

    // Fetch order list for customer_id = 1
    $query = "SELECT * FROM `customer_order_list` WHERE `station` = 'Pending' AND `table_name` = '{$_SESSION['table_name']}'";
    $result = $conn->query($query);

    if ($result) {
        while ($row = $result->fetch_assoc()) {
    ?>
    
    <div class="menu1">
        <div class="Order-Item">
            <img src="DigitalOrderingSystem/uploads/<?php echo htmlspecialchars($row['image']); ?>" class="image" alt="Menu Image">
            <div class="order-details" id="nav">
                <div class="order-details-sub" data-id="<?php echo htmlspecialchars($row['id']); ?>" data-prodname="<?php echo htmlspecialchars($row['prod_name']); ?>" data-quantity = "<?php echo htmlspecialchars($row['quantity']); ?>" >
                    <h2 class="ads"><?php echo htmlspecialchars($row['prod_name']); ?></h2>
                    <h2 class="qty-label">Qty: <?php echo htmlspecialchars($row['quantity']); ?></h2>

                    <input type="text" name="prices" style="display: none;" value="<?php echo htmlspecialchars($row['price']); ?>">
                    <input type="text" name="id" class="id" value="<?php echo htmlspecialchars($row['id']); ?>" style="display: none;">
                    <input type="text" name="prodname" class="prodname" value="<?php echo htmlspecialchars($row['prod_name']); ?>" style="display: none;">
                    <button type="submit" style="display: none;"></button>
                
                    <h2 class="order-price">₱<?php echo number_format($row['totalp'], 1); ?></h2>
                    <div class="button-container">
                        <a class="del" onclick="deleteBtn(this)">Remove</a>
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


   
        <div>
            <input type="text" name="cID" class="cid" style="display: none;" value="<?php echo $cID ?>" data-cid="<?php echo $cID ?>">
            <input type="number" name="totalp" class="totalp" style="display: none;" value="<?php echo ($total); ?>" data-totalp="<?php echo ($total); ?>">
            <input type="text" name="tblNumber" class="tblname" style="display: none;" value="<?php echo $_SESSION['table_name'];?>" data-tblname="<?php echo $_SESSION['table_name'];?>">
            </div>
            <div class="footer">
            <h2 class="total">Total: ₱<?php echo number_format($total,1); ?></h2>
            <?php
                if($total != 0.0){
            ?>
            <button class="btn-orderlist" onclick ="submit()">Checkout Order</button>
            <?php
                }else{
            ?>
            <button class="btn-orderlist"  onclick ="submit()" style="color: gray" disabled >Checkout Order</button> 
            <?php
                }
            ?>
            <a href="homePage.php" class="btn-order btn-order-back">Back</a>
        </div>
            
<script type="text/javascript">

    function deleteBtn(element){
        
    var Id = $(element).closest('.order-details-sub').data('id');
    var prodname = $(element).closest('.order-details-sub').data('prodname');
    var qty = $(element).closest('.order-details-sub').data('quantity');
   
        (async() => {

            const {value: formValues} = await Swal.fire({

                title:`Are you sure you want to delete <h4>${prodname}?</h4>`,
                icno: 'question',
                showCancelButton: true,
                confirmButtonText: 'YES',
                icon: 'question'

            });

            if(formValues){

                var data ={

                    id: Id,
                    prod: prodname,
                    qty: qty

                };

                $.ajax({
                    url: 'orderList.php',
                    type: 'post',
                    data: data,
                    success: function(){ 
                        Swal.fire({
                            icon: 'success',
                            title: 'Successfully deleted.'
                        }).then(() => {
                            function load_data(query = '') {
                                $.ajax({
                                    url: "orderList.php",
                                    success: function(data) {
                                        $('#result').html(data);
                                    }
                                });
                            }

                            load_data();
                        });
                        
                    }
                })

            }

        })();
        
    };

    <?php

    include('connect.php');
    date_default_timezone_set('Asia/Manila');
    if(isset($_POST['id'])){
        $id = $_POST['id'];
        $prod = $_POST['prod'];
        $qty = $_POST['qty'];


    $result = mysqli_query($conn, "SELECT `quantity` FROM `product` WHERE `prod_name` = '$prod'");

    if(mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $currentQty = $row['quantity'];

        $newQty = $currentQty + $qty;

        mysqli_query($conn,"UPDATE `product` SET `quantity` = '$newQty', `status` = 'Available' WHERE `prod_name` = '$prod'");

        mysqli_query($conn,"DELETE FROM `customer_order_list` WHERE `id` = '$id'");
    }

    }

    ?>
</script>

<script type="text/javascript">

       function submit(){
            
        var cId = $('input[name="cID"]').val();
        var totalp = $('input[name="totalp"]').val(); 
        var tblname = $('input[name="tblNumber"]').val();

            (async() => {

                const {value: formValues} = await Swal.fire({

                    title:'are you sure on your orders?',
                    html: ` 
                    <input type="text" name="cID" class="cid" value="${cId}" style="display: none;"">
                    <input type="number" name="totalp" class="totalp" value="${totalp}" style="display: none;">
                    <input type="text" name="tblNumber" class="tblname" value="<?php echo $_SESSION['table_name'];?>" style="display: none;">
                    
                    `,
                    showCancelButton: true,
                    confirmButtonText: 'YES',
                    icon: 'question'

                });

                if(formValues){

                    var data ={

                        cid: $('.cid').val(),
                        totalp: $('.totalp').val(),
                        tblname: $('.tblname').val()

                    };

                    $.ajax({
                        url: 'orderList.php',
                        type: 'post',
                        data: data,
                        success: function(){
                            
                            Swal.fire({
                                icon: 'success',
                                title: 'Order successfully...'
                            }).then(() => {
                                function load_data(query = '') {
                                    $.ajax({
                                        url: "orderList.php",
                                        success: function(data) {
                                            $('#result').html(data);
                                        }
                                    });
                                }

                                load_data();
                            });
                            
                        }
                    })

                }

            })();
            
        };

        <?php
    
    include('connect.php');
    date_default_timezone_set('Asia/Manila');
    if(isset($_POST['cid'])){

        $b = $_POST['cid'];
        $c = $_POST['totalp'];
        $a = $_POST['tblname'];
        $date = date('Y-m-d H:i:s');
        $d = 'KVS';    

        $query = "SELECT MAX(customer_id) AS max_customer_id FROM customer_order_list WHERE `table_name` = '$a'";
        $result = $conn->query($query);
        $row = $result->fetch_assoc();
        $custNo = isset($row['max_customer_id']) ? (int)$row['max_customer_id'] : 0;
        
        mysqli_query($conn,"INSERT INTO `receipt`(`table_name`, `customer_id`, `total`, `date`, `station`) VALUES ('$a','$custNo','$c','$date','$d')");

        mysqli_query($conn,"UPDATE `customer_order_list` SET `station`='$d' WHERE `table_name` = '$a' AND `station` = 'pending'");

        }
        
     ?>
</script>

<style>
    #menuIcon {
        display: none;
        
    }

</style>

</body>
</html>
