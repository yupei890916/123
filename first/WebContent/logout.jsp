<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head><title>µn¥X</title></head>
<body>
<%
	session.removeAttribute("accessId");
	response.sendRedirect("index.jsp");
%>	
</body>
</html>