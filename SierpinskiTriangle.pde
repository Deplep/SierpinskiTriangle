public void setup(){
  size(700, 700);
}
float angle = 0;
public void draw(){
  background(255);
  translate(width / 2, (height / 2)); // move origin to the center
  rotate(angle); // rotate
  angle += 0.01; // increment angle for animation
  //sierpinski(-150, 100, 300);//
  rotate(angle);
  angle -= 0.015;
  sierpinski(-150, 0, 300);//
  rotate(angle);
  angle -= 0.001;
  sierpinski(-150, 0, 300);//
  rotate(angle);
  angle -= 0.001;
  sierpinski(-150, 0, 300);//

}

public void sierpinski(int x, int y, int len){
  if(len <= 20){
    //fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
    triangle(x, y, x + len, y, x + len/2, y - len);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
    //sierpinski(x + len/4, y - len/4, len/4);
  }
}
