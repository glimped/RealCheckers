boolean finish(boolean side) { //finish
  for (int i = 0; i<8; i++) {
    for (int j = 0; j <8; j++) {
      if (side == RED) {
        if (notRed(j, i, board))
          continue;
        } else if (notBlack(j, i, board)) {
          continue;
        }
      for (int k = 0; k<8; k++) {
        for (int l = 0; l<8; l++) {
          if (validMove(j, i, k, l, side, board)) {
            return false;
          }           
        }
      }
    }
  }
  return true;
}
