// **** FELICIA FAVRHOLDT MINIGAME ****

// INSTRUCTIONS & ABOUT
/* This game is about moving blocks around - based on the game Rush Hour Blocks. 
Make the white block leave the maze by moving the other blocks. */ 

//import soundfile
import processing.sound.*;
SoundFile file;

//define images
PImage bg; // background 
PImage playButton; //play
PImage pauseButton; //pause
PImage music; 

//define fonts
PFont font; 

//define objects
Blocks block1;
Blocks block2;
Blocks block3;
Blocks block4;
Blocks block5;
Blocks block6;
Blocks block7;
Blocks block8;

Instructions ins;

// define global variables 
int posX = 1000;
int posY = 800;

float b;
float n; 
int boxSize = 600;
boolean overBlock = false; 
boolean onBlock = false;
float xOffset = 0.0; 
float yOffset = .0; 

// define color array   
color[] colorList = new color[8];

public void settings(){
  size(posX, posY); //size of project 
}

// main - all static variables here
public void setup() { 
  
  b = posX/2; 
  n = posY/2; 
  
  addColorToArray();
  
  //load a soundfile from data file
  file = new SoundFile(this, "zapp.mp3");

  //load font
  loadFont();
 
  //Blocks(color tempC, float tempX, float tempY, float tempW, float H, int tempR) 
      block1 = new Blocks(colorList[0], 100, 250, 100, 300, 20); 
      block2 = new Blocks(colorList[1], 100, 600, 100, 200, 20); 
      block3 = new Blocks(colorList[2], 600, 550, 100, 300, 20);  
      block4 = new Blocks(colorList[3], 250, 150, 200, 100, 20); 
      block5 = new Blocks(colorList[4], 250, 350, 200, 100, 20); 
      block6 = new Blocks(colorList[5], 250, 550, 200, 100, 20);
      block7 = new Blocks(colorList[6], 400, 650, 300, 100, 20); 
      block8 = new Blocks(colorList[7], 400, 250, 100, 300, 20); 
  
  ins = new Instructions();
}

// draw - loop all dynamics here
public void draw() {
  
  loadIntro();
  loadBackground();
  loadGamelvl();
  loadMusicIcon();
  
  ins.display();
  
  block1.display();
  block2.display();
  block3.display();
  block4.display();
  block5.display();
  block5.move();
  block6.display();
  block7.display();
  block8.display();
  
  blockMove();
}

public void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      file.play();
     }
  }
}
  
public void keyReleased() {
  if (key == CODED) {
    if (keyCode == DOWN) {
      file.pause();
    } 
  }
}

public void mousePressed() {
  if(overBlock) {
    onBlock = true;
    fill(255,255,255); 
  } else {
    onBlock = false;
  }
  xOffset = mouseX-b;
  yOffset = mouseY-n;   
}


public void mouseDragged() {
    if(onBlock == false) {
    b = mouseX-xOffset;
    n = mouseY-yOffset;
  }
}
  
public void mouseReleased() {
  onBlock = false;
}

  
  
