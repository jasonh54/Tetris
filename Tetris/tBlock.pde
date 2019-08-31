class tBlock extends Block {
  
  //constructor
  public tBlock() {
    super();
    p1.x = this.x - 20;
    p1.y = this.y;
    p2.x = this.x;
    p2.y = this.y;
    p3.x = this.x + 20;
    p3.y = this.y;
    p4.x = this.x;
    p4.y = this.y + 20;
    p1.c = #993299;
    p2.c = #993299;
    p3.c = #993299;
    p4.c = #993299;
    this.blocktag = 6;
  }
  
  public void setRotation() {
    if (rotation < 0) {
      rotation = 3;
    }
    switch(this.rotation % 4) {
      case 0:
        p1.x = this.x - 20;
        p1.y = this.y;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x + 20;
        p3.y = this.y;
        p4.x = this.x;
        p4.y = this.y + 20;
        break;
      case 1:
        p1.x = this.x;
        p1.y = this.y - 20;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x;
        p3.y = this.y + 20;
        p4.x = this.x - 20;
        p4.y = this.y;
        break;
      case 2:
        p1.x = this.x + 20;
        p1.y = this.y;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x - 20;
        p3.y = this.y;
        p4.x = this.x;
        p4.y = this.y - 20;
        break;
      case 3:
        p1.x = this.x;
        p1.y = this.y + 20;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x;
        p3.y = this.y - 20;
        p4.x = this.x + 20;
        p4.y = this.y;
        break;
    }
  }
  
  public void update() {
    setRotation();
    this.display();
  }
  
}
