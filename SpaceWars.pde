void setup()
{
  size(500, 500);
  ship = new Ship();
  aiship = new AIShip();
}//End setup()

Ship ship;//ship is called an INSTANCE of the Ship class
AIShip aiship;

void draw()
{
  background(255);

  ship.render();
  ship.update();
  
  aiship.render();
  aiship.update();
}//End draw()
