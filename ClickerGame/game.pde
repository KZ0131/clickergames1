void game() {
  background(#A53793);
  fill (255);
  
  theme.play();
  
  //lives
  text("score:"+score, width/2, 50);
  text("lives:"+lives, width/2, 100);
  
  //pause
  strokeWeight(2);
  stroke(255);
  fill(#2E1AED);
  rect(50,50,100,100);
  fill(255);
  text("P",97,97);
  
  //targets
  fill(255);
  stroke(0);
  strokeWeight(0);
  circle(x, y, d);

  //movement codes
  
  x=x+vx;
  
  y=y+vy;
  
  //bouncing codes
  if (x<d/2|| x> width-d/2) {
    vx =vx *-1;
  }
  if (y<d/2|| y> height-d/2) {
    vy =vy *-1;
  }
}

void gameclicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score +1;
    vx = vx *1.3;
    vy = vy *1.3;
    coin.rewind();
    coin.play();
  }else if (dist(mouseX, mouseY, 100, 100) < 50){
    mode = pause;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives ==0) 
      mode = gameover;
  }
}
