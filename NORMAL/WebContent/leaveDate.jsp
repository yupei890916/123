<%@page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" %>
    <%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
    

<html>
<body>
<%
String leaveID=request.getParameter("leaveID");
String leavedate=request.getParameter("leavedate");
String leavecategory=request.getParameter("leavecategory");
String leavereason=request.getParameter("leavereason");
String writeDate=request.getParameter("writeDate");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm" , "root" , "root1201");
Statement sta= con.createStatement();


sta.executeUpdate("INSERT INTO leave (leaveID, leavedate, leavecategory, leavereason, writeDate) VALUES('"+leaveID+"','"+leavedate+"','"+leavecategory+"','"+leavereason+"','"+writeDate+"')");	

	response.sendRedirect("lesvelist.jsp"); %>
   <% 
   sta.close();
   con.close();	
	%>
</body>
</html>
