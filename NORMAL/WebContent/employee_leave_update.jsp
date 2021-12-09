<%@ page language="java" contentType="text/html; charset=BIG5"
pageEncoding="BIG5"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "fpm";
String userid = "root";
String password = "kevin0508";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from schedule where id = '1'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data</h1>
<form method="post" action="employee_leave_update_process.jsp">
 <table>
  <tr>
    <td><div align="center">預排休1</div></td>
    <td><div align="center">預排休2</div></td>
    <td><div align="center">預排休3</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker1" name="drawbreak1" value="<%=resultSet.getString("drawbreak1") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker2" name="drawbreak2" value="<%=resultSet.getString("drawbreak2") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker3" name="drawbreak3" value="<%=resultSet.getString("drawbreak3") %>"></td>
  </tr>
  <tr>
    <td><div align="center">預排休4</div></td>
    <td><div align="center">預排休5</div></td>
    <td><div align="center">預排休6</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker4" name="drawbreak4" value="<%=resultSet.getString("drawbreak4") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker5" name="drawbreak5" value="<%=resultSet.getString("drawbreak5") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker6" name="drawbreak6" value="<%=resultSet.getString("drawbreak6") %>"></td>
  </tr>
  <tr>
    <td><div align="center">預排休7</div></td>
    <td><div align="center">預排休8</div></td>
    <td><div align="center">預排休9</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker7" name="drawbreak7" value="<%=resultSet.getString("drawbreak7") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker8" name="drawbreak8" value="<%=resultSet.getString("drawbreak8") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker9" name="drawbreak9" value="<%=resultSet.getString("drawbreak9") %>"></td>
  </tr>
  <tr>
    <td><div align="center">預排休10</div></td>
    <td><div align="center">預排休11</div></td>
    <td><div align="center">預排休12</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker10" name="drawbreak10" value="<%=resultSet.getString("drawbreak10") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker11" name="drawbreak11" value="<%=resultSet.getString("drawbreak11") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker12" name="drawbreak12" value="<%=resultSet.getString("drawbreak12") %>"></td>
  </tr>
   <tr>
    <td><div align="center">預排休13</div></td>
    <td><div align="center">預排休14</div></td>
    <td><div align="center">預排休15</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker13" name="drawbreak13" value="<%=resultSet.getString("drawbreak13") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker14" name="drawbreak14" value="<%=resultSet.getString("drawbreak14") %>"></td>
    <td><input type="text" placeholder="請選擇預畫休日期" id="datepicker15" name="drawbreak15" value="<%=resultSet.getString("drawbreak15") %>"></td>
  </tr>
  <tr>
    <td></td>
    <td><div align="center"><input type="submit" value="提交修改申請"></div></td>
    <td></td>
  </tr>
</table>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>