<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 調班</title>
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
            <h2>調班申請單</h2>
          </header>
          <h3>須調班員工ID： <input type="text" name="須調班員工ID" id="須調班員工ID" value="" placeholder="須調班員工ID"></h3><br>
          <h3>調班日期： <br><input id="調班日期" type="date" name="調班日期" placeholder="調班日期" value=""> </h3><br>
          <h3>可調班員工ID： <input type="text" name="可調班員工ID" id="可調班員工ID" value="" placeholder="可調班員工ID"></h3><br>
          <h3>填寫日期： <br><input type="date" id="填寫日期" name="填寫日期"> </h3><br>
          <input type="submit" value="送出">
          <br>
          <p id="demo"> 5 31 2021 13:56:29 </p>
          <script style=""> var d = new Date();
             document.getElementById("demo").innerHTML = d;
          </script>
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