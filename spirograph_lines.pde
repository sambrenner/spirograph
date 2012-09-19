float a,b,h,xpos,ypos,oxpos,oypos,t,ot,d,od,s;

void setup()
{
  size(600,600);
  colorMode(HSB,360);
  background(0);
}

void draw()
{
  fill(0);
  noStroke();
  rect(0,0,width,height);
  
  a=mouseX;
  b=60;
  h=mouseY;
  
  s=0;
  
  for(float i=1;i<361;i+=1)
  {
    t=radians(i);
    ot=radians(i-1);
    d=(a)*t;
    od=(a)*ot;
  
    oxpos=(a-b)*cos(ot)+h*cos(od);
    oypos=(a-b)*sin(ot)+h*sin(od);    
    
    xpos=(a-b)*cos(t)+h*cos(d);
    ypos=(a-b)*sin(t)+h*sin(d);
    
    stroke(s,360,360);
    line(300+oxpos,300+oypos,300+xpos,300+ypos);
    
    s++;
  }
}

void mousePressed()
{
  save("spiro_big_"+a+"_"+b+"_"+h+".tif");
}
