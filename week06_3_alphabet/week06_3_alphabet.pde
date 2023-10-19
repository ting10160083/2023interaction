void setup(){
  size(500,500);
  textSize(64);
}
String line = "Input: ";//字串，宣告String有一個line
void draw(){
  text(line,100,100);
}
void keyPressed(){//按一個按鍵會跑出字
  if(key>='A' && key<='Z') line += key;
  if(key>='a' && key<='z') line += key;//只能秀出A-Z/a-z
}
