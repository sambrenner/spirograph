float a,b,h,xpos,ypos,oxpos,oypos,t,ot,d,od;
int centerX,centerY;

void setup() {
  size(600,600);
  colorMode(HSB,360);
  background(0);
  centerX = width/2;
  centerY = height/2;
}

void draw() {
  background(0);
  
  a = mouseX;
  b = 60;
  h = mouseY;
    
  for(int i=1; i<361; i+=1) {
    t = radians(i);
    ot = radians(i-1);
    d = a*t;
    od = a*ot;
  
    oxpos = (a-b)*cos(ot)+h*cos(od);
    oypos = (a-b)*sin(ot)+h*sin(od);    
    
    xpos = (a-b)*cos(t)+h*cos(d);
    ypos = (a-b)*sin(t)+h*sin(d);
    
    stroke(i-1,360,360);
    line(centerX+oxpos, centerY+oypos, centerX+xpos, centerY+ypos);
  }
}

void mousePressed() {
  save("spiro_big_"+a+"_"+b+"_"+h+".tif");
}
