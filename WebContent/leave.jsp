<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET ���߶W�� �а���</title>
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
            <h2>�а��ӽг�</h2>
          </header>
          <h3>
            <div class="text">���կZ���uID�G <href="member.jsp?memberId=<%=session.getAttribute("accessId")%>> 
                <%
					if(session.getAttribute("accessId") == null){
						out.println("");
					}else{
						out.println(session.getAttribute("accessId"));
					}
			  %>
                </div><br>
              <div class="col-4 col-12-xsmall" style="">�а�����G<br><input type="date" name="takeOverdate" id="takeOverdate" placeholder="�а����"><br>
                <br>
                <div class="col-6"> �а����O�G<select name="demo-category" id="demo-category">
                    <option value="�f��">�f�� </option>
                    <option value="�ư�">�ư�</option>
                    <option value="����">���� </option>
                    <option value="�Ұ�">�Ұ� </option>
                    <option value="�ల">�ల </option>
                    <option value="�|����">�|���� </option>
                    <option value="�S��">�S�� </option>
                    <option value="�|����">�|���� </option>
                    <option value="�B��">�B�� </option>
                    <option value="���˰�">���˰� </option>
                  </select>
                  <br>
                  <div type="">
                    <div class="�а���]">�а���]�G <textarea name="�а���]" id="�а���]" value="" placeholder="�а���]"></textarea>
                      <br>
                      <div class="col-4 col-12-xsmall" style="">��g���: <br><input type="date" id="nameID" name="nameID" value="" placeholder="��g���"><br><br>
                        <br><button onclick="setTimeout(myFunction, 3000);">�e�X</button>

                           <script>
                             function myFunction() {
                               alert('�w���\�e�X�а��ӽ�');
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