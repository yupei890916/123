<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

//�פJ���ѡA�ݭק�
<html>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\user\\eclipse-workspace\\FPM\\WebContent\\FPM.accdb;");
	Statement smt= con.createStatement();
	String �կZ��� = new String(request.getParameter("�կZ���"));
	String �i�կZ���uID = new String(request.getParameter("�i�կZ���uID"));
	String ��g��� = new String(request.getParameter("��g���"));
	try{
		smt.executeUpdate("INSERT INTO �կZ (���կZ���uID, �կZ���,�i�կZ���uID,��g���) VALUES('"+���կZ���uID+"','"+�կZ���+"','"+�i�կZ���uID+"','"+��g���+"')");
		con.close();
	}
	%>
</body>
</html>