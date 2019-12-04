<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html><!-- beanLogout.jsp -->
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
<jsp:useBean id="dto" class="studpkg.StudDTO_1" scope="session"/>
</head>
<body>
<%
dto.setVerified(false);
response.sendRedirect("./beanHome.html");
%>
</body>
</html>
