<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="dao" class="studpkg.StudDAO1"/>
<%
String stud_id=request.getParameter("stud_id");
boolean flag = true;
String ans = "";
if(stud_id == null){
stud_id="";
}
if(!stud_id.equals("")){
flag = dao.checkId(stud_id);
}
if(flag){
ans="NO";
out.print(ans);
}else{
ans = "YES";
out.print(ans);
}
%>
