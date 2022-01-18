<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>

<html>
<head>
  <title>FOOODPANDA MARKET 熊貓超市 請假清單</title>
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
            <h2>請假修改表</h2>           
          </header>
          <div class="content">
          <div class='row'>
          <form action="leavelist_Up.jsp" method="post">
            
            <table border="1">                   
<tr>
<td><input type="text" name="leaveID" value="<%@include file ="leave_name.jsp" %>" style="width:200px; height:40px;"></td>                            
<td><input type="date" name="leavedate" size="10" placeholder="請假日期" required/></td>            
<td><select name="leavecategory" style="width:200px; height:50px;">
                   <option value="病假" selected>病假</option>
                   <option value="事假">事假</option>
                   <option value="公假">公假</option>
                   <option value="例假">例假</option>
                   <option value="喪假">喪假 </option>
                   <option value="育嬰假">育嬰假 </option>
                   <option value="特休">特休</option>
                   <option value="婚假">婚假</option>
                   <option value="9">公傷假</option>                   
                   </select></td>
<td><textarea name="leavereason" style="width:250px; height:80px;"></textarea></td>
<td><input type="date" name="writeDate" size="10" placeholder="填寫日期"/></td>
<td><input type="submit" value="確定送出"/></td>                      
</tr>
</table>
            </form>       
<br>
<table border="1">                   
<tr>
<th>請假員工ID</th>
<th>請假日期</th>
<th>請假類別</th>
<th>請假原因</th>
<th>填寫日期</th>
<th>審核狀況</th>
<th>審核日期</th>
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