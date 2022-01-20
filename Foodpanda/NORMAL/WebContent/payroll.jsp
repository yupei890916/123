<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 薪資表</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>

<body class="is-preload">
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1:3306/fpm"
     user="root"  password="lovelove520"/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from fpm.schedules where memberID='<%=session.getAttribute("accessId")%>';
</sql:query>
<sql:query dataSource="${snapshot}" var="result1">
select SUM(TotalTime) AS WT FROM schedules where memberID='<%=session.getAttribute("accessId")%>';
</sql:query>
<sql:query dataSource="${snapshot}" var="result2">
select SUM(delay) AS DE FROM schedules where memberID='<%=session.getAttribute("accessId")%>';
</sql:query>
<sql:query dataSource="${snapshot}" var="result3">
SELECT * from fpm.staff where memberID='<%=session.getAttribute("accessId")%>';
</sql:query>



  <div id="wrapper">
    <div id="main">
      <div class="inner">
        <%@include file ="header.jsp" %>
         <section>
          <header class="major">
          
            <h2>六月薪資表</h2>
            <h3>員工ID： <%=session.getAttribute("accessId")%></h3><br>
            <c:forEach var="row" items="${result1.rows}">
            <h3 class="hours">總時數： <c:out value="${row.WT}"/>小時 </h3><br>
            </c:forEach>
            <c:forEach var="row" items="${result2.rows}">
            <h3>總遲到分鐘數： <c:out value="${row.DE}"/>分鐘</h3><br>
            </c:forEach>
            
            <c:forEach var="row" items="${result3.rows}">
            <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("PT")){%>
                      <h3 class="salary">薪資：<c:out value="${row.salary}"/></h3>
                      <h3 class="result"></h3>
                      <%}

						else {%>
	                      <h3>薪資：<c:out value="${row.salary}"/></h3>
	                      
	                      <%}
                      }%>
             </c:forEach>
            <table style="width:100%">
                    <thead>
                      <tr>
                        <th>日期</th>
                        <th>上班時間</th>
                        <th>休息時間</th>
                        <th>休息結束</th>
                        <th>下班時間</th>
                        <th>時數</th>
                        <th>遲到</th>  
                      </tr>
                      </thead>
                      <c:forEach var="row" items="${result.rows}">
                      <tbody>  
                      <tr>
                        <th><c:out value="${row.workdate}"/></th>
                        <th><c:out value="${row.punchIn}"/></th>
                        <th><c:out value="${row.rest}"/></th>
                        <th><c:out value="${row.restOff}"/></th>
                        <th><c:out value="${row.punchOff}"/></th>
                        <th><c:out value="${row.TotalTime}"/></th>
                        <th><c:out value="${row.delay}"/></th>
                      </tr>
                    </tbody>
                    </c:forEach>
                  </table>
               
          </header>
        </section>
       </div>
     </div>
    <%@include file ="menu.jsp" %>
  </div>
  <!-- Scripts -->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/browser.min.js"></script>
  <script src="assets/js/breakpoints.min.js"></script>
  <script src="assets/js/util.js"></script>
  <script src="assets/js/main.js"></script>
  <script>
    let hours = document.querySelector(".hours").innerHTML;
    hours = hours.slice(4, hours.length-3);
    let salary = document.querySelector(".salary").innerHTML;
    salary = salary.slice(3, salary.length);
    let result = document.querySelector(".result");
    console.log(hours);
    console.log(salary);
    result.innerHTML = "總薪資：" + hours*salary;
</script>
</body>
</html>