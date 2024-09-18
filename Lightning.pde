int startX=150+(int)(Math.random()*201)-100;
int startY=0;
int endX;
int endY;
void setup()
{
  size(300,300);
  background(125,110,125);
  frameRate(25);
}
void draw()
{
  //cloud
  fill(75,60,75);
  noStroke();
  ellipse(0,0,100,50);
  ellipse(50,0,100,60);
  ellipse(100,0,75,60);
  ellipse(150,0,85,65);
  ellipse(210,0,100,85);
  ellipse(275,0,85,75);
  //lightning
  stroke(200,150,255);
  if(endY>250){
    strokeWeight(2);
  }
  else if(endY>200){
    strokeWeight(3);
  }
  else if(endY>150){
    strokeWeight(4);
  }
  else if(endY>100){
    strokeWeight(5);
  }
  else{
    strokeWeight(6);
  }
  endX=startX+(int)(Math.random()*31)-15;
  endY=startY+(int)(Math.random()*51);
  line(startX,startY,endX,endY);
  //cloud redraw
  fill(75,60,75);
  noStroke();
  ellipse(0,0,100,50);
  ellipse(50,0,100,60);
  ellipse(100,0,75,60);
  ellipse(150,0,85,65);
  ellipse(210,0,100,85);
  ellipse(275,0,85,75);
  //lightning cont'd
  startX=endX;
  startY=endY;
  fill(125,110,125,15);
  rect(0,0,300,300);
  stroke(200,150,255);
}
void mousePressed()
{
  startX=150+(int)(Math.random()*201)-100;
  startY=0;
  endX=0;
  endY=0;
  redraw();
}
