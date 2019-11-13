package db.test;   //package bean.user;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
public class Dbmain_Temp {
 public static void main(String[] atgs) {
 boolean flag=false;
 Connection conn=null;
try{
 Class.forName("com.mysql.jdbc.Driver");
} catch(ClassNotFoundException e) {e.printStackTrace(); }
PreparedStatement pstmt=null;
String stud_id, stud_passwd, stud_name, stud_email, stud_gender;
try{
System.out.println("모두 지웁니다");
Mdelete mdelete = new Mdelete();
flag=mdelete.mdelete("all","");
} catch(Exception e) {e.printStackTrace();
}finally {
try{if(conn != null) conn.close(); if(pstmt != null) pstmt.close();
} catch(Exception e) {e.printStackTrace(); }
}}}
