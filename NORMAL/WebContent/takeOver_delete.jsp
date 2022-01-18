<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html >
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "fpm";
String userid = "root";
String password = "root1201";

Connection con = null;
Statement statement = null;
PreparedStatement ps = null;

String takeOverID=request.getParameter("takeOverID");
String takeOverdate=request.getParameter("takeOverdate");
String cantakeOverID=request.getParameter("cantakeOverID");
String date=request.getParameter("date");

con = DriverManager.getConnection(connectionUrl+database, userid, password);
statement =con.createStatement();
String sel ="select * from fpm.takeover WHERE takeOverdate ";
ResultSet rs = statement.executeQuery(sel);
String sql="DELETE FROM takeovrt where takeOverdate= ? ";
ps = con.prepareStatement(sql);

try String sql="DELETE FROM takeovrt where takeOverdate= '" "takeOverdate';   

		
response.sendRedirect("takeOverlist.jsp");    

%>