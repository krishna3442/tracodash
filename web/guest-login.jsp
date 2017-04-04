<%
session.setAttribute("userid","guest");
%>
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
padding-bottom:100px;
    margin: 10px auto;
  width: 500px; 
  height: 100px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  
}
.testbox1
{
    padding-top: 50px;
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
                     <li class="active-item"><a href="logout.jsp">Logout</a></li>
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
               <a class="right" href="http://www.myresponsee.com" title="Responsee - lightweight responsive framework">Design and coding<br> by Team Paradox</a>
            </div>
         </div>
          </div>
      <div class="testbox1">
          <center> <h2>Find:</h2></center>
              <div id="shbtn">
    <div class = "form-group">
      <div class = "col-sm-offset-5 col-sm-10">
          <button class = "btn btn-default">Logistics</button><br>
      </div>
   </div>
              </div>
               <div id="shbtn2">
    <div class = "form-group">
      <div class = "col-sm-offset-5 col-sm-10">
          <br><button class = "btn btn-default">Cab</button>
      </div>
   </div>
              </div>
          </div>
      <section>
          
          <div class="signup" style="display:none;padding-top: -70px">
          <div class="testbox">
              <center><h1>Cab</h1></center>
 <form class = "form-horizontal" role = "form" autocomplete="off" action="find cab.jsp" method="post">
   
   <div class = "form-group">
      <label for = "uname" class = "col-sm-5 control-label">Area</label>
		
      <div class = "col-sm-6">
          <input type = "text" class = "form-control" id = "from" name="from" placeholder = "Enter Area"  required>
      </div>
   </div>
   
   <div class = "form-group">
      <label for = "cab_type" class = "col-sm-5 control-label">Cab Type</label>
		
      <div class = "col-sm-6">
      <select name="cab_type" class = "form-control">
          <option value="prime">Prime</option>
          <option value="mini">Mini</option>
          <option value="micro">Micro</option>
          <option value="suv">SUV</option>
      </select>
  </div>
  </div>
   
 
   
   <div class = "form-group">
      <div class = "col-sm-offset-5 col-sm-10">
         <button type = "submit" class = "btn btn-default">Find!</button>
      </div>
   </div>
    
	
</form>
              
     
</div>
          </div>
          <div class="logistics" style="display:none">
          <div class="testbox">
              <center><h1>Logistics</h1></center>
 <form class = "form-horizontal" role = "form" autocomplete="off" action="find.jsp" method="post">
   
   <div class = "form-group">
      <label for = "uname" class = "col-sm-5 control-label">Area</label>
		
      <div class = "col-sm-6">
          <input type = "text" class = "form-control" id = "from" name="from" placeholder = "Enter Area/Locality"  required>
      </div>
   </div>
<div class = "form-group">
      <label for = "s_type" class = "col-sm-5 control-label">Service Type</label>
		
      <div class = "col-sm-6">
      <select name="s_type" class = "form-control">
          <option value="Outbound transportation">Outbound transportation</option>
          <option value="Customs Clearance">Customs Clearance</option>
          <option value="Freight Bill Auditing/Payment">Freight Bill Auditing/Payment</option>
      </select>
  </div>
  </div>
 
   
   <div class = "form-group">
      <div class = "col-sm-offset-5 col-sm-10">
         <button type = "submit" class = "btn btn-default">Find!</button>
      </div>
   </div>
    
	
</form>
             
     
</div>
          </div>
      </section>
      <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
      <script>
          $(document).ready(function(){
    $("#shbtn").click(function(){
        $(".signup").hide('slow');
        $(".logistics").show('slow');
    });
    $("#shbtn2").click(function(){
        $(".logistics").hide('slow');
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
      