int down, right, down1, right1;//curr move, (down, right)starting pos   (down1,right1)ending pos
int p0,p1;//for double jumping
boolean click;//first click select piece, second click moves piece
boolean RED = true;
boolean BLACK = false;
int totalMove = 0;
int blackMove = 0;
int redMove = 0;
int redScore = 0;
int blackScore = 0;
boolean turn;
boolean promote;
boolean doubleJump, jumping;
boolean gameOver;
boolean startButton = true;
PImage redKing, blackKing, redPawn, blackPawn;
PImage[][] board;
boolean black (int down1, int right1, PImage[][] Board) {
  return (Board[down1][right1] == blackPawn || Board[down1][right1] == blackKing);
}
boolean red1 (int down1, int right1, PImage[][] Board) {
  return (Board[down1][right1] == redPawn || Board[down1][right1] == redKing);
}
boolean notBlack (int down1, int right1, PImage[][] Board) {
  return (red1(down1, right1, Board) || Board[down1][right1] ==null);
}
boolean notRed (int down1, int right1, PImage[][] Board) {
  return (black(down1, right1, Board) || Board[down1][right1] ==null);
}

void keyPressed() {
  if (key=='r') {
    startPosition();
  }
}

void setup() {
  size(900, 800);
  textSize(width/8);
  textAlign(CENTER);
  redKing = loadImage("KingR.png");
  blackKing = loadImage("KingB.png");
  redPawn = loadImage("PawnR.png");
  blackPawn = loadImage("PawnB.png");
  redKing.resize(width/9, height/8);
  blackKing.resize(width/9, height/8);
  redPawn.resize(width/9, height/8);
  blackPawn.resize(width/9, height/8);
  startPosition();
}
void draw() {
  showBoard();
  if (gameOver) {
    textSize(width / 9);
    fill(0, 255, 0);
    if (redMove > blackMove) {
      text("Red WIN!", 0, height/9 * 4, width, height);
    } else{
      text("Black WIN!", 0, height/9 * 4, width, height);
    }
    textSize(width / 18);
    text(totalMove + " moves taken!", 0, height/ 9 * 5, width, height);
  }
  
}
