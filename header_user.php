<?php

session_start();

      $g=$_SESSION['user_id'];

      
      ?>

<header class="header">

   <div class="flex">

       
      <img src="images/Mon_projet-1.png"  class="mylogo" alt=""  width="35" height="35">

      <a href="user_page.php" class="logo">Bookie Store</a>

      <nav class="navbar">
         
         <a href="products_user.php">View products</a>
         <a href="logout.php">Logout</a>
      </nav>

      <?php
      
      
      $select_rows = mysqli_query($conn, "SELECT * FROM `cart` WHERE user_id = '$g' ") or die('query failed');
      $row_count = mysqli_num_rows($select_rows);

      ?>

      <a href="cart.php" class="cart">cart <span><?php echo $row_count; ?></span> </a>

      <div id="menu-btn" class="fas fa-bars"></div>


      

   </div>

   
   

</header>