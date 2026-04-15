<?php include('session.php'); ?>
<!DOCTYPE html>
<html>
<head> 
	<meta charset="utf-8">
	<title>INBOX Restobar & KTV</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="./FontAwesomefile/fontawesome.css">
    <script src="./FontAwesomefile/fontawesome.js"></script>

    <script src="jquery-1.7.1.min.js"></script>
    <script src="sweetalert2.all.min.js"></script>
    <script src="sweetalert2.min.css"></script>
    <script src="jquery.min.js"></script>

    <script>

        $(document).ready(function(){

            setInterval(function(){

                $.post("getNotify.php", {data:'get'},function(data) {
                    
                        $(".notify_label").text(data);
                });

            },1000);

                $(".notiBtn").click(function(){

                    $.post("getNotify.php", {update:'update'},function(update){


                    });

                });        
        });

    </script>

</head>
<body>

  <!-- <meta http-equiv="refresh" content="180; url=index.php"> -->
    <script>
        const toggle = () => {

            /*alert("wordking");*/
            document.getElementById('nav').classList.toggle("active");
        }
        
    </script>

    <header class="header">

        <div class="brand">

            <span><img src="./img/inboxlogo.jpg" class="inboxlogo" width="50" height="50"></span>
            <h1>INBOX</h1>
        </div>
        <span id="menuIcon"><img src="./img/list.png" class="listing" onclick="toggle()" width="20" height="20"></span>
        <div class="searchIcone" id="nav"> 

            <div class="searchBox">
                <input type="text" id="search" placeholder="Search..." Style="text-align: left">
                <span><img src="./img/search.png" id="SIcon" width="20" height="20"></span>
            </div>

                    <ul>    
                        <li>
                            <span><img src="./img/home.png" width="18" height="18" id="iconHeader"></span>
                            <a onclick="HomePage()">Home</a> 
                        </li>
                        <li>
                            <span><img src="./img/plate.png" width="22" height="22" id="iconHeader"></span>
                            <a onclick="mealPage()">Meals</a>
                        </li>
                        <li>
                            <span><img src="./img/coffee.png" width="25" height="25" id="iconHeader"></span>
                            <a onclick="BeveragePage()">Beverages</a>
                        </li>
                        <li>
                            <span><img src="./img/ice-cream.png" width="28" height="28" id="iconHeader"></span>
                            <a onclick="DesserPage()">Dessert</a>
                        </li>
                        <li>

                            <span><img src="./img/add.png" width="25" height="25" id="iconHeader"></span>
                            <a onclick="OrderPage()">Checkout</a>
                        </li>
                      <li class="noti_li">
                        <button class="notification_button" style="background-color: transparent; border: none; color: #fff;">
                            <span class="noti_container">
                                <img src="./img/notification.png" width="30" height="28" id="iconHeader" alt="Notification Icon">
                                <span class="notify_label" style="color: #fa1818; font-weight: 900;">0</span>
                            </span>
                        </button>
                        <a onclick="NotifyPage()" class= "notiBtn">Notification</a>
                    </li>

                    </li>
                        <li>
                            <span><img src="./img/question.png" width="23" height="23" id="iconHeader"></span>
                            <a href="index.php">Exit</a>
                        </li>
                    </ul>
         </div>
            </header>

            <div id="result"></div>
            <script>

                function HomePage(){
                         $(document).ready(function() {
                        function load_data(query = '') {
                            $.ajax({
                                url: "search.php",
                                method: "POST",
                                data: { query: query },
                                success: function(data) {
                                    $('#result').html(data);
                                }
                            });
                        }

                        $('#search').keyup(function() {
                            var search = $(this).val();
                            load_data(search);
                        });

                        // Optional: Load data on page load
                        load_data();
                    });
                    document.getElementById('nav').classList.toggle("active");
                }

                function mealPage(){
                    $(document).ready(function() {
                        function load_data(query = '') {
                            $.ajax({
                                url: "searchMeal.php",
                                method: "POST",
                                data: { query: query },
                                success: function(data) {
                                    $('#result').html(data);
                                }
                            });
                        }

                        $('#search').keyup(function() {
                            var search = $(this).val();
                            load_data(search);
                        });

                        // Optional: Load data on page load
                        load_data(); 
                    });

                    document.getElementById('nav').classList.toggle("active");
                }

                function BeveragePage(){
                         $(document).ready(function() {
                        function load_data(query = '') {
                            $.ajax({
                                url: "searchBeverage.php",
                                method: "POST",
                                data: { query: query },
                                success: function(data) {
                                    $('#result').html(data);
                                }
                            });
                        }

                        $('#search').keyup(function() {
                            var search = $(this).val();
                            load_data(search);
                        });

                        // Optional: Load data on page load
                        load_data();
                    });

                    document.getElementById('nav').classList.toggle("active");
                }

                function DesserPage(){
                        $(document).ready(function() {
                        function load_data(query = '') {
                            $.ajax({
                                url: "searchDessert.php",
                                method: "POST",
                                data: { query: query },
                                success: function(data) {
                                    $('#result').html(data);
                                }
                            });
                        }

                        $('#search').keyup(function() {
                            var search = $(this).val();
                            load_data(search);
                        });

                        // Optional: Load data on page load
                        load_data();
                     });

                     document.getElementById('nav').classList.toggle("active");
                }

                $(document).ready(function() {
                        function load_data(query = '') {
                            $.ajax({
                                url: "search.php",
                                method: "POST",
                                data: { query: query },
                                success: function(data) {
                                    $('#result').html(data);
                                }
                            });
                        }

                        $('#search').keyup(function() {
                            var search = $(this).val();
                            load_data(search);
                        });

                        // Optional: Load data on page load
                        load_data();
                    });

                function OrderPage(){
                    function load_data(query = '') {
                            $.ajax({
                                url: "orderList.php",
                                success: function(data) {
                                    $('#result').html(data);
                                }
                            });
                        }

                        load_data();
                }

                function NotifyPage(){
                    function load_data(){
                        $.ajax({
                            url: "notificationsPage.php",
                            success: function(data){
                                $('#result').html(data);
                            }
                        });
                    }
                    load_data();

                    document.getElementById('nav').classList.toggle("active");
                }
      
             </script>

</body>
</html>