<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 新增員工資料</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>

<body class="is-preload">
  <div id="wrapper">
    <div id="main">
      <div class="inner">
        <%@include file ="header.jsp" %>
         <section>
           <header class="major">
            <h2>新增員工資料</h2>
          </header>
        
        <form action="newMember_inserInto.jsp" method="post" action="#">
          <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-4"> 員工ID：<input type="text" name="memberID"  placeholder="員工ID"></div>
              <div class="col-4"> 姓名：<input type="text" name="name" placeholder="姓名"></div>
              <div class="col-4"> 班別：<select name="shift" >
                  <option value="早班">早班</option>
                  <option value="晚班">晚班</option>
                  <option value="大夜班">大夜班</option></select></div>
              <div class="col-4"> 職稱：<select name="jobtitle">
                  <option value="PT">PT</option>
                  <option value="FT">FT</option>
                  <option value="SUP">SUP</option></select></div>
              <div class="col-4"> 性別：<select name="gender" >
                  <option value="男">男</option>
                  <option value="女">女</option></select></div>
              <div class="col-4"> 出生年月日：<br><input type="date" name="birthday" placeholder="出生年月日">
              </div>
              <div class="col-4"> 身分證字號：<input type="text" name="identitycard" placeholder="身分證字號">
              </div>
              <div class="col-4"> 手機號碼：<input type="text" name="phonenumber"  placeholder="手機號碼">
              </div>
              <div class="col-4"> Email：<input type="email" name="email"  placeholder="Email">
              </div>
              <div class="col-4"> LINE ID：<input type="text" name="lineID"  placeholder="LINE ID">
              </div>
              <div class="col-4"> 住址：<input type="text" name="address" placeholder="住址">
              </div>
              <div class="col-4"> 緊急聯絡人：<input type="text" name="ec"  placeholder="緊急聯絡人">
              </div>
              <div class="col-4"> 緊急聯絡人電話：<input type="text" name="ecphonenumber" placeholder="緊急聯絡人電話">
              </div>
              <div class="col-4"> 緊急聯絡人關係：<input type="text" name="ecrelationships" placeholder="緊急聯絡人關係">
              </div>
              <div class="col-4"> 在職日：<br><input type="date" name="arrivalday" placeholder="在職日">
              </div>
               <div class="col-4 col-12-xsmall" style=""> 離職日：<input type="text" name="turnoverdate" placeholder="離職日">
              </div>
              <div class="col-12" style=""><textarea name="remark"  placeholder="備註" rows=""></textarea>
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