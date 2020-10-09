float x ;
float y ;
float w ;
float h ;
float s ;
float a ;
float b ;
float c ;
PImage img;
PImage img2;
import processing.sound.*;
SoundFile creep1;
SoundFile creep2;
void setup(){
 x = 180;
 y = 210;
 w = 80;
 h = 80;
 s = 280;
 a = random(255);
 b = random(255);
 c = random(255);
 img= loadImage("hiclipart.com.png");
 img2= loadImage("hiclipart.com (1).png");
 creep1= new SoundFile(this, "Horror-Game-Intro.mp3");
 creep2= new SoundFile(this, "The-Streets.mp3");
 creep2.loop();
 size(650,500);
 stroke(10);
 noFill();
 textSize(25);
   fill(255, 0, 0);
   background(0);
text("CLICK AND HOLD BUTTON TO CHOOSE YOUR FATE", 10, 20);
}

void draw(){
 rect(x,y,w,h);
 fill(c,b,a);
 if(mousePressed){
  if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
   fill(0);
   textSize(32);
   fill(a, b, b, c);
text("BAD CHOICE   release and try again", 10, 60); 
   image (img,0,0);
   creep1.loop();
  }
  
 } 
 rect(s,y,w,h);
 fill(b,c,a);
 if(mousePressed){
  if(mouseX>s && mouseX <s+w && mouseY>y && mouseY <y+h){
   fill(0);
   textSize(32);
   fill(c, a, c, b);
text("BAD CHOICE  release and try again", 10, 90); 
   image (img2,0,0);
   creep1.loop();
  }
  
 } 
}
void mouseReleased()
{
  x= random(650);
  y= random(500);
  a = random(255);
  b = random(255);
  c = random(255);
   background(a,b,c);
  
}
