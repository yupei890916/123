<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 新增員工資料</title>
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
            <h2>新增員工資料</h2>
          </header>
        
        <form action="newMember_inserInto.jsp" method="post" action="#">
          <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-4 col-12-xsmall col-md-1" style=""> 員工ID： <input type="text" name="員工ID" id="demo-name" value="" placeholder="員工ID">
              </div>
              <div class="col-4 col-12-xsmall col-md-1" style=""> 姓名：<input type="text" name="姓名" id="demo-email" value="" placeholder="姓名">
              </div>
              <div class="col-4" style=""> 班別：<select name="班別" id="demo-category">
                  <option value="1">早班</option>
                  <option value="1">晚班</option>
                  <option value="1">大夜班</option>
                </select>
              </div>
              <div class="col-4" style=""> 職稱：<select name="職稱" id="demo-category">
                  <option value="1">PT</option>
                  <option value="1">FT</option>
                  <option value="1">SUP</option>
                </select>
              </div>
              <div class="col-4" style=""> 性別：<select name="性別" id="demo-category">
                  <option value="1">男</option>
                  <option value="1">女</option>
                </select>
              </div>
              <div class="col-4 col-12-xsmall" style=""> 出生年月日：<br><input  type="date" name="出生" placeholder="出生年月日" value="">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 身分證字號：<input type="text" name="身分證" placeholder="身分證字號">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 手機號碼：<input type="text" name="手機"  placeholder="手機號碼">
              </div>
              <div class="col-4 col-12-xsmall" style=""> Email：<input type="email" name="Email"  placeholder="Email">
              </div>
              <div class="col-4 col-12-xsmall" style=""> LINE ID：<input type="text" name="LINE"  placeholder="LINE ID">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 住址：<input type="text" name="住址" placeholder="住址">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人：<input type="text" name="緊急聯絡人"  placeholder="緊急聯絡人">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人電話：<input type="text" name="緊急聯絡人電話" placeholder="緊急聯絡人電話">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 緊急聯絡人關係：<input type="text" name="緊急聯絡人關係" placeholder="緊急聯絡人關係">
              </div>
              <div class="col-4 col-12-xsmall" style=""> 在職日：<input type="text" name="在職日" placeholder="在職日">
              </div>
               <div class="col-4 col-12-xsmall" style=""> 離職日：<input type="text" name="離職日" placeholder="離職日">
              </div>
              <div class="col-12" style=""><textarea name="備註"  placeholder="備註" rows=""></textarea>
              </div>
           <font size="4"><input type="submit" value="新增資料" class="primary"></font>
           <font size="4"><input type="reset" value="重設"></font>
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