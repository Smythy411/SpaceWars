//The class name starts with an upercase
class Ship
{
  //Fields:
  PVector pos;
  PVector forward;
  float theta = 0.0f;
  float w;
  float halfW;
  float speed = 5.0f;

  //Constructor!!
  //No return type
  //Name is always the same as the class

  Ship()
  {
    //Constructor chaining
    this(width * 0.5f, height * 0.5f, 50);
  }//End Ship()

  Ship(float x, float y, float w)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    this.w = w;
    this.halfW = w  * 0.5;
    this.theta = 0.0f;
  }//End Ship

  void update()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);

    forward.mult(speed);

    if (keyPressed)
    {
      if (key == 'w')
      {
        pos.add(forward);
      } else if (key == 'a')
      {
        theta -= 0.1f;
      } else if (key == 's')
      {
        pos.sub(forward);
      } else if (key == 'd')
      {
        theta += 0.1f;
      }
    }//End if
  }//End update()

  void render()
  {  
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    line(-halfW, halfW, 0, -halfW);
    line(0, -halfW, halfW, halfW);
    line(halfW, halfW, 0, 0);
    line(-halfW, halfW, 0, 0);
    popMatrix();
  }//End render()
}//End Ship

