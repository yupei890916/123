<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>


<!DOCTYPE html>
<html>
<body>
<%
String name = new String(request.getParameter("name"));
String shift = new String(request.getParameter("shift"));
String jobtitle = new String(request.getParameter("jobtitle"));
String salary = new String(request.getParameter("salary"));
String gender = new String(request.getParameter("gender"));
String birthday = new String(request.getParameter("birthday"));
String identitycard = new String(request.getParameter("identitycard"));
String phonenumber = new String(request.getParameter("phonenumber"));
String email = new String(request.getParameter("email"));
String lineID = new String(request.getParameter("lineID"));
String address = new String(request.getParameter("address"));
String ec = new String(request.getParameter("ec"));
String ecphonenumber = new String(request.getParameter("ecphonenumber"));
String ecrelationships = new String(request.getParameter("ecrelationships"));
String arrivalday = new String(request.getParameter("arrivalday"));
String turnoverdate = new String(request.getParameter("turnoverdate"));
String remark = new String(request.getParameter("remark"));
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "lovelove520");
Statement st=conn.createStatement();
st.executeUpdate("UPDATE staff SET  name ='"+name+"', shift ='" +shift+"', jobtitle ='" +jobtitle+"', salary ='" +salary+"',  phonenumber ='" +phonenumber+"', email ='" +email+"', lineID ='" +lineID+"', address ='" +address+"', ec ='" +ec+"', ecphonenumber ='" +ecphonenumber+"', ecrelationships ='" +ecrelationships+"',  turnoverdate ='" +turnoverdate+"', remark ='" +remark+"' WHERE memberID ='" + request.getParameter("memberID")+"' ");
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