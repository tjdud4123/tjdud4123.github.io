<%@ page contentType="text/html; charset=utf-8" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="mlogin" class="bean.user.Login">

<jsp:setProperty name="mlogin" property="userName"/>

</jsp:useBean>

<html>

<head><title>JavaBeans 테스트</title></head>

<body>

<b><jsp:getProperty name="mlogin" property="userName"/></b>님 반갑습니다.

</body>

</html>
