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
padding: 8px;
text-align: left;
border-bottom: 1px solid #ddd;
}
tr:hover {banckground-color: pink;}
</style>
</head>
<script>
function load(){
document.getElementById("takeOver").click();
}
function takeOver_button(){
alert("takeOver_button");
}
</script>
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
            <h2>�а��ק��</h2>           
          </header>
          <div class="content">
          <div class='row'>
          <form action="leavelist_Up.jsp" method="post">
            
            <table border="1">                   
<tr>
<td><input type="text" name="leaveID" value="<%@include file ="leave_name.jsp" %>" style="width:200px; height:40px;"></td>                            
<td><input type="date" name="leavedate" size="10" placeholder="�а����" required/></td>            
<td><select name="leavecategory" style="width:200px; height:50px;">
                   <option value="�f��" selected>�f��</option>
                   <option value="�ư�">�ư�</option>
                   <option value="����">����</option>
                   <option value="�Ұ�">�Ұ�</option>
                   <option value="�ల">�ల </option>
                   <option value="�|����">�|���� </option>
                   <option value="�S��">�S��</option>
                   <option value="�B��">�B��</option>
                   <option value="9">���˰�</option>                   
                   </select></td>
<td><textarea name="leavereason" style="width:250px; height:80px;"></textarea></td>
<td><input type="date" name="writeDate" size="10" placeholder="��g���"/></td>
<td><input type="submit" value="�T�w�e�X"/></td>                      
</tr>
</table>
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
<%
String takeOverID=request.getParameter("leaveID");
String takeOverdate=request.getParameter("leavedate");
String cantakeOverID=request.getParameter("leavecategory");
String leavereason=request.getParameter("leavereason");
String date=request.getParameter("date");
%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement st =con.createStatement();
String sql ="select * from fpm.leave WHERE accessId";
ResultSet rs = st.executeQuery(sql);
while(rs.next())
{ %>
<tr>
<td><%=rs.getString("leaveID")%></td>
<td><%=rs.getString("leavedate")%></td>
<td><%=rs.getString("leavecategory")%></td>
<td><%=rs.getString("leavereason")%></td>
<td><%=rs.getString("date")%></td>
<td><%=rs.getString("auditstatus")%></td>
<td><%=rs.getString("auditdate")%></td>
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
<%@include file ="menu.jsp"%>   
</div>
  <!-- Scripts -->
  <script src="assets/js/jquery.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
</body>
</html>