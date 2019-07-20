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
    this.x -= 20;
  }
  
  public void shiftRight() {
    this.x += 20;
  }
  
  public boolean checkCollision(){
    for(int i = 0; i < pieces.size() - 4; i++){
      if((p1.y + 20 == pieces.get(i).y && p1.x == pieces.get(i).x) || (p2.y + 20 == pieces.get(i).y && p2.x == pieces.get(i).x) || (p3.y + 20 == pieces.get(i).y && p3.x == pieces.get(i).x) || (p4.y + 20 == pieces.get(i).y && p4.x == pieces.get(i).x)){
        return true; 
      } 
    }
    
    if(p1.y == 480 || p2.y == 480 || p3.y == 480 || p4.y == 480){
        return true; 
    }
    
    return false;
  }
  
  //draw the pieces all together
  public void display() {
    p1.display();
    p2.display();
    p3.display();
    p4.display();
  }
  
  public void update() {
    
  }
}
