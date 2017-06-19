import processing.opengl.*;

class Scene {
  PImage scene;

  float radius = 6000.0;
  float rho = radius;
  float factor = TWO_PI / 40.0;
  float uMapping = 0.0;
  float vMapping = 0.0;
  float x, y, z;

  PVector[] sphereVertexPoints;

  Scene() {
    scene = loadImage("data/horizon2.jpg");
    //size(1000, 1000, P3D);

    //pCamera = new PeasyCam(this, 150);
  }

  void update() {
    drawHemisphere();
    //drawHalfSphere();
  }
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


  void drawHemisphere() {
    pushMatrix();
    noFill(); 
    stroke(0);
    //textureMode(IMAGE);
    float vMapping = 0.0;
    for (float phi = 0.0; phi < HALF_PI; phi += factor) {
      beginShape(QUAD_STRIP);
      texture(scene);
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
}