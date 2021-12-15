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
                   <li>
                    <span class="opener">打卡</span>
                    <ul style="">
                      <li><a href="clock.jsp">打卡</a></li>
                      <li><a href="clockList.jsp">打卡記錄</a></li>
                    </ul>
                  </li>
                  <li><a href="employee_leave.jsp">休假表</a></li>
                  <li>
                    <span class="opener">班表</span>
                    <ul style="">
                      <li><a href="shiftSchedule.jsp">班表</a></li>
                      <li><a href="takeOver.jsp">調班</a></li>
                      <li><a href="takeOverCheck.jsp">調班記錄</a></li>
                      <li><a href="leave.jsp">請假</a></li>
                      <li><a href="leaveCheck.jsp">請假記錄</a></li>
                    </ul>
                  </li>
                   <li><a href="payrollList.jsp">薪資表</a></li>
                   <li>
                    <span class="opener">個人資料</span>
                    <ul style="">
                      <li><a href="member.jsp">個人資料</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="memberList.jsp">個人資料清單</a></li>
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