import processing.sound.*;//有聲音的功能

SoundFile file;
void setup(){
  size(300,300);
  file = new SoundFile(this,"1.mp3");//變數初始化
  file.play();//播放
}
void draw(){
  
}//一定要加這個函式音樂才會撥放(很重要)
