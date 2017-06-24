import processing.opengl.*;

int MAXSPEED = 100;
float FRICTION = -0.05;
SpitfirePanel panel;
Scene scene;
float speed, attitude, climb;
int throttle = 0;


void setup() {
  //  size(displayWidth, displayHeight, OPENGL);
  fullScreen(P3D);
  println("Iniciado com Sucesso!");
  scene = new Scene();
  panel = new SpitfirePanel(width, height);
  speed = 0;
  attitude = 0;
  climb = 0;
}

void draw() {
  
  background(250);
  lights();
  scene.update();
  panel.drawPanel(speed*10/MAXSPEED, 5, climb);
  setAcceleration();
}

void resetDraw(){
  
}

void setAcceleration(){
  if (speed >= 0 && speed <= MAXSPEED) {
    if (throttle == 1) {
      speed += 0.15;
    } else if (throttle == -1) {
      speed -= 0.1;
    }
  }
  if (speed > 0) {
    speed += FRICTION;
  }
  if (speed < 0) {
    speed = 0;
  }
}