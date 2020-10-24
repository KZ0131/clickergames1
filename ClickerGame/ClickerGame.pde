//kris zhao
//1-1a
//clickergame project


//music library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer theme, coin, bump, Gameover;

color green = #1AED6C;
color red = #D31111;

PFont sketch;
//mode variables=====================================
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int option = 4;

int targetmode;

//target variables===============================
float x, y, d, w, h;
float vx, vy;
int score, lives;

//images
PImage kappa;
PImage sadfrog;

void setup() {//========================================
  reset();
  size(800, 800);
  mode = intro;
  textAlign(CENTER, CENTER);
  
  //target setups
  x = width/2;
  y = width/2;
  d = 100;
  vx=random(-3, 3);
  vy=random(-3, 3);
  score = 0;
  lives = 3;
   kappa = loadImage("kappa.png");
  sadfrog = loadImage("sadfrog.png");
 
  //text font
  sketch = createFont("sketch.ttf",200);
 
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  Gameover = minim.loadFile("gameover.wav");
}//====================================== 

void draw() {//========================================
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == option) {
    option();
  } else {
    println("Error:Mode =" +mode);
  }
}//=============================================
