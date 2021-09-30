<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

//匯入失敗，待修改
<html>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\user\\eclipse-workspace\\FPM\\WebContent\\FPM.accdb;");
	Statement smt= con.createStatement();
	String 調班日期 = new String(request.getParameter("調班日期"));
	String 可調班員工ID = new String(request.getParameter("可調班員工ID"));
	String 填寫日期 = new String(request.getParameter("填寫日期"));
	try{
		smt.executeUpdate("INSERT INTO 調班 (須調班員工ID, 調班日期,可調班員工ID,填寫日期) VALUES('"+須調班員工ID+"','"+調班日期+"','"+可調班員工ID+"','"+填寫日期+"')");
		con.close();
	}
	%>
</body>
</html>