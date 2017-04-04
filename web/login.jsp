
<!DOCTYPE=HTML>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajat",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
   
  
    if (rs.next()) {
       /* session.setAttribute("userid", userid);
       // out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");    
      
        response.sendRedirect("success");
  */ session.setAttribute("userid", userid);
        ResultSet rs1 = st.executeQuery("select account from members where uname='" + userid + "' and pass='" + pwd + "'");
          rs1.next();
          String a=rs1.getString(1);
         
    //String a=rs1.getString("account");
    if(a.equals("Cab"))
                 {
        
           response.sendRedirect("cab.jsp");
     }
             else if(a.equals("Linguistic"))
               {
        response.sendRedirect("linguistic.jsp");
      }
                   else if(a.equals("User"))
                                             {
                       response.sendRedirect("user.jsp");
                   }
    }
    else 
    {
          response.sendRedirect("index1.jsp");
          //session.setAttribute("error", "Invalid user or password");
    }                
%>
     