
die Woody;
void setup(){
  size(500,500);
  noLoop();
  Woody = new die(250,250);
}

void draw(){
  Woody.roll();
  Woody.show();
}

void mousePressed(){
 redraw(); 
}

class die{
  int myX;
  int myY;
  int roll;
  
  die(int x, int y){
    myX = x;
    myY = y;
    roll = 0;
  }
  
  void roll(){
    roll = (int)(Math.random()*6)+1;
    
    
  }
  void show(){
    rect(myX-20, myY-20, 40, 40);
    if(roll==1){
      ellipse(myX, myY, 10, 10);
    }
    if(roll==2){
      ellipse(myX-10, myY-10, 7.5, 7.5);
      ellipse(myX+10, myY+10, 7.5, 7.5);
    }
    if(roll==3){
      ellipse(myX-10, myY-10, 7.5, 7.5);
      ellipse(myX+10, myY+10, 7.5, 7.5);
      ellipse(myX, myY, 7.5, 7.5);
    }
    if(roll==4){
      ellipse(myX-10, myY-10, 7.5, 7.5);
      ellipse(myX+10, myY+10, 7.5, 7.5);
      ellipse(myX+10, myY-10, 7.5, 7.5);
      ellipse(myX-10, myY+10, 7.5, 7.5);
    }
    if(roll==5){
      ellipse(myX, myY, 7.5, 7.5);
      ellipse(myX+10, myY+10, 7.5, 7.5);
      ellipse(myX-10, myY-10, 7.5, 7.5);
      ellipse(myX+10, myY-10, 7.5, 7.5);
      ellipse(myX-10, myY+10, 7.5, 7.5);
    }
    if(roll==6){
      ellipse(myX-10, myY-10, 7.5, 7.5);
      ellipse(myX, myY-10, 7.5, 7.5);
      ellipse(myX+10, myY-10, 7.5, 7.5);
      ellipse(myX-10, myY+10, 7.5, 7.5);
      ellipse(myX, myY+10, 7.5, 7.5);
      ellipse(myX+10, myY+10, 7.5, 7.5);
    }
  }
}
