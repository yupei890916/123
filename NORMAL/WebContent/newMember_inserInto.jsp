<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
String memberID=request.getParameter("���uID");
String name=request.getParameter("�m�W");
String shift=request.getParameter("�Z�O");
String jobtitle=request.getParameter("¾��");
String gender=request.getParameter("�ʧO");
String birthday=request.getParameter("�X��");
String identitycard=request.getParameter("������");
String phonenumber=request.getParameter("���");
String email=request.getParameter("Email");
String lineID=request.getParameter("LINE");
String address=request.getParameter("��}");
String ec=request.getParameter("����p���H");
String ecphonenumber=request.getParameter("����p���H�q��");
String ecrelationships=request.getParameter("����p���H���Y");
String arrivalday=request.getParameter("�b¾��");
String turnoverdate=request.getParameter("��¾��");
String remark=request.getParameter("�Ƶ�");
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