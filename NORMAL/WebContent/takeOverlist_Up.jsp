<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "fpm";
String userid = "root";
String password = "root1201";
Connection con = null;
Statement statement = null;


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement st = conn.createStatement();
String takeOverID1 = new String(request.getParameter("takeOverID").getBytes("ISO-8859-1"));
String takeOverdate1 = new String(request.getParameter("takeOverdate").getBytes("ISO-8859-1"));
String cantakeOverID1 = new String(request.getParameter("cantakeOverID").getBytes("ISO-8859-1"));
String writedate1 = new String(request.getParameter("writedate").getBytes("ISO-8859-1"));
st.executeUpdate("UPDATE takeover SET  takeOverID='"+takeOverID1+"', takeOverdate ='" + takeOverdate1+"', cantakeOverID ='" + cantakeOverID1+"', writedate ='" + writedate1 +"' WHERE takeOverdate ='" + request.getParameter("takeOverdate") +"' ");
%>