<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>FOOODPANDA MARKET 熊貓超市 個人資料</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>
<body class="is-preload">
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
    Connection con=DriverManager.getConnection("jdbc:ucanaccess://"C:\\Users\\user\\eclipse-workspace\\FPM\\WebContent\\FPM.accdb";");
	//out.println("Con= "+con);
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM 員工 left join position on leelab.positionId=position.positionId WHERE 員工ID ='" +request.getParameter("memberId")+"'";
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
	%>
<!-- <form action="memberEdit.jsp" method="post"> -->
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
            <h2>熊貓超市 個人資料</h2>
          </header>
        </section>
        <form method="post" action="#">
          <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-6 col-12-xsmall"> 員工ID： <input type="text" name="demo-name" id="demo-name" value="" placeholder="員工ID">
              </div>
              <div class="col-6 col-12-xsmall"> 姓名：<input type="email" name="demo-email" id="demo-email" value="" placeholder="姓名">
              </div>
              <div class="col-6"> 班別：<select name="demo-category" id="demo-category">
                  <option value="1">早班</option>
                  <option value="1">晚班</option>
                  <option value="1">大夜班</option>
                </select>
              </div>
              <div class="col-6"> 職稱：<select name="demo-category" id="demo-category">
                  <option value="1">PT</option>
                  <option value="1">FT</option>
                  <option value="1">SUP</option>
                </select>
              </div>
              <div class="col-6"> 性別：<select name="demo-category" id="demo-category">
                  <option value="1">男</option>
                  <option value="1">女</option>
                </select>
              </div>
              <div class="col-6 col-12-xsmall"> 出生年月日：<br><input id="email" type="date" name="demo-email" placeholder="出生年月日" value="">
              </div>
              <div class="col-6 col-12-xsmall"> 身分證字號：<input type="email" name="demo-email" id="demo-email" value="" placeholder="身分證字號">
              </div>
              <div class="col-6 col-12-xsmall"> 手機號碼：<input type="email" name="demo-email" id="demo-email" value="" placeholder="手機號碼">
              </div>
              <div class="col-6 col-12-xsmall"> Email：<input type="email" name="demo-email" id="demo-email" value="" placeholder="Email">
              </div>
              <div class="col-6 col-12-xsmall"> LINE ID：<input type="email" name="demo-email" id="demo-email" value="" placeholder="LINE ID">
              </div>
              <div class="col-6 col-12-xsmall"> 住址：<input type="email" name="demo-email" id="demo-email" value="" placeholder="住址">
              </div>
              <div class="col-6 col-12-xsmall"> 緊急聯絡人：<input type="email" name="demo-email" id="demo-email" value="" placeholder="緊急聯絡人">
              </div>
              <div class="col-6 col-12-xsmall"> 緊急聯絡人關係：<input type="email" name="demo-email" id="demo-email" value="" placeholder="緊急聯絡人關係">
              </div>
              <div class="col-6 col-12-xsmall"> 緊急聯絡人電話：<input type="email" name="demo-email" id="demo-email" value="" placeholder="緊急聯絡人電話">
              </div>
              <!-- Break -->
              <div class="col-12">
                <textarea name="demo-message" id="demo-message" placeholder="備註" rows="6"></textarea>
              </div>
              <!-- Break -->
              <div class="col-12">
                <ul class="actions">
                  <li><input type="submit" value="Send Message" class="primary"></li>
                  <li><input type="reset" value="Reset"></li>
                </ul>
              </div>
            </div>
          </font>
        </form>
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