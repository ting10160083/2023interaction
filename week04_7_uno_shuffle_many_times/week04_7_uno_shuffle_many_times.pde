void setup(){
  size(400,400);
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
//int [][] card = new int[8][11];
int [] cardN = new int[88];//card number
int [] cardC = new int[88];//card color
color [] C = {#FF5555, #FFAA00, #55AA55, #5555FF};
void draw(){
  background(255);
  for(int i=0; i<8; i++){
    for(int j=0; j<11; j++){
      drawCard(j*32, i*50, cardC[i*11+j], cardN[i*11+j]);//drawCard(j*32, i*50, C[i%4], j);
    }
  }
}
void drawCard(int x, int y, color c, int n){
  stroke(128);//灰色邊框
  fill(255);//白色
  rect(x, y, 32, 50, 7);//弧度
  noStroke();
  fill(c);
  rect(x+3, y+3, 32-5, 50-5, 4);
  
  //把卡牌中間白色橢圓印出
  pushMatrix();
  fill(255);
  translate(x+16, y+25);
  rotate(radians(48));//可調整
  ellipse(0, 0, 20, 30);
  popMatrix();
  
  textAlign(CENTER,CENTER);
  textSize(9);
  text(""+n, x+7, y+6);//空字串加上n(不要直接寫數字)
  
  textSize(20);
  fill(c);
  text(""+n, x+16, y+22);//空字串加上n 
}
