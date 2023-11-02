//碰撞偵測:Mario vs. Pikachu
//牛頓力學 (1)靜者恆靜動者恆動 (2)f=m*a 位置、速度、加速度
void setup(){
  size(400,400);
}
float x=50,y=250,vx=2,vy=-20;
void draw(){
  x+=vx;
  y+=vy;
  vy+=0.98;//重力加速度
  if(y>350){//利用if判斷有沒有碰到地板(碰撞) y=350位置
    y=350;
    vy=-vy*0.5;//能量耗損、速度變慢
    vx=vx*0.8;
  }
  ellipse(x,y,10,10);
}
