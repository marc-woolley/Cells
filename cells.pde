ArrayList<Redbloodcell> redbloodcells;
ArrayList<Whitebloodcell> whitebloodcells;
ArrayList<virus> viruses;

int timer; 
int p=0;
int o=0;
int r=0;
void setup(){

size(900,900);  
 
int indexforCells =0;
redbloodcells = new ArrayList<Redbloodcell>() ;
for(int i = 0; i<200; i=i+1){
  redbloodcells.add (new Redbloodcell(random(1,900),random(1,900),5,5));
} 
  whitebloodcells = new ArrayList<Whitebloodcell>() ;
for(int i = 0; i<100; i=i+1){
 whitebloodcells.add (new Whitebloodcell(random(1,900),random(1,900),5,5));
}
  viruses = new ArrayList<virus>() ;
for(int i = 0; i<100; i=i+1){
  viruses.add (new virus(random(1,900),random(1,900),5,5));
}

}

void draw(){
background(229,194,152);  
///make a seprate render loop for each cell class 
for(int i=0; i<redbloodcells.size();i=i+1){
//if(p>=viruses.size()){p=0;}
//if(o>=whitebloodcells.size()){o=whitebloodcells.size()-1;}
if(i>=redbloodcells.size()){i=redbloodcells.size()-1;}  
if (timer>1){
    
  redbloodcells.get(i).move(floor(random(0,5)));
 // whitebloodcells.get(o).move(floor(random(0,5)));
  //viruses.get(p).move(floor(random(0,5)));
}

redbloodcells.get(i).renderCell();
//whitebloodcells.get(o).renderCell();
//viruses.get(p).renderCell();
}

for(int v=0;v<viruses.size();v=v+1){


if (timer>1){
 viruses.get(v).move(floor(random(0,5)));
}
viruses.get(v).renderCell();

}

for(int w=0;w<whitebloodcells.size();w=w+1){



if (timer>1){
    
  whitebloodcells.get(w).move(floor(random(0,5)));

}
whitebloodcells.get(w).renderCell();

}

for(int q=0;q<viruses.size();q=q+1){
  r=0;
  while(r<redbloodcells.size()){
 if(redbloodcells.get(r).collision(redbloodcells.get(r).Position ,viruses.get(q).Position)==true){
viruses.add(new virus(redbloodcells.get(r).Position.x,redbloodcells.get(r).Position.y,5,5));
  redbloodcells.remove(r);
 }   
 r=r+1;

}

for(int s=0;s<whitebloodcells.size();s=s+1){
  r=0;
  while(r<viruses.size()){
 if(viruses.get(r).collision(viruses.get(r).Position ,whitebloodcells.get(s).Position)==true){
  viruses.remove(r);
 }   
 r=r+1;

}
}
//viruses.add(new virus(redbloodcells.get(i).Position.x,redbloodcells.get(i).Position.y,5,5));
//}
//}

//}


timer=timer+1;
  if(timer>2){timer=0;}
 
}
}