<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
  <title>FOOODPANDA MARKET ���߶W�� �կZ</title>
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
            <h2>�կZ�ӽг�</h2>
                      </header>
               <form method="post" action="takeover_DB.jsp">                                                     
<table>
<tr><td>���կZ���uID�G</td><td><input type="text" name="takeOverID" value="<%@include file ="takeOver_create_name.jsp" %>" style="width:150px; height:40px;"></td></tr>                            
<tr><td>�կZ����G</td><td><input type="date" name="takeOverdate" size="10" placeholder="�կZ���"/></td></tr>            
<tr><td>�i�կZ���uID�G</td><td><input type="text" name="cantakeOverID" placeholder="�i�կZ���uID" required style="width:150px; height:40px;"/></td></tr>
<tr><td>��g����G</td><td><input type="date" name="date" size="10" placeholder="��g���"/></td></tr>                        
</table>
                 <button onclick="setTimeout(myFunction, 1000);">�e�X</button>  
                           <script>
                             function myFunction() {
                               alert('�w���\�e�X�կZ�ӽ�');
                              }
                           </script> 
                           <input type="reset" value="���m"/>
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
�@document.getElementById('showbox').innerHTML = new Date();
�@setTimeout('ShowTime()',1000);
  }
  </script>  
</body>
</html>