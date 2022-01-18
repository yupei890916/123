<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>

<%
String leavecategory = new String(request.getParameter("leavecategory"));
String leavereason = new String(request.getParameter("leavereason"));
String date = new String(request.getParameter("date"));

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement st=conn.createStatement();
st.executeUpdate("UPDATE leave SET  leavecategory ='" + leavecategory +"', leavereason='"+leavereason+"', date ='" + date +"' WHERE  leaveID ='" + request.getParameter("leaveID") +"' ");
response.sendRedirect("leavelist.jsp"); 
%>