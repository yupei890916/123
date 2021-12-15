<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
</head>

<body>
          <div id="sidebar">
            <div class="inner">
              <!-- Search -->
              <section id="search" class="alt">
                <form method="post" action="#">
                  <input type="text" name="query" id="query" placeholder="Search">
                </form>
              </section>
              <!-- Menu -->
              <nav id="menu">
                <header class="major">
                  <h2>Menu</h2>
                </header>
                <ul>
                  <li><a href="index.jsp">�D��</a></li>
                   <li>
                    <span class="opener">���d</span>
                    <ul style="">
                      <li><a href="clock.jsp">���d</a></li>
                      <li><a href="clockList.jsp">���d�O��</a></li>
                    </ul>
                  </li>
                  <li><a href="employee_leave.jsp">�𰲪�</a></li>
                  <li>
                    <span class="opener">�Z��</span>
                    <ul style="">
                      <li><a href="shiftSchedule.jsp">�Z��</a></li>
                      <li><a href="takeOver.jsp">�կZ</a></li>
                      <li><a href="takeOverCheck.jsp">�կZ�O��</a></li>
                      <li><a href="leave.jsp">�а�</a></li>
                      <li><a href="leaveCheck.jsp">�а��O��</a></li>
                    </ul>
                  </li>
                   <li><a href="payrollList.jsp">�~���</a></li>
                   <li>
                    <span class="opener">�ӤH���</span>
                    <ul style="">
                      <li><a href="member.jsp">�ӤH���</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="memberList.jsp">�ӤH��ƲM��</a></li>
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