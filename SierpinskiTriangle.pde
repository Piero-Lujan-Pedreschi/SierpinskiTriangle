public void setup() {
  background(0, 0, 0);
  size(610, 610);
}

public void draw(){
  fill(0);
  sierpinski(5, 600, 600);
}
public void mouseDragged(){ //optional
}
public void sierpinski(int x, int y, int len) {
  if(len <= 20) {
    triangle(x, y, x + len/2, y - len, x + len, y);
  } else {
    len = len/2;
    stroke(#79E0ED);
    sierpinski(x + len/2, y - len, len);
    stroke(#ED8679);
    sierpinski(x, y, len);
    stroke(#F8A235);
    sierpinski(x + len, y, len);     
  }
    
}
