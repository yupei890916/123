<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET ���߶W�� �կZ�M��</title>
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
            <h2>�կZ���v������</h2>
          </header>
          <form method="post" action="#">
            <font color="#000000" size="4">
              <div class=" gtr-uniform">
                <div class="col-6 col-12-xsmall">
                  <style style=""> table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
                  </style>
                  <table style="width:100%">
                    <tbody>
                      <tr>
                        <th>���կZ���uID</th>
                        <th>�կZ���</th>
                        <th>�i�կZ���uID</th>
                        <th>��g���</th>
                        <th>�f�֪��p</th>
                        <th>�f�֤��</th>
                        <th>�֨��s</th>
                      </tr>
                      <tr>
                        <th>BETTY.WU</th>
                        <th>2021/6/28</th>
                        <th>PENNY.LI</th>
                        <th>2021/6/21</th>
                        <th>�f�ֳq�L</th>
                        <th>2021/6/21</th>
                        <th></th>
                      </tr>
                      <tr>
                      </tr>
                    </tbody>
                  </table>
                </div><br>
                <!-- Break -->
                <div class="col-5">
                  <ul class="actions">
                  </ul>
                </div>
              </div>
            </font>
          </form>
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