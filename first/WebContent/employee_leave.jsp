<%@ page language="java" contentType="text/html; charset=BIG5"
pageEncoding="BIG5"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
  <title>FOOODPANDA MARKET ���߶W�� ���u�ݱƥ�t��</title>
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
sql =conn.prepareStatement("select * from staff where ���uID='"+username+"' and ������='"+pwd+"' and ¾��='"+position+"'");

rs=sql.executeQuery();
%>
�� �Ш̾ڱƯZ�W�h�A�C�H�C��йw������15�ѡC<br>
�� �U�Z�W�Z�H�ơG���Z�ܤ֤���B�߯Z�ܤ֤���B�j�]�ܤ֤G��A��ڥ𰲥ѩ��Ҷ��ǽs�Ʋ��͡C<br>
�� �C�~6/30�B12/31���s�����u���𰲶��ǡA�ä��i�󤽧i��C<br><br>
<form method="post" action="employee_process.jsp">
 <table>
  <tr>
    <td><div align="center">�w�ƥ�1</div></td>
    <td><div align="center">�w�ƥ�2</div></td>
    <td><div align="center">�w�ƥ�3</div></td>
  </tr>
  <tr>
    <td><p><input type="text" id="datepicker1" name="drawbreak1"></p></td>
    <td><p><input type="text" id="datepicker2"></p></td>
    <td><p><input type="text" id="datepicker3"></p></td>
  </tr>
  <tr>
    <td><div align="center">�w�ƥ�4</div></td>
    <td><div align="center">�w�ƥ�5</div></td>
    <td><div align="center">�w�ƥ�6</div></td>
  </tr>
  <tr>
    <td><p><input type="text" id="datepicker4"></p></td>
    <td><p><input type="text" id="datepicker5"></p></td>
    <td><p><input type="text" id="datepicker6"></p></td>
  </tr>
  <tr>
    <td><div align="center">�w�ƥ�7</div></td>
    <td><div align="center">�w�ƥ�8</div></td>
    <td><div align="center">�w�ƥ�9</div></td>
  </tr>
  <tr>
    <td><p><input type="text" id="datepicker7"></p></td>
    <td><p><input type="text" id="datepicker8"></p></td>
    <td><p><input type="text" id="datepicker9"></p></td>
  </tr>
  <tr>
    <td><div align="center">�w�ƥ�10</div></td>
    <td><div align="center">�w�ƥ�11</div></td>
    <td><div align="center">�w�ƥ�12</div></td>
  </tr>
  <tr>
    <td><p><input type="text" id="datepicker10"></p></td>
    <td><p><input type="text" id="datepicker11"></p></td>
    <td><p><input type="text" id="datepicker12"></p></td>
  </tr>
   <tr>
    <td><div align="center">�w�ƥ�13</div></td>
    <td><div align="center">�w�ƥ�14</div></td>
    <td><div align="center">�w�ƥ�15</div></td>
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