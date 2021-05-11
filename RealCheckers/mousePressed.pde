void mousePressed() {
  if (gameOver) {
    reset();
  }
  if (click) {
    endY = round(mouseY / (height/8)-0.5);
    endX = round(mouseX / (width/9)-0.5);
    if (validMove(startY, startX, endY, endX, turn, board)) {
      board = movePiece(startY, startX, endY, endX, board);
      click = false;
    } else {//change piece
      startY = endY;
      startX = endX;
      click = true;
    }
  } else {
    startY = round(mouseY / (height/8)-0.5);
    startX = round(mouseX / (width/9)-0.5);
    click = true;
  }
}
