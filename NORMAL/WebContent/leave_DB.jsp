<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" %>

<html>
<body>
<%
String leaveID=request.getParameter("leaveID");
String leavedate=request.getParameter("leavedate");
String leavecategory=request.getParameter("leavecategory");
String leavereason=request.getParameter("leavereason");
String writeDate=request.getParameter("writeDate");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/fpm" , "root" , "root1201");
Statement sta= con.createStatement();
	
sta.executeUpdate("INSERT INTO leave (leaveID, leavedate, leavecategory, leavereason, writeDate) VALUES('"+leaveID+"','"+leavedate+"','"+leavecategory+"','"+leavereason+"','"+writeDate+"')");	
request.setCharacterEncoding("BIG5");
response.sendRedirect("leavelist.jsp");
%>
<% 
sta.close();
con.close();
%>
</body>
</html>