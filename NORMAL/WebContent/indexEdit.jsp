<%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
pageEncoding="BIG5"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>FOOODPANDA MARKET ���߶W��</title>
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
            <h2>&ensp;�� �i ��</h2>
          </header>
        
        <h3>�o�G���i</h3>
       

<form method="post" action="index_input.jsp">
<table>
	<div class="row gtr-uniform">
	<div class="col-6 col-12-xsmall">										
		<input type="text" name="title" id="demo-name" value="" placeholder="���D" />
	</div>
	<div class="col-6 col-12-xsmall">
		<input type="text" name="Publisher" id="demo-name" value="" placeholder="�o�G�H" />
	</div>
	<div class="col-6 col-12-xsmall">
		<input type="datetime-local" name="date"" placeholder="�o�G���" />
	</div>
	<div class="col-6 col-12-small">
		<input type="checkbox" id="demo-copy" name="demo-copy">
			<label for="demo-copy">Email me a copy</label>
	</div>
						
<!-- Break -->
	<div class="col-12">
		<textarea name="message" id="demo-message" placeholder="��J���e" rows="6"></textarea>
	</div>
<!-- Break -->
	<div class="col-12">
		<ul class="actions">
	<li><input type="submit" value="�o�G" class="primary" /></li>
	<li><input type="reset" value="�M��" /></li>
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