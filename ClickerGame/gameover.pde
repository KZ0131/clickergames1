void gameover() {
  background(#BF0205);
  theme.pause();
  Gameover.play();
  
  fill(0);
  textSize(180);
  text("FAILED", 400, 220);
  fill(255);
  strokeWeight(3);
  stroke(0);
 
  tactilerect(250, 400, 300, 100);
  rect(250, 400, 300, 100);
  fill(0);
  textSize(45);
  text("PLAY AGAIN?", 400, 445);
  text("High Score:"+score, width/2, 550);
}

void gameoverclicks() {
  reset();
  if (mouseX > 250 && mouseX < 550 && mouseY > 400 && mouseY < 500)
    mode = intro;
    theme.rewind();
}
