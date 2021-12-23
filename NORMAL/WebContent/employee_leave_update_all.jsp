<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "kevin0508");
Statement st=conn.createStatement();
String sql = "SELECT * FROM schedule left join staff on schedule.employee_Id = staff.memberID WHERE employee_Id ='" +request.getParameter("memberID")+"'";
ResultSet rs = st.executeQuery(sql);
rs.next();
%>
<form action="employee_leave_update_process.jsp?employee_Id=<%=request.getParameter("employee_Id")%>" method="post" name="form" >


            <input type="text" name="drawbreak1" value="<%=rs.getString("drawbreak1") %>" /><br>
            <input type="text" name="drawbreak2" value="<%=rs.getString("drawbreak2") %>"/><br>
            <input type="text" name="drawbreak3" value="<%=rs.getString("drawbreak3") %>"/><br><br>

<input type="submit" name=submitButton value="½T»{­×§ï" />
</form>
<h1>Update data from database in jsp</h1>
</body>
</html>