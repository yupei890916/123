<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<title>FOOODPANDA MARKET ���߶W�� �а�</title>
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
  padding: 8px;
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
             <h2>�а��ӽг�</h2>
          </header>
          <form method="post" action="leaveDate.jsp">            
<table>
<tr><td>�а����uID�G</td><td><input type="text" name="leaveID" value="<%@include file ="leave_name.jsp" %>" style="width:200px; height:40px;"></td></tr> 
<tr><td>�а�����G</td><td><input type="date" name="leavedate" size="10" placeholder="�а����"/></td></tr>
<tr><td>�а����O�G</td><td><input type="text" name="leavecategory" placeholder="�а����O" style="width:200px; height:40px;"/></td></tr>
<tr><td>�а���]:</td><td><input type="text" name="leavereason" placeholder="�а���]" style="width:300px; height:40px;"/></td></tr>       
<tr><td>��g����G</td><td><input type="date" name="writeDate" size="10" placeholder="��g���"/></td></tr>                        
</table>                         
                        <button onclick="setTimeout(myFunction, 3000);">�e�X</button>
                           <script>
                             function myFunction() {
                               alert('�w���\�e�X�а���ӽ�');
                              }
                           </script>
                           <input type="reset" value="���m"/>
                           </form>                                                        
               <div id="showbox"></div>
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
�@document.getElementById('showbox').innerHTML = new Date();
�@setTimeout('ShowTime()',1000);
  }
  </script>  
</body>
</html>