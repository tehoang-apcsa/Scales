boolean shift = true;
void setup() {
  size(500, 500);  
  background(135,206,235);
  frameRate(3);
}

void draw() {
background(135,206,235);
  for(int yy = 80 ; yy <= 500 ; yy += 100) 
  
  {
    
    for(int xx = -65 ; xx <= 600 ; xx += 100) 
    
    {
      
      if (shift == true) 
      
        scale(xx + 50, yy);
        
      else
      
        scale(xx, yy);
        
    }
    
    if (shift == true)
    
      shift = false;
      
      else 
      
      shift = true;
  }
  

}
void scale(float x, float y) {
fill(177, 156, 217);
stroke(191, 64, 191);
strokeWeight(3);
bezier(x-30, y, x-90, y-100, x+90, y-100, x+30, y);
ellipse(x,y,60,20);
bezier(x-25, y-6, x-36, y-15, x-40, y-37, x-39, y-54); //x1, y1, x1-11, y1-9, x2-1, y2+17, x2, y2
bezier(x-16, y-9, x-27, y-18, x-32, y-47, x-31, y-64);
bezier(x-5, y-10, x-16, y-19, x-21, y-54, x-20, y-71);
line(x,y-10,x,y-75); 
bezier(x+5, y-10, x+16, y-19, x+21, y-54, x+20, y-71);
bezier(x+16, y-9, x+27, y-18, x+32, y-47, x+31, y-64);
bezier(x+25, y-6, x+36, y-15, x+40, y-37, x+39, y-54);
}







