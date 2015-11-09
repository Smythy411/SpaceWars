//The class name starts with an upercase
class AIShip
{
  //Fields:
  PVector pos;
  PVector forward;
  float theta = 0.0f;
  float w;
  float halfW;
  float speed = 5.0f;
  float xSpeed = 0;
  float ySpeed = 0;

  //Constructor!!
  //No return type
  //Name is always the same as the class

  AIShip()
  {
    //Constructor chaining
    this(width * 0.5f, height * 0.5f, 50);
  }//End Ship()

  AIShip(float x, float y, float w)
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

    if (pos.y > 0 + halfW)
    {
      pos.add(forward);
    }
    
  }//End update
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

