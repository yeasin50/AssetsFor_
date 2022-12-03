int windowWidth = 600;
int windowHeight = 400;

color lightYellow =   color(255,255,102);
color red = color(255,0,0);
color black = color(0,0,0);
color darkGrey = color(90,90,90);
color lightGrey = color(211,211,211);
color offWhite  = color(250, 249, 246);


public void settings() {
    size(windowWidth, windowHeight);
}



void drawMiddleCircle(float  originX, float originY) {
    float extent = windowWidth *.3;
    stroke(red);
    fill(red);
    circle(originX, originY, extent);
}

//origin top left
void drawGround(float x, float y) {
    float groundHeight  = 20;
    fill(black);
    stroke(0);
    rect(x,y, windowWidth, groundHeight);
}


/// origin base, todo: make 3d
void drawRightPiller(float x,float y, float mHeight, float mWidth) { 
    float thinckness = 15;
    
    float av = 3;
    fill(lightGrey);
    stroke(black);
    beginShape();
    vertex(x,y); //p1
    vertex(x,y - mHeight); //p2
    vertex(x + mWidth,y - mHeight + av); //p3
    vertex(x + mWidth,y + av); //p4
    vertex(x + mWidth - thinckness,y + av); //p5
    vertex(x + mWidth - thinckness,y - mHeight + thinckness + av); //p6
    vertex(x + thinckness ,y - mHeight + thinckness); //p7
    vertex(x + thinckness ,y); //p8
    vertex(x,y); //p1
    endShape();
    
    fill(black);
    stroke(black);
    stroke(0);
    float divF = 5;
    float numberOfline = mWidth / divF;
    //print(mWidth);
    for (float i = x + thinckness; i < x + mWidth - thinckness; i += 5) {
        line(i, y, i,y - mHeight + thinckness);
        //line( x+ thinckness+divF+5, y, x+thinckness+divF+5,y-mHeight +thinckness);
}
    
    //bottom
    fill(darkGrey);
    stroke(darkGrey);
    //rect(x,y -10,mWidth,10);
    quad(x,y, x,y - 25, x + mWidth, y + av / 2, x + mWidth, y + 20 + av);
}




void drawMiddleSinglePiller(float x, float y, float mWidth, float mHeight) {
    float thinckness = 15;
    float t = 3;
    fill(lightGrey);
    stroke(black);
    beginShape();
    vertex(x, y);//p1
    vertex(x, y - mHeight * .7);//p2
    vertex(x + mWidth, y - mHeight);//p3
    vertex(x + mWidth + thinckness, y - mHeight + 5);//p4
    vertex(x + thinckness, y - mHeight * .7);//p5
    vertex(x + thinckness,y);//p5
    vertex(x, y);//p1
    endShape();
}

void drawPillerCover(float x,float y, float mWidth,float mHeight) {
    //bottom
    fill(darkGrey);
    stroke(darkGrey);
    rect(x - 15,y, mWidth,15);
    
    //top
    fill(lightGrey);
    stroke(black);
    //todo: quad
    rect(x + 20,y - mHeight, mWidth - 20,15);
    //quad(x+20,y-mHeight, x+20,y,  x+mWidth,y-mHeight +4,  x+mWidth,y-mHeight +4+20);
    
}
void drawLeftPiller(float x,float y, float mHeight, float mWidth) { 
    float thinckness = 15;
    
}


public void draw() {
    background(lightYellow);
    
    float cx = windowWidth / 2;
    float cy = windowHeight / 2;
    
    float basePoint  = windowHeight - 30;
    drawMiddleCircle(cx,cy);
    drawGround(0,basePoint);
    
    float pilarWidth = windowWidth *.1;
    float pillerPadding  = 25;
    drawRightPiller(windowWidth - pilarWidth - pillerPadding, basePoint - 3, windowHeight * .4, pilarWidth);
    drawRightPiller(windowWidth - pilarWidth * 2.5 - pillerPadding, basePoint - 3, windowHeight * .55, pilarWidth);
    
    
    drawMiddleSinglePiller(windowWidth / 2 - 60, basePoint - 3, 30, windowHeight * .8);
    drawMiddleSinglePiller(windowWidth / 2 + 60, basePoint - 3, 30, windowHeight * .8);
    drawMiddleSinglePiller(windowWidth / 2, basePoint - 3, 30, windowHeight * .8);
    
    drawPillerCover(windowWidth / 2 - 50, basePoint - 10,150,windowHeight * .8);
    
    drawGround(0,basePoint);
}