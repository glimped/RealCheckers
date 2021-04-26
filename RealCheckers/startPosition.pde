void startPosition() {
  board = new PImage[8][8];

  board[0][1] = blackPawn;
  board[0][3] = blackPawn;
  board[0][5] = blackPawn; 
  board[0][7] = blackPawn;
  board[1][0] = blackPawn;
  board[1][2] = blackPawn;
  board[1][4] = blackPawn;
  board[1][6] = blackPawn;
  board[2][1] = blackPawn;
  board[2][3] = blackPawn;
  board[2][5] = blackPawn; 
  board[2][7] = blackPawn;

  board[5][0] = redPawn;
  board[5][2] = redPawn;
  board[5][4] = redPawn;
  board[5][6] = redPawn;
  board[6][1] = redPawn;
  board[6][3] = redPawn;
  board[6][5] = redPawn;
  board[6][7] = redPawn;
  board[7][0] = redPawn;
  board[7][2] = redPawn;
  board[7][4] = redPawn;
  board[7][6] = redPawn;

  //global variables
  promote = false;
  down=right=down1=right1=-1;
  click = false;
  turn = RED;
  gameOver = false;
  doubleJump = false;
  totalMove = 0;
}
