<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>

<html>
<head>
  <title>FOOODPANDA MARKET 旱窟禬カ 叫安睲虫</title>
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
            <h2>叫安э</h2>           
          </header>
          <div class="content">
          <div class='row'>
          <form action="leavelist_Up.jsp" method="post">
            
            <table border="1">                   
<tr>
<td><input type="text" name="leaveID" value="<%@include file ="leave_name.jsp" %>" style="width:200px; height:40px;"></td>                            
<td><input type="date" name="leavedate" size="10" placeholder="叫安ら戳" required/></td>            
<td><select name="leavecategory" style="width:200px; height:50px;">
                   <option value="痜安" selected>痜安</option>
                   <option value="ㄆ安">ㄆ安</option>
                   <option value="そ安">そ安</option>
                   <option value="ㄒ安">ㄒ安</option>
                   <option value="赤安">赤安 </option>
                   <option value="▅捆安">▅捆安 </option>
                   <option value="疭ヰ">疭ヰ</option>
                   <option value="盉安">盉安</option>
                   <option value="9">そ端安</option>                   
                   </select></td>
<td><textarea name="leavereason" style="width:250px; height:80px;"></textarea></td>
<td><input type="date" name="writeDate" size="10" placeholder="恶糶ら戳"/></td>
<td><input type="submit" value="絋﹚癳"/></td>                      
</tr>
</table>
            </form>       
<br>
<table border="1">                   
<tr>
<th>叫安ID</th>
<th>叫安ら戳</th>
<th>叫安摸</th>
<th>叫安</th>
<th>恶糶ら戳</th>
<th>糵猵</th>
<th>糵ら戳</th>
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