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
            <br>
          <header class="major">
             <h2>&ensp;公 告 欄</h2>
          </header>
          
          <%String title = request.getParameter("title");
String Publisher = request.getParameter("Publisher");
String date = request.getParameter("date");
String message = request.getParameter("message");
%>

       <div class="content">
          <h2><%= title %> </h2><a href="javascript:" onclick="document.all.fullContent.style.display=(document.all.fullContent.style.display=='none')?'':'none';document.all.smallContent.style.display=(document.all.smallContent.style.display=='none')?'':'none'">點我展開∕隱藏</a>
          <div class="block" id="fullContent" style="display: none;"> 發佈人：<%= Publisher %> <br> 發佈日期：<%=date %> <br> 內容：<%=message %>
		</div>
       </div>
          &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;


        <div class="content">
          <h2>疫情公告 </h2><a href="javascript:" onclick="document.all.fullContent.style.display=(document.all.fullContent.style.display=='none')?'':'none';document.all.smallContent.style.display=(document.all.smallContent.style.display=='none')?'':'none'">點我展開∕隱藏</a>
          <div class="block" id="fullContent" style="display: none;"> 請洗手，戴口罩，3Q </div>
        </div>
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