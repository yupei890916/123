<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
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
          <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                             url="jdbc:mysql://127.0.0.1:3306/fpm"
                             user="root"  password="lovelove520"/>
          <sql:query dataSource="${snapshot}" var="result">
               SELECT * from fpm.staff ;
          </sql:query>
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
				<c:forEach var="row" items="${result.rows}">
			<tbody>
				<tr>
				   <td><c:out value="${row.memberID}"/></td>
				   <td><c:out value="${row.name}"/></td>
				   <td><c:out value="${row.shift}"/></td>
				   <td><font size="3"><input type="button" value="修改" onclick="location.href='memberEdit.jsp?memberId=${row.memberID}'"></font> </td>
				</tr>
				</c:forEach>
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
  <script src="assets/js/jquery.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
  <script src="assets/js/table.js" style=""></script>
</body>
</html>