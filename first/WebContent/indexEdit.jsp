<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
            <h2>&ensp;�o �G �� �i  </h2>
          </header>
			<form method="post" action="index.jsp">
				<div class="row gtr-uniform">
				<div class="col-6 col-12-xsmall">
					<input type="text" name="demo-name" id="demo-name" value="" placeholder="���D" />
				</div>	
				<div class="col-6 col-12-xsmall">
					<input type="text" name="demo-name" id="demo-name" value="" placeholder="�o�G�H" />
				</div>	
				<div class="col-6 col-12-xsmall">
					<input type="datetime-local" name="�o�G���">
				</div>
				<div class="col-6 col-12-small">
					<input type="checkbox" id="demo-copy" name="demo-copy">
					<label for="demo-copy">Email me a copy</label>
				</div>
				<div class="col-12">
					<textarea name="demo-message" id="demo-message" placeholder="��J���e" rows="6"></textarea>
				</div>	
				<div class="col-12">
				<center>
				 <input type="submit" value="�o�G" class="primary" />
				 <input type="reset" value="�M��" />
				 </center>
				</div>	
			   </div>										
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