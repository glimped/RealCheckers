import java.util.List;
int startY, startX, endY, endX;//starting pos, ending pos
int jumpedY,jumpedX;//double jumping
int mustJumpY, mustJumpX;
boolean click;
boolean RED = true;
boolean BLACK = false;
int totalMove = 0; //total moves
int blackMove = 0;
int redMove = 0;
int redScore = 0;
int blackScore = 0;
boolean turn;
String turnText = "red";
int pressed = 0;
int second = 50;
boolean setTurn = RED;
boolean promote;
boolean doubleJump, jumping;
boolean gameOver;
boolean startButton = true;
boolean helpButton = true;
PImage redKing, blackKing, redPawn, blackPawn;
PImage[][] board;
boolean black (int endY, int endX, PImage[][] Board) {
  return (Board[endY][endX] == blackPawn || Board[endY][endX] == blackKing);
}
boolean red1 (int endY, int endX, PImage[][] Board) {
  return (Board[endY][endX] == redPawn || Board[endY][endX] == redKing);
}
boolean notBlack (int endY, int endX, PImage[][] Board) {
  return (red1(endY, endX, Board) || Board[endY][endX] ==null);
}
boolean notRed (int endY, int endX, PImage[][] Board) {
  return (black(endY, endX, Board) || Board[endY][endX] ==null);
}

void keyPressed() {
  if (key=='r') { //restart with key r
    reset();
  }
}

void setup() {
  size(900, 800);
  textSize(width/8);
  textAlign(CENTER);
  redKing = loadImage("KingR.png"); // pawn king photos
  blackKing = loadImage("KingB.png");
  redPawn = loadImage("PawnR.png");
  blackPawn = loadImage("PawnB.png");
  redKing.resize(width/9, height/8);
  blackKing.resize(width/9, height/8);
  redPawn.resize(width/9, height/8);
  blackPawn.resize(width/9, height/8);
  reset();
}
void draw() {
  showScreen();  
}
