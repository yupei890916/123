<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 個人資料</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>

<body class="is-preload">
  <div id="wrapper">
    <%
     out.print("name:"+request.getParameter("memberID"));  
    %>
    <div id="main">
      <div class="inner">
        <%@include file ="header.jsp" %>
         <section>
          <header class="major">
            <h2>熊貓超市 個人資料</h2>
          </header>
           <form method="post" action="#">
           <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-4 col-12-xsmall col-md-1" style="">員工ID : ${row.memberID}</div>
              <div class="col-4 col-12-xsmall col-md-1" style=""> 姓名：<c:out value="${row.name}"/></div>
              <div class="col-4" style=""> 班別：<c:out value="${row.shift}"/></div>
              <div class="col-4" style=""> 職稱：${row.jobtitle} </div>
              <div class="col-4" style=""> 性別：<c:out value="${row.gender}"/></div>
              <div class="col-4 col-12-xsmall" style=""> 出生年月日：<c:out value="${row.birthday}"/></div>
              <div class="col-4 col-12-xsmall" style=""> 身分證字號：<c:out value="${row.identitycard}"/></div>
              <div class="col-4 col-12-xsmall" style=""> 手機號碼：<c:out value="${row.phonenumber}"/></div>
              <div class="col-4 col-12-xsmall" style=""> Email：<c:out value="${row.email}"/></div>
              <div class="col-4 col-12-xsmall" style=""> LINE ID：<c:out value="${row.lineID}"/></div>
              <div class="col-4 col-12-xsmall" style=""> 住址：<c:out value="${row.Email}"/> </div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人：<c:out value="${row.ec}"/></div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人電話：<c:out value="${row.ecphonenumber}"/></div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人關係：<c:out value="${row.ecrelationships}"/></div>
              <div class="col-4 col-12-xsmall" style=""> 在職日：<c:out value="${row.arrivalday}"/></div>
              <div class="col-4 col-12-xsmall" style=""> 離職日：<c:out value="${row.turnoverdate}"/></div>
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