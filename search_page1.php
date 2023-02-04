<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="#">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

    <!-- font awesome link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Document</title>
</head>
<body>
  
<?php

@include 'config.php';



include 'header_user.php';

?>

<div class="container">

   

<div class="flip">
   
   <div class="welcom">
      
    <p >
      <div class="box">
         <div></div>
         <div></div>
         <div></div>
         <div></div>
         <div></div>
         <div></div>
         <div></div>
         <div></div>
         <div></div>
         <div></div>
      </div>
    
          hi , <span  ><?php 

      session_start();
      $h=$_SESSION['user_name'];

      echo '<h1 style="color:black;" >'.$h.'</h1>' ;  ?>
       </span> wellcome to Bookie 

    </p> 
   </div>

</div>

 <div class="research">
   
   <form action="" method="POST">
      <input type="text" name="search2" style="background-color:transparent;" placeholder="Type a book name.....    " >
    
     <div class="btn8">

      <a href="#"  ><i style="color:black;" class="fa fa-search"></i></a> 
        
     </div>
   </form>

 </div>

</div>



<section class="display-product-table">

<table>

      <thead>
         <th>product image</th>
         <th>product name</th>
         <th>description</th>
         <th>product price</th>
         
      </thead>

      <tbody>

      <?php

       

        

        if (isset($_POST["submit"])) {
	        $str = $_POST["search2"];
        	$sth_query = mysqli_query($conn, "SELECT * FROM products WHERE concat(name,email,password)  LIKE '$str'");

        	

        	if(mysqli_num_rows($sth_query) > 0){
                
                
        		?>
        		
         

          <tr>
            <td><img src="uploaded_img/<?php echo $fetch_edit['image']; ?>" height="100" alt=""></td>
            <td><?php echo $fetch_edit['name']; ?></td>
            <td></td>
            <td>$<?php echo $fetch_edit['price']; ?>/-</td>
            
           </tr>
		
   <?php 

                
	    }
		
		
	    	else{
			echo "Name Does not exist";
	    	}


    }

   ?>
         
         

         
      </tbody>
   </table>

</section>





</body>
</html>