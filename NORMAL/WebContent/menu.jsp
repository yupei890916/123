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
                    <span class="opener">主頁</span>
                    <ul style="">
                      <li><a href="index.jsp">公告欄</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="indexEdit.jsp">發佈公告</a></li>
                      <%}}%>
                    </ul>
                  </li>
                   <li>
                    <span class="opener">打卡區</span>
                    <ul style="">
                      <li><a href="punchIn.jsp">打卡</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="punchInList.jsp">打卡記錄</a></li>
                      <%}}%>
                    </ul>
                  </li>
                  <li>
                    <span class="opener">班表區</span>
                    <ul style="">
                      <li><a href="employee_leave.jsp">排班</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="personnel_leave.jsp.jsp">排班修改</a></li>
                      <%}}%>
                      <li><a href="employee_schedule.jsp">班表</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="personnel_schedule.jsp">總體班表</a></li>
                      <%}}%>
                      <li><a href="takeOver.jsp">調班</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="takeOverCheck.jsp">調班審核</a></li>
                      <%}}%>
                      <li><a href="takeOverList.jsp">調班紀錄</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="takeOverDB.jsp">全體調班紀錄</a></li>
                      <%}}%>
                      <li><a href="leave.jsp">請假</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="leaveCheck.jsp">請假審核</a></li>
                      <%}}%>
                      <li><a href="leaveList.jsp">請假紀錄</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="leaveDB.jsp">全體請假紀錄</a></li>
                      <%}}%>
                    </ul>
                  </li>
                   <li>
                    <span class="opener">個人資料區</span>
                    <ul style="">
                      <li><a href="member.jsp">個人資料</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="memberList.jsp">個人資料清單</a></li>
                      <%}}%>
                    </ul>
                  </li>
                  <li>
                    <span class="opener">薪資表區</span>
                    <ul style="">
                      <li><a href="payroll.jsp">薪資表</a></li>
                      <%
                      if(session.getAttribute("Authority") != null){
						if(session.getAttribute("Authority").toString().equals("SUP")){%>
                      <li><a href="payrollList.jsp">薪資表清單</a></li>
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