float rotatey = 0;
SpitfirePanel panel;
Scene scene;

void setup() {
  //  size(displayWidth, displayHeight, P3D);
  fullScreen(P3D);
  println("Iniciado com Sucesso!");

  panel = new SpitfirePanel(width, height);
  scene = new Scene();
}

void draw() {
  panel.drawPanel();
  scene.update();
}

void keyPressed() {
  if (key == ESC) {
    //confirm(); if quit
    stop();
  } else if (key == RIGHT) {
    rotatey += 0.1;
    rotateY(rotatey);
  } else if (key == LEFT) {
    rotatey -= 0.1;
    rotateY(rotatey);
  }
}

class SpitfirePanel {
  int speed, altitude, attitude;
  int wid, hig;

  SpitfirePanel(int wid, int hig) {
    this.wid = wid;
    this.hig = hig;
  }

  void drawPanel() {
    fill(120);
rotateY(1);
    beginShape();
      vertex(wid*4/5, hig, 0);
      bezierVertex(wid*0.7, hig*0.5, 0, wid*0.3, hig*0.5, 0, wid*0.2, hig, 0);
    endShape(); //TODO: FAZER EM UMA SUPERFICIE SOH!!
    beginShape();
      vertex(wid*4/5, hig, -10);
      bezierVertex(wid*0.7, hig*0.5, -10, wid*0.3, hig*0.5, -10, wid*0.2, hig, -10);
    endShape();
    fill(100);
    translate(wid*0.5, hig-(hig*0.075), 10);
    box(wid*0.23, hig*0.15, 10);
    noFill();
  }
};


class Scene{
  PImage scene;
  PShape globe;
  
  Scene(){
    translate(width*.5, height, 0);
    scene = loadImage("horizon.jpg");
    noStroke();
    globe = createShape(SPHERE, 5000);
    globe.setTexture(scene);
    shape(globe);
  }
  
  void update() {
    shape(globe);
  }
  
};