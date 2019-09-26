<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<% response.setHeader("Cache-Control","no-cache");%>
<!DOCTYPEhtml> <!-- userOut.jsp -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>Out 내장 인스턴스 실습</title>
</head>
<body>
<%
   int totalBuffer = out.getBufferSize();
   int remainBuffer = out.getRemaining();
   int bufferConsuming = totalBuffer-remainBuffer;
%>
<%
out.println("전체 출력버퍼 크기: "+totalBuffer + "bytes<br/>");
out.println("사용가능 출력버퍼 크기: "+remainBuffer + "bytes<br/>");
out.println("사용중인 출력버퍼 크기: "+bufferConsuming + "bytes");
%>
</body></html>
