<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%
String id = request.getParameter("staffid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "fpm";
String userid = "root";
String password = "root1201";
try{
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
  <title>FOOODPANDA MARKET 熊貓超市 調班清單</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
<style> 
 table {
  border-collapse: collapse;
  width:100%
}
th, tb {
padding: 8px;
text-align: left;
border-bottom: 1px solid #ddd;
}
tr:hover {banckground-color: pink;}
</style>
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
            <h2>調班歷史紀錄表</h2>
          </header>
          <div class="content">       
<table border="1">                   
<tr>
<th>修改</th>
<th>須調班員工ID</th>
<th>調班日期</th>
<th>可調班員工ID</th>
<th>填寫日期</th>
<th>審核狀況</th>
<th>審核日期</th>
<th>刪除</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from fpm.調班";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><button style="font-size:12px"><i class="fas fa-pencil-alt"></i></button></td>
<td><%=resultSet.getString("須調班員工ID")%></td>
<td><%=resultSet.getString("調班日期")%></td>
<td><%=resultSet.getString("可調班員工ID")%></td>
<td><%=resultSet.getString("填寫日期")%></td>
<td><%=resultSet.getString("審核狀況")%></td>
<td><%=resultSet.getString("審核日期")%></td>
</tr>       
</table>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>                                                                            
         </div>
       </section>
     </div>         
   </div>
  <%@include file ="menu.jsp" %>
</div>
  <!-- Scripts -->
  <script src="assets/js/jquery.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
</body>
</html>
