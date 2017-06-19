class SpitfirePanel {
  int speed, altitude, attitude;
  int wid, hig;

  SpitfirePanel(int wid, int hig) {
    this.wid = wid;
    this.hig = hig;
  }

  void drawPanel() {
    fill(120);
    stroke(250);
    
    beginShape();
      //vertex
      vertex(wid*4/5, hig, 0);
      //vertex(10, 10, 0);
      bezierVertex(wid*0.7, hig*0.5, 0, wid*0.3, hig*0.5, 0, wid*0.2, hig, 0);
    endShape(); //TODO: FAZER EM UMA SUPERFICIE SOH!!
    beginShape();
      vertex(wid*4/5, hig, -10);
      bezierVertex(wid*0.7, hig*0.5, -10, wid*0.3, hig*0.5, -10, wid*0.2, hig, -10);
    endShape();
    fill(100);
    //translate(wid*0.5, hig-(hig*0.075), 0);
    translate(0, 0, -200);
    box(wid*0.23, hig*0.15, 10);
    noFill();
  }
};