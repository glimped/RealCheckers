public class Button {
  private int x;
  private int y;
  private int b_length;
  private int b_height;
  private String text;
  private float x_buffer;
  private float y_buffer;
  private int text_size;
   
   
  //Constructor 
  public Button(int x, int y, int b_length, int b_height, String text, int text_size) {
    this.x = x;
    this.y = y;
    this.b_length = b_length;
    this.b_height = b_height;
    this.text = text;
    this.text_size = text_size;
    textSize(text_size);
    float text_height = text_size - 15;
    //buffer on the top and bottom of buttons
    y_buffer = b_height - (b_height - text_height)/2;
    //buffer on the left and right of buttons
    x_buffer = b_length /2; 
  }   
  
  //Draw the button as a red rectangle with text in it
  public void drawButton() {
    fill(255);
    rect(x, y, b_length, b_height, 6, 6, 6, 6);
    fill(0);
    textSize(text_size);
    //place text at x_buffer from x_cor etc. 
    text(text, (x + x_buffer), (y + y_buffer));
  }
  
  //Behavior of button when mouse is hovering over it (fill it green)
  public void drawHoverButton() {  
     fill(255,0,0);
     rect(x, y, b_length, b_height, 6, 6, 6, 6);
     fill(0);
     text(text, (x + x_buffer), (y + y_buffer));
  } 
  
  //Check to see if mouse is over the button
  public boolean overButton() {
    if ((mouseX >= x && mouseX <= (x + b_length)) 
      && (mouseY >= y && mouseY <= (y + b_height))) {
        return true;
    }
    return false;
  }
  
  //Check to see if the button is clicked 
  public boolean clickButton() {
    if ((mousePressed && (mouseButton == LEFT)) && overButton()) {
      return true;
    }
    return false;
  }
}
