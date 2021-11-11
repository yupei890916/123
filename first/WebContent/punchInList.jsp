<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 打卡</title>
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
            <h2>熊貓超市 打卡記錄</h2>
          </header>
    
          <form method="post" action="#">
            <font color="#000000" size="4">
              <div class=" gtr-uniform">
                <div class="col-6 col-12-xsmall">
               
                  <table style="width:100%">
                    <thead>
                      <tr>
                        <th>日期</th>
                        <th>員工ID</th>
                        <th>上班時間</th>
                        <th>休息時間</th>
                        <th>休息結束</th>
                        <th>下班時間</th>
                        <th>遲到</th>
                        <th>未休息</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <th>2021/06/19</th>
                        <th>PENNY.LI</th>
                        <th>18:05</th>
                        <th>--:--</th>
                        <th>--:--</th>
                        <th>00:02</th>
                        <th>5</th>
                        <th>V</th>
                      </tr>
                      <tr>
                        <th>2021/06/19</th>
                        <th>BETTY.WU</th>
                        <th>17:57</th>
                        <th>21:05</th>
                        <th>21:35</th>
                        <th>00:02</th>
                      </tr>
                      <tr>
                        <th>2021/06/18</th>
                        <th>BETTY.WU</th>
                        <th>17:57</th>
                        <th>20:00</th>
                        <th>20:30</th>
                        <th>24:00</th>
                         <th>10</th>
                        <th>V</th>
                      </tr>
                    </tbody>
                  </table>
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input type="submit"  value="休息紀錄"/></font> 
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input type="reset" value="遲到紀錄"/></font>
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
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