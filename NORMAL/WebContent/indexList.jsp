<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 公告欄清單</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>

<body class="is-preload">
  <div id="wrapper">
    <div id="main">
      <div class="inner">
        <%@include file ="header.jsp" %>
         <section>
          <header class="major" draggable="true">
            <h2>公告欄清單</h2>
          </header>
          <div class="content">
          <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                             url="jdbc:mysql://127.0.0.1:3306/fpm"
                             user="root"  password="lovelove520"/>
          <sql:query dataSource="${snapshot}" var="result">
               SELECT * from fpm.notice ;
          </sql:query>
          <form action="newIndex.jsp" method="post">
			<table id="indexList" border="1" >
			<thead>
				<tr>
  					 <th>標題</th>
  					 <th>發佈人</th>
  					 <th>日期</th>
  					 <th>內容</th>
				</tr>
			</thead>
				<c:forEach var="row" items="${result.rows}">
			<tbody>
				<tr>
				   <td><c:out value="${row.title}"/></td>
				   <td><c:out value="${row.Publisher}"/></td>
				   <td><c:out value="${row.date}"/></td>
				   <td><c:out value="${row.message}"/></td>
				   <td><input type="button" value="刪除" onclick="delRow(this)"></td>
				   <!-- <td><input type="button" value="刪除" onclick="delRow(this)"></td>
				   <td><button style="font-size:12px" id="delete" onclick="index_delete()"><i class="fas fa-trash-alt"></i></button></td> -->
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
  <script src="assets/js/delete.js" style=""></script>
</body>
</html>