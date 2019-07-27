class Piece {
  //local vars initialized
  int x;
  int y;
  boolean falltag;
  int c;
  
  //constructor
  public Piece(int x, int y) {
    this.x = x;
    this.y = y;
    falltag = false;
    c = #ffffff;
  }
  
  //set x and y coordinates
  public void setXY(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  //draw the piece
  public void display() {
    fill(c);
    rect(x, y, 20, 20);
  }
}
