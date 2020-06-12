<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php include 'include/head.php';
  
  			
  			function truncateString($str, $chars, $to_space, $replacement="...") {
   if($chars > strlen($str)) return $str;

   $str = substr($str, 0, $chars);
   $space_pos = strrpos($str, " ");
   if($to_space && $space_pos >= 0) 
       $str = substr($str, 0, strrpos($str, " "));

   return($str . $replacement);
}

?>

  <title>products Categories </title>


  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['sproduct_name'])) $page = $_GET['sproduct_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['sproduct_name'])) $page = Null ?>

</head>

<body class="body-wrapper">
    

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>

  <div class="container">

    
    <div class="latest-products text-center">
    
    <h2 style="text-transform: capitalize;"><?php echo $page ?> Products</h2>
    
    <div class="clearfix">&nbsp;</div>
    
    

	                	<div class="row ">


    <?php

    $rows =mysqli_query($con,"SELECT * FROM product where pslug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $name = $row['name'];
      $slug = $row['slug'];
      $desp = $row['desp'];
      $id = $row['id'];
      if(empty($desp)) $desp='...';
      
      
      $rows2 =mysqli_query($con,"SELECT * FROM pimgs where feat=1 AND  pslug='$slug'   ORDER BY ordr" ) or die(mysqli_error($con));
      $n=0;

      while($row2=mysqli_fetch_array($rows2)){

        $img = $row2['img'];

      }

      ?>

                   <div class="item col-md-4">
                       <div class="item-inner">
                                     <br>



                             <div class="img">
                                <center>

                               <figure id="fig1">
                                <a href="dproducts-<?php echo $slug ?>">
                                 <img  class="simg" src="images/products/<?php echo $img ?>" alt="" id="img1" />
                               </a>
                               </figure>
                             </center>

                             </div>
                             
                                     <h4 class="heading1"><?php echo $name ?></h4>
                             <br>

                               
                               
                       </div>
                       </div>
                                  
                    <?php $n++; $img='Null'; } ?>
                    
            </div>
            </div>
                      
        </div><!--//products-->
    </div><!--//containers-->


    <br>
    <br>



    <br>
    
    
    <div class="brandSection clearfix">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div class="owl-carousel partnersLogoSlider">
              
            	<?php $rows =mysqli_query($con,"SELECT * FROM product ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;

                while($row=mysqli_fetch_array($rows)){

                    $name = $row['name'];
                     $slug = $row['slug'];
                     $id = $row['id'];
                     
                      
      $rows2 =mysqli_query($con,"SELECT * FROM pimgs where feat=1 AND  pslug='$slug'  ORDER BY ordr" ) or die(mysqli_error($con));
      $n=0;

      while($row2=mysqli_fetch_array($rows2)){

        $img = $row2['img'];

      }

                     

                  ?>
              <div class="slide">
                <div class="partnersLogo clearfix">
                  <a href="dproducts-<?php echo $slug ?>"><img src="images/products/<?php echo $img ?>"></a>
                  <p style="color:black;"><?php echo $name ?></p>
                </div>
              </div>
              
              <?php } ?>
              
            </div>
          </div>
        </div>
      </div>
    </div><!-- Brand-section -->
    
    <style>
    .partnersLogoSlider .slide .partnersLogo img {
    width: 150px !important;
    height: 120px;
}
.brandSection {
    padding: 30px 0 5px;
    
}
    </style>





    <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

