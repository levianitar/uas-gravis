float xo;
float yo;
float scale = 1;
int startPosition = 0;
int movement = 5;
boolean zoomIn = false;
boolean zoomOut = false;
boolean rotateX = false;
boolean rotateY = false;

void setup(){
  size(1440,900,P2D);
  xo = width/2;
  yo = height/2;
}

void draw(){
  background(0);
  translate (xo, yo);
  scale(scale);
  fill(#ffffff);
  noStroke();

  startPosition += movement;

  if(startPosition < 0){
    movement = -movement;
    startPosition += movement;
  }
    
  if(zoomIn){
    scale *= 1.02; //diperbesar sebanyak 2%
  }
  if(zoomOut){
    scale /= 1.02; //diperkecil sebanyak 2%
  }
  
  if(rotateX){ //objek berputar searah jarum jam
    rotate(radians(startPosition));
  }
  if(rotateY){ //objek berputar berlawanan dengan jarum jam
    rotate(radians(-startPosition));
  }
  
  // Huruf L
  pushMatrix();
  rect(-60, -130, 40, 240);
  rect(-60, 70, 150, 40);
  popMatrix();
  
  //HURUF R
  pushMatrix();
  rect(140,-130,40,240);
  rect(140,-130,100,40); 
  triangle(240,-130,280,-90,190,-90); 
  rect(239,-91,40,42);
  triangle(240,-50,260,-20,280,-50);
  rect(140,-50,100,40);
  triangle(240,-50,240,-10,280,-10); 
  rect(240,-10,40,123);
  popMatrix();
}

void mouseDragged(){ //menggerakkan objek ke kanan kiri atas bawah
  xo = xo + (mouseX - pmouseX);
  yo = yo + (mouseY - pmouseY);
}

void keyPressed() {
  if(keyCode == UP){
    zoomIn = true;
  }
  if(keyCode == DOWN){
    zoomOut = true;
  }
  if(key == 'x'){
    rotateX = true;
  }
  if(key == 'y'){
    rotateY = true;
  }
}

void keyReleased(){
  if(keyCode == UP){
    zoomIn = false;
  }
  if(keyCode == DOWN){
    zoomOut = false;
  }
  if(key == 'x'){
    rotateX = false;
  }
  if(key == 'y'){
    rotateY = false;
  }
}
