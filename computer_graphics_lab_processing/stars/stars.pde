int frameSize = 600;
int padding  = 100;
///* used just to remember 
int numberOfStar = 4;

public void settings() {
    size(frameSize + padding,frameSize + padding);
}

float getStarSize(){
  return frameSize / (numberOfStar / 2);
}
//draw star from its center ✨
void drawStar(float originX, float originY, color starColor) {
    float starSize  = getStarSize();
    float halfStar  = starSize / 2;
    float mcShift  = halfStar * .35;
    fill(starColor);
    stroke(starColor,122);
    
    beginShape();
    vertex(originX, originY - halfStar);//p1
    vertex(originX + mcShift, originY - mcShift);//m1
    
    vertex(originX + halfStar, originY);// p2
    vertex(originX + mcShift, originY + mcShift);//m2
    
    vertex(originX, originY + halfStar);// p3
    vertex(originX - mcShift, originY + mcShift);//m3
    
    vertex(originX - halfStar, originY);// p4
    vertex(originX - mcShift, originY - mcShift);//m4
    
    vertex(originX,originY - halfStar);//p1
    endShape();
    
}

void draw() {
    float centerX  = frameSize/2 + padding/2;
    float starSize  = getStarSize();
    drawStar(centerX - starSize/2, centerX-starSize/2, color(0,255,209)); 
    drawStar(centerX - starSize/2, centerX+starSize/2, color(49,198,212)); 
    drawStar(centerX + starSize/2, centerX-starSize/2, color(255,255,0)); 
    drawStar(centerX + starSize/2, centerX+starSize/2, color(255,30,30));   
}