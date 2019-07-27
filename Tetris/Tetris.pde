ArrayList<Piece> pieces = new ArrayList<Piece>();
Block currentBlock;
Timer timer = new Timer();

void setup(){
  size(500, 500);
  pickBlock();
}

void draw(){
  clear();
  currentBlock.update();
  timer.setInterval(new Runnable() {
    public void run(){
      currentBlock.fall();
    }
  }, 1000);
  if(currentBlock.checkCollisionDown()){
     pickBlock();
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
  for(int i = 0; i < pieces.size(); i++){
    pieces.get(i).display(); 
  }
}

void pickBlock() {
  int blocktype = (int) random(7);
  switch (blocktype) {
    case 0:
      currentBlock = new iBlock();
      break;
    case 1:
      currentBlock = new jBlock();
      break;
    case 2:
      currentBlock = new lBlock();
      break;
    case 3:
      currentBlock = new oBlock();
      break;
    case 4:
      currentBlock = new sBlock();
      break;
    case 5:
      currentBlock = new zBlock();
      break;
    case 6:
      currentBlock = new tBlock();
      break;
    default:
      print("error: blocktype picked number not tied to a block");
  }   
}
