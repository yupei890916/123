<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>FOOODPANDA MARKET 熊貓超市 請假</title>
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
             <h2>請假申請單</h2>
          </header>
          <form method="post" action="leave_DB.jsp">
             
            <table>
            <tr><td>請假員工ID：</td>
            <td><input type="text" name="leaveID" value="<%@include file ="leave_create_name.jsp" %>" style="width:200px; height:40px;"></td></tr> 
            <tr><td>請假日期：</td><td><input type="date" name="leavedate" size="10" placeholder="請假日期"/></td></tr>
            <tr><td>請假類別：</td><td><select name="leavecategory" style="width:200px; height:50px;">
                   <option value="病假" selected>病假</option>
                   <option value="事假">事假</option>
                   <option value="公假">公假</option>
                   <option value="例假">例假</option>
                   <option value="喪假">喪假 </option>
                   <option value="育嬰假">育嬰假 </option>
                   <option value="特休">特休</option>
                   <option value="婚假">婚假</option>
                   <option value="9">公傷假</option>                   
                   </select></td></tr>
            <tr><td>請假原因：</td><td><textarea name="leavereason" style="width:250px; height:80px;"></textarea></td></tr>            
            <tr><td>填寫日期：</td><td><input type="date" name="writeDate" size="10" placeholder="填寫日期"/></td></tr>                        
            </table>                         
                        <button onclick="setTimeout(myFunction, 3000);">送出</button>
                           <script>
                             function myFunction() {
                               alert('已成功送出請假單申請');
                              }
                           </script>
                           <input type="reset">
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
　document.getElementById('showbox').innerHTML = new Date();
　setTimeout('ShowTime()',1000);
  }
  </script>
  <script>
var tag = 0;
$(function(){
  $("#add").click(function(){
      $('#mt tbody').append('<tr><td>Name'+tag+'</td><td>TEL</td><td>E-MAIL</td><td>TEL</td><td>E-MAIL</td><td>TEL</td></tr>');
    tag++;
   });
  
})
</script>
</body>
</html>