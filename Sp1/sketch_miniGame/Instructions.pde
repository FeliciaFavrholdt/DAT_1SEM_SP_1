 class Instructions {
   //properties 
   String t1;
   String t2; 
   String t3;
   int u = 300;
  
  //constructor 
    Instructions() {
      t1 = "BLOCKS";
      t2 = "Your goal is to move the white block out of the maze by moving other blocks that are in the way. You must move the blocks using your mouse."; 
      t3 = "Press UP to play music. Press DOWN to pause."; 
    }
   
    
void display() {  
  fill(255); //fills text with color
  textSize(50); //change text size here
  text(t1, posX/2+u, posY/3+50, u, u);
  
  textSize(20);
  text(t2, posX/2+300, posY/2, u-100, u); 
  text(t3, posX/2+300, posY-20, u-100, u);
  }
  
}
