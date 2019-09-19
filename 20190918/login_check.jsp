<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!doctype html> <!-- login_check.jsp -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<meta name="viewport"content="width=device-width, initial-scale=1"/>
<title>요청 결과</title>
</head>
<body>
입력한 개인정보<br/>
이름 = <%=request.getParameter("stud_user")%><br/>
학번 = <%=request.getParameter("stud_passwd")%>
</body>
</html>
