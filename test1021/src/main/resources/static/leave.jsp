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
          <form method="post" action="#">
            <font color="#000000" size="4">
              <div class=" gtr-uniform">
                <div class="col-3 col-12-xsmall"> �а����uID�G <href="member.jsp?memberId=<%=session.getAttribute("accessId")%>> 
                <%
					if(session.getAttribute("accessId") == null){
						out.println("");
					}else{
						out.println(session.getAttribute("accessId"));
					}
			  %>
                </div><br>
                <div class="col-4 col-12-xsmall"> �а�����G<br><input type="date" name="�а����" id="�а����">
                </div><br>
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
                </div><br>
                <!-- Break -->
                <div class="col-5">�а���]�G <textarea name="demo-message" id="demo-message" placeholder="�а���]" rows="4"></textarea>
                </div><br> ��g����G<br><input id="��g���" type="date" name="��g���" placeholder="��g���" value="">
                <br>
                <div class="col-5">
                  <ul class="actions">
                  </ul>
                </div>
              </div>
            </font>
          </form>
          <br><input type="submit" value="�e�X">
          <p id="demo">Mon May 31 2021 16:56:00 GMT+0800 (CST)</p>
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