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
          <header class="major" draggable="true">
            <h2>個人資料列表</h2>
          </header>
          <form method="post" action="#">
            <font color="#000000" size="4">
              <div class=" gtr-uniform">
                <div class="col-12-xsmall col-md-6 col-8" style="">
                  <table>
                    <tbody>
                      <tr style="">
                        <th>員工ID</th>
                        <th>姓名</th>
                        <th>職稱</th>
                        <th>班別</th>
                        <th>性別</th>
                        <th>出生年月日</th>
                        <th>身份證字號</th>
                        <th>手機號碼</th>
                        <th>Email</th>
                        <th>LINE ID</th>
                        <th>住址</th>
                        <th>緊急連絡人</th>
                        <th>緊急連絡人關係</th>
                        <th>緊急連絡人電話</th>
                        <th>到職日</th>
                        <th>離職日</th>
                      </tr>
                      <tr>
                        <th>BETTY.WU</th>
                        <th>吳昱霈</th>
                        <th>PT</th>
                        <th>晚班</th>
                        <th>女</th>
                        <th>2018/7/11</th>
                        <th>A123456789</th>
                        <th>0902215952</th>
                        <th>BETTY62411890916@gmail.com</th>
                        <th>yupei890916</th>
                        <th>新北市中和區大勇街</th>
                        <th>李至濡</th>
                        <th>母女</th>
                        <th>0930260466</th>
                        <th>2021/4/1</th>
                        <th></th>
                      </tr>
                      <tr>
                        <th>TERRY.LI</th>
                        <th>李大衛</th>
                        <th>FT</th>
                        <th>早班</th>
                        <th>男</th>
                        <th>1995/4/1</th>
                        <th>W456487513</th>
                        <th>0987545145</th>
                        <th>terry45454@gmail.com</th>
                        <th>565TTTT</th>
                        <th>新北市班橋區大用街4455號7樓</th>
                        <th>劉爸爸</th>
                        <th>父子</th>
                        <th>0988844455</th>
                        <th>2019/5/11</th>
                        <th></th>
                      </tr>
                      <tr>
                        <th>JACKY.LIU</th>
                        <th>劉澤宏</th>
                        <th>PT</th>
                        <th>晚班</th>
                        <th>男</th>
                        <th>2021/8/17</th>
                        <th>P454648215</th>
                        <th>0945682355</th>
                        <th>netrfgf11123@gmail.com</th>
                        <th>jacky456</th>
                        <th>新北市永和區三名路29號</th>
                        <th>李爸爸</th>
                        <th>父子</th>
                        <th>0988444555</th>
                        <th>2021/3/2</th>
                        <th></th>
                      </tr>
                    </tbody>
                  </table>
                  <ul class="actions">
                    <li><input type="reset" value="新增" font="" size="7"></li>
                    <li><input type="reset" value="修改" font="" size="7"></li>
                    <font color="#000000">
                      <font color="#000000">
                        <font color="#000000">
                        </font>
                      </font>
                    </font>
                  </ul>
                </div><br style="">
                <!-- Break -->
                <div class="col-5" style="">
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