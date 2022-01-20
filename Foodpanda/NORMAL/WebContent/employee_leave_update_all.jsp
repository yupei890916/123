<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
  <title>FOOODPANDA MARKET 熊貓超市 員工修改畫休</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
  <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css"> 
  <script src="assets/js/calender.js"></script>
</head>
<body class="is-preload">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "kevin0508");
Statement st=conn.createStatement();
String sql = "SELECT * FROM schedule left join staff on schedule.employee_Id = staff.memberID WHERE employee_Id ='" +request.getParameter("employee_ID")+"'";
ResultSet rs = st.executeQuery(sql);
rs.next();
%>
<!-- Wrapper -->
  <div id="wrapper">
    <!-- Main -->
    <div id="main">
      <div class="inner">
        <!-- Header -->
        <%@include file ="header.jsp" %>
         <section>
          <header class="major">
            <h2>熊貓超市 - 修改畫休</h2>
<form action="employee_leave_update_process.jsp?employee_ID=<%=request.getParameter("employee_ID")%>" method="post" name="form" >
<table>
  <tr>
    <td><%=rs.getString("employee_ID") %></td>
  </tr>
  <tr>
    <td><div align="center">預排休1</div></td>
    <td><div align="center">預排休2</div></td>
    <td><div align="center">預排休3</div></td>
  </tr>
  <tr>
    <td><input type="text" id="datepicker1" name="drawbreak1" value="<%=rs.getString("drawbreak1") %>"></td>
    <td><input type="text" id="datepicker2" name="drawbreak2" value="<%=rs.getString("drawbreak2") %>"></td>
    <td><input type="text" id="datepicker3" name="drawbreak3" value="<%=rs.getString("drawbreak3") %>"></td>
  </tr>
  <tr>
    <td><div align="center">預排休4</div></td>
    <td><div align="center">預排休5</div></td>
    <td><div align="center">預排休6</div></td>
  </tr>
  <tr>
    <td><input type="text" id="datepicker4" name="drawbreak4" value="<%=rs.getString("drawbreak4") %>"></td>
    <td><input type="text" id="datepicker5" name="drawbreak5" value="<%=rs.getString("drawbreak5") %>"></td>
    <td><input type="text" id="datepicker6" name="drawbreak6" value="<%=rs.getString("drawbreak6") %>"></td>
  </tr>
  <tr>
    <td><div align="center">預排休7</div></td>
    <td><div align="center">預排休8</div></td>
    <td><div align="center">預排休9</div></td>
  </tr>
  <tr>
    <td><input type="text" id="datepicker7" name="drawbreak7" value="<%=rs.getString("drawbreak7") %>"></td>
    <td><input type="text" id="datepicker8" name="drawbreak8" value="<%=rs.getString("drawbreak8") %>"></td>
    <td><input type="text" id="datepicker9" name="drawbreak9" value="<%=rs.getString("drawbreak9") %>"></td>
  </tr>
  <tr>
    <td><div align="center">預排休10</div></td>
    <td><div align="center">預排休11</div></td>
    <td><div align="center">預排休12</div></td>
  </tr>
  <tr>
    <td><input type="text" id="datepicker10" name="drawbreak10" value="<%=rs.getString("drawbreak10") %>"></td>
    <td><input type="text" id="datepicker11" name="drawbreak11" value="<%=rs.getString("drawbreak11") %>"></td>
    <td><input type="text" id="datepicker12" name="drawbreak12" value="<%=rs.getString("drawbreak12") %>"></td>
  </tr>
   <tr>
    <td><div align="center">預排休13</div></td>
    <td><div align="center">預排休14</div></td>
    <td><div align="center">預排休15</div></td>
  </tr>
  <tr>
    <td><input type="text" id="datepicker13" name="drawbreak13" value="<%=rs.getString("drawbreak13") %>"></td>
    <td><input type="text" id="datepicker14" name="drawbreak14" value="<%=rs.getString("drawbreak14") %>"></td>
    <td><input type="text" id="datepicker15" name="drawbreak15" value="<%=rs.getString("drawbreak15") %>"></td>
  </tr>
  <tr>
    <td></td>
    <td><div align="center"><input type="submit" value="提交修改畫休申請"></div></td>
    <td></td>
  </tr>
</table>
</form>
</header>
        </section>
       </div>
     </div>
     <%@include file ="menu.jsp" %>
  </div>
  <!-- Scripts -->
  <script src="assets/js/jquery1.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
</body>
</html>