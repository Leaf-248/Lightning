float startX = 0;
float startY = 400;
float endX = 0;
float endY = 400;
PImage img; 

void setup(){
  smooth();
  size(600,400);
  strokeWeight(7);
  frameRate(20);
  
  img = loadImage("cat.png");
  imageMode(CENTER);
  //i was trying to slightly rotate my cat but it didn't work :(
  //translate(width/2, height/2);
  //rotate(PI);
  //image(img,75,35);
  
  tint(255, 126);
}

void draw(){
  background(101, 30);

  if (endX < 600){
    stroke((float)(Math.random()*256), (float)(Math.random()*256), (float)(Math.random()*256));
        image(img, startX - 36, startY +20, 65, 30);
    endX = startX + (float) (Math.random()*27);
    endY = startY + (float) (Math.random()*-27)+6;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }

}

void mousePressed(){
  redraw();
  startX = 0;
  startY= 400;
  endX = 0;
  endY = 400;
}
