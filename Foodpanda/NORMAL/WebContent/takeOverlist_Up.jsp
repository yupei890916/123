<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>

<%
String cantakeOverID = new String(request.getParameter("cantakeOverID"));
String date = new String(request.getParameter("date"));

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement st=conn.createStatement();
st.executeUpdate("UPDATE takeover SET  cantakeOverID ='" + cantakeOverID +"', date ='" + date +"' WHERE  takeOverdate ='" + request.getParameter("takeOverdate") +"' ");
response.sendRedirect("takeOverlist.jsp"); 
%>