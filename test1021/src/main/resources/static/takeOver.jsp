<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET ���߶W�� �կZ</title>
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
            <h2>�կZ�ӽг�</h2>
          </header>
          <h3>���կZ���uID�G <input type="text" name="���կZ���uID" id="���կZ���uID" value="" placeholder="���կZ���uID"></h3><br>
          <h3>�կZ����G <br><input id="�կZ���" type="date" name="�կZ���" placeholder="�կZ���" value=""> </h3><br>
          <h3>�i�կZ���uID�G <input type="text" name="�i�կZ���uID" id="�i�կZ���uID" value="" placeholder="�i�կZ���uID"></h3><br>
          <h3>��g����G <br><input type="date" id="��g���" name="��g���"> </h3><br>
          <input type="submit" value="�e�X">
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