<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
<head>
  <title>FOOODPANDA MARKET ���߶W�� ���u�e��</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
  <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css"> 
  <script src="assets/js/calender.js"></script>
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
            <h2>���߶W�� - �s�W�e��</h2>
�� �Ш̾ڱƯZ�W�h�A�C�H�C��йw������15�ѡC<br>
�� �U�Z�W�Z�H�ơG���Z�ܤ֤���B�߯Z�ܤ֤���B�j�]�ܤ֤G��A��ڥ𰲥ѩ��Ҷ��ǽs�Ʋ��͡C<br>
�� �C�~6/30�B12/31���s�����u���𰲶��ǡA�ä��i�󤽧i��C<br><br>
<form method="post" action="employee_leave_create_process.jsp">
 <table>
  <tr>
    <td><input type="text" name="employee_ID" value="<%@include file ="employee_leave_create_name.jsp" %>"></td>
  </tr>
  <tr>
    <td><div align="center">�w�ƥ�1</div></td>
    <td><div align="center">�w�ƥ�2</div></td>
    <td><div align="center">�w�ƥ�3</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker1" name="drawbreak1"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker2" name="drawbreak2"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker3" name="drawbreak3"></td>
  </tr>
  <tr>
    <td><div align="center">�w�ƥ�4</div></td>
    <td><div align="center">�w�ƥ�5</div></td>
    <td><div align="center">�w�ƥ�6</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker4" name="drawbreak4"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker5" name="drawbreak5"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker6" name="drawbreak6"></td>
  </tr>
  <tr>
    <td><div align="center">�w�ƥ�7</div></td>
    <td><div align="center">�w�ƥ�8</div></td>
    <td><div align="center">�w�ƥ�9</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker7" name="drawbreak7"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker8" name="drawbreak8"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker9" name="drawbreak9"></td>
  </tr>
  <tr>
    <td><div align="center">�w�ƥ�10</div></td>
    <td><div align="center">�w�ƥ�11</div></td>
    <td><div align="center">�w�ƥ�12</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker10" name="drawbreak10"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker11" name="drawbreak11"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker12" name="drawbreak12"></td>
  </tr>
   <tr>
    <td><div align="center">�w�ƥ�13</div></td>
    <td><div align="center">�w�ƥ�14</div></td>
    <td><div align="center">�w�ƥ�15</div></td>
  </tr>
  <tr>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker13" name="drawbreak13"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker14" name="drawbreak14"></td>
    <td><input type="text" placeholder="�п�ܹw�e����" id="datepicker15" name="drawbreak15"></td>
  </tr>
  <tr>
    <td></td>
    <td><div align="center"><input type="submit" value="����e��ӽ�"></div></td>
    <td></td>
  </tr>
</table>
</form>
 </header>
        </section>
       </div>
     </div>
     <%@include file ="menu.jsp" %>
  </div>
  <!-- Scripts -->
  <script src="assets/js/jquery1.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
</body>
</html>