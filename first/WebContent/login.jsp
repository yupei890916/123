<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="java.util.*"%>

<html>
<head>
  <title>FOOODPANDA MARKET 熊貓超市 員工登入</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>

<body class="is-preload">
  <div id="wrapper">
    <div id="main">
      <div class="inner">
        <%@include file ="header.jsp" %>
        <br>
          <header class="major">
            <h2> &ensp; 員 工 登 入 </h2>
          </header>
        <form action="check.jsp" method="post">
          <table>
            <tr><td><font size="4">員 工 I D : </font></td><td><input type="text" name="username" size="20" placeholder="英文名+英文姓" required/></td></tr>
            <tr><td><font size="4">密 碼 :</font></td><td><input type="password" name="pwd" size="20" placeholder="身份證字號" required/></td></tr>
          </table>
          <center>
           <font size="4"><input type="submit" value="登入"/></font> 
           &emsp;
           <font size="4"><input type="reset" value="重置"/></font> 
          </center>
        </form>
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