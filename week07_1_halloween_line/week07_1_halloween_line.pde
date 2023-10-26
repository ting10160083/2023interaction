void setup(){
  size(400,400);
  background(255);
}
void draw(){
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);//如果滑鼠按下去，畫線
}
void mouseReleased(){
  background(255);//滑鼠放開，瞬間清空
}
