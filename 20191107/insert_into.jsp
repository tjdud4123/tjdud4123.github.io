<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPEhtml> <!-- insert_into.jsp -->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>JDBC insert실습</title></head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); //mySQL
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbwork","hstud","gkrtod123A!");
String sql="INSERT INTO t20171360(stud_id,stud_passwd,stud_name,stud_email,stud_gender)VALUES(?,?,?,?,?);";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1,"sypark");
pstmt.setString(2,"4321");
pstmt.setString(3,"seoyoung");
pstmt.setString(4,"sypark@abc.com");
pstmt.setString(5,"female");
pstmt.executeUpdate();
ResultSet rs=pstmt.executeQuery("SELECT * FROM t20171360 where stud_id='sypark';");
while(rs.next()) {
out.println(rs.getString("stud_id"));
out.println(rs.getString("stud_passwd"));
out.println(rs.getString("stud_name"));
out.println(rs.getString("stud_email"));
out.println(rs.getString("stud_gender"));
}
rs.close();
pstmt.close();
conn.close();
%>
</body></html> 
