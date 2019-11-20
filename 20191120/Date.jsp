<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.util.*"%>
<%
java.text.SimpleDateFormat formatter = new
java.text.SimpleDateFormat("yyyyMMddHHmmss");
String today = formatter.format(new java.util.Date());
out.println(today);
%>
