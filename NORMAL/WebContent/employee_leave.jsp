<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET ���߶W�� �Z��</title>
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
            <h2>���߶W�� - ���u�e��</h2>
<table>
    <tr>
    <td><p><div align="center"><input type="button" value="�s�W�e��ӽ�" onclick="location.href='employee_leave_create.jsp'"></div></p></td>
    </tr>
    <tr>
    <td><p><div align="center"><input type="button" value="�ק�e��ӽ�" onclick="location.href='employee_leave_update_delete.jsp'"></div></p></td>
    </tr>
    <tr>
    <td><p><div align="center"><input type="button" value="�R���e��ӽ�" onclick="location.href='employee_leave_update_delete.jsp'"></div></p></td>
    </tr>
</table>
          </header>
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