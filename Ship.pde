//The class name starts with an upercase
class Ship
{
  //Fields:
  float x, y, w;
  float halfW;

  //Constructor!!
  //No return type
  //Name is always the same as the class

  Ship()
  {
    x = width / 2;
    y = height / 2;
    w = 50;
    halfW = w * 0.5f;
  }//End Ship()

  void update()
  {
    if (keyPressed)
    {
      if (key == 'w')
      {
        y--;
      }
      else if (key == 'a')
      {
        x--;
      }
      else if (key == 's')
      {
        y++;
      }
      else if (key == 'd')
      {
        x++;
      }
    }//End if
  }//End update()

  void render()
  {  
    line(x, y, x + halfW, y + halfW);
    line(x, y, x - halfW, y + halfW);
    line(x + halfW, y + halfW, x, y - halfW);
    line(x - halfW, y + halfW, x, y - halfW);
  }//End render()
}//End Ship

