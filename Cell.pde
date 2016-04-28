class Cell {
PVector Position;
int Size;
float speed;
int Maxiumcellcount;
boolean colliding = false;


  Cell(float x,float y,float setspeed, int setMaxiumcellcount){
  Position = new PVector (x,y);
  Size= 8;
  Maxiumcellcount=setMaxiumcellcount ;
  speed=setspeed;
  }



//distance function
boolean collision(PVector one,PVector two){

if (dist(one.x,one.y,two.x,two.y)<=Size){
colliding= true;
}



return
colliding;
}






void move(int x){

    if(x==1){ 
      Position.x=Position.x+speed;
   }
      else if(x==2){
        Position.y=Position.y+speed;
  } 
        else if(x==3){
        Position.y=Position.y-speed;
  } 
      else if(x==4){
        Position.y=Position.y-speed;
  } 
    else if(x==0){
    Position.x=Position.x;
    Position.y=Position.y;  
  } 
      if(Position.x>900){
      Position.x=0;
  }
      else if(Position.y>900){
      Position.y=0;
  }
      else if(Position.x<0){
      Position.x=900;
    }
     else if(Position.y<0){
     Position.y=900;
  }
}

void renderCell(int Color1 ,int Color2, int Color3){
pushMatrix();
fill(Color1,Color2,Color3);
ellipse(Position.x,Position.y,Size,Size);
popMatrix();

}




}