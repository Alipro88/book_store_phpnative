<?php


@include 'config.php';

if(isset($_GET['delete'])){
   $delete2_id = $_GET['delete'];
   $delete2_query = mysqli_query($conn, "DELETE FROM `orders` WHERE id = $delete2_id ") or die('query failed');
   if($delete2_query){
      header('location:orders.php');
      $message[] = 'orders has been deleted';
   }else{
      header('location:orders.php');
      $message[] = 'product could not be deleted';
   };
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <title>Document</title>
</head>
<body>



<?php include 'header_admin.php'; ?> 
<section class="display-product-table">

<table class="table-bordered">

   <thead>
      <th>Client Name </th>
      <th>Number </th>
      <th>Email </th>
      <th>Country </th>
      <th>Products </th>
      <th>Total Prices </th>
      <th>Checkout </th>
      
   </thead>

   <tbody>

    
      <?php
      
         $select_orders = mysqli_query($conn, "SELECT * FROM `orders`");
         if(mysqli_num_rows($select_orders) > 0){
            while($row = mysqli_fetch_assoc($select_orders)){
      ?>

      <tr>
         <td><?php echo $row['name']; ?></td>
         <td><?php echo $row['number']; ?></td>
         <td><?php echo $row['email']; ?></td>
         <td><?php echo $row['country']; ?></td>
         <td><?php echo $row['total_products']; ?></td>
         <td>$<?php echo $row['total_prices']; ?>/-</td>
         <td><a href="orders.php?delete=<?php echo $row['id']; ?>" class="delete-btn" onclick="return confirm('After this action the order will be deleted  are your sure you want to delete this?');">  comfirm order </a></td>
         
      </tr>

      <?php
         };    
         }else{
            echo "<div class='empty'>no order added</div>";
         };
      ?>
   </tbody>
</table>

</section>

<!-- footer part  -->
<footer  class="footer">

        <p  href="#"  class=" footer-title">Copyright<span>@Bookie Store BY <br> Ali quamar</span>   </p>
        
        <nav >
            
        </nav>
    </footer>
</body>
</html>