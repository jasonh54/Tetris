class jBlock extends Block {
  
  //constructor
  public jBlock() {
    super();
    p1.x = this.x;
    p1.y = this.y - 20;
    p2.x = this.x;
    p2.y = this.y;
    p3.x = this.x;
    p3.y = this.y + 20;
    p4.x = this.x - 20;
    p4.y = this.y + 20;
    p1.c = #0000ce;
    p2.c = #0000ce;
    p3.c = #0000ce;
    p4.c = #0000ce;
  }
  
  public void setRotation() {
    switch(this.rotation % 4) {
      case 0:
        p1.x = this.x;
        p1.y = this.y - 40;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x;
        p3.y = this.y - 20;
        p4.x = this.x - 20;
        p4.y = this.y;
        break;
      case 1:
        p1.x = this.x;
        p1.y = this.y - 20;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x + 20;
        p3.y = this.y;
        p4.x = this.x + 40;
        p4.y = this.y;
        break;
      case 2:
        p1.x = this.x + 20;
        p1.y = this.y;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x;
        p3.y = this.y + 20;
        p4.x = this.x;
        p4.y = this.y + 40;
        break;
      case 3:
        p1.x = this.x;
        p1.y = this.y + 20;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x - 20;
        p3.y = this.y;
        p4.x = this.x - 40;
        p4.y = this.y;
        break;
    }
  }
  
  public void update() {
    if (rotation < 0) {
      rotation = 3;
    }
    setRotation();
    this.display();
  }
  
}
