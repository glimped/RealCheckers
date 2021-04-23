private Button start;
void setup(){
  size(800, 800);
  
}

void draw() {
  fill(255);
  Menu();
}
boolean button = true;

void setStart(int x, int y, int b_length, int b_height, String text, int text_size) {
  start = new Button(x, y, b_length, b_height, text, text_size);
    
    while (button) {
      start.drawButton();
    }
    if (start.overButton()) {
      start.drawHoverButton();
    } 
    if (start.clickButton()) {
      background(255);
      button = false;
      drawBoard();
    }
}

void Menu(){
  setStart(300, 400, 200, 100, "Start", 80);
}
void drawBoard(){
    for(int i = 0; i < 8; i++){
      for(int j = 0; j < 8; j++){
        int x = i*100;
        int y = j*100;
        
        if((i + j) % 2 == 0){
          fill(255, 0, 0);
        } else {
          fill(255);
        }
        rect(x, y, 100, 100);
        fill(255);
      }
    }
  }
