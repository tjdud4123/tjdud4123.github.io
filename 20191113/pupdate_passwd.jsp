<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPEhtml> <!-- pupdate_passwd.jsp -->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>JDBC pupdate_passwd실습</title></head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); //mySQL
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbwork","hstud","gkrtod123A!");
String sql = "UPDATE t20171360 SET stud_passwd=? WHERE stud_id=?;";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1,"1234");
pstmt.setString(2,"psy");
pstmt.executeUpdate();
String sql2 = "SELECT * FROM t20171360 WHERE stud_id=?;";
PreparedStatement pstmt2 = conn.prepareStatement(sql2);
pstmt2.setString(1,"psy");
ResultSet rs = pstmt2.executeQuery();
while(rs.next()) {
 out.println(rs.getString("stud_id"));
 out.println(rs.getString("stud_passwd"));
}
rs.close();
pstmt.close();
pstmt2.close();
conn.close();
%>
</body></html>
