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
                  <li><a href="clock.jsp">���d</a></li>
                  <li>
                    <span class="opener">�D�ޱM��</span>
                    <ul style="">
                      <li><a href="indexEdit.jsp">�s�W���i��T��</a></li>
                      <li><a href="shiftScheduleEdit.jsp">�ƯZ��</a></li>
                      <li><a href="DrawBreakEdit.jsp">�𰲳�</a></li>
                      <li><a href="takeOverListEdit.jsp">�f�ֽկZ</a></li>
                      <li><a href="leaveListEdit.jsp">�f�ֽа�</a></li>
                      <li><a href="payrollEdit.jsp">�~���</a></li>
                      <li><a href="memberEdit.jsp">�ӤH���</a></li>
                    </ul>
                  </li>
                  <li>
                    <span class="opener">���u�M��</span>
                    <ul style="">
                      <li><a href="shiftSchedule.jsp">�Z��</a></li>
                      <li><a href="DrawBreak.jsp">��</a></li>
                      <li><a href="takeOverList.jsp">�կZ</a></li>
                      <li><a href="leaveList.jsp">�а�</a></li>
                      <li><a href="payroll.jsp">�~���</a></li>
                      <li><a href="member.jsp">�ӤH���</a></li>
                    </ul>
                  </li>
                  <li><a href="company.jsp">������T</a></li>
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