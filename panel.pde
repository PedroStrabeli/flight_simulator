class SpitfirePanel {
  int speed, altitude, attitude;
  int wid, hig;
  PImage img;
  AirSpeedIndicator airspeed;
  
  //PShape panel;
  SpitfirePanel(int wid, int hig) {
    this.wid = wid;
    this.hig = hig;
    this.img = loadImage("fullpanel.jpg");
    

    //this.panel = loadShape("black.svg");
  }

  void drawPanel() {
    //translate(wid*0.5-panel.width/2, hig-panel.height, 0);
    //panel.setTexture(img);
    //shape(panel, 0, 0, 3/5*wid, 2/5*hig);
/*
    fill(120);
    //stroke(250);
    noStroke();
    beginShape();
      texture(img);
      //vertex
      vertex(wid*4/5, hig, 0, 0, 0);
      //vertex(10, 10, 0);
      bezierVertex(wid*0.7, hig*0.5, 0, wid*0.3, hig*0.5, 0, wid*0.2, hig, 0);
    endShape(); //TODO: FAZER EM UMA SUPERFICIE SOH?
    beginShape();
      texture(img);
      vertex(wid*4/5, hig, -10, 0, 0);
      bezierVertex(wid*0.7, hig*0.5, -10, wid*0.3, hig*0.5, -10, wid*0.2, hig, -10);
    endShape();
    translate(wid*0.5, hig-(hig*0.075), 0);*/
    //translate(wid*0.5, hig-, -200);
    box(wid*0.23, hig*0.15, 10);
    noFill();
    //airspeed = new Indicator(wid/2, hig/2, 100);
  }
};