<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPEhtml> <!-- update_passwd.jsp -->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>JDBC update_passwd실습</title></head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); //mySQL
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbwork","hstud","gkrtod123A!");
Statement stmt = conn.createStatement();
int rec_no=stmt.executeUpdate("UPDATE t20171360 SET stud_passwd='4321'WHERE stud_id='psy';");
ResultSet rs=stmt.executeQuery("SELECT * FROM t20171360 where stud_id='psy';");
while(rs.next()) {
out.println(rs.getString("stud_id"));
out.println(rs.getString("stud_passwd"));
}
rs.close();
stmt.close();
conn.close();
%>
</body></html>
