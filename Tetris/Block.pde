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
