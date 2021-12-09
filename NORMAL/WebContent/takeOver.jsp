<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>FOOODPANDA MARKET 熊貓超市 調班</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>
<style>
table{
width:100%;
}         
th, td {
  font-size: 16px;
  color: black;
  text-align: left;
  padding: 6px;
}
tr:nth-child(even) {background-color: #ffff;}
</style>
<body class="is-preload" onload="ShowTime()">
	<!-- Wrapper -->
  <div id="wrapper">
    <!-- Main -->
    <div id="main">
      <div class="inner">
        <!-- Header -->
        <%@include file ="header.jsp" %>      
        <!-- Banner -->
            <br>  
          <header class="major">
            <h2>調班申請單</h2>
          </header>
              <form method="post" action="takeOverCheck.jsp" target="_blank"> 
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "fpm";
String userid = "root";
String password = "root1201";
try{
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
String sql ="select 員工ID from staff";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>                                       
 <table>
<tr><td><a href="member.jsp?員工ID=<%=resultSet.getString("員工ID")%>"><font size=4 color=black >須調班員工ID：</font></a></td></tr>                             
<tr><td>調班日期：</td><td><input type="date" name="調班日期" size="10" placeholder="調班日期"/></td></tr>            
<tr><td>可調班員工ID：</td><td><input type="text" name="可調班員工ID" placeholder="可調班員工ID" required style="width:200px; height:40px;"/></td></tr>
<tr><td>填寫日期：</td><td><input type="date" name="填寫日期" size="10" placeholder="填寫日期"/></td></tr>                        
</table>
                 <button onclick="setTimeout(myFunction, 2000);">送出</button>  
                           <script>
                             function myFunction() {
                               alert('已成功送出調班申請');
                              }
                           </script> 
                           <input type="reset" value="重置"/>
                          </form>                                                     
                      </div>
              <div id="showbox"></div>                                                                 
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
  <script language="JavaScript">
  function ShowTime(){
　document.getElementById('showbox').innerHTML = new Date();
　setTimeout('ShowTime()',1000);
  }
  </script>  
</body>
</html>