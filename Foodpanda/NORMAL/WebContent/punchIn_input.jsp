<%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
pageEncoding="BIG5"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String gohours = request.getParameter("gohours");
    String resthours = request.getParameter("resthours");
    String restoffhours = request.getParameter("restoffhours");
    String afterhours = request.getParameter("afterhours");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "betty62411");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into punchln (gohours,resthours,restoffhours,afterhours) values ('"+request.getParameter("gohours")+"','"+request.getParameter("resthours")+"','"+request.getParameter("restoffhours")+"','"+request.getParameter("afterhours")+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("punchIn.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>