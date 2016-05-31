

class estrella extends astro{
  
  
  
  estrella(float orX,float orY,float aux,int sizeP,String nombre){
   super(orX,orY,aux,sizeP,nombre);
  }
  

  void update(){
   
    ellipse(orX/2*cos(vel), orY/2*sin(vel), sizeP, sizeP);
    text(nombre, orX/2*cos(vel)+5, orY/2*sin(vel)); 
    //Earth
    vel=vel+aux;
  }
}