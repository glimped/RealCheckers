void showBoard() {
  background(255);
  textSize(100);
  text("Checker Game!", 0, height/9 * 2, width, height);
  Button start = new Button(height / 2 - 100, width / 2, 300, 100, "START GAME", 40);
  if (startButton == true) {
    start.drawButton();
    if (start.overButton()) {
    start.drawHoverButton();
    }
    if (start.clickButton()) {
      background(255);
      startButton = false;
      startPosition();
    }  
  }
  if (startButton == false) {
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
