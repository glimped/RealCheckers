void setup(){
  size(1000, 1000);
}

void draw(){
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      int x = i*125;
      int y = j*125;
      
      if((i + j) % 2 == 0){
        fill(255, 0, 0);
      } else {
        fill(0);
      }
      rect(x, y, 125, 125);
      fill(255);
    }
  }
}
