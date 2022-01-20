<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

<html>
<head>
  <title>FOOODPANDA MARKET 熊貓超市 調班清單</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
 <style> 
 table {
  border-collapse: collapse;
  width:100%
}
th, tb {
padding: 8px;
text-align: left;
border-bottom: 1px solid #ddd;
}
tr:hover {banckground-color: pink;}
</style>
</head>
<body class="is-preload">
	<!-- Wrapper -->
  <div id="wrapper">
    <!-- Main -->
    <div id="main">
      <div class="inner">
        <!-- Header -->
        <%@include file ="header.jsp" %>         
          <header class="major">
            <br>
            <h2>調班審核</h2>          
          </header>
               <div class="content">
<form method="post" action="takeOver_auditstatus.jsp"> 
<table border="1">    
<tr>
<th>須調班員工ID</th>
<th>調班日期</th>
<th>可調班員工ID</th>
<th>填寫日期</th>
<th>審核狀況</th>
<th>審核日期</th>
</tr>
<%
String takeOverID=request.getParameter("takeOverID");
String takeOverdate=request.getParameter("takeOverdate");
String cantakeOverID=request.getParameter("cantakeOverID");
String date=request.getParameter("date");
%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement smt =conn.createStatement();
String sql ="select * from fpm.takeover";
ResultSet rs = smt.executeQuery(sql);
while(rs.next())
{ %>                     
<tr>
<td><%=rs.getString("takeOverID")%></td>
<td><%=rs.getString("takeOverdate")%></td>
<td><%=rs.getString("cantakeOverID")%></td>
<td><%=rs.getString("date")%></td>  
<td><class="a"><input type="text" name="auditstatus" placeholder="審核狀況" style="width:100px; height:30px;"/></td>	
<td><input type="date" name="auditdate" size="10" placeholder="審核日期"/></td>
<td><button style="font-size:10px ">送出</button></td>
</tr>
<%}	
	conn.close();
	%>	                                                                                            
</table>
<div id="showbox"></div> 
</form>                                                     
</div>                                                                           
         </div>
         </div> 
  <!-- Sidebar -->
    <%@include file ="menu.jsp" %>
  </div>
  <!-- Scripts -->
  <script src="assets/js/jquery.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
  <script>
  function ShowTime(){
　document.getElementById('showbox').innerHTML = new Date();
　setTimeout('ShowTime()',1000);
  }
  </script>
  <script>
var tag = 0;
$(function(){
  $("#add").click(function(){
      $('#mt tbody').append('<tr><td>Name'+tag+'</td><td>TEL</td><td>E-MAIL</td><td>TEL</td><td>E-MAIL</td><td>TEL</td></tr>');
    tag++;
   });
  
})
</script>  
</body>
</html>