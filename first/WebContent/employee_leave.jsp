<%@ page language="java" contentType="text/html; charset=BIG5"
pageEncoding="BIG5"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
  <title>FOOODPANDA MARKET 熊貓超市 員工端排休系統</title>
  <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css">
  <script src="assets/js/calender.js"></script>
</head>
<body>
<% 
String driver = "com.mysql.jdbc.Driver";  
String url = "jdbc:mysql://127.0.0.1:3306/fpm";  
String use = "root";   
String password = "lovelove520";  
Class.forName("com.mysql.jdbc.Driver");  

conn= DriverManager.getConnection(url,use,password);  
sql =conn.prepareStatement("select * from staff where 員工ID='"+username+"' and 身份證='"+pwd+"' and 職稱='"+position+"'");

rs=sql.executeQuery();
%>
★ 請依據排班規則，每人每月請預先劃休15天。<br>
★ 各班上班人數：早班至少六位、晚班至少五位、大夜至少二位，實際休假由抽籤順序編排產生。<br>
★ 每年6/30、12/31重新抽籤優先休假順序，並公告於公告欄。<br><br>
<form method="post" action="employee_process.jsp">
 <table>
  <tr>
    <td><div align="center">預排休1</div></td>
    <td><div align="center">預排休2</div></td>
    <td><div align="center">預排休3</div></td>
  </tr>
  <tr>
    <td><p><input type="text" id="datepicker1" name="drawbreak1"></p></td>
    <td><p><input type="text" id="datepicker2"></p></td>
    <td><p><input type="text" id="datepicker3"></p></td>
  </tr>
  <tr>
    <td><div align="center">預排休4</div></td>
    <td><div align="center">預排休5</div></td>
    <td><div align="center">預排休6</div></td>
  </tr>
  <tr>
    <td><p><input type="text" id="datepicker4"></p></td>
    <td><p><input type="text" id="datepicker5"></p></td>
    <td><p><input type="text" id="datepicker6"></p></td>
  </tr>
  <tr>
    <td><div align="center">預排休7</div></td>
    <td><div align="center">預排休8</div></td>
    <td><div align="center">預排休9</div></td>
  </tr>
  <tr>
    <td><p><input type="text" id="datepicker7"></p></td>
    <td><p><input type="text" id="datepicker8"></p></td>
    <td><p><input type="text" id="datepicker9"></p></td>
  </tr>
  <tr>
    <td><div align="center">預排休10</div></td>
    <td><div align="center">預排休11</div></td>
    <td><div align="center">預排休12</div></td>
  </tr>
  <tr>
    <td><p><input type="text" id="datepicker10"></p></td>
    <td><p><input type="text" id="datepicker11"></p></td>
    <td><p><input type="text" id="datepicker12"></p></td>
  </tr>
   <tr>
    <td><div align="center">預排休13</div></td>
    <td><div align="center">預排休14</div></td>
    <td><div align="center">預排休15</div></td>
  </tr>
  <tr>
    <td><p><input type="text" id="datepicker13"></p></td>
    <td><p><input type="text" id="datepicker14"></p></td>
    <td><p><input type="text" id="datepicker15"></p></td>
  </tr>
  <tr>
  <td><input type="submit" value="submit"></td>
  </tr>
</table>

</form>
 
</body>
</html>