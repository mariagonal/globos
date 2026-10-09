PImage tate;
class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.5,0.5);
   vy=random(-3,-0.5);
   
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      strokeWeight(2);
      ellipse(x,y,70,100);
      image(tate, x-43,y-30,90,60);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
  tate=loadImage("tatiana.jpg");
}

void draw()
{
  background(220);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
