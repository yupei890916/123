<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="java.util.*"%>

<html>
<head>
  <title>FOOODPANDA MARKET ���߶W�� ���u�n�J</title>
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
            <h2> &ensp; �� �u �n �J </h2>
          </header>
        <form action="check.jsp" method="post">
          <table>
            <tr><td><font size="4">�� �u I D : </font></td><td><input type="text" name="username" size="20" placeholder="�^��W+�^��m" required/></td></tr>
            <tr><td><font size="4">�K �X :</font></td><td><input type="password" name="pwd" size="20" placeholder="�����Ҧr��" required/></td></tr>
          </table>
          <center>
           <font size="4"><input type="submit" value="�n�J"/></font> 
           &emsp;
           <font size="4"><input type="reset" value="���m"/></font> 
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