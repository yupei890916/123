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
              <div class='row'>
<form action="leavelist_Edit.jsp" method="post">
<button style="font-size:15px">�ק�</button>
<button style="font-size:15px">�R��<i class="fas fa-trash-alt"></i></button>
</form>
<br>
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
<%request.setCharacterEncoding("BIG5");
String leaveID=request.getParameter("leaveID");
String leavedate=request.getParameter("leavedate");
String leavecategory=request.getParameter("leavecategory");
String leavereason=request.getParameter("leavereason");
String writeDate=request.getParameter("writeDate");
%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement st =con.createStatement();
String sql ="select * from fpm.leave ";
ResultSet re = st.executeQuery(sql);
while(re.next())
{ %>
<tr>
<td><%=re.getString("leaveID")%></td>
<td><%=re.getString("leavedate")%></td>
<td><%=re.getString("leavecategory")%></td>
<td><%=re.getString("leavereason")%></td>
<td><%=re.getString("writeDate")%></td>
<td><%=re.getString("auditstatus")%></td>
<td><%=re.getString("auditdate")%></td>
</tr>
<%}	
	con.close();
	%>       
</table>
</div>
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