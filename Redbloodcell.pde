class Redbloodcell extends Cell {


  Redbloodcell(float x,float y,float setspeed, int setMaxiumcellcount){

 super(x,y,setspeed,setMaxiumcellcount);
 Size=10; 
}


void renderCell(){
pushMatrix();
fill(255,0,0);
ellipse(Position.x,Position.y,Size,Size);
popMatrix();

}



}