<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%
String employee_ID=request.getParameter("employee_ID");
String drawbreak1=request.getParameter("drawbreak1");
String drawbreak2=request.getParameter("drawbreak2");
String drawbreak3=request.getParameter("drawbreak3");
String drawbreak4=request.getParameter("drawbreak4");
String drawbreak5=request.getParameter("drawbreak5");
String drawbreak6=request.getParameter("drawbreak6");
String drawbreak7=request.getParameter("drawbreak7");
String drawbreak8=request.getParameter("drawbreak8");
String drawbreak9=request.getParameter("drawbreak9");
String drawbreak10=request.getParameter("drawbreak10");
String drawbreak11=request.getParameter("drawbreak11");
String drawbreak12=request.getParameter("drawbreak12");
String drawbreak13=request.getParameter("drawbreak13");
String drawbreak14=request.getParameter("drawbreak14");
String drawbreak15=request.getParameter("drawbreak15");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "kevin0508");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into schedule (employee_ID,drawbreak1,drawbreak2,drawbreak3,drawbreak4,drawbreak5,drawbreak6,drawbreak7,drawbreak8,drawbreak9,drawbreak10,drawbreak11,drawbreak12,drawbreak13,drawbreak14,drawbreak15) values('"+employee_ID+"','"+drawbreak1+"','"+drawbreak2+"','"+drawbreak3+"','"+drawbreak4+"','"+drawbreak5+"','"+drawbreak6+"','"+drawbreak7+"','"+drawbreak8+"','"+drawbreak9+"','"+drawbreak10+"','"+drawbreak11+"','"+drawbreak12+"','"+drawbreak13+"','"+drawbreak14+"','"+drawbreak15+"')");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("employee_leave_update.jsp");
%>
</html>