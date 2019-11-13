package db.test;   //package bean.user;
import java.sql.*;
public class Dbmain_Temp2 {
 public static void main(String[] atgs) {
 boolean flag=false;
 Connection conn=null;
try{
 Class.forName("com.mysql.jdbc.Driver");
} catch(ClassNotFoundException e) {e.printStackTrace(); }
PreparedStatement pstmt=null;
String stud_id, stud_passwd, stud_name, stud_email, stud_gender;
try{
System.out.println("홍길동 입력합니다");
stud_id="kdhong";
stud_passwd="1234";
stud_name="홍길동";
stud_email="kdhong@abc.com";
stud_gender="남자";
Minsert minst = new Minsert();
flag = minst.minsert(stud_id, stud_passwd, stud_name, stud_email, stud_gender);
System.out.println("이몽룡 입력합니다");
stud_id="mrlee";
stud_passwd="4321";
stud_name="변학도";
stud_email="hdbyun@abc.com";
stud_gender="남자";
flag = minst.minsert(stud_id, stud_passwd, stud_name, stud_email, stud_gender);
} catch(Exception e) {e.printStackTrace();
} finally {
 try {if(conn != null) conn.close(); if(pstmt != null) pstmt.close();
 } catch(Exception e) {e.printStackTrace();}
}}}
