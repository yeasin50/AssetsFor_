int frameSize = 600;
int numberOfBlocs = 8;
 
public void settings() {
  size(frameSize,frameSize);
}

void drawBloc(float i, float j){
    float blockSize = frameSize/ numberOfBlocs;
    color blocColor = (i%2==0 && j%2==0) || (i%2==1 && j%2==1)? color(255,255,255) : color(0,0,0);
    fill(blocColor);
    rect(i*blockSize,j*blockSize,  blockSize, blockSize);

}

void draw(){
 for(int i=0; i<numberOfBlocs; i++){
    for(int j=0; j<numberOfBlocs; j++){
         drawBloc(i,j);
    }
 }
}
