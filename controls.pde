void keyPressed() {
  if (key == ESC) {
    //confirm(); if quit
    println("Encerrado!");
    stop();
  } else if (key == RIGHT) {
    //rotatey += 0.1;
    //rotateY(rotatey);
  } else if (key == LEFT) {
    //rotatey -= 0.1;
    //rotateY(rotatey);
  }
}

void mousePressed(){
  println(mouseX, mouseY);
  rotateY(1);
};