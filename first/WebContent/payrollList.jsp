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
         <form method="post" action="#">
            <font color="#000000" size="4">
              <div class=" gtr-uniform">
                <div class="col-6 col-12-xsmall">
                  <table id="leaveTable" name="五月薪資表" style="width:100%">
                    <thead>
                       <tr>
                       <th>日期</th>
                        <th>員工ID</th>
                        <th>實際上班時間</th>
                        <th>遲到分鐘數</th>
                        <th>請假天數</th>
                        <th>獎懲</th>
                        <th>獎懲原因</th>
                        <th>總薪資額</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th>2021/5</th>
                        <th>BETTY.WU</th>
                        <th>165 小時</th>
                        <th>5 分鐘</th>
                        <th>1</th>
                        <th>-50$</th>
                        <th>遲到</th>
                        <th>$26,350</th>
                        
                      </tr>
                       <tr>
                        <th>2021/5</th>
                        <th>PENNY.LI</th>
                        <th>120 小時</th>
                        <th>15 分鐘</th>
                        <th>3</th>
                        <th>-150$</th>
                        <th>遲到</th>
                        <th>$19,050</th>
                        
                      </tr>
                    </tbody>
                  </table>
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