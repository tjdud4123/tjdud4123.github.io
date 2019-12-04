<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%> <%@ page import="sofa20171360pkg.S20171360DTO"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport"content="width=device-width, initial-scale=1">
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
 </style><title>웹서버 프로그래밍</title>
<jsp:useBean id="s20171360dto" class="sofa20171360pkg.S20171360DTO" scope="session"/>
<jsp:useBean id="s20171360dao" class="sofa20171360pkg.S20171360DAO" scope="session"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%!
boolean isNotEmpty(String str){
    if(str==null || str.equals(""))
       return false;
    return true;
}
%></head><body>

 <header><h2>SOFA 관리 시스템</h2></header>
 <nav><ul>
<li><a href="./sofaHome_1.html">홈페이지</a></li>
<li><a href="./sofaFind_1.jsp">검색</a></li></ul></nav>
 <section>
   <fieldset class = "fset"> <legend>검색결과</legend>
   <div style="overflow-x:auto; overflow-y:auto;">
     <table class="ex1">
       <tr><th>브랜드</th><th>색상</th><th>가격</th><th>가로/세로/높이</th><th>사이즈</th><th>커버주요재질</th></tr>
<% 
String search_select = request.getParameter("search_select");
String sofa_search=request.getParameter("sofa_search");
List<S20171360DTO> list = new ArrayList<S20171360DTO>();
if(!isNotEmpty(search_select) || !isNotEmpty(sofa_search)){
    response.sendRedirect("./sofaFind_1.jsp");
}
if("sofa_all".equals(search_select)){
    list=s20171360dao.findAllSofa(sofa_search);
} else if("sofa_brand".equals(search_select)){
    list=s20171360dao.findBrandSofa(sofa_search);
} else if("sofa_size".equals(search_select)){
    list=s20171360dao.findSizeSofa(sofa_search);
}

for(int i=0;i<list.size();i++){
	%>
<tr><td><%=list.get(i).getSofa_brand()%></td>
<td><%=list.get(i).getSofa_color()%></td>
<td><%=list.get(i).getSofa_price()%></td>
<td><%=list.get(i).getSofa_width()%></td>
<td><%=list.get(i).getSofa_size()%></td>
<td><%=list.get(i).getSofa_material()%></td>
</tr>
<% } %>
     </table></div>
    </fieldset>
</section><footer><p>&copy;2019 Made by Korea. All right reserved.</p></footer></body></html>
