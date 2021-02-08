
PVector pos, vel;
PImage img;

void setup () {
  size(600, 600);
  
  pos = new PVector(300, 300);
  vel = PVector.random2D();
  vel.mult(4.5);
  
  img = loadImage("joker.jpeg");
}

void draw () {
  background(255,0,255);
  
  fill(0);
  ellipse(pos.x, pos.y, 10, 10);
  image(img, pos.x - img.width*0.5, pos.y - img.height * 0.5);
  
  pos.add(vel);
  if (pos.x < 0 || pos.x > width) {
    vel.x *= -1;
  }
  
  if (pos.y < 0 || pos.y > height) {
    vel.y *= -1;
  }
}

void mousePressed() {
  vel = PVector.random2D();
  vel.mult(4.5);
}
