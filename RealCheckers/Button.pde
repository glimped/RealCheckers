public class Button {
  private int x;
  private int y;
  private int b_length;
  private int b_height;
  private String text;
  private float x_buffer;
  private float y_buffer;
  private int text_size;
   
  public Button(int x, int y, int b_length, int b_height, String text, int text_size) {
    this.x = x;
    this.y = y;
    this.b_length = b_length;
    this.b_height = b_height;
    this.text = text;
    this.text_size = text_size;
    textSize(text_size);
    float text_height = text_size - 15;
    y_buffer = b_height - (b_height - text_height)/2;
    x_buffer = b_length /2; 
  }   
  
  public void drawButton() { //draw button
    fill(255);
    rect(x, y, b_length, b_height, 6, 6, 6, 6);
    fill(0);
    textSize(text_size);
    text(text, (x + x_buffer), (y + y_buffer));
  }
  
  public void drawHoverButton() {  //show mouse hover on button
     fill(191,49,49,255);
     rect(x, y, b_length, b_height, 6, 6, 6, 6);
     fill(0);
     text(text, (x + x_buffer), (y + y_buffer));
  } 
  
  public boolean overButton() { //mouse over button
    if ((mouseX >= x && mouseX <= (x + b_length)) && (mouseY >= y && mouseY <= (y + b_height))) {
        return true;
    }
    return false;
  }
  
  public boolean clickButton() { //click button
    if ((mousePressed && (mouseButton == LEFT)) && overButton()) {
      return true;
    }
    return false;
  }
}
