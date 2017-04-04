<%
if(session.getAttribute("userid") == null){
    response.sendRedirect("index1.jsp");
}
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires", 0);
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
    padding-top: 70px;
    margin: 20px auto;
  width: 500px; 
  height: 300px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  
}


</style>
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
                      <li><a href="history cab.jsp">History</a></li>
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
      <section>
<div class="testbox">
  <h1>Cab Registration</h1>

  <form action="storecab.jsp" method="POST" class = "form-horizontal">
      <div class = "form-group">
      <label for = "cname" class = "col-sm-5 control-label">Driver Name</label>
		
      <div class = "col-sm-6">
<input type="text" name="cname" id="cname" placeholder="Driver Name" required class = "form-control"/>
      </div>
      </div>
     <div class = "form-group">
      <label for = "source" class = "col-sm-5 control-label">Locality</label>
		
      <div class = "col-sm-6"> 
  <input type="text" name="from" id="from" placeholder="Area" required class = "form-control"/>
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
      <label for = "mail" class = "col-sm-5 control-label">Mail</label>
		
      <div class = "col-sm-6">
  <input class = "form-control" type="email" name="mail" id="mail" placeholder="Mail" required/>
  </div>
      
  </div>
       <div class = "form-group">
      <label for = "contact" class = "col-sm-5 control-label">Contact</label>
		
      <div class = "col-sm-6">
  <input class = "form-control" type="number" name="contact" id="mail" placeholder="Contact" required/>
  </div>
      
  </div>
  <div class = "form-group">
      <div class = "col-sm-offset-5 col-sm-10">
    <button class = "btn btn-default"name="subject" type="submit" value="Login">Register</button>
      </div>
  </div>
  </form>
</div>
      </section>
</body>
