import processing.opengl.*;

class CameraMan {
  //QueasyCam cam;
  //PeasyCam pCamera;
  
  CameraMan() {
    camera();
    //camera(0, -10, 100, 0, 0, 0, 0, 1, 0);
    //pCamera = new PeasyCam(this, 0);
    //scene.update();

    //cam = new QueasyCam(this);
    //cam.speed = 5;              // default is 3
    //cam.sensitivity = 0.5;      // default is 2
  }
  
  void update(float position, float climb) {
    pushMatrix();
    beginCamera();
    translate(0, climb, position);
    
    rotateX(position);
    endCamera();
    popMatrix();
  }
}

class camCoord {
  float eyeX, eyeY, eyeZ, centerX, centerY, centerZ;
  camCoord(){
  
  }
}