<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET ���߶W�� �s�W���u���</title>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <link rel="stylesheet" href="assets/css/main.css">
</head>

<body class="is-preload">
	<!-- Wrapper -->
  <div id="wrapper">
    <!-- Main -->
    <div id="main">
      <div class="inner">
        <!-- Header -->
        <%@include file ="header.jsp" %>
         <section>
           <header class="major">
            <h2>�s�W���u���</h2>
          </header>
        
        <form action="newMember_inserInto.jsp" method="post" action="#">
          <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-4 col-12-xsmall col-md-1" style=""> ���uID�G <input type="text" name="���uID" id="demo-name" value="" placeholder="���uID">
              </div>
              <div class="col-4 col-12-xsmall col-md-1" style=""> �m�W�G<input type="text" name="�m�W" id="demo-email" value="" placeholder="�m�W">
              </div>
              <div class="col-4" style=""> �Z�O�G<select name="�Z�O" id="demo-category">
                  <option value="1">���Z</option>
                  <option value="1">�߯Z</option>
                  <option value="1">�j�]�Z</option>
                </select>
              </div>
              <div class="col-4" style=""> ¾�١G<select name="¾��" id="demo-category">
                  <option value="1">PT</option>
                  <option value="1">FT</option>
                  <option value="1">SUP</option>
                </select>
              </div>
              <div class="col-4" style=""> �ʧO�G<select name="�ʧO" id="demo-category">
                  <option value="1">�k</option>
                  <option value="1">�k</option>
                </select>
              </div>
              <div class="col-4 col-12-xsmall" style=""> �X�ͦ~���G<br><input  type="date" name="�X��" placeholder="�X�ͦ~���" value="">
              </div>
              <div class="col-4 col-12-xsmall" style=""> �����Ҧr���G<input type="text" name="������" placeholder="�����Ҧr��">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ������X�G<input type="text" name="���"  placeholder="������X">
              </div>
              <div class="col-4 col-12-xsmall" style=""> Email�G<input type="email" name="Email"  placeholder="Email">
              </div>
              <div class="col-4 col-12-xsmall" style=""> LINE ID�G<input type="text" name="LINE"  placeholder="LINE ID">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ��}�G<input type="text" name="��}" placeholder="��}">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ����p���H�G<input type="text" name="����p���H"  placeholder="����p���H">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ����p���H�q�ܡG<input type="text" name="����p���H�q��" placeholder="����p���H�q��">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ����p���H���Y�G<input type="text" name="����p���H���Y" placeholder="����p���H���Y">
              </div>
              <div class="col-4 col-12-xsmall" style=""> �b¾��G<input type="text" name="�b¾��" placeholder="�b¾��">
              </div>
               <div class="col-4 col-12-xsmall" style=""> ��¾��G<input type="text" name="��¾��" placeholder="��¾��">
              </div>
              <div class="col-12" style=""><textarea name="�Ƶ�"  placeholder="�Ƶ�" rows=""></textarea>
              </div>
           <font size="4"><input type="submit" value="�s�W���" class="primary"></font>
           <font size="4"><input type="reset" value="���]"></font>
            </div>
          </font>
        </form>
        </section>
       </div>
     </div>
    <%@include file ="menu.jsp" %>
  </div>
  <!-- Scripts -->
  <script src="assets/js/jquery.min.js" style=""></script>
  <script src="assets/js/browser.min.js" style=""></script>
  <script src="assets/js/breakpoints.min.js" style=""></script>
  <script src="assets/js/util.js" style=""></script>
  <script src="assets/js/main.js" style=""></script>
</body>
</html>