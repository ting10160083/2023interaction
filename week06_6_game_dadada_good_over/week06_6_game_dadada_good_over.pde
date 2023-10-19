import processing.sound.*;
SoundFile dadadadada, good, over;
void setup(){
  size(300,300);
  dadadadada=new SoundFile(this, "dadadadada.mp3");
  good=new SoundFile(this, "good.mp3");
  over=new SoundFile(this, "over.mp3");
}
void draw(){
  text("press 1,2,3",100,100);
}
void keyPressed(){
  if(key=='1') dadadadada.play();
  if(key=='2') good.play();
  if(key=='3') over.play();
}
