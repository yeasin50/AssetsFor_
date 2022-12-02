int frameSize = 600;
int numberOfBlocks = 8;

public void settings() {
    size(frameSize,frameSize);
}

void drawBlock(int i, int j) {
    float blockSize = frameSize / numberOfBlocks;
    color blockColor = i % 2 == j % 2 ? color(255,255,255) : color(0,0,0);
    fill(blockColor);
    rect(i * blockSize,j * blockSize,  blockSize, blockSize);
    
}

void draw() {
    for (int i = 0; i < numberOfBlocks; i++) {
        for (int j = 0; j < numberOfBlocks; j++) {
            drawBlock(i,j);
        }
    }
}
        