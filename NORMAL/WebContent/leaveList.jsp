<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET ���߶W�� �а��M��</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
<style> 
 table {
  border-collapse: collapse;
  width:100%
}
th, tb {
padding: 12px;
text-align: left;
border-bottom: 2px solid #ddd;
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
            <h2>�а����v������</h2>
          </header>
              <div class="content">                 
                 <table border="1">
                      <tr>
                        <th>�ק�</th>
                        <th></th>
                        <th>�а����uID</th>
                        <th>�а����</th>
                        <th>�а����O</th>
                        <th>�а���]</th>
                        <th>��g���</th>
                        <th>�f�֪��p</th>
                        <th>�f�֤��</th>
                        <th>�R��</th>
                      </tr>
<%
String ID=request.getParameter("ID");
String leaveID=request.getParameter("leaveID");
String leavedate=request.getParameter("leavedate");
String leavecategory=request.getParameter("leavecategory");
String leavereason=request.getParameter("leavereason");
String Date=request.getParameter("Date");
%>
<% 
String driver = "com.mysql.jdbc.Driver";  
String url = "jdbc:mysql://127.0.0.1:3306/fpm";  
String use = "root";   
String password = "root1201";  
Class.forName("com.mysql.jdbc.Driver");  
Connection co= DriverManager.getConnection(url, use, password);
Statement sta =co.createStatement();
String sql ="select * from fpm.leave";
ResultSet re = sta.executeQuery(sql);
while(re.next())
{ %>
<tr>
<td><button style="font-size:12px" value="<%@include file ="takeOver_create_name.jsp" %>">><i class="fas fa-pencil-alt"></i></button></td>
<td><%=re.getString("ID")%></td>
<td><%=re.getString("leaveID")%></td>
<td><%=re.getString("leavedate")%></td>
<td><%=re.getString("leavecategory")%></td>
<td><%=re.getString("leavereason")%></td>
<td><%=re.getString("writeDate")%></td>
<td><%=re.getString("auditstatus")%></td>
<td><%=re.getString("auditdate")%></td>
<td><button style="font-size:12px" onclick='leaveDelete(this);'> <i class="fas fa-trash-alt"></i></button></td>
</tr>
<%}	
	co.close();
	%>       
</table>

                </div>                            
              </section>
          </div>                
       </div>
     </div>
    <%@include file ="menu.jsp" %>
  <!-- Scripts -->
  <script src="assets/js/jquery.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
</body>
</html>