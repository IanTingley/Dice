die Woody;
void setup(){
  size(480,480);
  noLoop();
}

void draw(){
  for(int y = 20; y<=480; y = y+40){
    for(int x = 20; x<=480; x = x+40){
      Woody = new die(x,y);
      
      Woody.show();
    }
  }
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
  
 
  void show(){
    fill(256,256,256);
    rect(myX-20, myY-20, 40, 40);
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    roll = (int)(Math.random()*6)+1;
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
