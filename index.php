<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php include 'include/head.php'; ?>

  <title><?php echo $sitename ?></title>

  <?php if(empty($_GET['page_name'])) $link ='home';  ?>
  
  
  <style>

    ul > li > a > p > img{
      display:none;
    }

    ul > li > a > img{
      display:none;
    }


  </style>



</head>

<body class="body-wrapper">

  <div class="main_wrapper">

    <?php include 'include/header.php'; ?>



    <div class="banner">

      <div id="demo-1" data-zs-src='[

      <?php

      $result =mysqli_query($con,"SELECT * FROM slider  ORDER BY ordr" ) or die(mysqli_error($con));
      $rowcount=mysqli_num_rows($result);
      $rows =mysqli_query($con,"SELECT * FROM slider  ORDER BY ordr" ) or die(mysqli_error($con));
      $n=0;

      while($row=mysqli_fetch_array($rows)){

        $name = $row['name']; 
        $img = $row['img']; 
        $ordr = $row['ordr']; 
        $id = $row['id']; 

        $n++;

        ?>

        "images/slider/<?php echo $img ; ?>"

        <?php if($n<$rowcount) echo "," ;  } ?>


        ]' 
        data-zs-overlay="dots">
        <div class="sover">
          <div style="padding-top: 15%;"></div>
          <center>

            <h2 class="htext"> <?php echo $name ?></h2>
            <br><br>

            <div class="row" style="max-width: 95%">
              <div class="col-md-3">
              </div>
              <div class="col-md-5 text-right" style="padding-left: 0px;padding-right: 0px">
                <input type="text" name="search" class="form-control" style="color: #fff;    background: transparent;    border: 3px solid #fff;">
              </div>
              <div class="col-md-1" style="padding-left: 0px;padding-right: 0px">
                <input type="button" class="btn form-control" name="q" value="Search" style="background: #54b948;    color: #fff;    border: 3px solid #54b948;">
              </div>

            </div>

          </center>
        </div>

      </div> 

    </div> <!--banner ends-->

    <section id="projects" class="projects-section section" style="background: #ececec;">
      <div class="container">
        <center>
          <br>
          <br>
          <h2> Products Categories:</h2>
          <br>
          <br>
        </center>
        <div class="row">


          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-desktop faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Computers & Electronics </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>


          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-home faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Home & Gardens </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Clothes <i class="badge badgeli">8</i> </a> </li>
                  <li class="bli"><a href="#">Home Tubs <i class="badge badgeli">0</i> </a> </li>
                  <li class="bli"><a href="#">Mattress <i class="badge badgeli">2</i> </a> </li>
                  <li class="bli"><a href="#">Sofa  <i class="badge badgeli">3</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>


          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-cutlery faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Kitchen </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>
          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-cutlery faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Kitchen </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>
          <div class="col-sm-4">

            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-cutlery faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Kitchen </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>
          <div class="col-sm-4">
            <br>

            <div class="card">

              <div class="cardheader">

                <span class="category-lead-bg"></span>

                <div class="badge badgebg"> <i class="fa fa-cutlery faiconbg"></i></div>

                <div class="tdiv">
                  <center>
                    <span class="title">Kitchen </span>                  
                  </center>
                </div>
              </div>
              <div class="cardbody">
                <ul>
                  <li class="bli"><a href="#">Car Players <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Cell Phones Players <i class="badge badgeli">5</i> </a> </li>
                  <li class="bli"><a href="#">Laptops <i class="badge badgeli">1</i> </a> </li>
                  <li class="bli"><a href="#">Mobile Phones  <i class="badge badgeli">2</i> </a> </li>
                </ul>

              </div>

            </div>


          </div>
        </div>


        <br><br>

        <center><h2>Latest Reviews</h2></center>


        <br><br>

        <div class="row">

          <div class="col-md-4">
            <div class="card">
              <div class="">
                <img src="images/products/1.jpg" class="cardimg">
              </div>
              <div class="cardbody">
                <h4>Car Player X5556</h4>
                <span>
                  <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i class="fa fa-star-o"></i>   (6) </span>
                  <br>
                  <br>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                  </p>

                  <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                  By: <b> Latest User </b> 
                  <span style="float: right;"> Car Player </span>
                </div>
              </div>
            </div>


            <div class="col-md-4">
              <div class="card">
                <div class="">
                  <img src="images/products/2.jpg" class="cardimg">
                </div>
                <div class="cardbody">
                  <h4>Notebook 14"</h4>
                  <span>
                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i>   (19) </span>
                    <br>
                    <br>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                    </p>

                    <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                    By: <b> Latest User </b> 
                    <span style="float: right;"> Car Player </span>
                  </div>
                </div>
              </div>


              <div class="col-md-4">
                <div class="card">
                  <div class="">
                    <img src="images/products/3.jpg" class="cardimg">
                  </div>
                  <div class="cardbody">
                    <h4> HP Hard Drive</h4>
                    <span>
                      <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></i>   (3) </span>
                      <br>
                      <br>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                      </p>

                      <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                      By: <b> Latest User </b> 
                      <span style="float: right;"> Car Player </span>
                    </div>
                  </div>
                </div>
              </div>




              <br><br>

              <center><h2>Author's Pick</h2></center>


              <br><br>

              <div class="row">

                <div class="col-md-6">
                 <div class="card">
                  <div class="row">
                    <div class="col-md-6">
                      <img src="images/products/d2.jpg">
                    </div>
                    <div class="col-md-6">

                      <div class="cardbody">
                        <h4>Bed Full Size</h4>
                        <span>
                          <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></i>   (3) </span>
                          <br>
                          <br>
                          <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                          </p>

                          <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                          By: <b> Latest User </b> 
                          <span style="float: right;"> Car Player </span>
                        </div>
                      </div>


                    </div>
                  </div>

                </div>

                <div class="col-md-6">
                 <div class="card">
                  <div class="row">
                    <div class="col-md-6">
                      <img src="images/products/d1.jpg">
                    </div>
                    <div class="col-md-6">

                      <div class="cardbody">
                        <h4> Gym's Threadmil</h4>
                        <span>
                          <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i class="fa fa-star-o"></i>   (9) </span>
                          <br>
                          <br>
                          <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                          </p>

                          <img src="http://demo.djmimi.net/themes/reviews/wp-content/uploads/2015/07/avatar-6-25x25.jpg" width="25" height="25" alt="Sally Doe" class="avatarimg">
                          By: <b> Latest User </b> 
                          <span style="float: right;"> Car Player </span>
                        </div>
                      </div>


                    </div>
                  </div>

                </div>

              </div>






