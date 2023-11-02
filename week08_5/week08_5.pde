//碰撞偵測:Mario vs. Pikachu
//牛頓力學 (1)靜者恆靜動者恆動 (2)f=m*a 位置、速度、加速度
void setup(){
  size(400,400);
}
float marioX=50,marioY=250,vx=0,vy=0;//沒有速度
void draw(){
  background(108,137,255);
  marioX+=vx;
  marioY+=vy;
  //vy+=0.98;//重力加速度
  fill(255,0,0); ellipse(marioX,marioY,15,25);//主角
  fill(229,119,42); rect(0,260,400,150);//地板
}
void keyPressed(){
  if(keyCode==RIGHT) vx=2;//按右鍵，右移
  if(keyCode==LEFT) vx=-2;//按左鍵，左移
  if(keyCode==UP) vy=-20;//按上鍵，上移
}
void keyReleased(){
  if(keyCode==RIGHT||keyCode==LEFT) vx=0;//按鍵放開就停止移動
}
