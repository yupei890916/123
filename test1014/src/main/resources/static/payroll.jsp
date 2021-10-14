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
            <h2>薪資表</h2>
            <h3>員工ID： <input type="text" name="demo-name" id="demo-name" value="" placeholder="Name"></h3><br>
            <h3>實際上班時間： <input type="text" name="demo-name" id="demo-name" value="" placeholder="總上班時間"> </h3><br>
            <h3>遲到分鐘數： <input type="text" name="demo-name" id="demo-name" value="" placeholder="總遲到時間"></h3><br>
            <h3>請假天數： <input type="text" name="demo-name" id="demo-name" value="" placeholder="請假天數"></h3><br>
            <h3>獎懲： <input type="text" name="demo-name" id="demo-name" value="" placeholder="獎懲"></h3><br>
            <h3>獎懲原因：<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="４"></textarea></h3><br>
            <h3>總工時： <input type="text" name="demo-name" id="demo-name" value="" placeholder="總工時"></h3><br>
            <h3>總薪資額： <input type="text" name="demo-name" id="demo-name" value="" placeholder="總薪資額"></h3>
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