<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 請假清單</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
  <style style="table">  th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
  </style>
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
            <h2>請假歷史紀錄表</h2>
          </header>
          <form method="post" action="#">
            <font color="#000000" size="4">
                    <tbody>
                      <tr>
                        <th>請假員工ID</th>
                        <th>請假日期</th>
                        <th>請假類別</th>
                        <th>請假原因</th>
                        <th>填寫日期</th>
                        <th>審核狀況</th>
                        <th>審核日期</th>
                        <th>核取鈕</th>
                      </tr>
                      <tr>
                        <th>BETTY.WU</th>
                        <th>2021/6/30</th>
                        <th>事假</th>
                        <th>與家人吃飯</th>
                        <th>2021/6/21</th>
                        <th>審核通過</th>
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