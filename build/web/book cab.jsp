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

        String r=(String)request.getParameter("c_id");
        String q=(String)request.getAttribute("delete");
   id = r;
      out.print(id+q);
        out.print(request.getAttribute("c_id"));
    
   if (id!=null) 
   {
       try{
    
 st.executeUpdate("UPDATE cab SET status='booked' WHERE id="+id);
    response.sendRedirect("find cab.jsp");
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