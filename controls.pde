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
    pulling = 1;
  } else if (keyCode == UP) {
    pulling = -1;
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

};