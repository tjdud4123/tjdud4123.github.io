<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html> <!-- Lotto.jsp -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<jsp:useBean id="Lotto" class="bean.user.Lotto1">
<jsp:setProperty name="Lotto" property="num" value=" "/>
</jsp:useBean>
<body>
<h2>로또 추첨하기</h2>
로또 번호 : <jsp:getProperty name="Lotto" property="num"/><br/>
<a href=Lotto.jsp>로또 다시 추첨하기</a>
</body>
</html>
