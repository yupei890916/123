<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
</head>

<body>
          <div id="sidebar">
            <div class="inner">
              <!-- Menu -->
              <nav id="menu">
                <header class="major">
                  <h2>Menu</h2>
                </header>
                <ul>
                <li>
                    <span class="opener">�D��</span>
                    <ul style="">
                      <li><a href="index.jsp">���i��</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="indexEdit.jsp">�o�G���i</a></li>
                      <%}}%>
                    </ul>
                  </li>
                   <li>
                    <span class="opener">���d��</span>
                    <ul style="">
                      <li><a href="punchIn.jsp">���d</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="punchInList.jsp">���d�O��</a></li>
                      <%}}%>
                    </ul>
                  </li>
                  <li>
                    <span class="opener">�Z���</span>
                    <ul style="">
                      <li><a href="employee_leave.jsp">�ƯZ</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="personnel_leave.jsp.jsp">�ƯZ�ק�</a></li>
                      <%}}%>
                      <li><a href="employee_schedule.jsp">�Z��</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="personnel_schedule.jsp">�`��Z��</a></li>
                      <%}}%>
                      <li><a href="takeOver.jsp">�կZ</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="takeOverCheck.jsp">�կZ�f��</a></li>
                      <%}}%>
                      <li><a href="takeOverList.jsp">�կZ����</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="takeOverDB.jsp">����կZ����</a></li>
                      <%}}%>
                      <li><a href="leave.jsp">�а�</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="leaveCheck.jsp">�а��f��</a></li>
                      <%}}%>
                      <li><a href="leaveList.jsp">�а�����</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="leaveDB.jsp">����а�����</a></li>
                      <%}}%>
                    </ul>
                  </li>
                   <li>
                    <span class="opener">�ӤH��ư�</span>
                    <ul style="">
                      <li><a href="member.jsp">�ӤH���</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="memberList.jsp">�ӤH��ƲM��</a></li>
                      <%}}%>
                    </ul>
                  </li>
                  <li>
                    <span class="opener">�~����</span>
                    <ul style="">
                      <li><a href="payroll.jsp">�~���</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="payrollList.jsp">�~���M��</a></li>
                      <%}}%>
                    </ul>
                  </li>
                   
                   
                </ul>
              </nav>
              <!-- Footer -->
              <footer id="footer">
                <p class="copyright"></p>
              </footer>
            </div>
            <a href="#sidebar" class="toggle">Toggle</a>
            <a href="#sidebar" class="toggle">Toggle</a>
          </div>
</body>
</html>