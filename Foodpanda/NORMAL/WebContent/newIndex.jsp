<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>

<!DOCTYPE html>
<html>
<head>
  <title>FOOODPANDA MARKET ���߶W�� �o�����i</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>
<body class="is-preload">
  <div id="wrapper">
    <div id="main">
      <div class="inner">
        <%@include file ="header.jsp" %>
        <section>
          <header class="major">
            <h2>&ensp;�o �G �� �i</h2>
          </header>
			<form method="post" action="newIndex_inSert.jsp">
				<div class="row gtr-uniform">
					<div class="col-6 col-12-xsmall"><input type="text" name="title" placeholder="���D"/></div>
					<div class="col-6 col-12-xsmall"><input type="text" name="publisher" placeholder="�o�G�H"/></div>
					<div class="col-6 col-12-xsmall"><input type="datetime-local" name="date" placeholder="�o�G���"/></div>
					<div class="col-6 col-12-xsmall"><input type="checkbox"><label>Email me a copy</label></div>
					<div class="col-12"><textarea name="message" placeholder="��J���e" rows="6"></textarea></div>
					<div class="col-12">
						<ul class="actions">
							<li><input type="submit" value="�o�G" class="button primary large"/></li>
							<li><input type="reset" value="�M��" class="button large"/></li>
						</ul>
					</div>
				</div>
			</form>
 		 </section>        
		</div>
       </div>
    <%@include file ="menu.jsp" %>
  </div>
  <script src="assets/js/jquery.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
</body>
</html>