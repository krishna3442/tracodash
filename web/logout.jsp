<%
session.invalidate();
response.sendRedirect("index2.jsp");
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires", 0);
return;
%>