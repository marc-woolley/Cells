class virus extends Cell{


   virus(float x,float y,float setspeed, int setMaxiumcellcount){

      super(x,y,setspeed,setMaxiumcellcount);
      

}


void renderCell(){
pushMatrix();
fill(0,255,0);
ellipse(Position.x,Position.y,Size,Size);
popMatrix();

}








}