<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 薪資表</title>
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
            <h2>六月薪資表</h2>
            <h3>員工ID： BETTY.WU</h3><br>
            <h3>實際上班時間： 11 小時 </h3><br>
            <h3>遲到分鐘數： 2 分鐘</h3><br>
            <h3>獎懲：-20$ </h3><br>
            <h3>獎懲原因：遲到</h3><br>
            <h3>總薪資額：$1,960</h3>
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
                      <tbody>
                     
                      <tr>
                        <th>2021/06/19</th>
                        <th>18:02</th>
                        <th>21:05</th>
                        <th>21:35</th>
                        <th>00:02</th>
                        <th>5.5</th>
                        <th>2</th>
                      </tr>
                      <tr>
                        <th>2021/06/18</th>
                        <th>17:57</th>
                        <th>20:00</th>
                        <th>20:30</th>
                        <th>24:00</th>
                         <th>5.5</th>
                         <th>0</th>
                      </tr>
                    </tbody>
                  </table>
          </header>
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