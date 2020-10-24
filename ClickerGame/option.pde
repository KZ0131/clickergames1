void option() {
  background(#D8CD76);
  strokeWeight(3);
  stroke(255);
  fill(green);
  
  rect(367,470,70,70);
  
  tactilerect(300, 600, 200, 100);
  rect(300, 600, 200, 100);
  fill(255);
  text("BACK", 400, 650);
  
  tactile(200, 300, 175);
  text("green",160,100);
  fill(green);
  circle(160, 300, 300);
  
  
  tactile(600, 300, 175);
  fill(255);
  text("red",640,100);
  fill(red);
  circle(640, 300, 300);
  
  
  
  if (targetmode == green) {
    fill(green);
    stroke(0);
    strokeWeight(2);
    rect(367,470,70,70);
  } else if (targetmode == red) {
    fill(red);
    stroke(0);
    strokeWeight(2);
    rect(367,470,70,70);
  }
}

void tactile (int x,int y, int r) {
  if(dist(x, y, mouseX, mouseY) < r) {
    stroke(red);
  } else {
    stroke(green);
  }
  
  
}



void optionclicks() {
  if (dist(mouseX, mouseY, 200, 200)< 300) {
    targetmode = green;
  } else if (dist(mouseX, mouseY, 600, 300)< 300) {
    targetmode = red;
  } else if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 700)
    mode = intro;
  
}
