<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>

<html>
<head>
  <title>FOOODPANDA MARKET 熊貓超市 調班清單</title>
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
            <h2>調班歷史紀錄表</h2>           
          </header>
          <div class="content">
          <div class='row'>
          <form action="takeOverlist_Edit.jsp" method="post">
          <button style="font-size:15px">修改</button>
          <button style="font-size:15px">刪除<i class="fas fa-trash-alt"></i></button>           
            </form>       
<br>
<form action="takeOver_DB.jsp" method="post"></form>
<table border="1" onload="load()">                   
<tr>
<th>須調班員工ID</th>
<th>調班日期</th>
<th>可調班員工ID</th>
<th>填寫日期</th>
<th>審核狀況</th>
<th>審核日期</th>
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
https://reurl.cc/Gorov3  事件驅動
http://mirlab.org/jang/books/javascript/ JavaScript 程式設計與應用
https://tw511.com/a/01/30356.html  JavaScript彈出框有哪些
https://reurl.cc/WkLkg5  修改並回傳資料
https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/283154/  js點選button按鈕跳轉到另一個新頁面
https://www.itread01.com/content/1545932587.html  客戶端提交表單到伺服器
https://purecss.io/forms/
https://www.wibibi.com/c.php?cid=10&p=7
https://ithelp.ithome.com.tw/users/20119743/articles?page=3  先看
https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/271674/  JS模擬按鈕點選功能的方法
http://mirlab.org/jang/books/javascript/  (JavaScript 程式設計與應用：用於網頁用戶端
https://ithelp.ithome.com.tw/articles/10191453 (迴圈
https://reurl.cc/e686AR  迴圈筆記

https://ithelp.ithome.com.tw/articles/10191057
https://ithelp.ithome.com.tw/articles/10191549
http://pclevin.blogspot.com/p/javascript.html
https://reurl.cc/l9dAXv


https://reurl.cc/1242Ep  網頁事件處理 
https://ithelp.ithome.com.tw/articles/10094965 DOM
https://www.wibibi.com/info.php?tid=256 先看
https://www.w3schools.com/js/js_popup.asp