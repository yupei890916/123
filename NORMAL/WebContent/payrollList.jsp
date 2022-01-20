<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 薪資總表</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>

<body class="is-preload">
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		     url="jdbc:mysql://127.0.0.1:3306/fpm"
		     user="root"  password="lovelove520"/>
		<sql:query dataSource="${snapshot}" var="result1">
		select memberID, SUM(TotalTime) AS WT FROM schedules group by memberID;
		</sql:query>
		<sql:query dataSource="${snapshot}" var="result2">
		select memberID, SUM(delay) AS DE FROM schedules group by memberID;
		</sql:query>
		<sql:query dataSource="${snapshot}" var="result3">
		SELECT * from fpm.staff where memberID = "BETTY.WU";
		</sql:query>
  <div id="wrapper">
    <div id="main">
      <div class="inner">
        <%@include file ="header.jsp" %>
         <section>
          <header class="major">
          <h2>六月薪資表</h2>
          </header>
          <div class="content">
            <table border="1">
                    <thead>
                      <tr>
                        <th>員工ID</th>
                        <th>總時數</th>
                        <th>總遲到分鐘數</th>
                        <th>薪資</th>
                        <th>總薪資</th>
                      </tr>
                      </thead>
                      <tbody>  
                      <tr>
                        <c:forEach var="row" items="${result1.rows}">
                        <th><c:out value="${row.memberID}"/></th>
                        </c:forEach>
                        <c:forEach var="row" items="${result1.rows}">
                        <th class="hours"><c:out value="${row.WT}"/> </th><br>
            			</c:forEach>
                        <c:forEach var="row" items="${result2.rows}">
                        <th><c:out value="${row.DE}"/> </th><br>
            			</c:forEach>
            			<c:forEach var="row" items="${result3.rows}">
                        <th class="salary"><c:out value="${row.salary}"/> </th><br>
            			</c:forEach>
                        <th class="result"></th>
                      </tr>
                    </tbody>
                  </table>
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
  <script>
    let hours = document.querySelector(".hours").innerHTML;
    hours = hours.slice(0, hours.length);
    let salary = document.querySelector(".salary").innerHTML;
    salary = salary.slice(0, salary.length);
    let result = document.querySelector(".result");
    console.log(hours);
    console.log(salary);
    result.innerHTML = hours*salary;
</script>
</body>
</html>