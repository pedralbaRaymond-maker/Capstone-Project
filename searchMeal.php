<?php include('session.php'); ?>
<?php 

include('connect.php');

$return = '';
if (isset($_POST['query']) && !empty($_POST['query'])) {
    $search = mysqli_real_escape_string($conn, $_POST['query']);
    $query = "SELECT * FROM `product` WHERE `prodid` LIKE '%".$search."%' 
              OR `prod_name` LIKE '%".$search."%' AND `status` = 'Available'";
} else {
    $query = "SELECT * FROM `product` WHERE `type`= 'Meals' AND `status` = 'Available'";
}

$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) > 0) {
    $return .= '
        <div class="menu">
            <div class="heading">
                <h1>INBOX RESTOBAR & KTV</h1>
                <h3>&mdash; '. htmlspecialchars($_SESSION['table_name']) .' &mdash;</h3>
            </div>
    ';

    while ($row = mysqli_fetch_assoc($result)) {
        $return .= '
            <div class="food-items" data-prodid="' . htmlspecialchars($row['prodid']) . '" data-prodname="' . htmlspecialchars($row['prod_name']) . '" data-price="' . htmlspecialchars($row['price']) . '" data-image="' . htmlspecialchars($row['image']) . '" data-quantity="' . htmlspecialchars($row['quantity']) . '" data-type="' . htmlspecialchars($row['type']) . '">
                <img src="DigitalOrderingSystem/uploads/' . htmlspecialchars($row['image']) . '" class="image" alt="Menu Image">
                <div class="details">
                    <div class="details-sub">
                        <h5>' . htmlspecialchars($row['prod_name']) . '</h5><br>
                        <h4 class="price">₱' . number_format($row['price'],1) . '</h4>
                    </div>
                    <button class="button">Order now</button> 
                </div>
            </div> 
        ';
    }

    $return .= '</div>'; // Close the menu div
    echo $return;
} else {
    echo 'No result';
}
?>

<script type="text/javascript"> 
    $(document).on('click', '.button', function() {
        var prodid = $(this).closest('.food-items').data('prodid');
        var prodname = $(this).closest('.food-items').data('prodname');
        var price = $(this).closest('.food-items').data('price');
        var image = $(this).closest('.food-items').data('image');
        var quantity = $(this).closest('.food-items').data('quantity');
        var type = $(this).closest('.food-items').data('type');

        var formattedPrice = new Intl.NumberFormat('en-PH', { style: 'currency', currency: 'PHP' }).format(price);


        // Open Swal for order confirmation
        (async() => {
            const { value: formValues } = await Swal.fire({
                title: 'ORDER INFO',
                html: `
                    <div>
                        <img src="DigitalOrderingSystem/uploads/${image}" class="orderpage" alt="Menu Image" width="100%" height="250px" style="border-radius: 15px 15px 0 0;  border-bottom: 1px solid #000;">
                        <div class="order-details">
                            <div class="order-details-sub">
                                <h2 class ="order-prod">${prodname}</h2>
                                <h2 class ="order-price">${formattedPrice}</h2>
                            </div>
                                <input type="number" class="id" name="prod_id" value="${prodid}" style="display: none;">
                                <input type="text" class="prodname" name="prod_name" value="${prodname}" style="display: none;">
                                <div class ="quantity-container">
                                <span class="quantity-label">QTY:</span>
                                <input type="number" class="quantity" name="quantity" value="1">
                                <div>
                                <input type="text" class="currentQyt" value="${quantity}" style="display: none;">
                                <input type="number" class="prodprice" name="price" value="${price}" style="display: none;">
                                <input type="text" class="type" name="type" value="${type}" style="display: none;">
                                <input type="text" class="img" name="image" value="${image}" style="display: none;">
                                <input type="text" class="tblname" name="tblname" value="<?php echo $_SESSION['table_name'];?>" style="display: none;">
                        </div>
                    </div>
                `,
                showCancelButton: true,
                confirmButtonText: 'Order Now'
            })

            if(formValues){

                var data ={

                    id: $('.id').val(),
                    img: $('.img').val(),
                    prodname: $('.prodname').val(),
                    price: $('.prodprice').val(),
                    qty: $('.quantity').val(),
                    type: $('.type').val(),
                    tblname: $('.tblname').val(),
                    currentQyt: $('.currentQyt').val()
                    
                };
                if(parseInt(data.qty) <= parseInt(data.currentQyt)){
                    $.ajax({
                    url: 'search.php',
                    type: 'post',
                    data: data,
                    success:function(){
                        Swal.fire({
                            icon: 'success',
                            title: 'Successfully add order...'

                            }).then(() => {
                            function load_data(query = '') {
                                $.ajax({
                                    url: "searchMeal.php",
                                    success: function(data) {
                                        $('#result').html(data);
                                    }
                                });
                            }

                            load_data();
                        });
                        }
                    })

                }else{
                    Swal.fire({
                        icon: 'error',
                        title: 'The quantity of this product is not enough',
                        text: 'Available Stock: ' + data.currentQyt
                            })
                }
                
            }

        })();
    });

    <?php

    include('connect.php');
    include('CID.php');
    date_default_timezone_set('Asia/Manila');//set a time zone

    if(isset($_POST["id"])){

        $a = $_POST['id']; 
        $b = $_POST['prodname'];
        $c = $_POST['qty']; 
        $d = $_POST['price'];
        $e = $_POST['type'];
        $f = $_POST['img'];
        $g = $_POST['tblname'];
        $h = $_POST['currentQyt'];
      
        $date = date('Y-m-d H:i:s');
        $total_price = ($d * $c);
        $newQty = ($h - $c);
        $cID = getNewCustomerId($conn);

        
        if ($newQty == 0) {
            $result = mysqli_query($conn, "UPDATE `product` SET `quantity`= '$newQty', `status`='Unavailable' WHERE `prodid` = '$a'");
        } else {
            $result = mysqli_query($conn, "UPDATE `product` SET `quantity` = '$newQty', `status`='Available'  WHERE `prodid` = '$a'");
            echo $newQty;
        }
        
        mysqli_query($conn,"INSERT INTO `customer_order_list`(`prod_id`, `customer_id`, `prod_name`, `quantity`, `price`, `totalp`, `type`, `station`, `image`, `date`, `table_name`) VALUES ('$a','$cID','$b','$c','$d','$total_price','$e','Pending','$f','$date','$g')");
           
       
    }
    
    ?>

</script>