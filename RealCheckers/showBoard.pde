void showBoard() {
  background(255);
  textSize(100);
  text("Checker Game!", 0, height/9 * 2, width, height);
  Button start = new Button(height / 2 - 100, width / 2, 300, 100, "START GAME", 40);
  Button help = new Button(height / 2 - 100, width / 8 * 5, 300, 100, "GAME HELP", 40);
  if (startButton == true) {
    start.drawButton();
    help.drawButton();
    if (start.overButton()) {
    start.drawHoverButton();
    }
    if (help.overButton()) {
    help.drawHoverButton();
    }
    if (start.clickButton()) {
      background(255);
      startButton = false;
      startPosition();
    }  
    if (help.clickButton()) {
      helpButton = false;
      startButton = false;
    } 
  } else if (helpButton == false){
    background(255);
    textAlign(LEFT);
    textSize(20);
    String helpMessage = "Click Start Game to start game.\nPress R to restart current game.\nPress back to go back to Start screen.\n" +
    "Red moves first. Players then alternate moves. Moves are allowed only on the black squares; pieces only move diagonally forward toward the opponent." +
    " Kings can move backwards. A piece may only move one square unless it is making a jump.";
    fill(255);
    rect(50, 50, height - 100, width - 200);
    fill(0);
    text(helpMessage, 50, 50, height - 100, width - 100);
    textAlign(CENTER);
    Button back = new Button(height, 0, 100, 100, "BACK", 40); //back button
    back.drawButton();
    if (back.overButton()) {
    back.drawHoverButton();
    }
    if (back.clickButton()) {
      startButton = true;
      helpButton = true;
      redScore = 0;
      blackScore = 0;
      background(255);
      startPosition();
    }
  }
  else{
    for (int i = 0; i<8; i++)
    for (int j = 0; j<8; j++) { 
      if ((i+j)%2 == 0) fill(191,49,49,255);
      else fill(0);
      rect(i*width/9, j*height/8, width/9, height/8);//chessboard
      if (board[j][i] != null) image(board[j][i], i*width/9, j*height/8);//piece
      if (click) {
        if (validMove(down, right, j, i, turn, board)) {
          fill(255, 255, 255, 100);//highlight posible moves in black
          rect(i*width/9, j*height/8, width/9, height/8);
        }
        if (j == down && i == right && board[j][i] != null) {
          fill(255, 255, 0, 100);//highlight piece in yellow
          rect(i*width/9, j*height/8, width/9, height/8);
        }
      }
    }
    showScore();
  }
}
