<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
  <title>FOOODPANDA MARKET 熊貓超市 調班</title>
  <meta charset="BIG5">
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
               <form method="post" action="takeover_DB.jsp">                                                     
<table>
<tr><td>須調班員工ID：</td><td><input type="text" name="takeOverID" value="<%@include file ="takeOver_create_name.jsp" %>" style="width:150px; height:40px;"></td></tr>                            
<tr><td>調班日期：</td><td><input type="date" name="takeOverdate" size="10" placeholder="調班日期"/></td></tr>            
<tr><td>可調班員工ID：</td><td><input type="text" name="cantakeOverID" placeholder="可調班員工ID" required style="width:150px; height:40px;"/></td></tr>
<tr><td>填寫日期：</td><td><input type="date" name="date" size="10" placeholder="填寫日期"/></td></tr>                        
</table>
                 <button onclick="setTimeout(myFunction, 1000);">送出</button>  
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
  <script>
  function ShowTime(){
　document.getElementById('showbox').innerHTML = new Date();
　setTimeout('ShowTime()',1000);
  }
  </script>  
</body>
</html>