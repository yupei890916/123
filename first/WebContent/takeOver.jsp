<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 調班</title>
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
            <h2>調班申請單</h2>
          </header>
          
            <font color="#000000" size="4">
            </font>
            <div class=" gtr-uniform">
              <font color="#000000" size="4">
                 <div class="col-3 col-12-xsmall"> 須調班員工ID： <href="member.jsp?memberId=<%=session.getAttribute("accessId")%>> 
                <%
					if(session.getAttribute("accessId") == null){
						out.println("");
					}else{
						out.println(session.getAttribute("accessId"));
					}
			  %>
                </div><br>
                  <div class="takeOverdate"> 調班日期：<input type="date" name="調班日期" id="takeOverdate" placeholder="調班日期"><br>
                    </div><br>
                    <div class="nameID">可調班員工ID：<input type="col-4 col-5-xsmall" id="nameID" name="可調班員工ID" value="" placeholder="可調班員工ID" maxlength="10" size="20"></div><br><br>
                      <div class="date">填寫日期：<input type="date" value="" id="填寫日期" name="填寫日期" placeholder="填寫日期"></div><br><br>
                         <br><button onclick="setTimeout(myFunction, 3000);">送出</button>

                           <script>
                             function myFunction() {
                               alert('已成功送出調班申請');
                              }
                           </script> <input type="reset">
                        
                      </div>
              </font>
            </div>
         </font>
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