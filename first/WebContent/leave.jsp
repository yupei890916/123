<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 請假表</title>
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
            <h2>請假申請單</h2>
          </header>
          <h3>
            <div class="text">須調班員工ID： <href="member.jsp?memberId=<%=session.getAttribute("accessId")%>> 
                <%
					if(session.getAttribute("accessId") == null){
						out.println("");
					}else{
						out.println(session.getAttribute("accessId"));
					}
			  %>
                </div><br>
              <div class="col-4 col-12-xsmall" style="">請假日期：<br><input type="date" name="takeOverdate" id="takeOverdate" placeholder="請假日期"><br>
                <br>
                <div class="col-6"> 請假類別：<select name="demo-category" id="demo-category">
                    <option value="病假">病假 </option>
                    <option value="事假">事假</option>
                    <option value="公假">公假 </option>
                    <option value="例假">例假 </option>
                    <option value="喪假">喪假 </option>
                    <option value="育嬰假">育嬰假 </option>
                    <option value="特休">特休 </option>
                    <option value="育嬰假">育嬰假 </option>
                    <option value="婚假">婚假 </option>
                    <option value="公傷假">公傷假 </option>
                  </select>
                  <br>
                  <div type="">
                    <div class="請假原因">請假原因： <textarea name="請假原因" id="請假原因" value="" placeholder="請假原因"></textarea>
                      <br>
                      <div class="col-4 col-12-xsmall" style="">填寫日期: <br><input type="date" id="nameID" name="nameID" value="" placeholder="填寫日期"><br><br>
                        <br><button onclick="setTimeout(myFunction, 3000);">送出</button>

                           <script>
                             function myFunction() {
                               alert('已成功送出請假申請');
                              }
                           </script> <input type="reset">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </h3>
          <p id="demo">Mon Jun 07 2021 17:01:54 GMT+0800 (CST)</p>
          <script style=""> var d = new Date();
             document.getElementById("demo").innerHTML = d;
          </script>
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