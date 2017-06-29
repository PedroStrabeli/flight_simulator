void keyPressed() {
  //System Options
  if (key == ESC) {
    //confirm(); if quit
    println("Encerrado!");
    stop();
  } 
  // Changing throttle
  else if (key == 'w') {
    throttle = 1;
  } else if (key == 's') {
    throttle = -1;
  } 
  //Changing attitude
  if (keyCode == DOWN) {
    //rotatey += 0.1;
    println("Up we go bitches");
    //rotateY(rotatey);
  } else if (keyCode == UP) {
    //rotatey -= 0.1;
    //rotateY(rotatey);
  }
}

void keyReleased() {
  if (key == 'w' || key == 's') {
    throttle = 0;
  }
  
  if (keyCode == UP || keyCode == DOWN) {
    pulling = 0;
  }
}

void mousePressed(){
  println(climb);
  climb = 1000;
};