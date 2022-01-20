<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<!DOCTYPE html>
<html>
<body>
<%
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
st.executeUpdate("UPDATE staff SET memberID ='" +memberID+"', name ='" +name+"', shift ='" +shift+"', jobtitle ='" +jobtitle+"', gender ='" +gender+"', birthday ='" +birthday+"', identitycard ='" +identitycard+"', phonenumber ='" +phonenumber+"', email ='" +email+"', lineID ='" +lineID+"', address ='" +address+"', ec ='" +ec+"', ecphonenumber ='" +ecphonenumber+"', ecrelationships ='" +ecrelationships+"', arrivalday ='" +arrivalday+"', turnoverdate ='" +turnoverdate+"', remark ='" +remark+"' WHERE employee_ID ='" + request.getParameter("memberID")+"' ");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("memberList.jsp");
%>
</body>
</html>