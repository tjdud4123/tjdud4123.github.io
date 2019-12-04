package studpkg;
import java.sql.*;
import java.util.*;

public class StudDAO {
 Connection conn;
 PreparedStatement ps;
 ResultSet rs;

 String url, user, pass;
 public StudDAO() {
 try {
 Class.forName("com.mysql.jdbc.Driver");
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
 url="jdbc:mysql://localhost:3306/hdbwork";
 user="hstud";
 pass="gkrtod123A!";
 }
public int insertStuduser(String stud_id, String stud_passwd, String stud_name, String stud_phone, String stud_gender, String stud_email, String [] sHobby) throws SQLException {
String sql = "insert into studuser20171360(stud_id, stud_passwd, stud_name, stud_phone, stud_gender, stud_email, stud_hobby1, stud_hobby2, stud_hobby3, stud_regdate) values (?,?,?,?,?,?,?,?,?,?);";
try{
conn = DriverManager.getConnection(url,user,pass);
ps = conn.prepareStatement(sql);
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
String stud_regdate = formatter.format(new java.util.Date());
ps.setString(1,stud_id); ps.setString(2,stud_passwd); ps.setString(3,stud_name);
ps.setString(4,stud_phone); ps.setString(5,stud_gender); ps.setString(6,stud_email);
ps.setString(7,sHobby[0]); ps.setString(8,sHobby[1]); ps.setString(9,sHobby[2]);
ps.setString(10,stud_regdate);
int rec_no = ps.executeUpdate();
return rec_no;
} finally {
if(ps != null)
ps.close();
if(conn != null)
conn.close();
}
}
public boolean checkId(String stud_id) throws Exception{
 boolean flag = false;
 String sql = "select * from studuser20171360 where stud_id=?";
 try{
 conn = DriverManager.getConnection(url,user,pass);
 ps=conn.prepareStatement(sql);
 ps.setString(1,stud_id);
 ResultSet rs = ps.executeQuery();
 if(rs.next()){
 flag = true;
 }
}finally {
 if(ps != null)
 ps.close();
 if(conn != null)
 conn.close();
}
return flag;
}
public boolean checkPwd(String stud_id, String stud_passwd) throws SQLException{
boolean flag=false;
String sql = "select * from studuser20171360 where stud_id=?";
try{
conn = DriverManager.getConnection(url,user,pass);
ps=conn.prepareStatement(sql);
ps.setString(1,stud_id);
ResultSet rs = ps.executeQuery();
if(rs.next()){
if(stud_id.equals(rs.getString("stud_id").trim()) && stud_passwd.equals(rs.getString("stud_passwd").trim()))
{
 flag=true;
}else{
 flag=false;
}
}
}finally{
if(ps != null)
ps.close();
if(conn != null)
conn.close();
}
return flag;
}
}
