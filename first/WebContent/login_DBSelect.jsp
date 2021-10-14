<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>


<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
    Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\user\\eclipse-workspace\\FPM\\WebContent\\FPM.accdb;");
	Statement smt= con.createStatement();
	String getMemberData = "SELECT * FROM 員工 WHERE 員工ID='"+
			request.getParameter("memberId")+"' AND 身分證='" +
			request.getParameter("memberPwd")+"'";
	ResultSet members = smt.executeQuery(getMemberData);
	if(members.next()){
		session.setAttribute("accessId",request.getParameter("memberId"));
		//session.setMaxInactiveInterval(20); 自動登出
		response.sendRedirect("index.jsp");
	}else
		response.sendRedirect("login.jsp?status=loginerror");

%>