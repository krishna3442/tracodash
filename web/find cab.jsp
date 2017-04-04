<%
if(session.getAttribute("userid") == null){
    response.sendRedirect("index1.jsp");
}
if(session.getAttribute("userid") =="guest"){
    request.setAttribute("req","Please register to continue");
     //response.sendRedirect("index1.jsp");
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
padding-bottom:100px;
    margin: 10px auto;
  width: 800px; 
  height: 300px; 
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
                     <li class="active-item"><a href="./logout.jsp">Logout</a></li>
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

<%@ page import ="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "rajat";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<div class="testbox">
    
<h2 align="center"><font><strong>Your Service</strong></font></h2>
<h4 align="center"><% 
if(request.getAttribute("req") !=null){
String s=(String)request.getAttribute("req");
out.println(s);
}
%>
</h4>
<table  class="table table-hover">
<tr>

</tr>
<tr>

<td><b>company</b></td>
<td><b>area/locality</b></td>
<td><b>service</b></td>
<td><b>contact</b></td>
<td><b>mail</b></td>
</tr>
<%
try{ 
    String from = request.getParameter("from");
             
      String cab_type = request.getParameter("cab_type");
      
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM cab where source='"+from+"' and ctype='"+cab_type+"' and status='unbooked'";

resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr>


<td><%=resultSet.getString("company") %></td>
<td><%=resultSet.getString("source") %></td>
<td><%=resultSet.getString("ctype") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("mail") %></td>
<td>
    <form action="book cab.jsp" method="get">
        <input type="submit" name="delete" value="Book" >
        <input type="hidden" name="c_id" value="<%=resultSet.getString("id")%>" />
    </form>
</td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<button type="button" class="btn btn-default btn-arrow-left"  onclick="goBack()">Back</button>
</div>
   </body>
</html>

<script>
function goBack() {
    window.history.back("user.jsp");
}
</script>