<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Remember file must be in this order -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script> 
        <script  src="js/bootstrap.min.js" type="text/javascript"></script>
        
        <!-- Add jquery file contains functions for sending AJAX request to API server -->
        <script type="text/javascript" src="js/login.js"></script>
        <link rel="stylesheet" href="css/login.css">


           <title>Sign In</title>
 </head>
 <body>
   <div class="container">
       
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
           <!-- <h1 class="text-center login-title">Sign in to Health Portal</h1> -->
            <div class="account-wall">
                <img class="profile-img" src="images/Logo2.png" alt="Logo2">
                <h3 class="text-center login-title"><strong>Log in</strong></h3> 

                <form class="form-signin" id="loginForm">
                    
                    <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input id="username" type="text" class="form-control" name="username" placeholder="username" required autofocus>
                    </div>
			 
                    <div class="input-group">
                   <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                        <br>
                    <div>    
                    <button class="btn btn-primary btn-block" id="loginButton" type="submit">Sign in</button>
                    <a href="forgetpassword.jsp" class="text-center new-account">forget password?</a><span class="clearfix"></span>
                    <a href="signup.jsp" class="text-center new-account">sign up now </a>
                    </div>
                </form>
            </div>
            
            
        </div>
    </div>
</div>

     

<!-- ..............................Result Modal................................. -->
  <div class="modal fade" id="resultmodal" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><strong>registration</strong></h4>
        </div>
        <div class="modal-body" id="modalbodycontent" align="center">
          <p>There is no result</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
      </div>
      </div>
     <!-- ................. result modal ends here..................................... -->
 

     <!-- ..............................Modal for showing loading................................. -->
  <div class="modal fade" id="loadingmodal" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        
        <div class="modal-body" align="center">
          <img class="profile-img" src="images/Preloader_3.gif" alt="Loading1">
        </div>
        
      </div>
      </div>
      </div>
     <!-- ................. modal for showing loading ends here..................................... -->

     
</body>
</html>
