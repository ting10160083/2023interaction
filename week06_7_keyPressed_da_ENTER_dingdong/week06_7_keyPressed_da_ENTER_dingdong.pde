import processing.sound.*;
SoundFile da, dingdong, ouch;
void setup(){
  size(800,400);
  textSize(64);
  da=new SoundFile(this, "da.mp3");
  dingdong=new SoundFile(this, "dingdong.mp3");
  ouch=new SoundFile(this, "ouch.mp3");
}
String line = "";
void draw(){
  background(0);//背景黑色
  text("Input: "+line,50,100);
}
void keyPressed(){//按一個按鍵會跑出字
  if(key>='A' && key<='Z') {line += key;da.play();}//小心大括號
  if(key>='a' && key<='z') {line += key;da.play();}//小心大括號
  if(key==BACKSPACE && line.length()>0){
    line = line.substring(0,line.length()-1);
    ouch.play();
  }
  if(key==ENTER){
    dingdong.play();
  }
}
