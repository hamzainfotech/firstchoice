<html>
<head>

  <?php include('include/head.php') ?>


  <title>
    images
  </title>

  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['image_name'])) $page = $_GET['image_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'Null' ?>

  <?php



  for ($i=0; $i < 100 ; $i++) { 

    if(isset($_POST['savecat'.$i])){
      $msg="Unsuccessful" ;

      $id=$_POST['savecat'.$i];
      $name=$_POST['name'.$i];
      $slug1=$_POST['slug'.$i];
      $ordr=$_POST['ordr'.$i];

      $slug2=preg_replace('/[^A-Za-z0-9-]+/', '-', $slug1);
      $slug=strtolower($slug2);

      if (!empty($_FILES['img'.$i]['name'])) {
          
        // Get image name
        $image = $_FILES['img'.$i]['name'];
        $image = md5(uniqid())  . "1.png";
        
        // image file directory
        $target = "../images/images/".basename($image);

        $data=mysqli_query($con,"UPDATE imagescat SET `img`='$image' where `id`='$id'")or die( mysqli_error($con) );

        if (move_uploaded_file($_FILES['img'.$i]['tmp_name'], $target)) {
          $msg = "Image uploaded successfully";
        }else{
          $msg = "Failed to upload image";
        }


      }



      $sql = "UPDATE imagescat SET `name` = '$name',`slug` = '$slug',`ordr` = '$ordr' WHERE `id` =$id";

      mysqli_query($con, $sql) ;
      ($msg=mysqli_error($con));
      if(empty($msg))  $msg="Updated";
      header("location:images-$slug");


    }

  }



  for ($i=0; $i < 100 ; $i++) { 

    if(isset($_POST['delcat'.$i])){
      $msg="Unsuccessful" ;

      $id=$_POST['delcat'.$i];
  
      $sql = "DELETE FROM imagescat WHERE id=$id ";

      mysqli_query($con, $sql) ;

      $sql = "DELETE FROM images WHERE catid=$id  ";

      mysqli_query($con, $sql) ;
      ($msg=mysqli_error($con));

      if(empty($msg))  $msg="Category Deleted";

      header('location:images');

    }

  }




  
  ?>



  <?php
  if(isset($_POST['addcat'])){

      $msg="Unsuccessful" ;
      
       $name=$_POST['newname'];
       $slug1=$_POST['newslug'];
       $ordr=$_POST['newordr'];


       $slug=strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-', $slug1));

       // Get image name
       $image = $_FILES['img']['name'];
       $image = md5(uniqid())  . "1.png";
       
       // image file directory
       $target = "../images/images/".basename($image);

      
       if (move_uploaded_file($_FILES['img']['tmp_name'], $target)) {
         $msg = "Image uploaded successfully";
       }else{
         $msg = "Failed to upload image";
       }


  $data=mysqli_query($con,"INSERT INTO imagescat (name,slug,img,ordr)VALUES ('$name','$slug','$image','$ordr')")or die( mysqli_error($con) );

    $msg="Category Added" ;
      header("location:images-$slug");

      
  }




  for ($i=0; $i < 100 ; $i++) { 

    if(isset($_POST['saveccat'.$i])){
      $msg="Unsuccessful" ;

      $id=$_POST['saveccat'.$i];
      $name=$_POST['name'.$i];
      $url=$_POST['url'.$i];
      $ordr=$_POST['ordr'.$i];

      if(isset($_POST['feat'.$i]) ){
        $feat=1;
      }else{
        $feat=0;
      } 



      if (!empty($_FILES['img'.$i]['name'])) {
          
        // Get image name
        $image = $_FILES['img'.$i]['name'];
        $image = md5(uniqid())  . "1.png";
        
        // image file directory
        $target = "../images/images/".basename($image);

        $data=mysqli_query($con,"UPDATE images SET `img`='$image' where `id`='$id'")or die( mysqli_error($con) );

        if (move_uploaded_file($_FILES['img'.$i]['tmp_name'], $target)) {
          $msg = "Image uploaded successfully";
        }else{
          $msg = "Failed to upload image";
        }


      }



      $sql = "UPDATE images SET `name` = '$name',`url` = '$url',`ordr` = '$ordr',`feat` = '$feat' WHERE `id` =$id";

      mysqli_query($con, $sql) ;
      ($msg=mysqli_error($con));
      if(empty($msg))  $msg="image Updated";


    }

  }



  for ($i=0; $i < 100 ; $i++) { 

    if(isset($_POST['delccat'.$i])){
      $msg="Unsuccessful" ;

      $id=$_POST['delccat'.$i];
  


      $sql = "DELETE FROM images WHERE id=$id  ";

      mysqli_query($con, $sql) ;
      ($msg=mysqli_error($con));

      if(empty($msg))  $msg="image Deleted";

    }

  }




  
  ?>



  <?php
  if(isset($_POST['addccat'])){

      $msg="Unsuccessful" ;
      
       $name=$_POST['newname'];
       $url=$_POST['newurl'];
       $ordr=$_POST['newordr'];


       if(isset($_POST['feat']) ){
         $feat=1;
       }else{
         $feat=0;
       } 


       $rows =mysqli_query($con,"SELECT id FROM imagescat where slug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
       while($row=mysqli_fetch_array($rows)){

         $id = $row['id']; 
       }
        

       // Get image name
       $image = $_FILES['img']['name'];
       $image = md5(uniqid())  . "1.png";
       
       // image file directory
       $target = "../images/images/".basename($image);

      
       if (move_uploaded_file($_FILES['img']['tmp_name'], $target)) {
         $msg = "Image uploaded successfully";
       }else{
         $msg = "Failed to upload image";
       }


  $data=mysqli_query($con,"INSERT INTO images (name,catid,catslug,url,img,ordr,feat)VALUES ('$name','$id','$page','$url','$image','$ordr','$feat')");

  ($msg=mysqli_error($con));

  if(empty($msg))  $msg="image Deleted";

    $msg="image  Added" ;
      
  }
  ?>


<style type="text/css">
  
  #catimg{
    height: 150px;
    width:  200px;
  }

  #catimg1{
    width:  200px;
  }  
  #ccatimg{
    height: 100px;
    width:  150px;
  }

  #ccatimg1{
    width:  120px;
  }

