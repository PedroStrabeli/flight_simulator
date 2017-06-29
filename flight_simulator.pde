import processing.opengl.*;
import queasycam.*;

int MAXSPEED = 100;
float FRICTION = -0.05;
SpitfirePanel panel;
Scene scene;
CameraMan cam;
float speed, attitude, climb;
float position = 0, altitude = 0;
int throttle = 0, pulling = 0; // Throttle leads acceleration, pulling means pulling the bar to climb or descend (change attitude)
//QueasyCam cam;
float eyeX, eyeY, eyeZ, centerX, centerY, centerZ;


void setup() {
  //  size(displayWidth, displayHeight, OPENGL);
  fullScreen(P3D);
  println("Iniciado com Sucesso!");
  scene = new Scene();
  panel = new SpitfirePanel(width, height);
  speed = 0;
  attitude = 0;
  climb = 0;
  cam = new CameraMan();
  //camera(width/2.0, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0) default
  eyeX = width/2.0;
  eyeY = height/2.0;
  eyeZ = (height/2.0) / tan(PI*30.0 / 180.0);
  centerX = width/2.0;
  centerY = height/2.0;
  centerZ = 0;
  //cam = new QueasyCam(this);
}

void draw() {
  
  lights();
  scene.update(position, altitude);
  setAcceleration();
  eyeZ-=speed;
  centerZ-=speed;
  //setCamera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ);

  cam.update(position, climb);
  
  panel.drawPanel(speed*11/MAXSPEED, 5, climb, position, climb);
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
  position += speed;
}

void setCamera(float eyex, float eyey, float eyez, float centerx, float centery, float centerz) {
  camera(eyex, eyey, eyez, centerx, centery, centerz, 0, 1, 0);
}