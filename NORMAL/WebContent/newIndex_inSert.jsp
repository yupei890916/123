<%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
pageEncoding="BIG5"%>
<%@page import="java.sql.*,java.util.*"%>

<%  request.setCharacterEncoding("BIG5");
    String title = request.getParameter("title");
    String publisher = request.getParameter("publisher");
    String date = request.getParameter("date");
    String message = request.getParameter("message");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "lovelove520");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into notice (title,publisher,date,message) values ('"+request.getParameter("title")+"','"+request.getParameter("publisher")+"','"+request.getParameter("date")+"','"+request.getParameter("message")+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("index.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>