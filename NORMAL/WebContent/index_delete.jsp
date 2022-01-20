<%@page import="com.mysql.cj.x.protobuf.MysqlxSql.StmtExecute"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
pageEncoding="BIG5"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String title = request.getParameter("title");
    String publisher = request.getParameter("publisher");
    String date = request.getParameter("date");
    String message = request.getParameter("message");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "betty62411");
Statement st=conn.createStatement();

int i=st.executeUpdate("DELETE FROM notice WHERE title = <%=resultSet.getString("title")%>");
out.println("Data is successfully inserted!");
response.sendRedirect("indexList.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>