void setup(){
  size(800,800);//改變視窗大小
  myShuffle();//呼叫myShuffle 把方框的值塞進去
}
void myShuffle(){
   for(int i=0; i<8; i++){
    for(int j=0; j<11; j++){
       cardN[i*11+j] = j;
       cardC[i*11+j] = C[i%4];
    }
  }
  for(int i=0;i<10000;i++){
    int a = int(random(88)), b = int(random(88));
    int temp = cardN[a];
    cardN[a] = cardN[b];
    cardN[b] = temp;
    temp = cardC[a];
    cardC[a] = cardC[b];
    cardC[b] = temp;
  }
}
int [] cardN = new int[88];//card number
int [] cardC = new int[88];//card color
color [] C = {#FF5555, #FFAA00, #55AA55, #5555FF};
void draw(){
  background(255);
  if(mousePressed && mouseButton==RIGHT){//cheat key, peek all
    for(int i=0; i<8; i++){
      for(int j=0; j<11; j++){
        drawCard(j*32, i*50, cardC[i*11+j], cardN[i*11+j], 32);
      }
    }
  }
  else drawCard(50, 50, #000000, 99, 128);//牌堆
  for(int i=0;i<myCard;i++){
    if(i%4==0) drawCard(430+40*i/4, 50, cardC[i], cardN[i], 128);
    if(i%4==1) drawCard(630-40+40*i/4, 350, cardC[i], cardN[i], 128);
    if(i%4==2) drawCard(430-80+40*i/4, 650, cardC[i], cardN[i], 128);
    if(i%4==3) drawCard(230-120+40*i/4, 350, cardC[i], cardN[i], 128);
  }
}
int myCard = 0;
void mousePressed(){
  if(mouseButton==LEFT) myCard++;
}
void drawCard(int x, int y, color c, int n, int w){//w-小卡片
  float s = w/32.0;//scale size
  stroke(128);//灰色邊框
  fill(255);//白色
  rect(x, y, 32*s, 50*s, 7*s);//弧度
  noStroke();
  fill(c);
  rect(x+2.5*s, y+2.5*s, 32*s-5*s, 50*s-5*s, 4*s);
  
  //把卡牌中間白色橢圓印出
  pushMatrix();
  fill(255);
  translate(x+16*s, y+25*s);
  rotate(radians(48));//可調整
  ellipse(0, 0, 20*s, 30*s);
  popMatrix();
  
  textAlign(CENTER,CENTER);
  textSize(9*s);
  text(""+n, x+7*s, y+6*s);//空字串加上n(不要直接寫數字)
  
  textSize(20*s);
  fill(c);
  text(""+n, x+16*s, y+22*s);//空字串加上n 
}
