<%@ page import ="java.sql.*" %>
<%
if(session.getAttribute("userid") == null){
    response.sendRedirect("index1.jsp");
}
String userid=(String)session.getAttribute("userid");
    String company = request.getParameter("cname");    
    String source = request.getParameter("from");
    String s_type = request.getParameter("s_type");

    String contact = request.getParameter("contact");
     String mail = request.getParameter("mail");
  
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajat",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into linguistic(uname,company, source, service, contact,mail) values ('"+userid+"','" + company + "','" + source + "','" + s_type + "'," + contact + ",'"+mail+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("storemore.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("linguistic.jsp");
    }
%>