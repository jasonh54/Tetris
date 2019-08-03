import java.util.Random;
Random rand = new Random();
ArrayList<Piece> pieces = new ArrayList<Piece>();
Block currentBlock;
Timer timer = new Timer();

void setup(){
  size(500, 500);
  randomizeBlock();
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
     randomizeBlock();
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
  if (key == 'w'){

  }
}

void displayAll(){
   for(int i = 0; i < pieces.size(); i++){
      pieces.get(i).display(); 
   }
}

void randomizeBlock(){
  int num = rand.nextInt(7);
  if(num == 0){
     currentBlock = new iBlock();
  } else if(num == 1){
     currentBlock = new jBlock(); 
  } else if(num == 2){
     currentBlock = new lBlock(); 
  } else if(num == 3){
     currentBlock = new oBlock(); 
  } else if(num == 4){
     currentBlock = new sBlock(); 
  } else if(num == 5){
     currentBlock = new tBlock();
  } else {
     currentBlock = new zBlock();
  }
}
