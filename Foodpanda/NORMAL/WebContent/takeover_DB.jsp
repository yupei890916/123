<%@page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" %>
    <%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
    

<html>
<body>
<%
String takeOverID=request.getParameter("takeOverID");
String takeOverdate=request.getParameter("takeOverdate");
String cantakeOverID=request.getParameter("cantakeOverID");
String date=request.getParameter("date");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm" , "root" , "root1201");
Statement sta= con.createStatement();


sta.executeUpdate("INSERT INTO takeover (takeOverID, takeOverdate, cantakeOverID, date) VALUES('"+takeOverID+"','"+takeOverdate+"','"+cantakeOverID+"','"+date+"')");	

	response.sendRedirect("takeOverlist.jsp"); %>
   <% 
   sta.close();
   con.close();	
	%>
</body>
</html>
