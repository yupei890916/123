<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 薪資表</title>
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
            <h2>熊貓超市 個人資料</h2>
          </header>
        
        <form method="post" action="#">
          <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-4 col-12-xsmall col-md-1" style=""> 員工ID： <input type="text" name="demo-name" id="demo-name" value="" placeholder="員工ID">
              </div>
              <div class="col-4 col-12-xsmall col-md-1" style=""> 姓名：<input type="email" name="demo-email" id="demo-email" value="" placeholder="姓名">
              </div>
              <div class="col-4" style=""> 班別：<select name="demo-category" id="demo-category">
                  <option value="1">早班</option>
                  <option value="1">晚班</option>
                  <option value="1">大夜班</option>
                </select>
              </div>
              <div class="col-4" style=""> 職稱：<select name="demo-category" id="demo-category">
                  <option value="1">PT</option>
                  <option value="1">FT</option>
                  <option value="1">SUP</option>
                </select>
              </div>
              <div class="col-4" style=""> 性別：<select name="demo-category" id="demo-category">
                  <option value="1">男</option>
                  <option value="1">女</option>
                </select>
              </div>
              <div class="col-4 col-12-xsmall" style=""> 出生年月日：<br><input id="email" type="date" name="demo-email" placeholder="出生年月日" value="">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 身分證字號：<input type="email" name="demo-email" id="demo-email" value="" placeholder="身分證字號">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 手機號碼：<input type="email" name="demo-email" id="demo-email" value="" placeholder="手機號碼">
              </div>
              <div class="col-4 col-12-xsmall" style=""> Email：<input type="email" name="demo-email" id="demo-email" value="" placeholder="Email">
              </div>
              <div class="col-4 col-12-xsmall" style=""> LINE ID：<input type="email" name="demo-email" id="demo-email" value="" placeholder="LINE ID">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 住址：<input type="email" name="demo-email" id="demo-email" value="" placeholder="住址">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人：<input type="email" name="demo-email" id="demo-email" value="" placeholder="緊急聯絡人">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人電話：<input type="email" name="demo-email" id="demo-email" value="" placeholder="緊急聯絡人電話">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人關係：<input type="email" name="demo-email" id="demo-email" value="" placeholder="緊急聯絡人關係">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 在職日/離職日：<input type="email" name="demo-email" id="demo-email" value="" placeholder="在職日/離職日">
              </div>
              <!-- Break -->
              <div class="col-12" style="">
                <textarea name="demo-message" id="demo-message" placeholder="備註" rows=""></textarea>
              </div>
              <!-- Break -->
              <div class="col-12" style="">
                <ul class="actions">
                  <li><input type="submit" value="新增資料" class="primary"></li>
                  <li><input type="reset" value="修改"></li>
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