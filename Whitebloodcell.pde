class Whitebloodcell extends Cell {
String tag ="white blood cell" ;

   Whitebloodcell(float x,float y,float setspeed, int setMaxiumcellcount){

      super(x,y,setspeed,setMaxiumcellcount);
      Size=15;

}


void renderCell(){
pushMatrix();
fill(255);
ellipse(Position.x,Position.y,Size,Size);
popMatrix();

}







} 