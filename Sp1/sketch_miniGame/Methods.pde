public void loadIntro() {
  fill(0);
  rect(posX, posY, posX, posY);
}

public void loadBackground() {
  //fill background and load image
  fill(0);
  bg = loadImage("bg_1.jpg");
  
  image(bg, 0, 0, posX, posY); //loads background image
}

public void loadMusicIcon() {
  int d = 50;
  
  music = loadImage("music.png");
  
  image(music, 800, 550, d, d); // loads music icon
}

public void loadGamelvl(){  
  int e = 300;
  
  rectMode(CENTER); //set rectangles to center mode
  strokeWeight(10); //makes stroke thicker
  stroke(0); //adds black stroke

  fill(0); // inserts fill colour from color variables
  rect(posX/2-150, posY/2, e*2, e*2); //size of left box
  rect(posX/2+300, posY/2, e, e*2); //size of right box
}

public void loadFont() {
  //add fonts from data folder 
  font = loadFont("bold100.vlw");
  textFont(font, 48);
  fill(255);
  textAlign(CENTER);
  text("", 250, 250);
}

public void addColorToArray() {
color c1 = color(186, 90, 206); 
color c2 = color(205, 151, 216);
color c3 = color(160, 98, 173);
color c4 = color(116, 65, 126);
color c5 = color(255, 255, 255); //white block
color c6 = color(153, 75, 232);
color c7 = color(102, 22, 118);
color c8 = color(135, 40, 219);
  
  colorList[0] = c1;
  colorList[1] = c2;
  colorList[2] = c3;
  colorList[3] = c4;
  colorList[4] = c5;
  colorList[5] = c6;
  colorList[6] = c7;
  colorList[7] = c8;
}
