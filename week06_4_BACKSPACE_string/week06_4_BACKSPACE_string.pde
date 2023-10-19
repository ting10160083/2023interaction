void setup(){
  size(800,400);
  textSize(64);
}
String line = "";
void draw(){
  background(0);//背景黑色
  text("Input: "+line,50,100);
}
void keyPressed(){//按一個按鍵會跑出字
  if(key>='A' && key<='Z') line += key;
  if(key>='a' && key<='z') line += key;//只能秀出A-Z/a-z
  if(key==BACKSPACE && line.length()>0){
    line = line.substring(0,line.length()-1);
  }
}
