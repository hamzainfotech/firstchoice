<?php 
session_start();
if(!isset($_SESSION['name'])){
	header("location:../login.php");
}
// Store Session Data
 $username= $_SESSION['name'];  // Initializing Session with value of PHP Variable
 
 
 ?>
 <?php include"../include/connect.php";?>


<link href="stylesheets/bootstrap.min.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/font-awesome.min.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/hightop-font.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/isotope.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/jquery.fancybox.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/fullcalendar.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/wizard.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/select2.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/morris.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/datatables.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/datepicker.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/timepicker.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/colorpicker.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/bootstrap-switch.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/bootstrap-editable.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/daterange-picker.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/typeahead.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/summernote.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/ladda-themeless.min.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/social-buttons.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/jquery.fileupload-ui.css" media="screen" rel="stylesheet" type="text/css" />
<link href="stylesheets/dropzone.css" media="screen" rel="stylesheet" type="text/css" />
<link href="stylesheets/nestable.css" media="screen" rel="stylesheet" type="text/css" />
<link href="stylesheets/pygments.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/style.css" media="all" rel="stylesheet" type="text/css" />
<link href="stylesheets/color/green.css" media="all" rel="alternate stylesheet" title="green-theme" type="text/css" />
<link href="stylesheets/color/orange.css" media="all" rel="alternate stylesheet" title="orange-theme" type="text/css" />
<link href="stylesheets/color/magenta.css" media="all" rel="alternate stylesheet" title="magenta-theme" type="text/css" />
<link href="stylesheets/color/gray.css" media="all" rel="alternate stylesheet" title="gray-theme" type="text/css" />

<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">


<style type="text/css">
	

.btn{
	font-size: 18px;
}


#coverimg{
  min-height: 150px;
}

table{
	width: 100%;
}


.cke_contents {

    min-height: 500px;
}


.space{
	height: 400px;
}



</style>