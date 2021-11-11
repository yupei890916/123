<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="com.mysql.jdbc.Driver" %>   
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>

<!DOCTYPE html>
<html>
<head>
<title>test</title>
</head>
<body>
 <%  
               //連線資料庫
        try {  
            Class.forName("com.mysql.jdbc.Driver");  //驅動程式名
			 // 獲取mysql連線地址
            String url = "jdbc:mysql://127.0.0.1:3306/schedule?serverTimezone=UTC";  
            String username = "root";  //資料庫使用者名稱
            String password = "kevin0508";  //資料庫使用者密碼
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/schedule?serverTimezone=UTC", "root", "kevin0508");  //連線狀態
			//若資料庫連線成功，則輸出查詢到的資料結果
            if(connection != null){  
				//out.println("-------------------");  
               // out.print("資料庫連線成功！"); 
				//out.println("-------------------");   
				 out.println("<br />"); 
				  out.println("<br />");

 //設定表格,表格內容為查詢結果		
%>  

<table border="3" >
<tr align="center">
<td width="30%" title="name">姓名</td>
<td width="30%" title="text">休假</td>
<td width="50%" title="leave">日期</td>
</tr>

// 獲得資料庫內容，填入表格顯示
</body>
</html>
<%
	Statement stmt = null;  
	ResultSet rs = null;  
	String sql = "SELECT schedule.resource.name,schedule.event.end,schedule.event.text FROM schedule.event,schedule.resource where schedule.event.resource_id = schedule.resource.id and schedule.event.status = 1;";  
	stmt = conn.createStatement();  
	rs = stmt.executeQuery(sql);  
	out.println("休假表如下："); 	
	 out.println("<br />"); 
	  out.println("<br />");
	//rs.next(); 是遊標向下移動一行的意思 ，放在while迴圈裡面做迴圈條件，就是如果有下一行的意思
	
	while (rs.next()) {  
%>	
<tr> 
<td><%=rs.getString("name") %></td>  
<td><%=rs.getString("text") %></td>  
<td ><%=rs.getString("end") %></td>  
</tr>   

<%                           
				  }  
		}else{  
			out.print("連線失敗！");  
			}  
        }catch (Exception e) {        
			out.print("資料庫連線異常！");  
        }  %>  
