void setup(){
  size(400,400,P3D); //P3D-OPENGL功能(Processing的3D功能)
}
void draw(){
  background(#FFFFF2); //老師喜歡的鵝黃色
  pushMatrix(); //備份矩陣
    translate(mouseX, mouseY);
    box(100); //3D的盒子或方塊
  popMatrix(); //還原矩陣
}