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
<head>
  <title>FOOODPANDA MARKET ���߶W�� ���u�e��</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
  <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css"> 
  <script src="assets/js/calender.js"></script>
</head>
<body class="is-preload">
	<!-- Wrapper -->
  <div id="wrapper">
    <!-- Main -->
    <div id="main">
      <div class="inner">
        <!-- Header -->
        <%@include file ="header.jsp" %>
         <section>
          <header class="major">
            <h2>���߶W�� - �e��</h2>
<table border="1" width="1500">
<tr>
<td><div align="center">���u�N��</div></td>
<td><div align="center">�w�ƥ�1</div></td>
<td><div align="center">�w�ƥ�2</div></td>
<td><div align="center">�w�ƥ�3</div></td>
<td><div align="center">�w�ƥ�4</div></td>
<td><div align="center">�w�ƥ�5</div></td>
<td><div align="center">�w�ƥ�6</div></td>
<td><div align="center">�w�ƥ�7</div></td>
<td><div align="center">�w�ƥ�8</div></td>
<td><div align="center">�w�ƥ�9</div></td>
<td><div align="center">�w�ƥ�10</div></td>
<td><div align="center">�w�ƥ�11</div></td>
<td><div align="center">�w�ƥ�12</div></td>
<td><div align="center">�w�ƥ�13</div></td>
<td><div align="center">�w�ƥ�14</div></td>
<td><div align="center">�w�ƥ�15</div></td>
<td><div align="center">�ק�</div></td>
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
<td><%=resultSet.getString("employee_ID") %></td>
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
<td><%if(session.getAttribute("accessId")!=null){
          		if(session.getAttribute("accessId").equals(resultSet.getString("employee_ID"))) {%>
          			<a href="employee_leave_update_all.jsp?employee_ID=<%=resultSet.getString("employee_ID")%>" >�s��</a>
		  		<%}
          }%></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
 </header>
        </section>
       </div>
     </div>
     <%@include file ="menu.jsp" %>
  </div>
  <!-- Scripts -->
  <script src="assets/js/jquery1.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
</body>
</html>