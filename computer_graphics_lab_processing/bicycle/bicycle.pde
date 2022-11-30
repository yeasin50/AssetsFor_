

int frameWidth = 600;
int frameHeight = 400;
int padding = 50;


color backGroundColor  = color(107, 114, 142);

color mainBodyColor = color(176, 30, 104);
color paddleColor  = color(244, 157, 26);
// background(255,0,0);
public void settings() {
    size(frameWidth + padding * 2, frameHeight + padding * 2);
}


float getWheelExtent() {
    return frameHeight / 3;
}

void drawWheel(float originX, float originY) { 
    stroke(255,255,255);
    color tierColor  = color(64, 66, 88);
    
    fill(tierColor);
    circle(originX, originY, getWheelExtent() + 10); 
    fill(backGroundColor);
    circle(originX, originY, getWheelExtent());
    
    float wheelExtent = getWheelExtent() / 2;
    stroke(255,255,255);
    line(originX - wheelExtent , originY , 
        originX + wheelExtent , originY); // ---
    
    line(originX, originY - wheelExtent, // |
        originX, originY + wheelExtent);
    
    // line(originX - wheelExtent , originY , 
    //     originX + wheelExtent , originY);
    
    ///middle small 
    fill(mainBodyColor);
    circle(originX, originY,  25); 
    
    // /// small middle 
    // fill(paddleColor);
    // circle(originX, originY,  5); 
}


void drawBody(float originX, float originY) {
    int thickness  = 7;
    
    stroke(mainBodyColor);
    fill(mainBodyColor);
    
    //top 
    float  tfW = frameWidth  * .25;
    rect(originX - tfW / 2, originY , tfW, thickness);// we can sit here
    rect(originX , originY + tfW - thickness / 2 , tfW + 10 , thickness); // bottom can place legs
    
    //horiz pxLeft
    quad(originX - tfW / 2, originY , //p1
        originX - tfW / 2 + thickness, originY, //p2
        
        originX  + 10 , originY + tfW - thickness / 2,//p4 
        originX , originY + tfW - thickness / 2//p3
       );  
    
    //horiz left
    quad(
        originX - tfW / 2 + tfW, originY ,  //p1
        originX - tfW / 2 + tfW + thickness, originY ,  //p2
        
        originX + tfW + thickness * 3, originY + tfW - thickness / 2  + thickness,//p4 
        originX + tfW + + thickness * 2, originY + tfW - thickness / 2  + thickness//p3
       );
    
    
    float shiftForSeat = 30;
    //horiz / middle
    quad(originX - tfW / 2 + tfW+shiftForSeat/2, originY -shiftForSeat,  //p1
        originX - tfW / 2 + tfW + thickness+ shiftForSeat/2, originY -shiftForSeat,  //p2
        
        originX  + 10 , originY + tfW - thickness / 2,//p4 
        originX , originY + tfW - thickness / 2//p3
       ); 
    
    /// left most /
    quad(originX - tfW / 2, originY , //p1
        originX - tfW / 2 + thickness, originY, //p2
        
        originX  + 10 - tfW , originY + tfW - thickness / 2,//p4 
        originX - tfW, originY + tfW - thickness / 2//p3
       ); 
    
    fill(paddleColor);
    stroke(color(255, 225, 93));
    float paddleExtent = tfW * .35;
    //paddle frame
    circle(originX + thickness / 2, originY + tfW,paddleExtent);
    
    fill(backGroundColor);
    stroke(color(255, 225, 93));
    //paddle for BG
    circle(originX + thickness / 2, originY + tfW, paddleExtent * .8);
    
    fill(mainBodyColor);
    stroke(mainBodyColor);
    //paddle C 
    circle(originX + thickness / 2, originY + tfW,paddleExtent * .5);
    
    /// main paddle
    paddleDraw(originX + thickness / 2, originY + tfW);
    
}

void paddleDraw(float cx, float cy) {
    fill(255, 255, 255);
    beginShape();
    int g = 2;
    int h = 30;
    vertex(cx - g, cy);//p1
    vertex(cx + g, cy);//p2
    vertex(cx + g, cy + h);//p3
    vertex(cx + g * 5, cy + h);//p4
    vertex(cx + g * 5, cy + h + g * 2);//p5
    vertex(cx - g * 5, cy + h + g * 2);//p6
    vertex(cx - g * 5, cy + h);//p7
    vertex(cx - g , cy + h);//p8
    
    vertex(cx - g, cy);//p1
    endShape();
    
    
}


color seatColor = color(123,44,123);

void drawSeat(float cx,float cy, float _width, float _height){

 stroke(seatColor, 100);
 fill(seatColor);
 float curve=  _height * .25;
  beginShape();
  vertex(cx, cy ); //p1
  vertex(cx+ _width-curve, cy); //p2
  vertex(cx+ _width, cy+curve); //p3
  vertex(cx+ _width, cy+_height - curve*2); //p4
  vertex(cx+ _width-curve, cy+_height); //p5
  vertex(cx + _width- curve, cy+_height); //p6 
  vertex(cx, cy+_height -curve); //p7 
  vertex(cx, cy);
  endShape();

}
void draw() {
    float wheelExtent = getWheelExtent();
    drawWheel(wheelExtent * 1.5 , frameHeight);
    drawWheel(frameWidth + padding - wheelExtent  , frameHeight);
    
    float centerX = (frameWidth / 2) + padding;
    float centerY = frameHeight / 2 + padding;
    
    drawBody(centerX,centerY);

   float  _width  = 50;
   float _height  = 15;
   drawSeat(centerX+_width*1.25 , centerY-_width*.6, _width, _height);
    
}