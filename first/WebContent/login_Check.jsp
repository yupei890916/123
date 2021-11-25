<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>

<!DOCTYPE HTML>
<html>
<head>

<title>判斷員工登入</title>

</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String username=request.getParameter("username");
String pwd=request.getParameter("pwd");
String position=request.getParameter("position");
boolean flag=false;
PreparedStatement sql;  
ResultSet rs=null;
Connection conn=null;
%>
<% 
String driver = "com.mysql.jdbc.Driver";  
String url = "jdbc:mysql://127.0.0.1:3306/fpm";  
String use = "root";   
<<<<<<< HEAD:first/WebContent/login_Check.jsp
String password = "lovelove520";  
Class.forName("com.mysql.jdbc.Driver");  
=======
String password = "kevin0508";  
Class.forName("com.mysql.jdbc.Driver").newInstance();  
>>>>>>> 9d851dbb10c3ecae3d6b06fda5a9d6870171593d:first/WebContent/check.jsp
conn= DriverManager.getConnection(url,use,password);  
sql =conn.prepareStatement("select * from staff where 員工ID='"+username+"' and 身份證='"+pwd+"' and 職稱='"+position+"'");

rs=sql.executeQuery();
%>
<!-- 判斷是否是正確的登入使用者 -->
<%
if(rs.next()){  
	session.setAttribute("accessId",rs.getString("員工ID"));
	session.setAttribute("Authority",rs.getString("職稱"));
	session.setMaxInactiveInterval(20);
	response.sendRedirect("index.jsp");
}else{
	response.sendRedirect("login_fail.jsp");	
}
rs.close();
sql.close();
conn.close();
%>




</body>
</html>