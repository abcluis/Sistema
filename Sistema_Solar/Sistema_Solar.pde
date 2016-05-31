// Graficacion
// Sistema Solar
// Luis Fernando Gallegos


float t = 0;
float t1 = 0;
float t2 = 0;
float t3 = 0;
boolean d3= false;
float rx = 0;
float rl =0;
boton velp, veln, boton3d;
PImage img;


planeta mercurio,venus, tierra, marte, jupiter, saturno, urano, neptuno;

void setup() {
  
  size(800, 700, P3D);
  img = loadImage("tierra.png");
  velp = new boton(10, 10, " + ");
  veln = new boton(50, 10, " - ");
  boton3d = new boton(650, 10, " 3D ");


  mercurio= new planeta(57, 40, 0.172, 5, "Mercurio");
  venus= new planeta(108, 100, 0.126, 5, "Venus");
  tierra = new planeta(149, 140, 0.104, 7, "Tierra");
  marte= new planeta(227, 220, 0.086, 10, "Marte");
  jupiter = new planeta(500, 450, 0.047, 30, "Jupiter");
  saturno= new planeta(750, 700, 0.034, 20, "Saturno");
  urano= new planeta(1200, 1000, 0.024, 15, "Urano");
  neptuno = new planeta(1600, 1400, 0.019, 16, "Neptuno");

}

void draw() {
  
  if (!d3) {
    background(0);
    velp.display();
    veln.display();
    boton3d.display();
    pushMatrix();
    translate(width/2, height/2);
    fill(210, 210, 5);
    noFill();
    stroke(255);
    mercurio.orbita();
    tierra.orbita();
    venus.orbita();
    marte.orbita();
    jupiter.orbita();
    saturno.orbita();
    urano.orbita();
    neptuno.orbita();  
    update();
    popMatrix();
  } else if (d3) {
    
    background(0);
    pushMatrix();
  
    boton3d.display();
    spotLight(255, 255, 255, 300, 350, 300, 0, 0, -1, PI/2, 2); 
    translate(width/2, height/2);
    tierraDisplay();
    lunaDisplay();
    popMatrix();
  }
  if (keyPressed) {
    if (key == '+') {
      mercurio.aux= mercurio.aux*1.1;
      venus.aux= venus.aux*1.1;
      tierra.aux= tierra.aux*1.1;
      marte.aux= marte.aux*1.1;
      jupiter.aux= jupiter.aux*1.1;
      saturno.aux= saturno.aux*1.1;
      urano.aux= urano.aux*1.1;
      neptuno.aux= neptuno.aux*1.1;
    } else if (key == '-') {
      mercurio.aux= mercurio.aux*0.95;
      venus.aux= venus.aux*0.95;
      tierra.aux= tierra.aux*0.95;
      marte.aux= marte.aux*0.95;
      jupiter.aux= jupiter.aux*0.95;
      saturno.aux= saturno.aux*0.95;
      urano.aux= urano.aux*0.95;
      neptuno.aux= neptuno.aux*0.95;
    } else if (key == '*') {
      d3=!d3;
    }
  }
  if (mousePressed) {
    if (velp.presion(mouseX, mouseY)) {
      mercurio.aux= mercurio.aux*1.1;
      venus.aux= venus.aux*1.1;
      tierra.aux= tierra.aux*1.1;
      marte.aux= marte.aux*1.1;
      jupiter.aux= jupiter.aux*1.1;
      saturno.aux= saturno.aux*1.1;
      urano.aux= urano.aux*1.1;
      neptuno.aux= neptuno.aux*1.1;
    }
    if (veln.presion(mouseX, mouseY)) {
      mercurio.aux= mercurio.aux*0.95;
      venus.aux= venus.aux*0.95;
      tierra.aux= tierra.aux*0.95;
      marte.aux= marte.aux*0.95;
      jupiter.aux= jupiter.aux*0.95;
      saturno.aux= saturno.aux*0.95;
      urano.aux= urano.aux*0.95;
      neptuno.aux= neptuno.aux*0.95;
    }if (boton3d.presion(mouseX, mouseY)) {
      d3=!d3;
    }
  }
}
void tierraDisplay() {
  stroke(100);
  pushMatrix();
    
  rx = rx + 0.01;
  rotateY(rx);
  rotateX(0.5);
  noStroke();
  fill(#096ACB);
  sphere(100);

  popMatrix();
}

void lunaDisplay() {
  pushMatrix();
  rl = rl + 2;
  rotateZ(rl * -PI/80 * 0.05);
  translate(200, 0);
  noStroke();
  fill(255);
  sphere(20);
  popMatrix();
}

void update() {
  noStroke();
  fill(#6F4907);
  mercurio.update();
  fill(#4D3703);
  venus.update();
  fill(#1157A6);
  tierra.update();
  fill(#B62616);
  marte.update();
  fill(#B67616);
  jupiter.update();
  fill(#733D07);
  saturno.update();
  fill(#0A9188);
  urano.update();
  fill(#1165B9);
  neptuno.update();
}