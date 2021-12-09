<%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
pageEncoding="BIG5"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>FOOODPANDA MARKET 熊貓超市</title>
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
        <!-- Banner -->
        <br>
          <header class="major">
            <h2>&ensp;公 告 欄</h2>
          </header>
        
        <h3>發佈公告</h3>
       

<form method="post" action="index_input.jsp">
<table>
	<div class="row gtr-uniform">
	<div class="col-6 col-12-xsmall">										
		<input type="text" name="title" id="demo-name" value="" placeholder="標題" />
	</div>
	<div class="col-6 col-12-xsmall">
		<input type="text" name="Publisher" id="demo-name" value="" placeholder="發佈人" />
	</div>
	<div class="col-6 col-12-xsmall">
		<input type="datetime-local" name="date"" placeholder="發佈日期" />
	</div>
	<div class="col-6 col-12-small">
		<input type="checkbox" id="demo-copy" name="demo-copy">
			<label for="demo-copy">Email me a copy</label>
	</div>
						
<!-- Break -->
	<div class="col-12">
		<textarea name="message" id="demo-message" placeholder="輸入內容" rows="6"></textarea>
	</div>
<!-- Break -->
	<div class="col-12">
		<ul class="actions">
	<li><input type="submit" value="發佈" class="primary" /></li>
	<li><input type="reset" value="清除" /></li>
</ul>
	</div>
	</div>
</table>
</form>
         
</div>
</div>
   
    <!-- Sidebar -->
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