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
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1:3306/fpm"
     user="root"  password="lovelove520"/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from fpm.staff where 員工ID='<%=session.getAttribute("accessId")%>';
</sql:query>


	<!-- Wrapper -->
  <div id="wrapper">
    <!-- Main -->
    <div id="main">
      <div class="inner">
        <!-- Header -->
        <%@include file ="header.jsp" %>
         <section>
          <header class="major">
            <h2>熊貓超市 打卡系統</h2>
          </header>
          <c:forEach var="row" items="${result.rows}">
           <form method="post" action="#">
           
          <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-4 col-12-xsmall col-md-1" style="">員工ID : <%=session.getAttribute("accessId")%></div>
              <div class="col-4 col-12-xsmall col-md-1" style=""> 姓名：</div>
              <div class="col-4" style=""> 班別：晚班</div>
              <div class="col-4" style=""> 職稱：<%=session.getAttribute("Authority")%> </div>
              <div class="col-4" style=""> 性別：女</div>
              <div class="col-4 col-12-xsmall" style=""> 出生年月日：2000/9/16</div>
              <div class="col-4 col-12-xsmall" style=""> 身分證字號：A123456789</div>
              <div class="col-4 col-12-xsmall" style=""> 手機號碼：0912345678</div>
              <div class="col-4 col-12-xsmall" style=""> Email：<c:out value="${row.Email}"/></div>
              <div class="col-4 col-12-xsmall" style=""> LINE ID：<c:out value="${row.LineID}"/></div>
              <div class="col-4 col-12-xsmall" style=""> 住址：新北市中和區大勇街 </div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人：李至濡</div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人電話：0930260466</div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人關係：母女</div>
              <div class="col-4 col-12-xsmall" style=""> 在職日/離職日：2021/4/1</div>
              <div class="col-4 col-12-xsmall" style=""> 離職日：尚未</div>
              <!-- Break -->
              <div class="col-12" style="">
                <textarea name="demo-message" id="demo-message" placeholder="備註" rows=""></textarea>
              </div>
              <!-- Break -->
              <div class="col-12" style="">
                <ul class="actions">
                  <li><input type="reset" value="修改"></li>
                </ul>
              </div>
            </div>
          </font>
        </form>
         </c:forEach>
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