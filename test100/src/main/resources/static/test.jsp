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
               //�s�u��Ʈw
        try {  
            Class.forName("com.mysql.jdbc.Driver");  //�X�ʵ{���W
			 // ���mysql�s�u�a�}
            String url = "jdbc:mysql://127.0.0.1:3306/schedule?serverTimezone=UTC";  
            String username = "root";  //��Ʈw�ϥΪ̦W��
            String password = "kevin0508";  //��Ʈw�ϥΪ̱K�X
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/schedule?serverTimezone=UTC", "root", "kevin0508");  //�s�u���A
			//�Y��Ʈw�s�u���\�A�h��X�d�ߨ쪺��Ƶ��G
            if(connection != null){  
				//out.println("-------------------");  
               // out.print("��Ʈw�s�u���\�I"); 
				//out.println("-------------------");   
				 out.println("<br />"); 
				  out.println("<br />");

 //�]�w���,��椺�e���d�ߵ��G		
%>  

<table border="3" >
<tr align="center">
<td width="30%" title="name">�m�W</td>
<td width="30%" title="text">��</td>
<td width="50%" title="leave">���</td>
</tr>

// ��o��Ʈw���e�A��J������
</body>
</html>
<%
	Statement stmt = null;  
	ResultSet rs = null;  
	String sql = "SELECT schedule.resource.name,schedule.event.end,schedule.event.text FROM schedule.event,schedule.resource where schedule.event.resource_id = schedule.resource.id and schedule.event.status = 1;";  
	stmt = conn.createStatement();  
	rs = stmt.executeQuery(sql);  
	out.println("�𰲪�p�U�G"); 	
	 out.println("<br />"); 
	  out.println("<br />");
	//rs.next(); �O�C�ЦV�U���ʤ@�檺�N�� �A��bwhile�j��̭����j�����A�N�O�p�G���U�@�檺�N��
	
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
			out.print("�s�u���ѡI");  
			}  
        }catch (Exception e) {        
			out.print("��Ʈw�s�u���`�I");  
        }  %>  
