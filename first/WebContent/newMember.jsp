<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>

<head>
  <title>FOOODPANDA MARKET ���߶W�� �~���</title>
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
            <h2>���߶W�� �ӤH���</h2>
          </header>
        
        <form method="post" action="#">
          <font color="#000000" size="4">
            <div class="row gtr-uniform">
              <div class="col-4 col-12-xsmall col-md-1" style=""> ���uID�G <input type="text" name="demo-name" id="demo-name" value="" placeholder="���uID">
              </div>
              <div class="col-4 col-12-xsmall col-md-1" style=""> �m�W�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="�m�W">
              </div>
              <div class="col-4" style=""> �Z�O�G<select name="demo-category" id="demo-category">
                  <option value="1">���Z</option>
                  <option value="1">�߯Z</option>
                  <option value="1">�j�]�Z</option>
                </select>
              </div>
              <div class="col-4" style=""> ¾�١G<select name="demo-category" id="demo-category">
                  <option value="1">PT</option>
                  <option value="1">FT</option>
                  <option value="1">SUP</option>
                </select>
              </div>
              <div class="col-4" style=""> �ʧO�G<select name="demo-category" id="demo-category">
                  <option value="1">�k</option>
                  <option value="1">�k</option>
                </select>
              </div>
              <div class="col-4 col-12-xsmall" style=""> �X�ͦ~���G<br><input id="email" type="date" name="demo-email" placeholder="�X�ͦ~���" value="">
              </div>
              <div class="col-4 col-12-xsmall" style=""> �����Ҧr���G<input type="email" name="demo-email" id="demo-email" value="" placeholder="�����Ҧr��">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ������X�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="������X">
              </div>
              <div class="col-4 col-12-xsmall" style=""> Email�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="Email">
              </div>
              <div class="col-4 col-12-xsmall" style=""> LINE ID�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="LINE ID">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ��}�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="��}">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ����p���H�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="����p���H">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ����p���H�q�ܡG<input type="email" name="demo-email" id="demo-email" value="" placeholder="����p���H�q��">
              </div>
              <div class="col-4 col-12-xsmall" style=""> ����p���H���Y�G<input type="email" name="demo-email" id="demo-email" value="" placeholder="����p���H���Y">
              </div>
              <div class="col-4 col-12-xsmall" style=""> �b¾��/��¾��G<input type="email" name="demo-email" id="demo-email" value="" placeholder="�b¾��/��¾��">
              </div>
              <!-- Break -->
              <div class="col-12" style="">
                <textarea name="demo-message" id="demo-message" placeholder="�Ƶ�" rows=""></textarea>
              </div>
              <!-- Break -->
              <div class="col-12" style="">
                <ul class="actions">
                  <li><input type="submit" value="�s�W���" class="primary"></li>
                  <li><input type="reset" value="�ק�"></li>
                </ul>
              </div>
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