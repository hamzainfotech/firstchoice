<header class="header-wrapper">
    <div class="topbar clearfix" style="background: #55c348">
      <div class="container">
        
        <ul class="topbar-left">
          <li>We review products so you don't have to.</li>
        </ul>
        <ul class="topbar-right">
          <li class="phoneNo"><i class="fa fa-user"></i> Register </li>
          <li class="phoneNo"><i class="fa fa-sign-in"></i> Login </li>
          

        </ul>
      </div>
    </div>

    <div class="header clearfix" >
      <nav class="navbar navbar-main navbar-default"style="background-color: #fff">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <div class="header_inner">
                <a class="navbar-brand logo clearfix cuslogo" href="index"><img src="images/<?php echo $sitelogo; ?>" alt="" class="img-responsive cuslogo"/></a>
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="main-nav"><span class="navbar-header"></span>
                  <ul class="nav navbar-nav navbar-right">

              


                    <?php

                    $rows =mysqli_query($con,"SELECT name,slug,res FROM pages WHERE hide=0  ORDER BY ordr" ) or die(mysqli_error($con));
                              
                      while($row=mysqli_fetch_array($rows)){
                        
                        $slug = $row['slug']; 
                        $name = $row['name']; 
                        $res = $row['res']; 

                        ?>

                    <li <?php if($link==$slug) echo'class="apply_now"' ;?> <?php if($slug=='pages') echo'class="dropdown"' ; else if($slug=='videos') echo'style="display:none;"'; ?>>

                    	<?php if($slug=='pages'){ ?>
                    		

                    	<ul class="dropdown-menu">

                    		<?php 

                    		$rowsx =mysqli_query($con,"SELECT name,slug FROM childpages where pslug='$slug'  ORDER BY ordr" ) or die(mysqli_error($con));
                    		          
                    		  while($rowx=mysqli_fetch_array($rowsx)){
                    		    
                    		    $cslug = $rowx['slug']; 
                    		    $cname = $rowx['name']; 


                    		    ?>
                    	    <li><a href="pages-<?php echo $cslug ?>"><?php echo $cname ?></a></li>

                    	<?php } ?>
                    	</ul>

                    <?php } ?>



                      <a href="<?php if($res==0) echo'cpages-' ;?><?php if($slug=='pages') echo'#'; else  echo $slug ?>"></span><?php echo $name ?></a>

                    </li>



                    
                    <?php } ?>

                  </ul>
                </div><!-- navbar-collapse -->

              </div>
            </div>
          </div>
        </div><!-- /.container -->
      </nav><!-- navbar -->
    </div>
  </header>