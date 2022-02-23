class Blocks {
    //properties 
    int x;
    int y;
    int w;
    int h;
    int speed = 10;
    color c;
    int r; // radius value on all four corners of rect  
    
    //constructor 
    Blocks(color tempC, int tempX, int tempY, int tempW, int tempH, int tempR) {
      c = tempC;
      x = tempX; 
      y = tempY;
      w = tempW;
      h = tempH;
      r = tempR; 
    }

    //methods
    public void display() {
      strokeWeight(1);
      rectMode(CENTER);
      
      fill(c); 
      rect(x, y, w, h, r); 
    }
    
    public void move() {
    x = x + speed;
      if (x >= w) {
      x += 0;
      println("something moves");
      } else {
        println("not working");
      }
    }  
}
