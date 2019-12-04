<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport"content="width=device-width, initial-scale=1">
<style> *{padding:0; margin:0;}
body{font-family: Verdana, sans-serif; font-size:0.8em}
header,nav,section,article,aside,footer {border:1px solid gray; margin:5px; padding:8px}
nav ul{margin:0; padding:0;} nav ul li{display:inline; margin:5px}
a:link {color:blue; text-decoration:none;} a:visited {color:purple;text-decoration:none;}
a:hover {text-decoration:underline;} a:active {color:red; text-decoration:none;}
section {height:450px;}
.id_form{width:50px;} .label_form{display:inline-block; width:100px; height:14px; color:red; padding:5px;}
.button_form{width:60px; margin-left:5px;}
.fset{padding:15px;} #dupBtn{height:25px;}
ul.level_1 > li {list-style:none; display:inline-block; vertical-align:bottom;} ul.level_1 > li > ul{list-style:none;}
.level_2 li{padding-top:5px;} .level_2 span{display:inline-block; width:70px;} .level_2 input{width:100px;}
#loginBtn button {margin-left:5px; height:42px;} #fine_form{width:150px; height:20px; color:red;}
table, th, td{border:1px solid black; border-collapse:collapse;}
table{width:100%; height:80%;}
th, td{text-align:center; padding:10px; vertical-align:bottom;}
tr:nth-child(odd) {background-color; lightgray;}
th{background-color:gray; color:white;}
table.ex1{table-layout:auto;}
</style><title>웹서버 프로그래밍</title>
<jsp:useBean id="s20171360dto" class="sofa20171360pkg.S20171360DTO"/>
<jsp:setProperty name="s20171360dto" property="*"/>
<jsp:useBean id="s20171360dao" class="sofa20171360pkg.S20171360DAO"/>
</head>
<body><header><h2>SOFA 관리 시스템</h2></header>
<nav><ul>
 <li><a href="./sofaHome_1.html">홈페이지</a></li>
 <li><a href="./sofaReg_1.html">소파등록</a></li></ul></nav>
 <section>
   <fieldset class = "fset"> <legend>등록결과</legend>
<% 
int rec_no = s20171360dao.insertS20171360(s20171360dto.getSofa_brand(), s20171360dto.getSofa_color(), s20171360dto.getSofa_price(), s20171360dto.getSofa_width(), s20171360dto.getSofa_size(), s20171360dto.getSofa_material());
if (rec_no > 0){
%>
<script>alert("성공"); location.href="./sofaMem_1.jsp";</script>
<% }else{ %>
<script>alert("실패"); location.href="./sofaReg_1.jsp";</script>
<% } %>
</fieldset></section><center><footer><p>&copy;2019 Made by Korea. All right reserved.</p></footer></center></body></html>
