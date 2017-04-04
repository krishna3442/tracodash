<%@ page import ="java.sql.*" %>
<html>
<body>

<center>
<%    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajat",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    String id="";

        String r=(String)request.getAttribute("delete_user");
   id = r;
  
  
      //  out.print(e);
        out.print(request.getAttribute("id"));
    
   if (id!=null) 
   {
       try{
    
 st.executeUpdate("DELETE FROM cab WHERE id = "+id+"");
    response.sendRedirect("history cab.jsp");
      }
      
catch(Exception e){
out.println(e);
    }
   }
           
     
   //else out.println ("<b>none<b>");
%>
</center>
</body>
</html>