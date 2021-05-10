void showScreen() {
  background(191,49,49,255);
  textSize(100);
  fill(255);
  text("Checkers Game!", 0, height/9 * 2, width, height);
  Button start = new Button(height / 2 - 100, width / 2, 300, 100, "START GAME", 40); //start
  Button help = new Button(height / 2 - 100, width / 8 * 5, 300, 100, "GAME HELP", 40); //help
  Button redTurn = new Button(height / 2 + 240, width / 2, 100, 50, turnText, 40); //turn
  if (startButton == true) { //start button
    start.drawButton();
    help.drawButton();
    redTurn.drawButton();
    if (start.overButton()) {
    start.drawHoverButton();
    }
    if (help.overButton()) {
    help.drawHoverButton();
    }
    if (redTurn.overButton()) {
    redTurn.drawHoverButton();
    }
    if (start.clickButton()) {
      background(255);
      startButton = false;
      startPosition();
    }  
    if (help.clickButton()) {
      helpButton = false;
      startButton = false;
    } 
    if (redTurn.clickButton() && pressed <= 0) {
      if (setTurn == RED){
        setTurn = BLACK;
        turnText = "black";
      } else {
        setTurn = RED;
        turnText = "red";
      }
      pressed = second;
    }
    pressed = pressed - 1;
  } else if (helpButton == false){ //help screen
    background(191,49,49,255);
    textAlign(LEFT);
    textSize(20);
    String helpMessage = "Press Start Game to start game.\nPress color Button to swtich starting side.\nPress R to restart current game.\n" +
    "Press color button to choose which side go first. Players alternate moves.\n" +
    "A piece makes a jump by diagonally leaping over one of the opponent’s pieces and landing on the empty space on the other side (there must be an empty space to land on). " +
    "Multiple jumps are allowed on a single turn. When a piece is jumped (“captured”), it is removed from the board and is now out of play. "+
    "A player must make a jump if one presents itself. This is not an option. You must jump if you can and keep jumping if you have the opportunity. " +
    "(One possible jumpable piece will be marked in Green, you can choose other jumpable piece if you want). " +
    "If you have more than one piece that can make a jump, you can decide which one to move on your turn. "+
    "Kings can move backwards. A piece may only move one square unless it is making a jump.\nWhen a piece reaches a space in the row on the opposite side of " +
    "the board, It is now a King! (Promoted)\nA player wins the game when the opponent cannot make a move. Usually, this is because all of the opponent’s pieces have been " +
    "captured, but sometimes it is because the opponent has no space to move onto.";
    fill(255);
    rect(50, 50, height - 100, width - 200);
    fill(0);
    text(helpMessage, 50, 50, height - 100, width - 100);
    textAlign(CENTER);
    Button back = new Button(height, 0, 100, 100, "BACK", 40); //back button
    back.drawButton();
    if (back.overButton()) {
    back.drawHoverButton();
    }
    if (back.clickButton()) {
      startButton = true;
      helpButton = true;
      redScore = 0;
      blackScore = 0;
      background(255);
      startPosition();
    }
  }
  else{
    noStroke();
    for (int i = 0; i<8; i++)
    for (int j = 0; j<8; j++) { 
      if ((i + j) % 2 == 0) fill(191,49,49,255);
      else fill(0);
      rect(i * width/9, j * height/8, width/9, height/8);//board
      if (board[j][i] != null) image(board[j][i], i * width/9, j * height/8);//piece
      if (click) {
        if (validMove(startY, startX, j, i, turn, board)) {
          fill(255, 255, 255, 100);//show posible moves in black
          rect(i * width/9, j * height/8, width/9, height/8);
        }
        if (j == startY && i == startX && board[j][i] != null) {
          fill(255, 255, 0, 100);//show piece in yellow
          rect(i * width/9, j * height/8, width/9, height/8);
        }
      }
    }
    stroke(0);
    showScore();
  }
}
