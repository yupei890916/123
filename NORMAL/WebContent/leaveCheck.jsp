<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
  <title>FOOODPANDA MARKET ���߶W�� �а��M��</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
 <style> 
 table {
  border: 1px solid black;
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
     <section>        
         <header class="major">
            <h2>�а��f��</h2>          
          </header>
<div class="content">
<form method="post" action="leave_auditstatus.jsp"> 
<table border="1">    
<tr>
<th>�а����uID</th>
<th>�а����</th>
<th>�а����O</th>
<th>�а���]</th>
<th>��g���</th>
<th>�f�֪��p</th>
<th>�f�֤��</th>
</tr>
<%
String leaveID=request.getParameter("leaveID");
String leavedate=request.getParameter("leavedate");
String leavecategory=request.getParameter("leavecategory");
String leavereason=request.getParameter("leavereason");
String writeDate=request.getParameter("writeDate");
%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement smt =conn.createStatement();
String sql ="select * from fpm.leave";
ResultSet rs = smt.executeQuery(sql);
while(rs.next())
{ %>                     
<tr>
<td><%=rs.getString("leaveID")%></td>
<td><%=rs.getString("leavedate")%></td>
<td><%=rs.getString("leavecategory")%></td>
<td><%=rs.getString("leavereason")%></td>  
<td><%=rs.getString("writeDate")%></td>  
<td><input type="text" name="auditstatus" placeholder="�f�֪��p" style="width:100px; height:30px;"/></td>	
<td><input type="date" name="auditdate" size="10" placeholder="�f�֤��"/></td>
<td><button onclick="setTimeout(myFunction, 1000);" style="font-size:10px ">�e�X</button></td>
</tr>
<%}	
	conn.close();
	%>                                                                                            
</table>                                                   
</form>
     </div>
        </section> 
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
</body>
</html>
