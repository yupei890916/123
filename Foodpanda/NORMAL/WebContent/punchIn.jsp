<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>FOOODPANDA MARKET ���߶W�� ���d�M��</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>
<body class="is-preload" onload="ShowTime()">
	<!-- Wrapper -->
  <div id="wrapper">
    <!-- Main -->
    <div id="main">
      <div class="inner">
        <!-- Header -->
        <%@include file ="header.jsp" %>
        <!-- Banner -->
            <br>
          <header class="major">
             <h2>&ensp;�� �d �M ��</h2>
          </header>
<form method="post" action="punchIn.jsp">         
        <div class="content">
          &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 
           <font size="4"><input class="btn_up" type="submit" name="gohours"  value="�W�Z"/></font> 
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input class ="btn_break" type="reset"  name="resthours"value="��"/></font>
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input class ="btn_Unbreak" type="submit"  name="restoffhours" value="�𮧵���"/></font> 
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           <font size="4"><input class ="btn_down" type="submit" name="afterhours" value="�U�Z"/></font> 
           &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
           
           <br>
           <br>
           <table style="width:100%">
                    <thead>
                      <tr>
                        <th>���</th>
                        <th>���uID</th>
                        <th>�W�Z�ɶ�</th>
                        <th>�𮧮ɶ�</th>
                        <th>�𮧵���</th>
                        <th>�U�Z�ɶ�</th>
                        <th>�O�_����</th>
                      </tr>
                      </thead>
                      <tbody class= "tb">
                      <tr>
                      <td>2021/06/19</td>
                      <td>BETTY.WU</td>
                      <td>18:02</td>
                      <td>21:05</td>
                      <td>21:35</td>
                      <td>00:02</td>
                      <td><button onclick="s">����</button> </td>
                      </tr>
                     
                    </tbody>
             </table>
             <div id="showbox"></div>
        </div>
      </div>
    </div>
    <!-- Sidebar -->
    <%@include file ="menu.jsp" %>
  </div>
  <!-- Scripts -->
  <script src="assets/js/jquery.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
  <script language="JavaScript">
  
  function ShowTime(){
�@document.getElementById('showbox').innerHTML = new Date();
�@setTimeout('ShowTime()',1000);
  }
  
  
  let flag = false;
	let data = ["-", "-", "-", "-", "-", "-"];
	let tb = document.querySelector(".tb");
	let btn_up = document.querySelector(".btn_up");
	
	


	
	function s(){
		  location.href='memberEdit.jsp?'+"n1="+data[0]+
				  
				  "n2="+data[1]; 
		  console.log("!!");
	}
	btn_up.addEventListener("click", (e) => {
		e.preventDefault();
		if (flag) {
			document.querySelector(".check").remove();
		}
		flag = true;
		let tr = document.createElement("tr");
		let t = document.getElementById("showbox").innerHTML.split(" ");
		data[0] = t[1] + ", " + t[2] + ", " + t[3];
		data[1] = '<%=session.getAttribute("accessId")%>';
		data[2] = t[4];

		for (let i = 0; i < 6; i++) {
			th = document.createElement("th");
			th.innerHTML = data[i];
			tr.appendChild(th);
		}
		// append
		tr.classList.add("check");
		tb.appendChild(tr);
	});

	let btn_break = document.querySelector(".btn_break");
	btn_break.addEventListener("click", (e) => {
		e.preventDefault();
		document.querySelector(".check").remove();
		let tr = document.createElement("tr");
		let t = document.getElementById("showbox").innerHTML.split(" ");
		data[0] = t[1] + ", " + t[2] + ", " + t[3];
		data[1] = '<%=session.getAttribute("accessId")%>';
		data[3] = t[4];

		for (let i = 0; i < 6; i++) {
			th = document.createElement("th");
			th.innerHTML = data[i];
			tr.appendChild(th);
		}
		// append
		tr.classList.add("check");
		tb.appendChild(tr);
	});
	let btn_Unbreak = document.querySelector(".btn_Unbreak");
	btn_Unbreak.addEventListener("click", (e) => {
		e.preventDefault();
		document.querySelector(".check").remove();
		let tr = document.createElement("tr");
		let t = document.getElementById("showbox").innerHTML.split(" ");
		data[0] = t[1] + ", " + t[2] + ", " + t[3];
		data[1] = '<%=session.getAttribute("accessId")%>';
		data[4] = t[4];

		for (let i = 0; i < 6; i++) {
			th = document.createElement("th");
			th.innerHTML = data[i];
			tr.appendChild(th);
		}
		// append
		tr.classList.add("check");
		tb.appendChild(tr);
	});
	let btn_down = document.querySelector(".btn_down");
	btn_down.addEventListener("click", (e) => {
		e.preventDefault();
		document.querySelector(".check").remove();
		let tr = document.createElement("tr");
		let t = document.getElementById("showbox").innerHTML.split(" ");
		data[0] = t[1] + ", " + t[2] + ", " + t[3];
		data[1] = '<%=session.getAttribute("accessId")%>';
		data[5] = t[4];

		for (let i = 0; i < 6; i++) {
			th = document.createElement("th");
			th.innerHTML = data[i];
			tr.appendChild(th);
		}
		th = document.createElement("th");
		th.innerHTML = '<button onclick="s">����</button>';
		tr.appendChild(th);

		
		// append
		tr.classList.add("check");
		tb.appendChild(tr);
	});
  </script>
  <script>
var tag = 0;
$(function(){
  $("#add").click(function(){
      $('#mt tbody').append('<tr><td>Name'+tag+'</td><td>TEL</td><td>E-MAIL</td><td>TEL</td><td>E-MAIL</td><td>TEL</td></tr>');
    tag++;
   });
  
})
</script>
</body>
</html>