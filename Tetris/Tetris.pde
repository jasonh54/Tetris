ArrayList<Piece> pieces = new ArrayList<Piece>();
Block currentBlock = new tBlock();
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
  if(currentBlock.checkCollision()){
     currentBlock = new iBlock(); 
  }
  displayAll();
  
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
  if (key == 's'){
     currentBlock.y += 20; 
  }
}

void displayAll(){
  println(pieces.size());
   for(int i = 0; i < pieces.size(); i++){
      pieces.get(i).display(); 
   }
}
