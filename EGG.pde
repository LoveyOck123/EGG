
boolean lineStarted = false;
int lineStartX = -1;
int lineStartY = -1;
int R;
int G;
int B;
int size;
int eSize;

void setup(){
fullScreen();
  
}
void draw(){
  if(keyPressed){
    if(key=='a'||key=='A'){
      circle(mouseX,mouseY,10);
    }
    else if(key=='s'||key=='S'){
      rect(mouseX,mouseY,10,10);
    }
    else if(key=='d'||key=='D'){
      triangle(mouseX-10,mouseY+10,mouseX,mouseY-10,mouseX+10,mouseY+10);
    }
    else if(key=='e'||key=='E'){
      fill(203,203,203);
      stroke(203,203,203);
      circle(mouseX,mouseY,eSize);
    }
    else if(key=='w'||key=='W'){
     fill(R,G,B);
      stroke(R,G,B);
      circle(mouseX,mouseY,size);
       }
    else if(key=='u'||key=='U'){
    R=R+1;
    }
    else if(key=='i'||key=='I'){
    G=G+1;
    }
    else if(key=='o'||key=='O'){
    B=B+1;
    }
     else if(key=='j'||key=='J'){
    R=R-1;
    }
    else if(key=='k'||key=='K'){
    G=G-1;
    }
    else if(key=='l'||key=='L'){
    B=B-1;
    }
    else if(key=='g'||key=='G'){
    size=size+1;
    }
    else if(key=='b'||key=='B'){
    size=size-1;
    }
    else if(key=='t'||key=='T'){
    eSize=eSize+1;
    }
     else if(key=='y'||key=='Y'){
    eSize=eSize-1;
    }
    else if(key=='v'||key=='V'){
      if(!lineStarted){
        lineStarted = true;
        lineStartX = mouseX;
        lineStartY = mouseY;
      }
      else{
        line(lineStartX, lineStartY, mouseX, mouseY);
        lineStarted = false;
        lineStartX = -1;
        lineStartY = -1;
      }
    }
  }
}
