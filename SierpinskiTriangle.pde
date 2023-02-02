public void setup() {
  size(600, 600);
}

public void draw(){
  sierpinski(100, 100, 200);
}
public void mouseDragged(){ //optional

}
public void sierpinski(int x, int y, int len) {
  if(len <= 20) {
    stroke(0);
    triangle(x, y, x + len/2, y - len, x + len, y);
  } else {
    stroke(0);
    len = len/2;
    sierpinski(x + len/2, y + len, len);
    sierpinski(x, y, len);
    sierpinski(x + len, y, len);     
  }
    
}
