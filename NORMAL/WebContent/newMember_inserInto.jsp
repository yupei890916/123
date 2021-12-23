<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
String memberID=request.getParameter("員工ID");
String name=request.getParameter("姓名");
String shift=request.getParameter("班別");
String jobtitle=request.getParameter("職稱");
String gender=request.getParameter("性別");
String birthday=request.getParameter("出生");
String identitycard=request.getParameter("身分證");
String phonenumber=request.getParameter("手機");
String email=request.getParameter("Email");
String lineID=request.getParameter("LINE");
String address=request.getParameter("住址");
String ec=request.getParameter("緊急聯絡人");
String ecphonenumber=request.getParameter("緊急聯絡人電話");
String ecrelationships=request.getParameter("緊急聯絡人關係");
String arrivalday=request.getParameter("在職日");
String turnoverdate=request.getParameter("離職日");
String remark=request.getParameter("備註");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "lovelove520");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into staff (memberID,jobtitle,shift,name) values('"+memberID+"','"+jobtitle+"','"+shift+"','"+name+"')");
response.sendRedirect("memberList.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>