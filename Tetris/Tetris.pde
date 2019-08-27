ArrayList<Piece> pieces = new ArrayList<Piece>();
int prevBlock;
int blocktype;
Block currentBlock;
Block nextCurrentBlock;
Timer timer = new Timer();

void setup(){
  size(400, 500);
  pickBlock();
  currentBlock = nextCurrentBlock;
  currentBlock.x = 100;
  blocktype = 0;
  prevBlock = 7;
  pickBlock();
}

void draw(){
  clear();
  stroke(255);
  line(200,0,200,500);
  line(0,100,200,100);
  stroke(0);
  currentBlock.update();
  timer.setInterval(new Runnable() {
    public void run(){
      currentBlock.fall();
    }
  }, 1000);
  if (currentBlock.checkCollisionDown()) {
    currentBlock = nextCurrentBlock;
    currentBlock.x = 100;
    prevBlock = currentBlock.blocktag;
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

int pickRand() {
  blocktype = (int) random(7);
  if (blocktype == prevBlock) {
    pickRand();
  }
  return blocktype;
}

void pickBlock() {
  pickRand();
  switch (blocktype) {
    case 0:
      nextCurrentBlock = new iBlock();
      break;
    case 1:
      nextCurrentBlock = new jBlock();
      break;
    case 2:
      nextCurrentBlock = new lBlock();
      break;
    case 3:
      nextCurrentBlock = new oBlock();
      break;
    case 4:
      nextCurrentBlock = new sBlock();
      break;
    case 5:
      nextCurrentBlock = new zBlock();
      break;
    case 6:
      nextCurrentBlock = new tBlock();
      break;
    default:
      print("error: blocktype picked number not tied to a block");
  }   
}
