void setup(){
  size(400,400,P3D); //P3D-OPENGL功能(Processing的3D功能)
}
void draw(){
  background(#FFFFF2); //老師喜歡的鵝黃色
  pushMatrix(); //備份矩陣
    translate(mouseX, mouseY); //移動
    rotateY(radians(mouseX)); //對Y軸轉動
    fill(0,255,0); //面填充成綠色
    box(100); //3D的盒子或方塊
    
    noFill(); //不填充
    scale(2); //放大兩倍
    box(100); //雖是100的盒子，但上面有放大他就放大了
  popMatrix(); //還原矩陣
}
