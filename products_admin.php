

<?php


error_reporting(E_ALL & ~E_NOTICE);
@include 'config.php';



session_start();

    

    if(!isset($_SESSION['admin_name'])){
      header('location:login.php');
    }

if(isset($_POST['add_to_cart'])){

   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = 1;

   $select_cart = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name'");

   if(mysqli_num_rows($select_cart) > 0){
      $message[] = 'product already added to cart';
   }else{
      $insert_product = mysqli_query($conn, "INSERT INTO `cart`(name, price, image, quantity,) VALUES('$product_name', '$product_price', '$product_image', '$product_quantity',)");
      $message[] = 'product added to cart succesfully';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>products</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">

   <link rel="stylesheet" href="css/style.css">
</head>
<body>
   
<?php

if(isset($message)){
   foreach($message as $message){
      echo '<div class="message"><span>'.$message.'</span> <i class="fas fa-times" onclick="this.parentElement.style.display = `none`;"></i> </div>';
   };
};

?>

<?php include 'header_admin.php'; ?>

<div class="research_1">
   
  <form action="" method="post" >
   
  <input type="text" name="bars" style="background-color:transparent;" placeholder="Type a book name.....    " >

   <div class="btn9">

      <input type="submit" class="btn19" style="background-color:transparent;" value="search" name="bara">
   </div>
</form>
   

 </div>

 <?php




if(isset($_POST["bara"])){

   $bars = $_POST["bars"] ;
   $select_bar = mysqli_query($conn, "SELECT * FROM `products` WHERE name ='$bars' ");
     if(mysqli_num_rows($select_bar) > 0){
      while($fetch_re = mysqli_fetch_assoc($select_bar)){

?>
<form action="" method="post">
         <div class="card p-4 mx-auto" style="width: 18rem; width: 250px; margin-top: 20px;">
            <img class="card-img-top" src="uploaded_img/<?php echo $fetch_re['image']; ?>" alt="">
            <h3><?php echo $fetch_re['name']; ?></h3>
            <div  clas=".card-body">

               
               <input class="card-title" type="hidden" class="" name="product_name" value="<?php echo $fetch_re['name']; ?>">
               <input style="background-color:white;" type="submit" name="product_price" value="<?php echo $fetch_re['price']; ?> $">
               <input type="hidden" name="product_image" value="<?php echo $fetch_re['image']; ?>">
               
            </div>
            
         </div>
      </form>


 
<?php 
       };
      }else {
         ?>
<script>alert(no date)</script>

         <?php

      }
   };

?> 

<div class="container">

<section class="products">

   <h1 class="heading"> Products</h1>

   <div class="box-container">

      <?php
      
      $select_products = mysqli_query($conn, "SELECT * FROM `products`");
      if(mysqli_num_rows($select_products) > 0){
         while($fetch_product = mysqli_fetch_assoc($select_products)){
      ?>

      <form action="" method="post">
         <div class="box">
            <img src="uploaded_img/<?php echo $fetch_product['image']; ?>" alt="">
            <h3><?php echo $fetch_product['name']; ?></h3>
            <div class="price">$<?php echo $fetch_product['price']; ?>/-</div>
            <input type="hidden" name="product_name" value="<?php echo $fetch_product['name']; ?>">
            <input type="hidden" name="product_price" value="<?php echo $fetch_product['price']; ?>">
            <input type="hidden" name="product_image" value="<?php echo $fetch_product['image']; ?>">
            
            
            
         </div>
      </form>

      <?php
         };
      };
      ?>

   </div>

</section>

</div>


<!-- footer part  -->
<footer  class="footer">

        <p  href="#"  class=" footer-title">Copyright<span>@Bookie Store BY <br> Ali quamar</span>   </p>
        
        <nav >
            
        </nav>
    </footer>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>