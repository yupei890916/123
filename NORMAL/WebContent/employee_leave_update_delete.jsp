<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "fpm";
String userid = "root";
String password = "kevin0508";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>���u�N��</td>
<td>�w�ƥ�1</td>
<td>�w�ƥ�2</td>
<td>�w�ƥ�3</td>
<td>�w�ƥ�4</td>
<td>�w�ƥ�5</td>
<td>�w�ƥ�6</td>
<td>�w�ƥ�7</td>
<td>�w�ƥ�8</td>
<td>�w�ƥ�9</td>
<td>�w�ƥ�10</td>
<td>�w�ƥ�11</td>
<td>�w�ƥ�12</td>
<td>�w�ƥ�13</td>
<td>�w�ƥ�14</td>
<td>�w�ƥ�15</td>
<td>update</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from schedule ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%if(session.getAttribute("accessId") != null){out.println(session.getAttribute("accessId"));%>
<%}else{%><%}%></td>
<td><%=resultSet.getString("drawbreak1") %></td>
<td><%=resultSet.getString("drawbreak2") %></td>
<td><%=resultSet.getString("drawbreak3") %></td>
<td><%=resultSet.getString("drawbreak4") %></td>
<td><%=resultSet.getString("drawbreak5") %></td>
<td><%=resultSet.getString("drawbreak6") %></td>
<td><%=resultSet.getString("drawbreak7") %></td>
<td><%=resultSet.getString("drawbreak8") %></td>
<td><%=resultSet.getString("drawbreak9") %></td>
<td><%=resultSet.getString("drawbreak10") %></td>
<td><%=resultSet.getString("drawbreak11") %></td>
<td><%=resultSet.getString("drawbreak12") %></td>
<td><%=resultSet.getString("drawbreak13") %></td>
<td><%=resultSet.getString("drawbreak14") %></td>
<td><%=resultSet.getString("drawbreak15") %></td>
<td><a href="employee_update.jsp?employee_ID=<%if(session.getAttribute("accessId") != null){out.println(session.getAttribute("accessId"));%>
<%}else{%><%}%>">�ק�e��ӽ�</a></td>
<td><a href="employee_delete.jsp?employee_ID=<%if(session.getAttribute("accessId") != null){out.println(session.getAttribute("accessId"));%>
<%}else{%><%}%>">�R���e��ӽ�</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>