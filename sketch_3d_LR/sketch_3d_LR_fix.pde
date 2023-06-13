boolean rotateX = false;
boolean rotateY = false;
boolean rotateZ = false;
int startPosition = 0;
int movement = 5;

void setup(){
  size(1440,900,P3D);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  noStroke();
  lights();
  
  pushMatrix();
    // Roll -> bergerak di sumbu x
    if(rotateX){
      rotateX(radians(startPosition));
    }
    
    // Pitch -> bergerak di sumbu y
    if(rotateY){
      rotateY(radians(startPosition));
    }
    
    // Yaw -> bergerak di sumbu z
    if(rotateZ){
      rotateZ(radians(startPosition));
    }
    startPosition += movement;

    if(startPosition < 0){
      movement = -movement;
      startPosition += movement;
    }
    
    //Huruf L
    translate(-170, 0);
    box(50, 280, 40);
    translate(52, 115);
    box(150, 50, 40);
    
    //Huruf R
    translate(240, -115);
    box(50, 280, 40);
    translate(60, -115);
    box(170, 50, 40);
    translate(60, 45);
    box(50, 140, 40);
    translate(-60, 45);
    box(170, 50, 40);
    rotateZ(radians(45));
    translate(75, 45);
    box(180, 50, 40);
  popMatrix();
}

void keyPressed(){
  if(key == 'x'){
    rotateX = true;
  }
  if(key == 'y'){
    rotateY = true;
  }
  if(key == 'z'){
    rotateZ = true;
  }
}

void keyReleased(){
  if(key == 'x'){
    rotateX = false;
  }
  if(key == 'y'){
    rotateY = false;
  }
  if(key == 'z'){
    rotateZ = false;
  }
}
