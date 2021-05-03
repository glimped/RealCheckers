boolean validMove(int startX, int startY, int endX, int endY, boolean side, PImage[][] Board) {
  if (startX > 7 ||  startX < 0 || endX > 7 ||  endX < 0 || startY > 7 ||  startY < 0 || endY > 7 ||  endY < 0) {
    return false;
  }
  if(jumping){
    if(abs(endY - startY) != 2) return false;
  }
  if(doubleJump){
    if(startX != jumpedY || startY != jumpedX || abs(endY - startY) != 2) return false;
  }
  if (side == RED) {//red
    if (Board[startX][startY] == redPawn) {
      if (abs(endY - startY) == 1 && endX == startX - 1 && Board[endX][endY] == null) { // move forward 1
        return true;
      }
      if (abs(endY - startY) == 2 && endX == startX - 2 && Board[endX][endY] == null && black(startX - 1, (startY + endY)/2, Board)) { //jump
        return true;
      }
    } else if (Board[startX][startY] == redKing) {
      if (abs(endY - startY) == 1 && abs(endX - startX) == 1 && Board[endX][endY] == null) { // move forward 1
        return true;
      }
      if (abs(endY - startY) == 2 && abs(endX - startX) == 2 && Board[endX][endY] == null && black((startX + endX)/2, (startY + endY)/2, Board)) { //jump
        return true;
      }
    }
  } else { //black
    if (Board[startX][startY] == blackPawn) {
      if (abs(endY - startY) == 1 && endX == startX + 1 && Board[endX][endY] == null) { // move forward 1
        return true;
      }
      if (abs(endY - startY) == 2 && endX == startX + 2 && Board[endX][endY] == null && red1(startX + 1, (startY + endY)/2, Board)) { //jump
        return true;
      }
    } else if (Board[startX][startY] == blackKing) {
      if (abs(endY - startY) == 1 && abs(endX - startX) == 1 && Board[endX][endY] == null) { // move forward 1
        return true;
      }
      if (abs(endY - startY) == 2 && abs(endX - startX) == 2 && Board[endX][endY] == null && red1((startX + endX)/2, (startY + endY)/2, Board)) { //jump
        return true;
      }
    }
  }
  return false;
}
