/* javascript or Jquery file for login.jsp page
  *
  *  * */
/*IMPORTANT NOTE: everything must be inside document.ready function */
$(document).ready(function() {
    //Stops the submit request automatically
    $("#loginForm").submit(function(e){
           e.preventDefault();
    });
   
    //checks if registerbutton is clicked
    $("#loginButton").click(function(){
     //NOTE: get value after button click so 
     //always inside click function
     //get value of each input field after registerbutton has been clicked
     var username = $('#username').val();
     var password = $('#password').val();
         
       //check if all the input has value since they all are required for user registration    
       if(username!==""&&password!=="")
       {    
           //get the form data and then serialize that
            dataString = $("#registerform").serialize();
           //get the form data using another method  
            dataString = "username="+username+"&password="+password;
            //make the AJAX request, dataType is set to json
            //meaning we are expecting JSON data in response from the server
            $.ajax({
                type: "POST",
                url: "https://localhost:7443/WebAPI/TestLogin",
                data: dataString,
                dataType: "json",
                //if received a response from the server
               // success: function( result, text;Status, jqXHR) {
               success: function(result) {
                    //check result JSON object
                    CheckSuccessResult(result);
                    console.log(result);//for testing
                },
                //If there is no resonse from the server
                //error: function(jqXHR, textStatus, errorThrown){
                error: function(jqXHR, textStatus){
                      //show error on web page
                      ShowErrorResult(jqXHR,textStatus);
                },
                //capture the request before it was sent to server
               // beforeSend: function(jqXHR, settings){
                beforeSend: function(settings){
                    //adding some Dummy data to the request
                    settings.data += "&dummyData=whatever";
                    //disable the button until we get the response
                    $('#loginButton').attr("disabled", true);
                    $('#loadingmodal').modal();
                },
                //this is called after the response or error functions are finsihed
                //so that we can take some action
                //complete: function(jqXHR, textStatus){
                complete: function(){
                    //enable the button AJAX request has completed
                    $('#loginButton').attr("disabled", false);
                    $('#loadingmodal').modal('hide');
                }
     
            }); /*ends ajax here....*/  
            
        }/*ends if here...*/

            
    }); /* ...........................ends button click here.....................................*/
    
/* This function is used to check whether the new user has been registered
  * to the active directory successfully, if yes then call Sendemail function
  * to send verification email to the user's email address otherwise show error
  * message in the JSON object right away to the user on the web page
  * it has four parameters:result,firstname,lastname,useremail
  * result: is the JSON object
  * firstname: is the first name of the new user
  * lastname: is the last name of the new user
  * useremail: is the email address of the new user
  */
function CheckSuccessResult(result){
 if(result.Status==="success"){
     reset();
     $('#resultmodal').modal();
     $('#modalbodycontent').html("<p><strong>login "+result.Status+"</strong></p>"+"<p>"+result.SuccessMessage+"</p>");                      
     //hide modal windows after 6 seconds
     setTimeout(function(){$('#resultmodal').modal('hide');}, 8000);
  }else{
     //otherwise tell the user's right away the error message on the page
     $('#resultmodal').modal();
     $('#modalbodycontent').html("<p><strong>login "+result.Status+"</strong></p>"+"<p>"+result.ErrorMessage+"</p>");                      
     //hide modal windows after 6 seconds
     setTimeout(function(){$('#resultmodal').modal('hide');}, 8000);
    }   
    
}/* ..................................... CheckSuccessResult function ends here ....................... */    

/* function to reset all input fields on the registration form to empty
 * it has no parameter
 * */
function reset(){
    $('input[type=text]').val('');  
    $('input[type=password]').val('');
      
} /* ....................................................... reset ends function here ................... */
/*Function to show error message on error
* this function will be called when there is no response from API webserver
* e.g. when the API web server is down or there is no internet connection between
* this website web server and API server so there is no response from the server 
* then the error jquery function will be triggered and this function will be called
* to show message to the user on the web page   
* */
function ShowErrorResult(jqXHR, textStatus){
    console.log("Something really bad happened " + textStatus);
    $('#resultmodal').modal();
    $("#resultmodal").html(jqXHR.responseText);  
    setTimeout(function(){$('#resultmodal').modal('hide');}, 6000);
}/* ............................................ShowErrorResult function ends here ............... */    
        
    
}); /* .........................ends document ready here........................................... */

 