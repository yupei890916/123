<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<!DOCTYPE html>
<html>
<body>
<%
String drawbreak1 = new String(request.getParameter("drawbreak1"));
String drawbreak2 = new String(request.getParameter("drawbreak2"));
String drawbreak3 = new String(request.getParameter("drawbreak3"));
String drawbreak4 = new String(request.getParameter("drawbreak4"));
String drawbreak5 = new String(request.getParameter("drawbreak5"));
String drawbreak6 = new String(request.getParameter("drawbreak6"));
String drawbreak7 = new String(request.getParameter("drawbreak7"));
String drawbreak8 = new String(request.getParameter("drawbreak8"));
String drawbreak9 = new String(request.getParameter("drawbreak9"));
String drawbreak10 = new String(request.getParameter("drawbreak10"));
String drawbreak11 = new String(request.getParameter("drawbreak11"));
String drawbreak12 = new String(request.getParameter("drawbreak12"));
String drawbreak13 = new String(request.getParameter("drawbreak13"));
String drawbreak14 = new String(request.getParameter("drawbreak14"));
String drawbreak15 = new String(request.getParameter("drawbreak15"));
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "kevin0508");
Statement st=conn.createStatement();
st.executeUpdate("UPDATE schedule SET drawbreak1 ='" +drawbreak1+"', drawbreak2 ='" +drawbreak2+"', drawbreak3 ='" +drawbreak3+"', drawbreak4 ='" +drawbreak4+"', drawbreak5 ='" +drawbreak5+"', drawbreak6 ='" +drawbreak6+"', drawbreak7 ='" +drawbreak7+"', drawbreak8 ='" +drawbreak8+"', drawbreak9 ='" +drawbreak9+"', drawbreak10 ='" +drawbreak10+"', drawbreak11 ='" +drawbreak11+"', drawbreak12 ='" +drawbreak12+"', drawbreak13 ='" +drawbreak13+"', drawbreak14 ='" +drawbreak14+"', drawbreak15 ='" +drawbreak15+"' WHERE employee_ID ='" + request.getParameter("employee_ID")+"' ");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("employee_leave_update.jsp");
%>
</body>
</html>