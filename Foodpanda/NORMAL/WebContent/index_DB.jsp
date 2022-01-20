<%@page contentType="text/html"%>  
<%@page pageEncoding="UTF-8"%>  
<%@page import="java.sql.*" %>  
<%  
try {  
Class.forName("com.mysql.jdbc.Driver");  
String url = "jdbc:mysql://localhost:3306/fpm"; 
String username = "root";  
String password = "kevin0508";  
Connection conn = DriverManager.getConnection(url, username, password);  
if(conn != null){  
out.print("資料庫連線成功！");  
}else{  
out.print("連線失敗！");  
}  
}catch (Exception e) {        
out.print("資料庫連線異常！");  
}  
%>