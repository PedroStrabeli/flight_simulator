
class ClimbIndicator {
  float position;
  int cx, cy;
  float armRadius;
  float indicatorDiameter;
  
  ClimbIndicator(int rad) {
    position = 9.0;
    int radius = rad;
    //secondsRadius = radius * 0.72;
    //minutesRadius = radius * 0.60;
    armRadius = radius * 0.72;
    indicatorDiameter = radius * 1.8;
    
    cx = width / 2;
    cy = height / 2;
  }
  
  void drawIndicator() {    
    // Draw the Indicator background
    stroke(10);
    fill(80);
    //noStroke();
    strokeWeight(10);
    ellipse(cx, cy, indicatorDiameter, indicatorDiameter);
    ellipse(cx, cy, indicatorDiameter * 0.7, indicatorDiameter * 0.7);
    
    // Angles for sin() and cos() start at 3 o'clock;
    // subtract HALF_PI to make them start at the top
    //float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
    //float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;
    float h = map(position, 0, 24, 0, TWO_PI * 2) - HALF_PI;
    
    // Draw the hands of the clock
    stroke(255);
    //strokeWeight(1);
    //line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
    //strokeWeight(2);
    //line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
    strokeWeight(4);
    line(cx, cy, cx + cos(h) * armRadius, cy + sin(h) * armRadius);
    
    // Draw the minute ticks
    strokeWeight(2);
    beginShape(POINTS);
    for (int a = 30; a <= 330; a+=15) {
      float angle = radians(a);
      float x = cx + cos(angle) * armRadius;
      float y = cy + sin(angle) * armRadius;
      vertex(x, y);
    }
    endShape();
  }
}

class AirSpeedIndicator {
  float position;
  int cx, cy;
  float armRadius;
  float indicatorDiameter;
  
  AirSpeedIndicator(int rad) {
    position = 9.0;
    int radius = rad;
    armRadius = radius * 0.72;
    indicatorDiameter = radius * 1.8;
    
    cx = width / 2;
    cy = height / 2;
  }
  
  void drawIndicator() {    
    // Draw the Indicator background
    stroke(10);
    fill(80);
    //noStroke();
    strokeWeight(10);
    ellipse(cx, cy, indicatorDiameter, indicatorDiameter);
    ellipse(cx, cy, indicatorDiameter * 0.7, indicatorDiameter * 0.7);
    
    // Angles for sin() and cos() start at 3 o'clock;
    // subtract HALF_PI to make them start at the top
    float h = map(position, 0, 24, 0, TWO_PI * 2) - HALF_PI;
    
    // Draw the hands of the clock
    stroke(255);
    strokeWeight(4);
    line(cx, cy, cx + cos(h) * armRadius, cy + sin(h) * armRadius);
    
    // Draw the minute ticks
    strokeWeight(2);
    beginShape(POINTS);
    for (int a = 60; a <= 380; a+=15) {
      float angle = radians(a);
      float x = cx + cos(angle) * armRadius;
      float y = cy + sin(angle) * armRadius;
      vertex(x, y);
    }
    endShape();
  }
}