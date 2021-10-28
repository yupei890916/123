<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() "://" request.getServerName() ":" request.getServerPort() path "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>判斷員工登入</title>

</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String users=request.getParameter("username");
String pass=request.getParameter("pwd");
boolean flag=false;
PreparedStatement sql=null;  
ResultSet rs=null;
Connection conn=null;
%>
<% 
String driver = "com.mysql.jdbc.Driver";  
String url = "jdbc:mysql://127.0.0.1:3306/FPM";  
String use = "root";   
String password = "960404";  
Class.forName(driver);  
conn= DriverManager.getConnection(url,use,password);  
sql =conn.prepareStatement("select * from 員工 where username=員工ID and password=身分證");
sql.setString(1,users);
sql.setString(2,pass);
rs=sql.executeQuery();
if (rs.next()) {  
flag=true;
}
rs.close();
sql.close();
conn.close();
%>
<!-- 判斷是否是正確的登入使用者 -->
<% if (flag==true){ %>
<jsp:forward page="index.jsp"/>
<%} 
else
if (flag==false){
%>
<jsp:forward page="login_fail.jsp"/>
<%} %>
</body>
</html>