package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class find_0020cab_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<style>\n");
      out.write("    .footer {\n");
      out.write("  position: absolute;\n");
      out.write("  right: 0;\n");
      out.write("  bottom: 0;\n");
      out.write("  left: 0;\n");
      out.write("  padding: 1rem;\n");
      out.write("  background-color: #efefef;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write(".testbox\n");
      out.write("{\n");
      out.write("padding-bottom:100px;\n");
      out.write("    margin: 10px auto;\n");
      out.write("  width: 500px; \n");
      out.write("  height: 300px; \n");
      out.write("  -webkit-border-radius: 8px/7px; \n");
      out.write("  -moz-border-radius: 8px/7px; \n");
      out.write("  border-radius: 8px/7px; \n");
      out.write("  \n");
      out.write("}\n");
      out.write(".testbox1\n");
      out.write("{\n");
      out.write("    padding-top: 50px;\n");
      out.write("    margin: 20px auto;\n");
      out.write("  width: 500px; \n");
      out.write("  height: 300px; \n");
      out.write("  -webkit-border-radius: 8px/7px; \n");
      out.write("  -moz-border-radius: 8px/7px; \n");
      out.write("  border-radius: 8px/7px; \n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en-US\">\n");
      out.write("   <head>\n");
      out.write("      <meta charset=\"UTF-8\">\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width\" />\n");
      out.write("      <title>TracoDash</title>\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/components.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/responsee.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"owl-carousel/owl.carousel.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"owl-carousel/owl.theme.css\">\n");
      out.write("      \n");
      out.write("      <!-- CUSTOM STYLE -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/template-style.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'>\n");
      out.write("      <script type=\"text/javascript\" src=\"js/jquery-1.8.3.min.js\"></script>\n");
      out.write("      <script type=\"text/javascript\" src=\"js/jquery-ui.min.js\"></script>    \n");
      out.write("      <script type=\"text/javascript\" src=\"js/modernizr.js\"></script>\n");
      out.write("      <script type=\"text/javascript\" src=\"js/responsee.js\"></script>\n");
      out.write("      <script type=\"text/javascript\" src=\"js/template-scripts.js\"></script> \n");
      out.write("                 \n");
      out.write("      <!--[if lt IE 9]>\n");
      out.write("\t      <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("        <script src=\"http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js\"></script>\n");
      out.write("      <![endif]-->\n");
      out.write("   </head>\n");
      out.write("   <body class=\"size-1140\">\n");
      out.write("      <!-- TOP NAV WITH LOGO -->\n");
      out.write("      <header style=\"top:0px\">\n");
      out.write("         <nav>\n");
      out.write("            <div class=\"line\">\n");
      out.write("               <div class=\"s-12 l-2\">\n");
      out.write("                  <p class=\"logo\"><strong>Traco</strong>Dash</p>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"top-nav s-12 l-10\">\n");
      out.write("                  <p class=\"nav-text\">Custom menu text</p>\n");
      out.write("                  <ul class=\"right\">\n");
      out.write("                     <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                     <li class=\"active-item\"><a href=\"#carousel\">Login/Signup</a></li>\n");
      out.write("                  </ul>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </nav>\n");
      out.write("      </header>\n");
      out.write("      \n");
      out.write("          <div class=\"footer\">\n");
      out.write("         <div class=\"line\">\n");
      out.write("            <div class=\"s-12 l-6\">\n");
      out.write("               <p>Thanks for beliving on us!</p>\n");
      out.write("               <p>We love you!</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"s-12 l-6\">\n");
      out.write("               <a class=\"right\" href=\"http://www.myresponsee.com\" title=\"Responsee - lightweight responsive framework\">Design and coding<br> by Team Paradox</a>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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

      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("<h2 align=\"center\"><font><strong>Your Service</strong></font></h2>\n");
      out.write("<table class=\"table\">\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("<td><b>company</b></td>\n");
      out.write("<td><b>source</b></td>\n");
      out.write("<td><b>service</b></td>\n");
      out.write("<td><b>contact</b></td>\n");
      out.write("<td><b>mail</b></td>\n");
      out.write("</tr>\n");

try{ 
    String from = request.getParameter("from");
             
      String cab_type = request.getParameter("cab_type");
      
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM cab where source='"+from+"' and ctype='"+cab_type+"'";

resultSet = statement.executeQuery(sql);

while(resultSet.next()){

      out.write("\n");
      out.write("<tr bgcolor=\"#DEB887\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<td>");
      out.print(resultSet.getString("company") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("source") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("ctype") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("contact") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(resultSet.getString("mail") );
      out.write("</td>\n");
      out.write("<td>\n");
      out.write("            <form action=\"test.jsp\" method=\"get\">\n");
      out.write("                <input type=\"hidden\" name=\"company\" value=\"");
      out.print(resultSet.getString("company"));
      out.write("\" />\n");
      out.write("                <input type=\"hidden\" name=\"source\" value=\"");
      out.print(resultSet.getString("source"));
      out.write("\" />\n");
      out.write("                <input type=\"hidden\" name=\"ctype\" value=\"");
      out.print(resultSet.getString("ctype"));
      out.write("\" />\n");
      out.write("                <input type=\"submit\" value=\"Remove\" name=\"remove\">\n");
      out.write("            </form>\n");
      out.write("        </td>\n");
      out.write("</tr>\n");
      out.write("\n");
 
}

} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("</table>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
