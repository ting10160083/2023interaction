void setup(){
  size(400,600);
  textSize(20);
}
String Q="hello",A="";//題目，主角
float x=100,y=100;//從這裡往下掉
void draw(){
  background(0);
  fill(#FFFFFF); text(Q,x,y);
  fill(#FF0000); text(A,x,y);
  ellipse(200,550,20,20);//往裡移動
  float dx=(200-x),dy=(550-y),d=sqrt(dx*dx+dy*dy)*3;//速度
  x+=dx/d;
  y+=dy/d;
  if(keyPressed){
    stroke(255,0,0);
    line(200,550,x,y);
  }
}
void keyPressed(){
  int i=A.length();
  if(key==Q.charAt(i)){//相同
    A+=key;
  }
}
