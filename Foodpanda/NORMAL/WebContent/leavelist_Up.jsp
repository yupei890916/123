<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>

<%
String leavecategory = new String(request.getParameter("leavecategory"));
String leavereason = new String(request.getParameter("leavereason"));
String writeDate = new String(request.getParameter("writeDate"));

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement st=conn.createStatement();
st.executeUpdate("UPDATE leave SET  leavecategory ='" + leavecategory +"', leavereason='"+leavereason+"', writeDate ='" + writeDate +"' WHERE  leavedate ='" + request.getParameter("leavedate") +"' ");
response.sendRedirect("leavelist.jsp"); 
%>