<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET ���߶W�� �կZ</title>
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
            <h2>�կZ�ӽг�</h2>
          </header>
          
            <font color="#000000" size="4">
            </font>
            <div class=" gtr-uniform">
              <font color="#000000" size="4">
                 <div class="col-3 col-12-xsmall"> ���կZ���uID�G <href="member.jsp?memberId=<%=session.getAttribute("accessId")%>> 
                <%
					if(session.getAttribute("accessId") == null){
						out.println("");
					}else{
						out.println(session.getAttribute("accessId"));
					}
			  %>
                </div><br>
                  <div class="takeOverdate"> �կZ����G<input type="date" name="�կZ���" id="takeOverdate" placeholder="�կZ���"><br>
                    </div><br>
                    <div class="nameID">�i�կZ���uID�G<input type="col-4 col-5-xsmall" id="nameID" name="�i�կZ���uID" value="" placeholder="�i�կZ���uID" maxlength="10" size="20"></div><br><br>
                      <div class="date">��g����G<input type="date" value="" id="��g���" name="��g���" placeholder="��g���"></div><br><br>
                         <br><button onclick="setTimeout(myFunction, 3000);">�e�X</button>

                           <script>
                             function myFunction() {
                               alert('�w���\�e�X�կZ�ӽ�');
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