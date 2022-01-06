<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
String memberID=request.getParameter("memberID");
String name=request.getParameter("name");
String shift=request.getParameter("shift");
String jobtitle=request.getParameter("jobtitle");
String gender=request.getParameter("gender");
String birthday=request.getParameter("birthday");
String identitycard=request.getParameter("identitycard");
String phonenumber=request.getParameter("phonenumber");
String email=request.getParameter("email");
String lineID=request.getParameter("lineID");
String address=request.getParameter("address");
String ec=request.getParameter("ec");
String ecphonenumber=request.getParameter("ecphonenumber");
String ecrelationships=request.getParameter("ecrelationships");
String arrivalday=request.getParameter("arrivalday");
String turnoverdate=request.getParameter("turnoverdate");
String remark=request.getParameter("remark");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "lovelove520");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into staff (memberID,jobtitle,shift,name,gender,birthday,identitycard,phonenumber,email,address,ec,ecphonenumber,ecrelationships,arrivalday,turnoverdate,remark)values('"+memberID+"','"+jobtitle+"','"+shift+"','"+name+"','"+gender+"','"+birthday+"','"+identitycard+"','"+phonenumber+"','"+email+"','"+address+"','"+ec+"','"+ecphonenumber+"','"+ecrelationships+"','"+arrivalday+"','"+turnoverdate+"','"+remark+"')");
response.sendRedirect("memberList.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
