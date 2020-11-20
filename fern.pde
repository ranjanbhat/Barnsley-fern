float x=0,y=0;
void setup()
{
 // size(1000,1000);
  fullScreen();
  background(0);
}

void nextpoint()
{
  
  float nextx,nexty;
  
  float r=random(1);
  
  if(r<0.01)
  {
   //1  
  nextx=  0;
  nexty=  0.16*y;
  }
  
  else if(r<0.86)
  {
  //2  
  nextx=  0.85 * x +  0.04 * y;
  nexty= -0.04 * x +  0.85 * y + 1.6;
  }
  
  else if(r<0.93)
  {
  //3  
  nextx=  0.20 * x + -0.26 * y;
  nexty=  0.23 * x +  0.22 * y + 1.6;
  }
  
  else
  {
  //4  
  nextx= -0.15 * x +  0.28 * y;
  nexty=  0.26 * x +  0.24 * y + 0.44;
  }
  
  
  x=nextx;
  y=nexty;
}

void drawpoint()
{
  stroke(255);
  strokeWeight(1);
  float mid=map(0.5,-2.1820,2.6558,0,1000);
  float px=mid+map(x,-2.1820,2.6558,0,1000);
  float py=map(y,0,9.9983,1000,0);
 // stroke(px,py,px+py);
  stroke(px,py,0);
 // stroke(0,py,px);
  point(px,py);
}

void draw()
{
  for(int i=0; i<1000; i++)
  {
  drawpoint();
  nextpoint();
  }
}
