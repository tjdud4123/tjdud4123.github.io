package bean.user;
public class Dice2{
 private int num;
 private int startNum;
 private int endNum;
 public void setStartNum(int startNum) {
  this.startNum = startNum;
}
public int getStartNum() {
 return startNum;
}
public void setEndNum(int endNum) {
 this.endNum = endNum;
}
public int getEndNum() {
 return endNum;
}
public int getNum() {
 num = (int)(Math.random()*(endNum-startNum)) + startNum;
 return num;
}
}
