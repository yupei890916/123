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
             <h2>&ensp;�� �i ��</h2>
          </header>
          
          <%String title = request.getParameter("title");
String Publisher = request.getParameter("Publisher");
String date = request.getParameter("date");
String message = request.getParameter("message");
%>

       <div class="content">
          <h2><%= title %> </h2><a href="javascript:" onclick="document.all.fullContent.style.display=(document.all.fullContent.style.display=='none')?'':'none';document.all.smallContent.style.display=(document.all.smallContent.style.display=='none')?'':'none'">�I�ڮi�}�A����</a>
          <div class="block" id="fullContent" style="display: none;"> �o�G�H�G<%= Publisher %> <br> �o�G����G<%=date %> <br> ���e�G<%=message %>
		</div>
       </div>
          &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;


        <div class="content">
          <h2>�̱����i </h2><a href="javascript:" onclick="document.all.fullContent.style.display=(document.all.fullContent.style.display=='none')?'':'none';document.all.smallContent.style.display=(document.all.smallContent.style.display=='none')?'':'none'">�I�ڮi�}�A����</a>
          <div class="block" id="fullContent" style="display: none;"> �Ь~��A���f�n�A3Q </div>
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