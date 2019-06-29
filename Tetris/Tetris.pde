ArrayList<Piece> pieces = new ArrayList<Piece>();
Block currentBlock = new Block();
Timer timer = new Timer();

void setup(){
  size(500, 500);
  
}

void draw(){
  clear();
  currentBlock.display();
<<<<<<< HEAD
  currentBlock.fall();
=======
  
  timer.setInterval(new Runnable() {
    public void run(){
      currentBlock.fall();
    }
  }, 1000);
>>>>>>> 9f1c33e30c4f7b754ff039fa60f30654c00e0cab
}
