<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/test";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String employee_ID=request.getParameter("employee_ID");
String drawbreak1=request.getParameter("drawbreak1");
String drawbreak2=request.getParameter("drawbreak2");
String drawbreak3=request.getParameter("drawbreak3");
String drawbreak4=request.getParameter("drawbreak4");
String drawbreak5=request.getParameter("drawbreak5");
String drawbreak6=request.getParameter("drawbreak6");
String drawbreak7=request.getParameter("drawbreak7");
String drawbreak8=request.getParameter("drawbreak8");
String drawbreak9=request.getParameter("drawbreak9");
String drawbreak10=request.getParameter("drawbreak10");
String drawbreak11=request.getParameter("drawbreak11");
String drawbreak12=request.getParameter("drawbreak12");
String drawbreak13=request.getParameter("drawbreak13");
String drawbreak14=request.getParameter("drawbreak14");
String drawbreak15=request.getParameter("drawbreak15");

if(id != "1")
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update schedule set id=?,employee_ID=?,drawbreak1=?,drawbreak2=?,drawbreak3=?,drawbreak4=?,drawbreak5=?,drawbreak6=?,drawbreak7=?,drawbreak8=?,drawbreak9=?,drawbreak10=?,drawbreak11=?,drawbreak12=?,drawbreak13=?,drawbreak14=?,drawbreak15=? where id = 1";
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, employee_ID);
ps.setString(3, drawbreak1);
ps.setString(4, drawbreak2);
ps.setString(5, drawbreak3);
ps.setString(6, drawbreak4);
ps.setString(7, drawbreak5);
ps.setString(8, drawbreak6);
ps.setString(9, drawbreak7);
ps.setString(10, drawbreak8);
ps.setString(11, drawbreak9);
ps.setString(12, drawbreak10);
ps.setString(13, drawbreak11);
ps.setString(14, drawbreak12);
ps.setString(15, drawbreak13);
ps.setString(16, drawbreak14);
ps.setString(17, drawbreak15);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>