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
                  <li><a href="index.jsp">主頁</a></li>
                  <li><a href="clock.jsp">打卡</a></li>
                  <li>
                    <span class="opener">主管專區</span>
                    <ul style="">
                      <li><a href="indexEdit.jsp">新增布告欄訊息</a></li>
                      <li><a href="shiftScheduleEdit.jsp">排班表</a></li>
                      <li><a href="DrawBreakEdit.jsp">休假單</a></li>
                      <li><a href="takeOverListEdit.jsp">審核調班</a></li>
                      <li><a href="leaveListEdit.jsp">審核請假</a></li>
                      <li><a href="payrollEdit.jsp">薪資表</a></li>
                      <li><a href="memberEdit.jsp">個人資料</a></li>
                    </ul>
                  </li>
                  <li>
                    <span class="opener">員工專區</span>
                    <ul style="">
                      <li><a href="shiftSchedule.jsp">班表</a></li>
                      <li><a href="DrawBreak.jsp">休假</a></li>
                      <li><a href="takeOverList.jsp">調班</a></li>
                      <li><a href="leaveList.jsp">請假</a></li>
                      <li><a href="payroll.jsp">薪資表</a></li>
                      <li><a href="member.jsp">個人資料</a></li>
                    </ul>
                  </li>
                  <li><a href="company.jsp">門市資訊</a></li>
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