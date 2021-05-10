void showScore() { 
  fill(255); //show score session
  rect(width / 9 * 8, 0, width / 9, height);
  textSize(80);
  fill(191,49,49,255);
  text(redScore, height + 45, width/9 * 6);
  fill(0);
  text(blackScore, height + 45, width/9 * 2);
  fill(0, 255, 0);
  textSize(40);
  text(totalMove, height + 75, width/9 * 4);
  Button back = new Button(height, 0, 100, 100, "BACK", 40); //back button
  back.drawButton();
  if (back.overButton()) {
  back.drawHoverButton();
  }
  if (back.clickButton()) {
    startButton = true;
    redScore = 0;
    blackScore = 0;
    background(255);
    startPosition();
  }  
  textSize(20);
  if (turn) {
    fill(191,49,49,255);
    text("Red Turn!", height , width/9 * 4.5, 90, 200);
  } else {
    fill(0);
    text("Black Turn!", height , width/9 * 4.5, 90, 200);
  }
  if (mustJump(turn)){
    noFill();
    stroke(0, 255, 0);
    rect(mustJumpY * width/9, mustJumpX * height/8, width/9, height/8);
    if (RED) {
    fill(191,49,49,255);
    text("Red must Jump!", height , width/9 * 2.5, 90, 200);
  } else {
    fill(0);
    text("Black must Jump!", height , width/9 * 2.5, 90, 200);
  }
  }
  
}
