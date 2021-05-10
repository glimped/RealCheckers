boolean mustJump(boolean side) {
  for (int k = 0; k<8; k++) {
    for (int l = 0; l<8; l++) {
      if (side == RED) {
        if (notRed(l, k, board))
          continue;
        } else if (notBlack(l, k, board)) {
          continue;
        }
      for (int i = 0; i<8; i++) {
        for (int j = 0; j<8; j++) {
          if (validMove(l, k, i, j, side, board) && abs(l-i)==2) {
            mustJumpX = l;
            mustJumpY = k;
            return true;
          }
        }
      }
    }
  }
  return false;
}
