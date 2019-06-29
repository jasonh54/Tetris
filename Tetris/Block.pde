//block class
//requires 4 pieces p1, p2, p3, p4
//fall function that will make it move down on the y axis by the size of the piece
//update()

class Block{
  int x;
  int y;
  Piece p1, p2, p3, p4;
  
  public Block(){
    this.x = 250;
    this.y = 0;
    p1 = new Piece(x - 20, y);
    p2 = new Piece(x, y);
    p3 = new Piece(x + 20, y);
    p4 = new Piece(x + 40, y);
  }
  
  public void fall(){
    p1.y += 20;
    p2.y += 20;
    p3.y += 20;
    p4.y += 20;
  }
  
  public void display() {
    p1.display();
    p2.display();
    p3.display();
    p4.display();
  }
  
}
