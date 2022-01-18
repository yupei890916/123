<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>


<% 
Class.forName("com.mysql.jdbc.Driver");
Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement sta =conn.createStatement();
String sql ="DELETE FROM fpm.takeover WHERE ID";
ResultSet rs = sta.executeQuery(sql);
%>
<%if(rs.next()){  
    }
	conn.close();
	%>