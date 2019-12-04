<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%><%@ page import="studpkg.StudDTO_1"%>
<%request.setCharacterEncoding("utf-8"); %>
<!doctype html> <!-- ~/beanResult.jsp -->
<html><head><meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<meta name="viewport"content="width=device-width, initial-scale=1"/>
<style> *{padding:0; margin:0;}
 body {font-family: Verdana, sans-serif; font-size:0.8em}
 header,nav,section,article,footer {border:1px solid gray; margin:5px; padding:8px}
 nav ul {margin:0; padding:0;}
 nav ul li {display:inline; margin:5px}
 a:link{ color:blue;text-decoration:none; }
 a:visited{ color:purple;text-decoration:none;}
 a:hover{ text-decoration:underline; }
 a:active{ color:red;text-decoration:none; }
 section{height:450px;}
 .id_form{width:50px;}
 .label_form{display:inline-block; width:55px; height:14px; color:red; padding:5px;}
 .button_form{width:60px; margin-left:5px;}
 .fset{padding:15px;}
 #dupBtn{height:25px;}
 ul.level_1 > li {list-style:none; display:inline-block; vertical-align:bottom;}
 ul.level_1 > li > ul {list-style:none;}
 .level_2 li {padding-top:5px;}
 .level_2 span {display:inline-block; width:70px;}
 .level_2 input {width:100px;}
 #loginBtn button {margin-left:5px; height:42px;} #find_form{width:150px; height:20px; color:red;}
 table, th, td {border:1px solid black; border-collapse: collapse;}
 table {width:100%; height:80%;}
 th, td {text-align:center; padding:10px; vertical-align:bottom;}
 tr:nth-child(odd) {background-color:lightgray;}
 th{background-color:gray;color:white;}
 table.ex1 {table-layout:auto;}
 </style><title>로그인 실습</title>
 <jsp://useBean id="dto" class="studpkg.StudDTO_1" scope="session"/>
 <jsp://useBean id="dao" class="studpkg.StudDAO_1" scope="session"/>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <%!
 boolean isNotEmpty(String str)
 {
  if((str == null) || str.equals("")) return false;
  return true; }
  %></head><body>
 <%
 boolean flag = dto.isVerified();
 if(!flag){
  response.sendRedirect("./beanHome.html");
 }else{
 %>
 <header><h2>실습을 환영합니다</h2></header>
 <nav><ul>
 <li><a href="./beanLogout.jsp">로그아웃</a></li><li><a href="./beanFind.jsp">검색</a></li></ul></nav>
<section>
<fieldset class="fset"><legend>검색결과</legend>
<div style="overflow-x:auto; overflow-y:auto;">
<table class="ex1">
<tr><th>아이디</th><th>이름</th><th>전화</th><th>이메일</th><th>취미</th></tr>
<% String search_select = request.getParameter("search_select");
String stud_search = request.getParameter("stud_search");
List<StudDTO_1> list = new ArrayList<StudDTO_1>();
if(!isNotEmpty(search_select) || !isNotEmpty(stud_search)){
 response.sendRedirect("./beanFind.jsp");
 }
 if("stud_all".equals(search_select)) {
  list= dao.findAllStuduser(stud_search);
 } else if("stud_hobby".equals(search_select)) {
  list= dao.findHobbyStuduser(stud_search);
 } else if("stud_name".equals(search_select)) {
  list= dao.findNameStuduser(stud_search,search_select); 
}
String hobby[]={"","",""};
for(int i=0; i<list.size(); i++){
 hobby = list.get(i).getStud_hobby();
 out.println(hobby[0]); out.println(hobby[1]); out.println(hobby[2]); %>
 <tr><td><%=list.get(i).getStud_id()%></td>
       <td><%=list.get(i).getStud_name()%></td>
       <td><%=list.get(i).getStud_id()%></td>
       <td><%=list.get(i).getStud_id()%></td>
       <td><%=hobby[0]%><%=hobby[1]%><%=hobby[2]%></td></tr>
<% } } %>
</table></div></fieldset>
</section><footer><p>&copy;20XX Made by Korea. All rights reserved.</p></footer></body></html>
