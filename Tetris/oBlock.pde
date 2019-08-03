class oBlock extends Block {
  
  //constructor
  public oBlock() {
    super();
    p1.x = this.x - 20;
    p1.y = this.y;
    p2.x = this.x;
    p2.y = this.y;
    p3.x = this.x - 20;
    p3.y = this.y + 20;
    p4.x = this.x;
    p4.y = this.y + 20;
    p1.c = #FFFF32;
    p2.c = #FFFF32;
    p3.c = #FFFF32;
    p4.c = #FFFF32;
  }
  
  public void setRotation() {
    switch(this.rotation % 1) {
      case 0:
        p1.x = this.x - 20;
        p1.y = this.y;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x - 20;
        p3.y = this.y + 20;
        p4.x = this.x;
        p4.y = this.y + 20;
        break;
    }
  }
  
  public void update() {
    if (rotation < 0) {
      rotation = 0;
    }
    setRotation();
    this.display();
  }
  
}
