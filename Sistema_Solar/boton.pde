class boton{
  
  int x,y;
  int colorActual = 255;
  String texto;
  
  boton(int a,int b,String t){
  this.x=a;
  this.y=b;
  this.texto=t;
  }
  
  void display(){
    fill(colorActual);
    rect(x,y,30,30);
    fill(255);
    text(texto, x+10, y+50);
  }
  
  boolean presion(int mx,int my){
    if(mx>=x && my>=y && mx<=x+30 &&my<=y+30){
      colorActual=150;
      return true;
    }else {
      colorActual=255;
    return false;
    }
    
  }
  
}