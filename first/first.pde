
void setupBackground() {
  background(50);
}

void setup() {
  size(480, 480);
  setupBackground();
  stroke(200);
  rectMode(CENTER);
}

float f = 0;

void draw() {
  
   float mx = (1.0f - (mouseX / (float)width)) * 2.0;
   float my = (1.0f - (mouseY / (float)height)) * 2.0;
   
   float sx = width / (4 * mx);
   float sy = height / (4 * my);
   for(int i = 0; i < 10; ++i) {
    float x = (width/2) +  (sin(f) * sx);
    float y = (height/2) + (cos(f) * sy);
    
    f += 0.02;
    
    float cx = sin01(f * 0.5) * 255;
    float cy = sin01(f * 0.8) * 255;
    float cz = sin01(f * 0.2) * 255;
    stroke(cx, cy, cz, 50);
    fill(cx * 2, cy * 2, cz * 2);
    
    line(0,0, x, y);
    line(width, 0, x, y);
    line(0, height, x, y);
    line(width, height, x, y);
    
    rect(x, y, 10, 10);
  }
}

void mousePressed() {
  background(200, 20, 0);
}

void mouseReleased() {
  setupBackground();
}