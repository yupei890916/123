<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>FOOODPANDA MARKET ���߶W�� �ӤH���</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>
<body class="is-preload">
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
    Connection con=DriverManager.getConnection("jdbc:ucanaccess://"C:\\Users\\user\\eclipse-workspace\\FPM\\WebContent\\FPM.accdb";");
	//out.println("Con= "+con);
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM ���u left join position on leelab.positionId=position.positionId WHERE ���uID ='" +request.getParameter("memberId")+"'";
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
	%>
<!-- <form action="memberEdit.jsp" method="post"> -->
	<!-- Wrapper -->
  <div id="wrapper">
    <!-- Main -->
    <div id="main">
      <div class="inner">
        <!-- Header -->
        <%@include file ="header.jsp" %>
        <!-- Banner -->
        <section>
          <header class="major">
            <h2>���߶W�� �ӤH���</h2>
          </header>
        </section>
        <form method="post" action="#">
          <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-6 col-12-xsmall"> ���uID�G <input type="text" name="demo-name" id="demo-name" value="" placeholder="���uID">
              </div>
              <div class="col-6 col-12-xsmall"> �m�W�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="�m�W">
              </div>
              <div class="col-6"> �Z�O�G<select name="demo-category" id="demo-category">
                  <option value="1">���Z</option>
                  <option value="1">�߯Z</option>
                  <option value="1">�j�]�Z</option>
                </select>
              </div>
              <div class="col-6"> ¾�١G<select name="demo-category" id="demo-category">
                  <option value="1">PT</option>
                  <option value="1">FT</option>
                  <option value="1">SUP</option>
                </select>
              </div>
              <div class="col-6"> �ʧO�G<select name="demo-category" id="demo-category">
                  <option value="1">�k</option>
                  <option value="1">�k</option>
                </select>
              </div>
              <div class="col-6 col-12-xsmall"> �X�ͦ~���G<br><input id="email" type="date" name="demo-email" placeholder="�X�ͦ~���" value="">
              </div>
              <div class="col-6 col-12-xsmall"> �����Ҧr���G<input type="email" name="demo-email" id="demo-email" value="" placeholder="�����Ҧr��">
              </div>
              <div class="col-6 col-12-xsmall"> ������X�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="������X">
              </div>
              <div class="col-6 col-12-xsmall"> Email�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="Email">
              </div>
              <div class="col-6 col-12-xsmall"> LINE ID�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="LINE ID">
              </div>
              <div class="col-6 col-12-xsmall"> ��}�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="��}">
              </div>
              <div class="col-6 col-12-xsmall"> ����p���H�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="����p���H">
              </div>
              <div class="col-6 col-12-xsmall"> ����p���H���Y�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="����p���H���Y">
              </div>
              <div class="col-6 col-12-xsmall"> ����p���H�q�ܡG<input type="email" name="demo-email" id="demo-email" value="" placeholder="����p���H�q��">
              </div>
              <!-- Break -->
              <div class="col-12">
                <textarea name="demo-message" id="demo-message" placeholder="�Ƶ�" rows="6"></textarea>
              </div>
              <!-- Break -->
              <div class="col-12">
                <ul class="actions">
                  <li><input type="submit" value="Send Message" class="primary"></li>
                  <li><input type="reset" value="Reset"></li>
                </ul>
              </div>
            </div>
          </font>
        </form>
      </div>
      <!-- Sidebar -->
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