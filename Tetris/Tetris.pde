ArrayList<Piece> pieces = new ArrayList<Piece>();
Block currentBlock = new Block();
Timer timer = new Timer();

void setup(){
  size(500, 500);
  
}

void draw(){
  clear();
  currentBlock.display();
  
  timer.setInterval(new Runnable() {
    public void run(){
      currentBlock.fall();
    }
  }, 1000);
}
