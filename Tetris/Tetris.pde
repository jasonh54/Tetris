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
    //clearLine(currentBlock.p1, currentBlock.p2, currentBlock.p3, currentBlock.p4);
    currentBlock = nextCurrentBlock;
    currentBlock.x = 100;
    pickBlock();
  }
  for(int i = 0; i < pieces.size(); i++){
     //System.out.print(pieces.get(i).y + " "); 
  }
  //System.out.println();
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
  int blocktype = 0;//(int) random(7);
  
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

void clearLine(Piece p1, Piece p2, Piece p3, Piece p4){
  ArrayList<Piece> toDelete = new ArrayList<Piece>();
  ArrayList<Piece> toSort = new ArrayList<Piece>();
  ArrayList<Piece> tempPieces = new ArrayList<Piece>();
  
  for(int i = 0; i < pieces.size(); i++){
    tempPieces.add(pieces.get(i));
  }
  
  int p1totalX = 0;
  int p2totalX = 0;
  int p3totalX = 0;
  int p4totalX = 0;
 
  while(tempPieces.size() > 0){
    
    if(tempPieces.get(0).y == p1.y){
     p1totalX += tempPieces.get(0).x;
     toSort.add(tempPieces.get(0));
     
    } else if(tempPieces.get(0).y == p2.y){
     p2totalX += tempPieces.get(0).x;
     toSort.add(tempPieces.get(0));
     
    } else if(tempPieces.get(0).y == p3.y){
     p3totalX += tempPieces.get(0).x;
     toSort.add(tempPieces.get(0));
     
    } else if(tempPieces.get(0).y == p4.y){
     p4totalX += tempPieces.get(0).x;
     toSort.add(tempPieces.get(0));
     
    }
    println(p1totalX +""+ p2totalX +""+ p3totalX +""+ p4totalX);
     tempPieces.remove(0); 
  }
    
   if(p1totalX == 5760){
      for(int i = 0; i < toSort.size(); i++){
        if(toSort.get(i).y == p1.y){
          toDelete.add(toSort.get(i));
          toSort.remove(i);
          i--;
        }
      }
      
   } else if(p2totalX == 5760){
      for(int i = 0; i < toSort.size(); i++){
        if(toSort.get(i).y == p2.y){
          toDelete.add(toSort.get(i));
          toSort.remove(i);
        }
      }
      
   } else if(p3totalX == 5760){
      for(int i = 0; i < toSort.size(); i++){
        if(toSort.get(i).y == p3.y){
          toDelete.add(toSort.get(i));
          toSort.remove(i);
        }
      }
     
   } else if(p4totalX == 5760){
      for(int i = 0; i < toSort.size(); i++){
        if(toSort.get(i).y == p4.y){
          toDelete.add(toSort.get(i));
          toSort.remove(i);
        }
      }
     
   }
    
   for(int i = 0; i < toDelete.size(); i++){
       for(int k = 0; k < pieces.size(); k++){
        if(pieces.get(k) == toDelete.get(i)){
           pieces.remove(k);
           k--;
        }
     }
   }
   
   System.out.println(pieces.size() +" "+ toDelete.size() +" "+ toSort.size());
   

 
  //for(int i = 0; i < tempPieces.size(); i++){
  //    int totalXValue = 0;
  //    for(int k = 0; k < pieces.size(); k++){
  //      if(pieces.get(k).y == pieces.get(i).y){
  //        totalXValue += pieces.get(k).x;    
  //    }
  //    if(totalXValue == 5760){
  //      toDelete.add(pieces.get(i).y);
  //    }
  //  }
  //}
  
}
