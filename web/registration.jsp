<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
     String account = request.getParameter("account");
  
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajat",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into members(first_name, last_name, email, uname, pass,account) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "','"+account+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("index2.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>