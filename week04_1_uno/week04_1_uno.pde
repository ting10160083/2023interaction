void setup(){
  size(400,400);//先給一個400X400視窗
}
int [][] card = new int[8][11];//給一陣列
void draw(){
  background(255);
  for(int i=0; i<8; i++){//8橫列
    for(int j=0; j<11; j++){//11直行
      rect(j*32, i*50, 32, 50);//格子長寬
    }
  }
}
