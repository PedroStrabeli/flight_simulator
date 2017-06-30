

class Indicators {
  AirSpeedIndicator airspeedInd;
  AttitudeIndicator attitudeInd;
  ClimbIndicator climbInd;
  
  Indicators() {
    airspeedInd = new AirSpeedIndicator(width*0.18/6, width*0.416, height-(height*0.083), 20.0);//wid/2, hig/2, 100);
    attitudeInd = new AttitudeIndicator(width*0.065, width*0.468, height-(height*0.08), 20.0);//wid/2, hig/2, 100);
    climbInd = new ClimbIndicator(width*0.176/6, width*0.576, height-(height*0.074), 20.0);//wid/2, hig/2, 100);
  }
}


class ClimbIndicator {
   float indicatorArmHour;
  int cx, cy, cz;
  float armRadius;
  float indicatorDiameter;
  
  ClimbIndicator(float rad, float x, float y, float z) {
    indicatorArmHour = 9.0;
    int radius = int(rad);
    armRadius = radius * 0.72;
    indicatorDiameter = radius * 1.8;
    
    cx = (int)x;// width / 2;
    cy = (int)y;//height / 2;
    cz = (int)z;
  }
  
  void drawIndicator(float armHour) {    
    indicatorArmHour = armHour;
    pushMatrix();
    translate(0, 0, cz);
    // Draw the Indicator background
    /*stroke(10);
    fill(80);
    //noStroke();
    strokeWeight(5);
    ellipse(cx, cy, indicatorDiameter, indicatorDiameter);
    ellipse(cx, cy, indicatorDiameter * 0.7, indicatorDiameter * 0.7);
    */
    // Angles for sin() and cos() start at 3 o'clock;
    // subtract HALF_PI to make them start at the top
    float h = map(indicatorArmHour, 0, 24, 0, TWO_PI * 2) - HALF_PI;
    
    // Draw the hand of the indicator
    stroke(255);
    strokeWeight(4);
    line(cx, cy, cx + cos(h) * armRadius, cy + sin(h) * armRadius);
    
    // Draw the ticks
    /*strokeWeight(2);
    beginShape(POINTS);
    for (int a = 30; a <= 330; a+=15) {
      float angle = radians(a);
      float x = cx + cos(angle) * armRadius;
      float y = cy + sin(angle) * armRadius;
      vertex(x, y);
    }
    endShape();*/
    popMatrix();
  }
}

class AirSpeedIndicator {
  float indicatorArmHour;
  int cx, cy, cz;
  float armRadius;
  float indicatorDiameter;
  
  AirSpeedIndicator(float rad, float x, float y, float z) {
    indicatorArmHour = 9.0;
    int radius = int(rad);
    armRadius = radius * 0.72;
    indicatorDiameter = radius * 1.8;
    
    cx = (int)x;// width / 2;
    cy = (int)y;//height / 2;
    cz = (int)z;
  }
  
  void drawIndicator(float armHour) { 
    indicatorArmHour = armHour;
    pushMatrix();
    translate(0, 0, cz);
    // Draw the Indicator background
    /*
    stroke(10);
    fill(80);
    //noStroke();
    strokeWeight(5);
    ellipse(cx, cy, indicatorDiameter, indicatorDiameter);
    ellipse(cx, cy, indicatorDiameter * 0.7, indicatorDiameter * 0.7);
    */
    // Angles for sin() and cos() start at 3 o'clock;
    // subtract HALF_PI to make them start at the top
    float h = map(indicatorArmHour, 0, 24, 0, TWO_PI * 2) - HALF_PI;
    
    // Draw the hand of the indicator
    stroke(255);
    strokeWeight(4);
    line(cx, cy, cx + cos(h) * armRadius, cy + sin(h) * armRadius);
    
    // Draw the ticks
    /*strokeWeight(2);
    beginShape(POINTS);
    for (int a = 100; a <= 400; a+=15) {
      float angle = radians(a);
      float x = cx + cos(angle) * armRadius;
      float y = cy + sin(angle) * armRadius;
      vertex(x, y, 0);
    }
    endShape();*/
    popMatrix();
  }
}

class AttitudeIndicator {
  float indicatorArmHour;
  int cx, cy, cz;
  float armRadius;
  float indicatorDiameter;
  
  AttitudeIndicator(float rad, float x, float y, float z) {
    indicatorArmHour = 9.0;
    int radius = int(rad);
    armRadius = radius * 0.72;
    indicatorDiameter = radius * 1.8;
    
    cx = (int)x;// width / 2;
    cy = (int)y;//height / 2;
    cz = (int)z;
  }
  
  void drawIndicator(float armHour) { 
    indicatorArmHour = armHour;
    pushMatrix();
    translate(0, 0, cz);
    // Draw the Indicator background
    /*
    stroke(10);
    fill(80);
    //noStroke();
    strokeWeight(5);
    ellipse(cx, cy, indicatorDiameter, indicatorDiameter);
    ellipse(cx, cy, indicatorDiameter * 0.7, indicatorDiameter * 0.7);
    */
    // Angles for sin() and cos() start at 3 o'clock;
    // subtract HALF_PI to make them start at the top
    float h = 0;//map(indicatorArmHour, 0, 24, 0, TWO_PI * 2) - HALF_PI;
    
    // Draw the hand of the indicator
    stroke(255);
    strokeWeight(4);
    line(cx, cy, cx + cos(h) * armRadius, cy + sin(h) * armRadius);
    
    // Draw the ticks
    /*strokeWeight(2);
    beginShape(POINTS);
    for (int a = 100; a <= 400; a+=15) {
      float angle = radians(a);
      float x = cx + cos(angle) * armRadius;
      float y = cy + sin(angle) * armRadius;
      vertex(x, y, 0);
    }
    endShape();*/
    popMatrix();
  }
}