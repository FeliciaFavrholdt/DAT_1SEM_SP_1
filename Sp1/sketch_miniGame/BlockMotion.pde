public void blockMove () {
  if (mouseX > b-boxSize && mouseX < b+boxSize && 
      mouseY > n-boxSize && mouseY < n+boxSize) {
    overBlock = true;  
    if(!onBlock) { 
      stroke(255); 
      fill(155, 1);
    } 
  } else {
    overBlock = false;
  }
  
  
  //Block 
  block1.display();
  block2.display();
  block3.display();
  block4.display();
  block5.display();
  block6.display();
  block7.display();
  block8.display();
} 
