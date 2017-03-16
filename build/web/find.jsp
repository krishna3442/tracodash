<!--<%@ page import ="java.sql.*" %>

<html>
<body>
<div id="content">


    <p>Displaying table contents: </p>

    <table border="0" cellpadding="10">
        <thead>
            <tr>
             
                <th>Company</th>
                <th>from</th>
                <th>to</th>
            </tr>
        </thead>
        <tbody>


            <%
              /*String from = request.getParameter("from");
             String to = request.getParameter("to");
              String account = request.getParameter("account");
                Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajat","root", "root");
    Statement st = con.createStatement();
              
                String query = "select * from "+ account+" where source = "+ from+";"; //+"' and to = '"+to+"'";
                ResultSet rs = st.executeQuery(query);
                while(rs.next()){*/
            %>
            <tr>
                <%
                    
                  
                   // String company = rs.getString("company");
                   // int salary = rs.getInt("salary");
                %>
               
                
            
            </tr>               

            <%      
                //}
            %>

        </tbody>
    </table>
</div>
</body>
</html>

-->

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
<html>
    <head>
        <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>cabs</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/custom.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>
<h2 align="center"><font><strong>Your Service</strong></font></h2>
<table class="table">
<tr>

</tr>
<tr>

<td><b>company</b></td>
<td><b>source</b></td>
<td><b>destination</b></td>
<td><b>price</b></td>
<td><b>contact</b></td>
<td><b>mail</b></td>
</tr>
<%
try{ 
    String from = request.getParameter("from");
             String to = request.getParameter("to");
      String account = request.getParameter("account");
      
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM "+account+" where source='"+from+"'";

resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="#DEB887">


<td><%=resultSet.getString("company") %></td>
<td><%=resultSet.getString("source") %></td>
<td><%=resultSet.getString("destination") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("mail") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</html>