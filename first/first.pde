
void setupBackground() {
  background(50);
}

void setup() {
  size(480, 480);
  setupBackground();
  stroke(200);
}

float sin01(float f) {
  return (sin(f) + 1.0f) * 0.5;
}

float f = 0;

void draw() {
  
   float mx = 1.0f - (mouseX / (float)width);
   float my = 1.0f - (mouseY / (float)height);
   
   float sx = width / (4 * mx);
   float sy = height / (4 * my);
   for(int i = 0; i < 10; ++i) {
    float x = (width/2) +  (sin(f) * sx);
    float y = (height/2) + (cos(f) * sy);
    
    f += 0.02;
    
    stroke(sin01(f * 0.5) * 255, sin01(f * 0.8) * 255, sin01(f * 0.2) * 255);
    
    line(0,0, x, y);
    line(width, 0, x, y);
    line(0, height, x, y);
    line(width, height, x, y);
  }
}

void mousePressed() {
  background(200, 20, 0);
}

void mouseReleased() {
  setupBackground();
}