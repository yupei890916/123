<%@page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" %>
    <%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
<!DOCTYPE html>


<%

String auditstatus = request.getParameter("auditstatus");
String auditdate = request.getParameter("auditdate");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement st=conn.createStatement();
st.executeUpdate("INSERT INTO takeover SET (auditstatus, auditdate ) VALUES('"+auditstatus+"','"+auditdate+"')");
response.sendRedirect("takeOverlist_all.jsp"); 
%>