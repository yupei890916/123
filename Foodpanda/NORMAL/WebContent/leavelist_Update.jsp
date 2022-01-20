<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>

<%

Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement st =con.createStatement();
String sql ="select * from fpm.takeover";
ResultSet rs = st.executeQuery(sql);

String leavedate1 = new String(request.getParameter("leavedate"));
String leavecategory1 = new String(request.getParameter("leavecategory"));
String leavereason1 = new String(request.getParameter("leavereason"));
String Date1 = new String(request.getParameter("Date"));
st.executeUpdate("UPDATE takeOver SET leavedate ='" + leavedate1+"', leavecategory ='" + leavecategory1+"',leavereason='"+leavereason1+"', Date ='" + Date1 +"' WHERE memberId ='" + request.getParameter("memberId")+"' ");
response.sendRedirect("member.jsp?memberId="+request.getParameter("memberId")+"");
%>