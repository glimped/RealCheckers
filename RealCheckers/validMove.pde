boolean validMove(int down, int right, int down1, int right1, boolean side, PImage[][] Board) {
  if (down > 7 ||  down < 0 || down1 > 7 ||  down1 < 0 || right > 7 ||  right < 0 || right1 > 7 ||  right1 < 0) {
    return false;
  }
  if(doubleJump){
    if(down!=p0 || right != p1 || abs(right1-right) != 2) return false;
  }
  if(jumping){
    if(abs(right1-right) != 2) return false;
  }
  if (side == RED) {//red
    if (Board[down][right] == redPawn) {
      if (abs(right1 - right) == 1 && down1 == down-1 && Board[down1][right1] == null) { // move forward 1
        return true;
      }
      if (abs(right1 - right) == 2 && down1 == down-2 && Board[down1][right1] == null && 
        black(down-1, (right + right1)/2, Board)) { //jump
        return true;
      }
    } else if (Board[down][right] == redKing) {
      if (abs(right1 - right) == 1 && abs(down1-down) == 1 && Board[down1][right1] == null) { // move forward 1
        return true;
      }
      if (abs(right1 - right) == 2 && abs(down1-down) == 2 && Board[down1][right1] == null 
        && black((down+down1)/2, (right + right1)/2, Board)) { //jump
        return true;
      }
    }
  } else {
    if (Board[down][right] == blackPawn) {
      if (abs(right1 - right) == 1 && down1 == down+1 && Board[down1][right1] == null) { // move forward 1
        return true;
      }
      if (abs(right1 - right) == 2 && down1 == down+2 && Board[down1][right1] == null && 
        red1(down+1, (right + right1)/2, Board)) { //jump
        return true;
      }
    } else if (Board[down][right] == blackKing) {
      if (abs(right1 - right) == 1 && abs(down1-down) == 1 && Board[down1][right1] == null) { // move forward 1
        return true;
      }
      if (abs(right1 - right) == 2 && abs(down1-down) == 2 && Board[down1][right1] == null && 
        red1((down+down1)/2, (right + right1)/2, Board)) { //jump
        return true;
      }
    }
  }
  return false;
}
