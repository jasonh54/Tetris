ArrayList<Piece> pieces = new ArrayList<Piece>();
Block currentBlock = new lBlock();
Timer timer = new Timer();

void setup(){
  size(500, 500);
  
}

void draw(){
  clear();
  currentBlock.update();
  timer.setInterval(new Runnable() {
    public void run(){
      currentBlock.fall();
    }
  }, 1000);
}

void keyPressed() {
  if (key == 'a') {
    currentBlock.shiftLeft();
  } else if (key == 'd') {
    currentBlock.shiftRight();
  }
  if (key == 'j') {
    currentBlock.subtractRotation();
  } else if (key == 'l') {
    currentBlock.addRotation();
  }
}
