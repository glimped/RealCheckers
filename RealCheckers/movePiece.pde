PImage[][] movePiece(int i0, int j0, int i1, int j1, PImage[][] Board) {
  if (Board[i0][j0] == redPawn) {//promote red
    if (i1 == 0) {
      Board[i0][j0] = redKing;
      promote = true;
      doubleJump = false;
    }
  } else if (Board[i0][j0] == blackPawn) {//promote black
    if (i1 == 7) {
      Board[i0][j0] = blackKing;
      promote = true;
      doubleJump = false;
    }
  }
  Board[i1][j1] = Board[i0][j0];//move
  Board[i0][j0] = null;//remove piece
  totalMove += 1;
  if (abs(j0 - j1) == 2) {//jump
    if (turn == true) {
      redMove += 1;
    } else {
      
    }
    Board[(i0 + i1)/2][(j0 + j1)/2] = null;
    if (!promote) {//can jump again
      if (validMove(i1, j1, i1+2, j1+2, turn, Board) || validMove(i1, j1, i1+2, j1-2, turn, Board) ||
        validMove(i1, j1, i1-2, j1+2, turn, Board) || validMove(i1, j1, i1-2, j1-2, turn, Board)) {
        turn = !turn;
        doubleJump = true;
        jumpedY = i1;
        jumpedX = j1;
      } else {
        doubleJump = false;
      }
    }
  }
  promote = false;
  if (mustJump(!turn)) {
    jumping = true;
  } else {
    jumping = false;
  }
  if (finish(!turn)) {//finish
    gameOver = true;
    if (redMove > blackMove) {
      redScore += 1;
    } else{
      blackScore += 1;
    }
  }
  turn = !turn;
  return Board;
}
