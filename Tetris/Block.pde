class Block {
  //local vars initialized
  int x;
  int y;
  int rotation;
  
  Piece p1, p2, p3, p4;
  
  //constructor
  public Block(){
    this.x = 250;
    this.y = 0;
    this.rotation = 0;
    p1 = new Piece(x - 20, y);
    p2 = new Piece(x, y);
    p3 = new Piece(x + 20, y);
    p4 = new Piece(x + 40, y);
    
    pieces.add(p1);
    pieces.add(p2);
    pieces.add(p3);
    pieces.add(p4);
  }
  
  public void fall(){
    this.y += 20;
  }
  
  public void addRotation() {
    rotation++;
  }
  
  public void subtractRotation() {
    rotation--;
  }
  
  public void shiftLeft() {
    if (p1.x > 20 && p2.x > 20 && p3.x > 20 && p4.x > 20 && !checkCollisionLeft()) {
      x -= 20;
    }
  }
  
  public void shiftRight() {
    if (p1.x < 460 && p2.x < 460 && p3.x < 460 && p4.x < 460 && !checkCollisionRight()) {
      x += 20;
    }
    
  }
  
  public boolean checkCollisionDown(){
    for(int i = 0; i < pieces.size() - 4; i++){
      if((p1.y + 20 == pieces.get(i).y && p1.x == pieces.get(i).x) || (p2.y + 20 == pieces.get(i).y && p2.x == pieces.get(i).x) || 
      (p3.y + 20 == pieces.get(i).y && p3.x == pieces.get(i).x) || (p4.y + 20 == pieces.get(i).y && p4.x == pieces.get(i).x)){
        return true;
      } 
    }
    
    if(p1.y == 480 || p2.y == 480 || p3.y == 480 || p4.y == 480){
        return true; 
    }
    
    return false;
  }
  
  public boolean checkCollisionLeft(){
    for(int i = 0; i < pieces.size() - 4; i++){
      if((p1.x - 20 == pieces.get(i).x && p1.y == pieces.get(i).y) || (p2.x - 20 == pieces.get(i).x && p2.y == pieces.get(i).y) || 
      (p3.x - 20 == pieces.get(i).x && p3.y == pieces.get(i).y) || (p4.x - 20 == pieces.get(i).x && p4.y == pieces.get(i).y)){
        return true;
      } 
    }
    
    return false;
  }
  
  public boolean checkCollisionRight(){
    for(int i = 0; i < pieces.size() - 4; i++){
      if((p1.x + 20 == pieces.get(i).x && p1.y == pieces.get(i).y) || (p2.x + 20 == pieces.get(i).x && p2.y == pieces.get(i).y) || 
      (p3.x + 20 == pieces.get(i).x && p3.y == pieces.get(i).y) || (p4.x + 20 == pieces.get(i).x && p4.y == pieces.get(i).y)){
        return true;
      } 
    }
    
    return false;
  }
  
  public void checkEdge() {
    //left
    if (p1.x < 0 || p2.x < 0 || p3.x < 0 || p4.x < 0) {
      x += 20;
    }
    //right
    if (p1.x > 480 || p2.x > 480 || p3.x > 480 || p4.x > 480) {
      x -= 20;
    }
  }
  
  //draw the pieces all together
  public void display() {
    checkEdge();
    p1.display();
    p2.display();
    p3.display();
    p4.display();
  }
  
  public void update() {
    
  }
}
