<%@ page import ="java.sql.*" %>
<%
if(session.getAttribute("userid") == null){
    response.sendRedirect("index1.jsp");
}
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires", 0);
String userid=(String)session.getAttribute("userid");

    String company = request.getParameter("cname");    
    String source = request.getParameter("from");
    String ctype = request.getParameter("cab_type");

    String contact = request.getParameter("contact");
     String mail = request.getParameter("mail");
  
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajat",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into cab(uname,company, source, ctype,  contact,mail,status) values ('"+userid+"','" + company + "','" + source + "','" + ctype + "'," + contact + ",'"+mail+"','unbooked')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("storemore.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("cab.jsp");
    }
%>