</style>



<?php
  if(isset($_POST['saveinfo'])){
    $msg="Unsuccessful" ;

    $id=$_POST['saveinfo'];



    if (!empty($_FILES['image1']['name'])) {
        
      // Get image name
      $image = $_FILES['image1']['name'];
      $image = md5(uniqid())  . "1.png";
      
      // image file directory
      $target = "../images/covers/".basename($image);

      $data=mysqli_query($con,"UPDATE pages SET `cover`='$image' where `id`='$id'")or die( mysqli_error($con) );

      if (move_uploaded_file($_FILES['image1']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
      }else{
        $msg = "Failed to upload image";
      }


    }

    if(empty($msg))  $msg="Saved";



  }

  ?>


</head>
<body onload="showtoast()"  class="page-header-fixed bg-1 layout-boxed">
  <div class="modal-shiftfix">



    <?php include('include/header.php') ?>
    
      <?php
  $rows =mysqli_query($con,"SELECT * FROM pages where slug='image' " ) or die(mysqli_error($con));


while($row=mysqli_fetch_array($rows)){

  $pageid = $row['id'];  
  $pagename = $row['name'];
  $pagemetak = $row['metak'];
  $pagemetad = $row['metad'];
  $pagepost = $row['post'];
  $pagecover = $row['cover'];
}
?>


    <form method="post" action="" enctype="multipart/form-data">
        
        <center>
              <div class="banner">
    <img src="../images/covers/<?php echo $pagecover ?>" class="img-responsive" width="80%"> 
  </div> <!--banner ends-->
  <br>

      <div class="row">      
      <div class="col-md-2">  
      </div>    
      <div class="col-md-4">
       <input type="file"  class="" name="image1" >
      </div>      
      <div class="col-md-4"> 
  <button type="submit" name="saveinfo" class="btn btn-primary" value="<?php echo $pageid ?>"> <i class="fa fa-save"></i> Save</button>
      </div>    
    </div>


    </center>
    </form>

<?php if (!empty($page)) {
    
    


  ?>

    <div class="container-fluid main-content">
      <div class="row">
        <!-- Basic Table -->
        <div class="col-lg-1">
        </div>
        <div class="col-lg-10">
          <div class="widget-container fluid-height clearfix">
            <div class="heading" style="text-transform: capitalize;">
              <i class="fa fa-group"></i> <?php echo $page ?> images
            </div>
            <div class="widget-content padded clearfix">
              <table class="table table-bordered">
                <thead>
                  <th>
                   Name 
                 </th>

                 <th>
                   URL 
                 </th>

                 <th>
                  Image
                </th>
                <th>
                  New Image
                </th>
                <th style="max-width: 60px;">
                  Order
                </th>
                <th style="max-width: 60px;">
                  Feature
                </th>

                <th class="hidden-xs">
                  Save
                </th>


              </thead>
              <tbody>

                <?php

                $rows =mysqli_query($con,"SELECT * FROM images where catslug='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;

                while($row=mysqli_fetch_array($rows)){

                  $url = $row['url']; 
                  $name = $row['name']; 
                  $img = $row['img']; 
                  $ordr = $row['ordr']; 
                  $id = $row['id']; 
                  $feat = $row['feat']; 

                  ?>
                  <form method="post" action="" enctype="multipart/form-data">

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="name<?php echo $n ?>" value="<?php echo $name ?>">
                      </td>

                      <td>
                        <input type="text" class="form-control" name="url<?php echo $n ?>" value="<?php echo $url ?>">
                      </td>
                      <td>
                        <img id="ccatimg" src="../images/images/<?php echo $img ?>" class="form-control" ?>
                      </td>
                      <td>
                        <input id="ccatimg1"  type="file" class="form-control" name="img<?php echo $n ?>">
                      </td>

                      <td  style="max-width: 60px;">
                        <input type="text" class="form-control" name="ordr<?php echo $n ?>" value="<?php echo $ordr ?>">
                      </td>
                      <td  style="max-width: 60px;">
                        <center>
                        <input type="checkbox" style="display: inline-block;" class="" name="feat<?php echo $n ?>" <?php if($feat==1) echo 'checked' ?> >
                      </center>
                      </td>



                      <td>

                        <div class="btn-group">

                          <button type="submit" name="saveccat<?php echo $n ?>" class="btn btn-success-outline" value="<?php echo $id ?>"> <i class="fa fa-save"></i></button>

                          <button type="submit" name="delccat<?php echo $n ?>" class="btn btn-danger-outline" value="<?php echo $id ?>"> <i class="fa fa-trash-o"></i></button>
                        </div>
                      </td>
                    </tr>

                  </form>

                  <?php $n++; } ?>

                  <form method="post" action="" enctype="multipart/form-data">

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="newname" value="">
                      </td>

                      <td>
                        <input type="text" class="form-control" name="newurl" value="">
                      </td>
                      <td colspan="2">
                        <input type="file" class="form-control" name="img" >

                      </td>

                      <td  style="max-width: 60px;">
                        <input type="text" class="form-control" name="newordr" value="0">
                      </td>

                      <td  style="max-width: 60px;">
                        <center>
                        <input type="checkbox" style="display: inline-block;" class="" name="feat" checked >
                        </center>
                      </td>



                      <td>

                        <div class="btn-group">

                          <button type="submit" name="addccat" class="btn btn btn-outline"> <i class="fa fa-plus"></i></button>
                        </div>
                      </td>
                    </tr>

                  </form>

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>

  <?php } ?>

    <div class="container-fluid main-content">
      <div class="row">
        <!-- Basic Table -->
        <div class="col-lg-12">
          <div class="widget-container fluid-height clearfix">
            <div class="heading">
              <i class="fa fa-tags"></i>images Category
            </div>
            <div class="widget-content padded clearfix">
              <table class="table table-bordered">
                <thead>
                  <th>
                   Name 
                 </th>

                 <th>
                   Slug 
                 </th>

                 <th>
                  Image
                </th>
                <th>
                  New Images
                </th>
                <th style="max-width: 60px;">
                  Order
                </th>

                <th class="hidden-xs">
                  Add images
                </th>


              </thead>
              <tbody>

                <?php

                $rows =mysqli_query($con,"SELECT * FROM imagescat  ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;

                while($row=mysqli_fetch_array($rows)){

                  $slug = $row['slug']; 
                  $name = $row['name']; 
                  $img = $row['img']; 

                  $ordr = $row['ordr']; 
                  $id = $row['id']; 

                  ?>
                  <form method="post" action="" enctype="multipart/form-data">

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="name<?php echo $n ?>" value="<?php echo $name ?>">
                      </td>

                      <td>
                        <input type="text" class="form-control" name="slug<?php echo $n ?>" value="<?php echo $slug ?>">
                      </td>
                      <td>
                        <img id="catimg" src="../images/images/<?php echo $img ?>" class="form-control" ?>
                      </td>
                      <td>
                        <input id="catimg1"  type="file" class="form-control" name="img<?php echo $n ?>">
                      </td>

                      <td  style="max-width: 60px;">
                        <input type="text" class="form-control" name="ordr<?php echo $n ?>" value="<?php echo $ordr ?>">
                      </td>



                      <td>

                        <div class="btn-group">

                          <button type="submit" name="savecat<?php echo $n ?>" class="btn btn-success-outline" value="<?php echo $id ?>"> <i class="fa fa-save"></i></button>

                          <a href="images-<?php echo $slug ?>" class="btn btn-primary-outline" value="<?php echo $id ?>"> </i> <i class="fa fa-plus"></i></a>

                          <button type="submit" name="delcat<?php echo $n ?>" class="btn btn-danger-outline" value="<?php echo $id ?>"> <i class="fa fa-trash-o"></i></button>
                        </div>
                      </td>
                    </tr>

                  </form>

                  <?php $n++; } ?>

                  <form method="post" action="" enctype="multipart/form-data">

                    <tr>
                      <td>
                        <input type="text" class="form-control" name="newname" value="">
                      </td>

                      <td>
                        <input type="text" class="form-control" name="newslug" value="">
                      </td>
                      <td colspan="2">
                        <input type="file" class="form-control" name="img" >

                      </td>

                      <td  style="max-width: 60px;">
                        <input type="text" class="form-control" name="newordr" value="">
                      </td>



                      <td>

                        <div class="btn-group">

                          <button type="submit" name="addcat" class="btn btn btn-outline"> <i class="fa fa-plus"></i></button>
                        </div>
                      </td>
                    </tr>

                  </form>

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>

<div class="space"></div>



  </div>
</div>

<?php include('include/footer.php') ?>

</body>
</html>