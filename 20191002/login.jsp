<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%!
boolean isSessionOn(String str)
{
 if( (str == null) || str.equals("")) return false;
 return true;
}
%>
<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport"content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>회원 가입</title></head>
<body>
<%
if(!isSessionOn(request.getParameter("user_id")) || !isSessionOn(request.getParameter("user_password")))
{
 out.println("<header><h2>실습을 환영합니다</h2></header>");
 out.println("<nav><ul>");
 out.println("<li><a href=\"http://203.237.142.245/~s20171360/week5/login.html\">로그인</a><li>");
 out.println("<li><a href=\"http://localhost/JSPWORK:8080/member.jsp\">회원가입</a><li>");
 out.println("</ul></nav>");
 out.println("<section>");
 out.println("<p> 정확히 입력하세요.</p>");
 out.println("<p><a href=\"http://203.237.142.245/~s20171360/week5/login.html\">로그인 하기</a></p>");
 out.println("</section>");
 out.println("<footer><p>© 2016 Made by Korea. All right reserved.</p> </footer>");
 return;
}
String userId="admin";
String userPassword="admin";
//아이디 오류
if (request.getParameter("user_id").equals(userId) && request.getParameter("user_password").equals(userPassword))
{ //세션 변수 및 값 설정
 session.setAttribute("sid", request.getParameter("user_id"));
 session.setAttribute("spasswd", request.getParameter("user_password"));
 out.println("<header><h2>실습을 환영합니다</h2></header>");
 out.println("<nav><ul>");
 out.println("<li><a href=\"http://203.237.142.245/~s20171360/week5/search.jsp\">회원검색</a></li>");
 out.println("<li><a href=\"http://203.237.142.245/~s20171360/week5/logout.jsp\">로그아웃</a></li>");
 out.println("</ul></nav>");
 out.println("<section>");
 out.println("<p> 로그인 하였습니다." + (String)session.getAttribute("sid")+"님 - <a href=\"login.jsp\">로그아웃</a></p>");
}
else
{
 out.println("<header><h2> 실습을 환영합니다. </h2></header>");
 out.println("<nav><ul>");
 out.println("<li><a href=\"http://203.237.142.245/~s20171360/week5/search.jsp\">로그인</a></li>");
 out.println("<li><a href=\"http://localhost:8080/JSPWORK/member.jsp\">회원가입</a></li>");
 out.println("</ul></nav>");
 out.println("<section>");
 out.println("<p>정확히 입력하세요.</p>");
 out.println("<p><a href=\"http://203.237.142.245/~s20171360/week5/search.jsp\">로그인 하기</a></p>");
}
 out.println("</section>");
 out.println("<footer><p>© 2016 Made by Korea. All right reserved. </p> </footer>");
%>
</body></html>
