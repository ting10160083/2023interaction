//互動模式 Interactive Mode (Active Mode)
void setup(){//設定
  size(500,500); 
  background(0, 255, 255);
}

void draw(){ //畫圖 每秒畫60次
  ellipse(mouseX,mouseY, 8, 8);
}
