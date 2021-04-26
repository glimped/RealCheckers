void showScore() {
  fill(255); //show score session
  rect(width / 9 * 8, 0, width / 9, height);
  noStroke();
  textSize(80);
  fill(191,49,49,255);
  text(redScore, height + 45, width/9 * 6);
  fill(0);
  text(blackScore, height + 45, width/9 * 2);
  fill(0, 255, 0);
  text(totalMove, height + 45, width/9 * 4);
  textSize(20);
  
  if (turn == true) {
    fill(191,49,49,255);
    text("Red Turn!", height , width/9 * 4.5, 90, 200);
  } else {
    fill(0);
    text("Black Turn!", height , width/9 * 4.5, 90, 200);
  }
  
}
