<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
    <style> 
     .divcss5-right{width:100px; height:30px;text-align:center;border:1px solid #F00;float:right} 
    </style> 
       
       <header id="header">
       <form method="post" action="logout.jsp">
          <img src="images/6.jpg" alt="FOOODPANDA" width="260" height="90" > 
           <%if(session.getAttribute("accessId") != null){%>
          	<input type="submit" value="µn¥X" name="logout" class="divcss5-right">
		  <%}else{%>
			<a href="login.jsp" class="divcss5-right">µn¤J</a>
	  	  <%}%>
	  	  </form>
        </header>
