PImage img;
int [][] pos={{91,489},{247,524},{178,523},{160,492},{153,455},{194,490},{228,490},{262,490},{322,456},{296,490},{331,490},{364,491},{314,524},{278,524},{358,458},{390,455},{84,457},{186,457},{128,490},{220,456},{288,457},{213,523},{120,456},{142,523},{254,456},{111,523}};
void setup(){
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);//用中心點畫四邊形
}
void draw(){
  background(#FFFFF2);//淡黃色背景
  image(img,0,600-266);
  fill(255,0,0,128);//128是半透明
  rect(mouseX,mouseY,28,30,5);
  fill(0,255,0,128);//半透明綠色
  for(int i=0;i<26;i++){
     if(typing.charAt(ID)-'a' == i) rect(pos[i][0],pos[i][1],28,30,5);
     if(pressed[i])rect(pos[i][0],pos[i][1],28,30,5);
  }
  textSize(50);
  fill(0);//黑色的字
  text(typing,50,50);//要打的字
  fill(255,0,0);//紅色
  text(typed+typing.charAt(ID),50,100);//現在要打的字是typing.charAt(0)
  fill(0);
  text(typed,50,100);//已經打好的字
}
String typing = "printf";
String typed = "";//一開始打了0個字
int ID=0;//第幾個字母要被打
boolean [] pressed = new boolean[26];//Java的陣列宣告 都是0或false
void keyPressed(){
  if(key>='a'&&key<='z'){
    pressed[key-'a']=true;
    typed+=key;
    ID++;
  } 
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a']=false;
}
void mousePressed(){
  println(mouseX,mouseY);//定位 印出mouse座標
}
