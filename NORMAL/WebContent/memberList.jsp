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
String password = "lovelove520";
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
  <title>FOOODPANDA MARKET 熊貓超市 員工清單</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
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
          <header class="major" draggable="true">
            <h2>個人資料列表</h2>
          </header>
          <div class="content">
          <form action="newMember.jsp" method="post">
			<table id="memberList" border="1" width="100%">
			<thead>
				<tr>
  					 <th>員工ID</th>
  					 <th>姓名</th>
  					 <th>班別</th>
  					 <th>編輯</th>
				</tr>
			</thead>
				<%
				try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from staff "; 
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
				%>
			<tbody>
				<tr>
				   <td><%=resultSet.getString("memberID") %></td>
				   <td><%=resultSet.getString("name") %></td>
				   <td><%=resultSet.getString("shift") %></td>
				   <td><font size="3"><input type="button" value="修改" 
				        onclick="location.href='memberEdit.jsp?memberId=<%=resultSet.getString("memberID")%>'"></font> </td>
				</tr>
				<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</tbody>
			</table>
		   <center>
           <font size="4"><input type="submit" value="新增"/></font>
           </center>
            </form>
           </div>
        </section>
       </div>
     </div>
    <%@include file ="menu.jsp" %>
  </div>
  <!-- Scripts -->
  <script src="assets/js/jquery.min.js" ></script>
  <script src="assets/js/browser.min.js" ></script>
  <script src="assets/js/breakpoints.min.js" ></script>
  <script src="assets/js/util.js" ></script>
  <script src="assets/js/main.js" ></script>
</body>
</html>