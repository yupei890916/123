<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<head>
  <title>FOOODPANDA MARKET ���߶W�� �ӤH���</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>

<body class="is-preload">
  <div id="wrapper">
    <%
     String name1=request.getParameter("memberId");
     out.print("name:"+name1);  
    %>
    <%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "lovelove520");
	Statement st=conn.createStatement();
	String sql = "SELECT * FROM staff WHERE memberId ='" +name1+"'";
	ResultSet rs = st.executeQuery(sql);
	rs.next();
	%>
    <div id="main">
      <div class="inner">
        <%@include file ="header.jsp" %>
         <section>
          <header class="major">
            <h2>���߶W�� �ק�ӤH���</h2>
          </header>
           <form method="post" action="memberEdit_update.jsp">
           <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-4 col-12-xsmall col-md-1"> ���uID : <input type="text" value="<%=request.getParameter("name1")%>" readonly="readonly"></div>
              <div class="col-4 col-12-xsmall col-md-1"> �m�W�G<input type="text" name=name value="<%=rs.getString("name")%>"></div>
              <div class="col-4"> �Z�O�G<input type="text" name=shift value="<%=rs.getString("shift")%>"></div>
              <div class="col-4"> ¾�١G<input type="text" name=jobtitle value="<%=rs.getString("jobtitle")%>"></div>
              <div class="col-4"> �~��G<input type="text" name=salary value="<%=rs.getString("salary")%>"></div>
              <div class="col-4"> �ʧO�G<input type="text" name=gender value="<%=rs.getString("gender")%>" readonly="readonly"></div>
              <div class="col-4 col-12-xsmall"> �X�ͦ~���G<input type="text" name=birthday value="<%=rs.getString("birthday")%>" readonly="readonly"></div>
              <div class="col-4 col-12-xsmall"> �����Ҧr���G<input type="text" name=identitycard value="<%=rs.getString("identitycard")%>" readonly="readonly"></div>
              <div class="col-4 col-12-xsmall"> ������X�G<input type="text" name=phonenumber value="<%=rs.getString("phonenumber")%>"></div>
              <div class="col-4 col-12-xsmall"> Email�G<input type="text" name=email value="<%=rs.getString("email")%>"></div>
              <div class="col-4 col-12-xsmall"> LINE ID�G<input type="text" name=lineID value="<%=rs.getString("lineID")%>"></div>
              <div class="col-4 col-12-xsmall"> ��}�G <input type="text" name=address value="<%=rs.getString("address")%>"></div>
              <div class="col-4 col-12-xsmall"> ����p���H�G<input type="text" name=ec value="<%=rs.getString("ec")%>"></div>
              <div class="col-4 col-12-xsmall"> ����p���H�q�ܡG<input type="text" name=ecrelationships value="<%=rs.getString("ecrelationships")%>"></div>
              <div class="col-4 col-12-xsmall"> ����p���H���Y�G<input type="text" name=ecphonenumber value="<%=rs.getString("ecphonenumber")%>"></div>
              <div class="col-4 col-12-xsmall"> �b¾��G<input type="text" name=arrivalday value="<%=rs.getString("arrivalday")%>" readonly="readonly"></div>
              <div class="col-4 col-12-xsmall"> ��¾��G<input type="text" name=turnoverdate value="<%=rs.getString("turnoverdate")%>"></div>
              <div class="col-4 col-12-xsmall"> �Ƶ��G<input type="text" name=remark value="<%=rs.getString("remark")%>"></div>
              <br><font size="4"><input type="submit" value="����" class="primary"></font>
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