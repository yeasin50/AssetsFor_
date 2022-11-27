size(600,600);

color sealingColor = color(255, 255, 255);
color windowColor  =color(243, 239, 224);
color doorColor  =color(243, 222, 222);
color bodyColor  = color(34, 163, 159,100);
color bottomColor  = color(67, 66, 66);
fill(sealingColor);
//top, pading=50  w= 50,h=200
quad(275,50, 325,50, 550,200, 50,200);

//Y= 200; extra 25
fill(bodyColor);
rect( 75,200,450,200);

/// Mid point, top height=200
//door width 100
fill(doorColor);
rect(600/2 - 100/2, 250,100, 150);
 
// Y: 250; window size= 50 padding 50
fill(windowColor);
rect( 600/2 - (50*3), 250, 50,50);
rect( 600/2 + (50+50), 250, 50,50);

//Y=400
//bottom pannel
fill(bottomColor);
rect( 50,400,450+50,25);
//Y=425
