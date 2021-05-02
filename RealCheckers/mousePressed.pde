void mousePressed() {
  if (gameOver) {
    startPosition();
  }
  if (click) {
    down1 = round(mouseY / (height/8)-0.5);
    right1 = round(mouseX / (width/9)-0.5);
    if (validMove(down, right, down1, right1, turn, board)) {
      board = movePiece(down, right, down1, right1, board);
      click = false;
    } else {//change piece
      down = down1;
      right = right1;
      click = true;
    }
  } else {
    down = round(mouseY / (height/8)-0.5);
    right = round(mouseX / (width/9)-0.5);
    click = true;
  }
}
