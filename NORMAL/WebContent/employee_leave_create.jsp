<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
<head>
  <title>FOOODPANDA MARKET 熊貓超市 員工畫休</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
  <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css"> 
  <script src="assets/js/calender.js"></script>
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
            <h2>熊貓超市 - 新增畫休</h2>
★ 請依據排班規則，每人每月請預先劃休15天。<br>
★ 各班上班人數：早班至少六位、晚班至少五位、大夜至少二位，實際休假由抽籤順序編排產生。<br>
★ 每年6/30、12/31重新抽籤優先休假順序，並公告於公告欄。<br><br>
<form method="post" action="employee_leave_create_process.jsp">
 <table>
  <tr>
    <td><input type="text" name="employee_ID" value="<%@include file ="employee_leave_create_name.jsp" %>"></td>
  </tr>
  <tr>
    <td><div align="center">預排休1</div></td>
    <td><div align="center">預排休2</div></td>
    <td><div align="center">預排休3</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker1" name="drawbreak1"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker2" name="drawbreak2"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker3" name="drawbreak3"></td>
  </tr>
  <tr>
    <td><div align="center">預排休4</div></td>
    <td><div align="center">預排休5</div></td>
    <td><div align="center">預排休6</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker4" name="drawbreak4"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker5" name="drawbreak5"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker6" name="drawbreak6"></td>
  </tr>
  <tr>
    <td><div align="center">預排休7</div></td>
    <td><div align="center">預排休8</div></td>
    <td><div align="center">預排休9</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker7" name="drawbreak7"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker8" name="drawbreak8"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker9" name="drawbreak9"></td>
  </tr>
  <tr>
    <td><div align="center">預排休10</div></td>
    <td><div align="center">預排休11</div></td>
    <td><div align="center">預排休12</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker10" name="drawbreak10"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker11" name="drawbreak11"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker12" name="drawbreak12"></td>
  </tr>
   <tr>
    <td><div align="center">預排休13</div></td>
    <td><div align="center">預排休14</div></td>
    <td><div align="center">預排休15</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker13" name="drawbreak13"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker14" name="drawbreak14"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker15" name="drawbreak15"></td>
  </tr>
  <tr>
    <td></td>
    <td><div align="center"><input type="submit" value="提交畫休申請"></div></td>
    <td></td>
  </tr>
</table>
</form>
 </header>
        </section>
       </div>
     </div>
     <%@include file ="menu.jsp" %>
  </div>
  <!-- Scripts -->
  <script src="assets/js/jquery1.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
</body>
</html>