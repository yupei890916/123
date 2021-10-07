<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<html>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String memberid = new String(request.getParameter("memberid"));
	String memberpwd = new String(request.getParameter("memberpwd"));
	String sql;
	sql="INSERT INTO member VALUES('"+memberid+"','"+memberpwd+"')";
	smt.execute(sql);
	con.close();
	response.sendRedirect("logina.jsp");
	%>
</body>
</html>
