void setup()
{
  size(500, 500);
  ship = new Ship();
}//End setup()

Ship ship;//ship is called an INSTANCE of the Ship class

void draw()
{
  background(255);

  
  ship.render();
  ship.update();
}//End draw()