</div>

</section>


        <br><br>
        <br><br>

        <center><h2>Latest News & Suggestions</h2></center>


        <br><br>
        <div class="container">
        <div class="row" style="">

          <div class="col-md-3">
            <div class="card">
              <div class="">
                <img src="images/products/n1.jpg" class="cardimg">
              </div>
              <div class="cardbody">
                <h4>Car Player X5556</h4>
                <span>
                  <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><i class="fa fa-star-o"></i>   (6) </span>
                  <br>
                  <br>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                  </p>


                </div>
              </div>
            

            </div>


            <div class="col-md-3">
              <div class="card">
                <div class="">
                  <img src="images/products/n2.jpg" class="cardimg">
                </div>
                <div class="cardbody">
                  <h4>The Best Restutrants in Lahore</h4>
                  <span>
                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i>   (19) </span>
                    <br>
                    <br>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                    </p>

                  </div>
                </div>
              </div>


              <div class="col-md-3">
                <div class="card">
                  <div class="">
                    <img src="images/products/n3.jpg" class="cardimg">
                  </div>
                  <div class="cardbody">
                    <h4> The Most Afforable Displays</h4>
                    <span>
                      <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></i>   (3) </span>
                      <br>
                      <br>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                      </p>


                    </div>
                  </div>
                </div>

              <div class="col-md-3">
                <div class="card">
                  <div class="">
                    <img src="images/products/n4.jpg" class="cardimg">
                  </div>
                  <div class="cardbody">
                    <h4> USB Converting to Type C</h4>
                    <span>
                      <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></i>   (3) </span>
                      <br>
                      <br>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                      </p>


                    </div>
                  </div>
                </div>





              </div>
            </div>



              <br><br>





              


  <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

