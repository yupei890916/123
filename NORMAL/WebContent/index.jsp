<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市</title>
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
          <header class="major">
            <h2>熊貓超市 公告欄</h2>
          </header>
		    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		     url="jdbc:mysql://127.0.0.1:3306/fpm"
		     user="root"  password="lovelove520"/>
		    <sql:query dataSource="${snapshot}" var="result">
		     SELECT * from fpm.notice;
		    </sql:query>
          <form method="post" action="#">
                  <table >
                  <c:forEach var="row" items="${result.rows}">
                    <thead>
                      <tr>
                        <th><font size="5"><c:out value="${row.title}"/></font></th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                       <th>發佈人：<c:out value="${row.Publisher}"/></th> 
                       <th> 發佈日期：<c:out value="${row.date}"/></th> 
                       <th> 內容：<c:out value="${row.message}"/></th>
                      </tr>
                     </tbody>
                     </c:forEach> 
                  </table>
          </form>
        </section>
       </div>
     </div>
    <%@include file ="menu.jsp" %>
  </div>
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/browser.min.js"></script>
  <script src="assets/js/breakpoints.min.js"></script>
  <script src="assets/js/util.js"></script>
  <script src="assets/js/main.js"></script>
</body>
</html>