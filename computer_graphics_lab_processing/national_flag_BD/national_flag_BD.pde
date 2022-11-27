/// flag ratio 10:6
int flagWidth = 600;
int flagHeight = 360;

int padding = 50;

public void settings() {
    size(flagWidth + padding * 2, flagHeight + padding * 2);
}

void draw() {   
    /// green
    color flagGreen = color(0,106,78);
    color flagRed = color(244,42,65);
    fill(flagGreen);
    stroke(flagGreen);
    rect(padding,padding, flagWidth, flagHeight);
    
    /// cicle origin
    float circleOriginX = flagWidth * .45 + padding;
    float circleOriginY = flagHeight / 2 + padding;
    float circleRadius  = flagHeight / 3 * 2;
    
    fill(flagRed);
    stroke(flagRed);
    circle(circleOriginX, circleOriginY,circleRadius);
}