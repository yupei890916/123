<%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
pageEncoding="BIG5"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String title = request.getParameter("title");
    String Publisher = request.getParameter("ID");
    String date = request.getParameter("date");
    String message = request.getParameter("message");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "betty62411");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into notice (title,ID,date,message)");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>