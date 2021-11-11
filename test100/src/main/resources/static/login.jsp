<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

<%

	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\user\\eclipse-workspace\\FPM\\WebContent\\FPM.accdb;");
	Statement smt= con.createStatement();
	String getpaperdata = "SELECT * FROM 員工 WHERE 員工ID='"+
			request.getParameter("memberId")+"' AND 身分證='" +
			request.getParameter("memberPwd")+"'";
	ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		session.setAttribute("accessId",request.getParameter("memberId"));
		response.sendRedirect("index.jsp");
	}else
		out.println("帳號密碼不符！請重新登入");

%>

<html>

<head>
  <title>FOOODPANDA MARKET 熊貓超市 登入</title>
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
            <h2>員工登入</h2>
          </header>
        </section>
        <form class="login100-form validate-form flex-sb flex-w" action="login_DBSelect.jsp">
					 
					<span class="login100-form-title p-b-53">
				        <%if (request.getParameter("status")!="" && request.getParameter("status")!=null){
							if(request.getParameter("status").equals("loginerror")){ %>
							<p><font color="red">帳號或密碼錯誤，請重新輸入!</font></p>
						<%}else{} }%>					
					</span>   
				  
					<div class="p-t-31 p-b-9">
						<span class="txt1">員工ID</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="請輸入員工ID">
						<input class="input100" type="text" name="memberId" required >
						<span class="focus-input100"></span>
					</div>
					
					<div class="p-t-13 p-b-9">
						<span class="txt1">密碼</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "請輸入密碼">
						<input class="input100" type="password" name="memberPwd"  required>
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							登入
						</button>
					</div>
				</form>
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