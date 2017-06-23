//import peasy.*;
import processing.opengl.*;
//import queasycam.*;

//QueasyCam cam;

//void setup(){
//  size(400, 400, P3D);
//}

SpitfirePanel panel;
Scene scene;


//PeasyCam pCamera;

void setup() {
  //  size(displayWidth, displayHeight, OPENGL);
  fullScreen(OPENGL);
  println("Iniciado com Sucesso!");

  panel = new SpitfirePanel(width, height);
  scene = new Scene();
  //camera(0, -10, 100, 0, 0, 0, 0, 1, 0);
  //pCamera = new PeasyCam(this, 0);
    //scene.update();

  //cam = new QueasyCam(this);
  //cam.speed = 5;              // default is 3
  //cam.sensitivity = 0.5;      // default is 2


}

void draw() {
  
  background(250);
  lights();
  scene.update();
  panel.drawPanel();
}

//class Scene{
//  PImage scene;
//  PShape globe;
  
//  Scene(){
//    translate(width*.5, height, 0);
//    scene = loadImage("assets/horizon2.jpg");
//    //noStroke();
//    globe = createShape(SPHERE, 5000);
//    globe.setTexture(scene);
//  }
  
//  void update() {
//    shape(globe);
//  }
  
//};

//PImage img;

//void setup() {
//  size(640, 360, P3D);
//  img = loadImage("assets/horizon.jpg");
//  noStroke();
//}

//void draw() {
//  background(0);
//  translate(width / 2, height / 2);
//  rotateY(map(mouseX, 0, width, -PI, PI));
//  rotateZ(PI/6);
//  beginShape();
//  texture(img);
//  vertex(-100, -100, 0, 0, 0);
//  vertex(100, -100, 0, img.width, 0);
//  vertex(100, 100, 0, img.width, img.height);
//  vertex(-100, 100, 0, 0, img.height);
//  endShape();
//}