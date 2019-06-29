ArrayList<Piece> pieces = new ArrayList<Piece>();
Block currentBlock = new Block();
Timer timer = new Timer();

void setup(){
  size(500, 500);
  
}

void draw(){
  clear();
  currentBlock.display();
  currentBlock.fall();
}
