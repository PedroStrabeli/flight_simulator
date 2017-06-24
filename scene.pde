import processing.opengl.*;

class Scene {
  PImage scene, grass, lane;

  float radius = 6000.0;
  float rho = radius;
  float factor = TWO_PI / 40.0;
  float uMapping = 0.0;
  float vMapping = 0.0;
  float x, y, z;

  PVector[] sphereVertexPoints;

  Scene() {
    scene = loadImage("horizon2.jpg");
    grass = loadImage("grass.jpg");
    lane = loadImage("asphalt.jpg");
    //size(1000, 1000, P3D);

    //pCamera = new PeasyCam(this, 150);
  }

  void update() {
    drawHemisphere();
    drawGround();
    //drawHalfSphere();
  }
  
  void drawHemisphere() {
    pushMatrix();
    translate(width/2, height/2+0.6*height, 0);
    //noFill();
    fill(120, 120, 250);
    noStroke();
    //stroke(0);
    //textureMode(IMAGE);
    float vMapping = 0.0;
    for (float phi = 0.0; phi < HALF_PI; phi += factor) {
      beginShape(QUAD_STRIP);
      //texture(scene);
      float uMapping = 0.0;
      for (float theta = 0.0; theta < TWO_PI + factor; theta += factor) {
        x = rho * sin(phi) * cos(theta);
        z = rho * sin(phi) * sin(theta);
        y = -rho * cos(phi);
    
        vertex(x, y, z, uMapping, vMapping);
        //vertex(x, y, z);

        x = rho * sin(phi + factor) * cos(theta);
        z = rho * sin(phi + factor) * sin(theta);
        y = -rho * cos(phi + factor);

        vertex(x, y, z, uMapping, vMapping);
        //vertex(x, y, z);
        uMapping += scene.width/20;
      }
      vMapping += scene.height/7;
      endShape();
    }
    popMatrix();
  }

  void drawGround() {
    //Ground
    fill(10, 200, 10);
    textureWrap(REPEAT);
    beginShape();
      texture(grass);
      vertex(8*width, height, 0, grass.width*25, 0);
      vertex(-8*width, height, 0, 0, 0);
      vertex(-8*width, height/2, -17500, 0, grass.height*25);
      vertex(8*width, height/2, -17500, grass.width*25, grass.height*25);
    endShape();
    fill(100);  
    //Pista de decolagem
    beginShape();
      texture(lane);
    //rect(width/2, height/2, 100, 100);
      vertex(width, height, 0, lane.width*5, 0);
      vertex(0, height, 0, 0, 0);
      vertex(0, height/2, -17500, 0, lane.height*10);
      vertex(width, height/2, -17500, lane.width*5, lane.height*10);
    endShape();
  }
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


////////////////////////////////////////////////////////////////q

  //Using openGL notation. Not Working
  /*scalex - scaling of sphere around x-axis
   scaley - scaling of sphere around y-axis
   r - radius of sphere
  */
 //void drawHalfSphere(int scaley, int scalex, GLfloat r) {
 //  int i, j;
 //  GLfloat v[scalex*scaley][3];
 
 //  for (i=0; i<scalex; ++i) {
 //    for (j=0; j<scaley; ++j) {
 //      v[i*scaley+j][0]=r*cos(j*2*M_PI/scaley)*cos(i*M_PI/(2*scalex));
 //      v[i*scaley+j][1]=r*sin(i*M_PI/(2*scalex));
 //      v[i*scaley+j][2]=r*sin(j*2*M_PI/scaley)*cos(i*M_PI/(2*scalex));
 //    }
 //  }
 
 //  glBegin(GL_QUADS);
 //    for (i=0; i<scalex-1; ++i) {
 //      for (j=0; j<scaley; ++j) {
 //        glVertex3fv(v[i*scaley+j]);
 //        glVertex3fv(v[i*scaley+(j+1)%scaley]);
 //        glVertex3fv(v[(i+1)*scaley+(j+1)%scaley]);
 //        glVertex3fv(v[(i+1)*scaley+j]);
 //      }
 //    }
 //  glEnd();
 //}