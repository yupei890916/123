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
String auditstatus=request.getParameter("auditstatus");
String auditdate=request.getParameter("auditdate");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm" , "root" , "root1201");
Statement smt= con.createStatement();

smt.executeUpdate("INSERT INTO leave SET (leaveID, leavedate, leavecategory,leavereason,writeDate, auditstatus, auditdate ) VALUES('"+leaveID+"','"+leavecategory+"','"+leavereason+"','"+writeDate+"','"+auditstatus+"','"+auditdate+"')");

	response.sendRedirect("leavelist_all.jsp"); %>
   <% 
   smt.close();
   con.close();	
	%>
</body>
</html>
