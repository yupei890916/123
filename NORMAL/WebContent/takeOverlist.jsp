<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>

<html>
<head>
  <title>FOOODPANDA MARKET ���߶W�� �կZ�M��</title>
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
            <h2>�կZ���v������</h2>           
          </header>
          <div class="content">
          <div class='row'>
          <form action="takeOverlist_Edit.jsp" method="post">
          <button style="font-size:15px">�ק�</button>
          <button style="font-size:15px">�R��<i class="fas fa-trash-alt"></i></button>           
            </form>       
<br>
<form action="takeOver_DB.jsp" method="post"></form>
<table border="1" onload="load()">                   
<tr>
<th>���կZ���uID</th>
<th>�կZ���</th>
<th>�i�կZ���uID</th>
<th>��g���</th>
<th>�f�֪��p</th>
<th>�f�֤��</th>
</tr>
<%request.setCharacterEncoding("BIG5");
String takeOverID=request.getParameter("takeOverID");
String takeOverdate=request.getParameter("takeOverdate");
String cantakeOverID=request.getParameter("cantakeOverID");
String date=request.getParameter("date");
%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/fpm", "root", "root1201");
Statement st =con.createStatement();
String sql ="select * from fpm.takeover WHERE accessId";
ResultSet rs = st.executeQuery(sql);
while(rs.next())
{ %>
<tr>
<td><%=rs.getString("takeOverID")%></td>
<td><%=rs.getString("takeOverdate")%></td>
<td><%=rs.getString("cantakeOverID")%></td>
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
https://reurl.cc/Gorov3  �ƥ��X��
http://mirlab.org/jang/books/javascript/ JavaScript �{���]�p�P����
https://tw511.com/a/01/30356.html  JavaScript�u�X�ئ�����
https://reurl.cc/WkLkg5  �ק�æ^�Ǹ��
https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/283154/  js�I��button���s�����t�@�ӷs����
https://www.itread01.com/content/1545932587.html  �Ȥ�ݴ��������A��
https://purecss.io/forms/
https://www.wibibi.com/c.php?cid=10&p=7
https://ithelp.ithome.com.tw/users/20119743/articles?page=3  ����
https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/271674/  JS�������s�I��\�઺��k
http://mirlab.org/jang/books/javascript/  (JavaScript �{���]�p�P���ΡG�Ω�����Τ��
https://ithelp.ithome.com.tw/articles/10191453 (�j��
https://reurl.cc/e686AR  �j�鵧�O

https://ithelp.ithome.com.tw/articles/10191057
https://ithelp.ithome.com.tw/articles/10191549
http://pclevin.blogspot.com/p/javascript.html
https://reurl.cc/l9dAXv


https://reurl.cc/1242Ep  �����ƥ�B�z 
https://ithelp.ithome.com.tw/articles/10094965 DOM
https://www.wibibi.com/info.php?tid=256 ����
https://www.w3schools.com/js/js_popup.asp