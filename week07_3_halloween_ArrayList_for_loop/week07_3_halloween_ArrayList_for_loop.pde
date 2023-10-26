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
  ellipse(200,200,15,15);//主角在這
  //if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);//如果滑鼠按下去，畫線
  for(int i=0;i<pt.size();i++){
    PVector p=pt.get(i);
    ellipse(p.x,p.y,3,3);
  }
  ellipse(ghostX,ghostY,15,15);//移動量值
  float dx=200-ghostX, dy=200-ghostY,len=sqrt(dx*dx+dy*dy);
  ghostX+=dx/len/3;
  ghostY+=dy/len/3;
}
void mouseReleased(){
  background(255);//滑鼠放開，瞬間清空
}
