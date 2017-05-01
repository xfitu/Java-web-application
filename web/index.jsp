
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 
        IMPORTANT: download and includes bootstrap.min.css,jquery-3.1.1.min.js
        and boostrap.min.js in the project for bootstrap framework and jquery AJAX request
        -->
        <!-- Remember file must be in this order -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script> 
        <script  src="js/bootstrap.min.js" type="text/javascript"></script> 
        <!-- Add jquery file contains functions for sending AJAX request to API server -->
        <script type="text/javascript" src="js/index.js"></script>
        <!-- link to css file for this page -->
        <link rel="stylesheet" href="css/index.css">
        <link href="css/style.css" type="text/css" rel="stylesheet" media="all"/> 
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 

        <title>index</title>
        
</head>
<body>
 
<!-- .................................... Header Starts here................................................... -->
<%@include file="includes/index_header.jsp"%>
<!-- .................................... Header ends here...................................................... -->
 
<div class="jumbotron"> 
<div class="container">
  

<!--Services-->
<div class="options-wthree">
    <div class="container">
		<ul>
			<li>
			<a href="#" class="opt-grids">
				<div class="icon-agileits-w3layouts">
					<i class="fa fa-calendar" aria-hidden="true"></i>
				</div>
				<div class="opt-text-w3layouts">
					<h6>Appointments</h6>
				</div>
			</a>
			</li>
			<li>
			<a href="#" class="opt-grids">
				<div class="icon-agileits-w3layouts">
					<i class="fa fa-stethoscope" aria-hidden="true"></i>
				</div>
				<div class="opt-text-w3layouts">
					<h6>Doctors</h6>
				</div>
			</a>
			</li>
			
			<li>
			<a href="#" class="opt-grids">
				<div class="icon-agileits-w3layouts">
					<i class="fa fa-ambulance" aria-hidden="true"></i>
				</div>
				<div class="opt-text-w3layouts">
					<h6>Services</h6>
				</div>
			</a>
			</li>
			<li>
			<a href="#" class="opt-grids">
				<div class="icon-agileits-w3layouts">
					<i class="fa fa-hospital-o" aria-hidden="true"></i>
				</div>
				<div class="opt-text-w3layouts">
					<h6>Departments</h6>
				</div>
			</a>
			</li>
			<li>
			<a href="#" class="opt-grids">
				<div class="icon-agileits-w3layouts">
					<i class="fa fa-wheelchair" aria-hidden="true"></i>
				</div>
				<div class="opt-text-w3layouts">
					<h6>Patients</h6>
				</div>
			</a>
			</li>
			<li>
			<a href="#" class="opt-grids">
				<div class="icon-agileits-w3layouts">
					<i class="fa fa-heart" aria-hidden="true"></i>
				</div>
				<div class="opt-text-w3layouts">
					<h6>Diagnosis</h6>
				</div>
			</a>
			</li>
			

		</ul>
	</div>
</div>

<!--//Services-->

 <!-- banner-bottom -->
<div class="banner-bottom">
	<div class="bnr-btm-grids-agileits">
		<div class="bnr-btm-icon">
			<i class="fa fa-mobile" aria-hidden="true"></i>
		</div>
		<div class="bnr-btm-info">
			<h3>Give  us a call</h3>
			<p>+(012) 345 6789 </p>
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="bnr-btm-grids-agileits">
		<div class="bnr-btm-icon">
			<i class="fa fa-envelope-o" aria-hidden="true"></i>
		</div>
		<div class="bnr-btm-info">
			<h3>Send us a message</h3>
			<p><a href="mailto:info@example.com">example@mail.com</a></p>
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="bnr-btm-grids-agileits">
		<div class="bnr-btm-icon">
			<i class="fa fa-map-marker" aria-hidden="true"></i>
		</div>
		<div class="bnr-btm-info">
			<h3>Visit our location</h3>
			<p>Salaya,Nakhom Patthom.</p>
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="clearfix"></div>
</div>
<!-- //banner-bottom -->


</div> 
</div> 
 
 <!-- Footer starts here -->
<div id="footer" align="center" style="background-color:black;height:80px;color:white;">
 <div class="container">
	<p>© 2017 ADFS authentication hospital system</p>			
	<p>Created by senior students of faculty of ICT,Mahidol University</p>	
 </div>
</div>
 <!-- ends footer here -->
   
</body>
</html>
