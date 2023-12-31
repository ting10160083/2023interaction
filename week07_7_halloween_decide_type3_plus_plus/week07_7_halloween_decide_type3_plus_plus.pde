ArrayList<PVector> pt=new ArrayList<PVector>();//大資料結構裡有一個小資料PVector
void setup(){
  size(400,400);
  background(255);
}
float ghostX=400,ghostY=20;//鬼的座標
void mouseDragged(){//按下滑鼠拖曳
  pt.add(new PVector(mouseX,mouseY));
}
void draw(){
  background(255);
  strokeWeight(1);
  stroke(0); ellipse(200,200,15,15);//主角在這
  stroke(0); ellipse(ghostX,ghostY,15,15);
  strokeWeight(4);
  float dpx=0,dpy=0;//要看p.x p2.x的差距，p.y p2.y的差距
  int rightdown = 0;//往右下
  for(int i=0;i<pt.size()-1;i++){
    PVector p=pt.get(i),p2=pt.get(i+1);
    dpx+=abs(p2.x-p.x);//累積x的移動量
    dpy+=abs(p2.y-p.y);//累積y的移動量
    if(p2.x-p.x > 0 && p2.y-p.y > 0) rightdown++;
  }
  if(dpx>100 && dpy<40) stroke(255,0,0);//type1紅色橫線
  else if(dpx<40 && dpy>100) stroke(0,0,255);//type2藍色直線
  else if(rightdown>30) stroke(0,255,0);//type3的前半段，往右下
  else stroke(0);//不是，就黑色線
  for(int i=0;i<pt.size()-1;i++){//倒過來的for迴圈，滑鼠放開馬上清空
    PVector p=pt.get(i),p2=pt.get(i+1);
    line(p.x,p.y,p2.x,p2.y);
  }
  float dx=200-ghostX, dy=200-ghostY,len=sqrt(dx*dx+dy*dy);
  ghostX+=dx/len/3;
  ghostY+=dy/len/3;
}
void mouseReleased(){
  for(int i=pt.size()-1;i>=0;i--){//倒過來的for迴圈，滑鼠放開馬上清空
    pt.remove(i);
  }
}
