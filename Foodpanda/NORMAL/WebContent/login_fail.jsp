<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>登入失敗</title>
</head>
<body>
<% out.println("登入失敗");%> 
<% response.setHeader("refresh","5;url=login.jsp");%>
</body>
</html>