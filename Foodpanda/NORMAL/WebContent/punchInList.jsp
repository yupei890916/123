<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 打卡</title>
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
          <header class="major">
            <h2>熊貓超市 打卡記錄</h2>
          </header>
     <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1:3306/fpm"
     user="root"  password="betty62411"/>
     <sql:query dataSource="${snapshot}" var="result">
     SELECT * from fpm.punchln;
     </sql:query>
          <form method="post" action="#">
            <font color="#000000" size="4">
              <div class=" gtr-uniform">
                <div class="col-6 col-12-xsmall">
               
                  <table style="width:100%">
                    <thead>
                      <tr>
                        <th>日期</th>
                        <th>員工ID</th>
                        <th>上班時間</th>
                        <th>休息時間</th>
                        <th>休息結束</th>
                        <th>下班時間</th>
                        <th>遲到</th>                 
                        <th>未休息</th>
                      </tr>
                    </thead>
                    <c:forEach var="row" items="${result.rows}">
                      <tbody>
                      <tr>
                        <th><c:out value="${row.date}"/></th>
                        <th><c:out value="${row.memberID}"/></th>
                        <th><c:out value="${row.gohours}"/></th>
                        <th><c:out value="${row.resthours}"/></th>
                        <th><c:out value="${row.restoffhours}"/></th>
                        <th><c:out value="${row.afterhours}"/></th>
                        <th><c:out value="${row.late}"/></th>
                        <th><c:out value="${row.norest}"/></th>
                      </tr>        
                    </tbody>
                   </c:forEach>
                  </table>
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input type="submit"  value="休息紀錄"/></font> 
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input type="reset" value="遲到紀錄"/></font>
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                          </div><br>
                <!-- Break -->
                <div class="col-5">
                  <ul class="actions">
                  </ul>
                </div>
              </div>
            </font>
          </form>
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