<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html> <!-- welcome.jsp -->
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>result of form request</title>
</head>
<body>
   환영합니다. <%=request.getParameter("keyword")%>를 검색합니다!<br/>
</body>
</html>
