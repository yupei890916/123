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
            <h2>熊貓超市 打卡系統</h2>
          </header>
          <form id="c_form-h" class="text-dark" style="">
            <font size="5" style="color:black;">員工ID</font>
            <href="member.jsp?memberId=<%=session.getAttribute("accessId")%>> 
                <%
					if(session.getAttribute("accessId") == null){
						out.println("");
					}else{
						out.println(session.getAttribute("accessId"));
					}
			  %>
                </div><br>
            <div class="col-10">
            </div>
          </form>
          <ul class="actions">
            <li><a href="#" class="button primary">上班</a></li>
            <li><a href="#" class="button">休息</a></li>
            <li><a href="#" class="button primary">休息結束</a></li>
            <li><a href="#" class="button">下班</a></li>
          </ul>
          <p id="demo"></p>
          
<script>
var myVar = setInterval(myTimer, 1000);

function myTimer() {
  var d = new Date();
  document.getElementById("demo").innerHTML = d.toLocaleTimeString();
}
</script>
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
                      </tr>
                      </thead>
                      <tbody>
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