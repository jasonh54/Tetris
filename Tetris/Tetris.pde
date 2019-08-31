ArrayList<Piece> pieces = new ArrayList<Piece>();
Block currentBlock;
Block nextCurrentBlock;
Timer timer = new Timer();

void setup(){
  size(400, 500);
  pickBlock();
  currentBlock = nextCurrentBlock;
  currentBlock.x = 100;
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
  if(currentBlock.checkCollisionDown()){
    clearLine();
    currentBlock = nextCurrentBlock;
    currentBlock.x = 100;
    pickBlock();
  }
  System.out.println(currentBlock.p1.y+" "+currentBlock.p2.y+" "+currentBlock.p3.y+" "+currentBlock.p4.y);
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

void pickBlock() {
  int blocktype = (int) random(7);
  
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

void clearLine(){
  
     int yIncrement = 80;
     int count;
     int clears = 0;
     
  for(int i = 0; i < 20; i++){
     yIncrement += 20;
     count = 0;
     
     for(int k = 0; k < pieces.size(); k++){
       if(pieces.get(k).y == yIncrement){
         count++;
       }
     }
     
     System.out.println(count);
     
     if(count == 10){
       clears++;
        for(int k = 0; k < pieces.size(); k++){
         if(pieces.get(k).y == yIncrement){
           pieces.remove(k);
           k--;
         }
       }
     }
     
  }
  
  for(int i = 0; i < pieces.size(); i++){
    pieces.get(i).y += (20 * clears);
  }
  
}
