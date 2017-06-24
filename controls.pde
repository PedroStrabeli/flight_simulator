void keyPressed() {
  println(key);
  //System Options
  if (key == ESC) {
    //confirm(); if quit
    println("Encerrado!");
    stop();
  } 
  // Changing throttle
  else if (key == 'w') {
    throttle = 1;
    println(speed);
  } else if (key == 's') {
    throttle = -1;
    println(speed);
  } 
  //Changing attitude
  else if (key == RIGHT) {
    //rotatey += 0.1;
    //rotateY(rotatey);
  } else if (key == LEFT) {
    //rotatey -= 0.1;
    //rotateY(rotatey);
  }
}

void keyReleased() {
  if (key == 'w' || key == 's') {
    throttle = 0;
  }
}

void mousePressed(){
  println(mouseX, mouseY);
};