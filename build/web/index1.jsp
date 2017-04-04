<style>
    .footer {
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: #efefef;
  text-align: center;
}
.testbox
{
    padding-top: 70px;
    margin: 20px auto;
  width: 500px; 
  height: 300px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  
}


</style>
<!DOCTYPE html>
<html lang="en-US">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width" />
      <title>TracoDash</title>
      <link rel="stylesheet" href="css/components.css">
      <link rel="stylesheet" href="css/responsee.css">
      <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="owl-carousel/owl.theme.css">
      
      <!-- CUSTOM STYLE -->
      <link rel="stylesheet" href="css/template-style.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
      <script type="text/javascript" src="js/modernizr.js"></script>
      <script type="text/javascript" src="js/responsee.js"></script>
      <script type="text/javascript" src="js/template-scripts.js"></script> 
                 
      <!--[if lt IE 9]>
	      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
      <![endif]-->
   </head>
   <body class="size-1140">
      <!-- TOP NAV WITH LOGO -->
      <header style="top:0px">
         <nav>
            <div class="line">
               <div class="s-12 l-2">
                  <p class="logo"><strong>Traco</strong>Dash</p>
               </div>
               <div class="top-nav s-12 l-10">
                  <p class="nav-text">Custom menu text</p>
                  <ul class="right">
                     <li><a href="index.jsp">Home</a></li>
                     <li class="active-item"><a href="#carousel">Login/Signup</a></li>
                  </ul>
               </div>
            </div>
         </nav>
      </header>
      
          <div class="footer">
         <div class="line">
            <div class="s-12 l-6">
               <p>Thanks for beliving on us!</p>
               <p>We love you!</p>
            </div>
            <div class="s-12 l-6">
               <a class="right" href="#" title="Responsee - lightweight responsive framework">Design and coding<br> by Team Paradox</a>
            </div>
         </div>
          </div>
      <section>
          <div class="signup">
          <div class="testbox">
              <center><h1>Login</h1></center>
              <center><h3>Invalid Login!</h3></center>
 <form class = "form-horizontal" role = "form" autocomplete="off" action="login.jsp" method="post">
   
   <div class = "form-group">
      <label for = "uname" class = "col-sm-5 control-label">User Name</label>
		
      <div class = "col-sm-6">
          <input type = "text" class = "form-control" id = "uname" name="uname" placeholder = "Enter User Name"  required>
      </div>
   </div>
   
   <div class = "form-group">
      <label for = "lastname" class = "col-sm-5 control-label">Password:</label>
		
      <div class = "col-sm-6">
          <input type = "password" class = "form-control" id = "pass" name="pass" placeholder = "Enter Password" autocomplete="new-password" required>
      </div>
   </div>
   
 
   
   <div class = "form-group">
      <div class = "col-sm-offset-5 col-sm-10">
         <button type = "submit" class = "btn btn-default">Sign in</button>
      </div>
   </div>
    
	
</form>
              <div id="shbtn">
    <div class = "form-group">
      <div class = "col-sm-offset-5 col-sm-10">
          <button class = "btn btn-default">Register</button>
      </div>
   </div>
              </div>
     
</div>
          </div>
          <div class="reg" style="display:none">
              <div class="testbox">
              <center><h1>Sign up</h1></center>
 <form class = "form-horizontal" role = "form" autocomplete="off" action="registration.jsp" method="post">
     <center>
   <label class="radio-inline">
       <input type="radio" value="Cab" name="account" checked>Cab
    </label>
    <label class="radio-inline">
      <input type="radio" value="User" name="account">User
    </label>
    <label class="radio-inline">
      <input type="radio" value="Linguistic" name="account">Logistics
    </label>
     </center><br>
        <div class = "form-group">
      <label for = "fname" class = "col-sm-5 control-label">First Name</label>
		
      <div class = "col-sm-6">
          <input type = "text" class = "form-control" id = "fname" name="fname" placeholder = "Enter First Name"  required>
      </div>
   </div>
        <div class = "form-group">
      <label for = "lname" class = "col-sm-5 control-label">Last Name</label>
		
      <div class = "col-sm-6">
          <input type = "text" class = "form-control" id = "lname" name="lname" placeholder = "Enter Last Name"  required>
      </div>
   </div>
        <div class = "form-group">
      <label for = "email" class = "col-sm-5 control-label">Email</label>
		
      <div class = "col-sm-6">
          <input type = "email" class = "form-control" id = "email" name="email" placeholder = "Enter email"  required>
      </div>
   </div>
   <div class = "form-group">
      <label for = "uname" class = "col-sm-5 control-label">User Name</label>
		
      <div class = "col-sm-6">
          <input type = "text" class = "form-control" id = "uname" name="uname" placeholder = "Enter User Name"  required>
      </div>
   </div>
   
   <div class = "form-group">
      <label for = "lastname" class = "col-sm-5 control-label">Password</label>
		
      <div class = "col-sm-6">
         <input type = "password" class = "form-control" id = "pass" name="pass" placeholder = "Enter Password" autocomplete="new-password"  required>
      </div>
   </div>
   
 
   

     <div class = "form-group">
      <div class = "col-sm-offset-5 col-sm-10">
          <button type = "submit" class = "btn btn-default">Register</button>
      </div>
   </div>
	
</form>
   <div class = "form-group">
      <div class = "col-sm-offset-5 col-sm-10">
          <button class = "btn btn-default" id="shbtn2">Sign in</button>
      </div>
   </div>
     
</div>
          </div>
      </section>
      <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
      <script>
          $(document).ready(function(){
    $("#shbtn").click(function(){
        $(".signup").hide('slow');
        $(".reg").show('slow');
    });
    $("#shbtn2").click(function(){
        $(".reg").hide('slow');
        $(".signup").show('slow');
    });
});
         jQuery(document).ready(function($) {
            var theme_slider = $("#owl-demo");
            $("#owl-demo").owlCarousel({
                navigation: false,
                slideSpeed: 300,
                paginationSpeed: 400,
                autoPlay: 6000,
                addClassActive: true,
             // transitionStyle: "fade",
                singleItem: true
            });
            $("#owl-demo2").owlCarousel({
                slideSpeed: 300,
                autoPlay: true,
                navigation: true,
                navigationText: ["&#xf007","&#xf006"],
                pagination: false,
                singleItem: true
            });
        
            // Custom Navigation Events
            $(".next-arrow").click(function() {
                theme_slider.trigger('owl.next');
            })
            $(".prev-arrow").click(function() {
                theme_slider.trigger('owl.prev');
            })     
        }); 
      </script>
   </body>
</html>
      