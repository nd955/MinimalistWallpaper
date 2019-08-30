boolean reset = true;
int x = 1920;
int y = 1080;

void setup() {
  size(1920, 1080);
}

void draw() {
  if(reset){
    background(random(200, 230), random(200,250), random(200,220));
     
    for(int i = 0; i < 5; i++){
      noStroke();
      fill(random(100, 200), random(10,15), random(100,120), random(20,200));
      float circleRadius = random(200,380);
      ellipse(random(0,480),random(0,480),circleRadius, circleRadius);
    }
    
    reset=false;
  }
  
}
void keyPressed() {
  if(key == 's') {
    saveFrame("wallpaper_minimalism-####.png");
  } else {
    reset=true;
  }
}
