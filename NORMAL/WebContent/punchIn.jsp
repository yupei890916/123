<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>FOOODPANDA MARKET ���߶W�� ���d�M��</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>
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
             <h2>&ensp;�� �d �M ��</h2>
          </header>
         
        <div class="content">
          &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 
           <font size="4"><input type="submit"  value="�W�Z"/></font> 
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input type="reset" value="��"/></font>
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input type="submit" value="�𮧵���"/></font> 
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input type="submit" value="�U�Z"/></font> 
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           
           <br>
           <br>
           <table style="width:100%">
                    <thead>
                      <tr>
                        <th>���</th>
                        <th>���uID</th>
                        <th>�W�Z�ɶ�</th>
                        <th>�𮧮ɶ�</th>
                        <th>�𮧵���</th>
                        <th>�U�Z�ɶ�</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <th>2021/06/19</th>
                        <th>BETTY.WU</th>
                        <th>18:02</th>
                        <th>21:05</th>
                        <th>21:35</th>
                        <th>00:02</th>
                      </tr>
                      <tr>
                        <th>2021/06/18</th>
                        <th>BETTY.WU</th>
                        <th>17:57</th>
                        <th>20:00</th>
                        <th>20:30</th>
                        <th>24:00</th>
                      </tr>
                    </tbody>
             </table>
             <div id="showbox"></div>
        </div>
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
  <script language="JavaScript">
  function ShowTime(){
�@document.getElementById('showbox').innerHTML = new Date();
�@setTimeout('ShowTime()',1000);
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