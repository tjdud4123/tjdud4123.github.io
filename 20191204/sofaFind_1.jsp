<%@ page language="java" contentType = "text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!doctype html> 
  <html lang="ko">
  <head>
   <meta charset="utf-8"/>
   <meta name="viewport"content="width=device-width,initial-scale=1"/>
 <style> 
*{padding:0; margin:0;}
body{font-family: Verdana, sans-serif; font-size:0.8em}
header,nav,section,article,aside,footer {border:1px solid gray; margin:5px; padding:8px}
nav ul{margin:0; padding:0;}
nav ul li{display:inline; margin:5px}
a:link {color:blue; text-decoration:none;} a:visited {color:purple;text-decoration:none;}
a:hover {text-decoration:underline;} a:active {color:red; text-decoration:none;}
section {height:450px;}  .id_form{width:50px;}
.label_form{display:inline-block; width:55px; height:14px; color:red; padding:5px;}
.button_form{width:60px; margin-left:5px;}
.fset{padding:15px;}
#dupBtn{height:25px;}
ul.level_1 > li {list-style:none; display:inline-block; vertical-align:bottom;}
ul.level_1 > li > ul{list-style:none;}
.level_2 li{padding-top:5px;} .level_2 span{display:inline-block; width:70px;} .level_2 input{width:100px;}
#loginBtn button {margin-left:5px; height:42px;} #find_form{width:150px; height:20px; color:red;}
</style>
<title>웹서버 프로그래밍</title>
<jsp:useBean id="s20171360dto" class="sofa20171360pkg.S20171360DTO" scope="session"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head><body>
<header><h2>SOFA 관리 시스템</h2></header>
<nav><ul>
 <li><a href="./sofaHome_1.html">홈페이지</a></li>
 <li><a href="./sofaReg_1.html">소파등록</a></li>
 <li><a href="./sofaFind_1.jsp">검색</a></li></ul></nav>
<section>
<form action="./sofaResult_1.jsp" method="post">
 <fieldset class="fset"><legend>검색</legend>
  <select name="search_select">
   <option value="sofa_all" selected>전체</option>
   <option value="sofa_brand">브랜드</option">
   <option value="sofa_size">사이즈</option>
   </select>
 <input id="find_form" type="text" name="sofa_search" size="20" maxlength="50"/>
 <input type="submit" value="검색">
 </fieldset>
</form>
</section>
<center><footer><p>&copy;2019 Made by Korea. All rights reserved.</p></footer></center></body></html>
