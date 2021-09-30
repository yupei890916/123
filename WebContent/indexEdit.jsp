<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
        <section>
          <header class="major">
            <h2>熊貓超市 - 公告欄</h2>
          </header>
        
        <h3>Form</h3>

													<form method="post" action="#">
														<div class="row gtr-uniform">
															<div class="col-6 col-12-xsmall">
																<input type="text" name="demo-name" id="demo-name" value="" placeholder="標題" />
															</div>
															<div class="col-6 col-12-xsmall">
																<input type="text" name="demo-name" id="demo-name" value="" placeholder="name" />
															</div>
															<div class="col-6 col-12-xsmall">
																<input type="date" name="date" id="date" placeholder="Date">
															</div>
															<div class="col-6 col-12-small">
																<input type="checkbox" id="demo-copy" name="demo-copy">
																<label for="demo-copy">Email me a copy</label>
															</div>
						
															<!-- Break -->
															<div class="col-12">
																<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
															</div>
															<!-- Break -->
															<div class="col-12">
																<ul class="actions">
																	<li><input type="submit" value="Send Message" class="primary" /></li>
																	<li><input type="reset" value="Reset" /></li>
																</ul>
															</div>
														</div>
													</form>
        
       <div class="content">
          <h2>關於報告 </h2><a href="javascript:" onclick="document.all.fullContent.style.display=(document.all.fullContent.style.display=='none')?'':'none';document.all.smallContent.style.display=(document.all.smallContent.style.display=='none')?'':'none'">點我展開∕隱藏</a>
          <div class="block" id="fullContent" style="display: none;"> 大家加油!!! </div>
        </div><BR> 
        
        
        <div class="content">
          <h2>疫情公告 </h2><a href="javascript:" onclick="document.all.fullContent.style.display=(document.all.fullContent.style.display=='none')?'':'none';document.all.smallContent.style.display=(document.all.smallContent.style.display=='none')?'':'none'">點我展開∕隱藏</a>
          <div class="block" id="fullContent" style="display: none;"> 勤洗手，戴口罩，3Q </div>
        </div>
       
        </section>
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
