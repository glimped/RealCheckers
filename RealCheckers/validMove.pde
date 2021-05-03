boolean validMove(int startY, int startX, int endY, int endX, boolean side, PImage[][] Board) {
  if (startY > 7 ||  startY < 0 || endY > 7 ||  endY < 0 || startX > 7 ||  startX < 0 || endX > 7 ||  endX < 0) {
    return false;
  }
  if(jumping){
    if(abs(endX-startX) != 2) return false;
  }
  if(doubleJump){
    if(startY!=jumpedY || startX != jumpedX || abs(endX-startX) != 2) return false;
  }
  if (side == RED) {//red
    if (Board[startY][startX] == redPawn) {
      if (abs(endX - startX) == 1 && endY == startY-1 && Board[endY][endX] == null) { // move 1 step
        return true;
      }
      if (abs(endX - startX) == 2 && endY == startY-2 && Board[endY][endX] == null && black(startY-1, (endY + endX)/2, Board)) { //jump
        return true;
      }
    } else if (Board[startY][startX] == redKing) {
      if (abs(endX - startX) == 1 && abs(endY-startY) == 1 && Board[endY][endX] == null) { // move 1 step
        return true;
      }
      if (abs(endX - startX) == 2 && abs(endY-startY) == 2 && Board[endY][endX] == null && black((startY+endY)/2, (startX + endX)/2, Board)) { //jump
        return true;
      }
    }
  } else { //black
    if (Board[startY][startX] == blackPawn) {
      if (abs(endX - startX) == 1 && endY == startY+1 && Board[endY][endX] == null) { // move 1 step
        return true;
      }
      if (abs(endX - startX) == 2 && endY == startY+2 && Board[endY][endX] == null && red1(startY+1, (startX + endX)/2, Board)) { //jump
        return true;
      }
    } else if (Board[startY][startX] == blackKing) {
      if (abs(endX - startX) == 1 && abs(endY-startY) == 1 && Board[endY][endX] == null) { // move 1 step
        return true;
      }
      if (abs(endX - startX) == 2 && abs(endY-startY) == 2 && Board[endY][endX] == null && red1((startY+endY)/2, (startX + endX)/2, Board)) { //jump
        return true;
      }
    }
  }
  return false;
}
