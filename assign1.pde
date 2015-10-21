PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
int b1x,b2x,tx,ty,ex,ey,hx;

void setup () 
{
  size(640,480) ; 
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  b1x = 640;
  b2x = 0;
  tx = floor(random(600));
  ty = floor(random(440));
  ex = floor(random(600));
  ey = floor(random(440));
  hx = floor(random(200));
}

void draw() 
{
 //bg
 image(bg2,b1x-640,0);
 image(bg1,b2x-640,0);
 b1x++;
 b2x++;
 b1x %= 1280;
 b2x %= 1280;
 //figther
 image(fighter,560,240);
 //enemy
 image(enemy,ex,ey);
 ex += 5;
 ex %= 640;
 //treasure
 image(treasure,tx,ty);
 //hp
  stroke(#FF0000);
 fill(#FF0000); //red
 rectMode(CORNERS);
 rect(10,10,hx,30);
 image(hp,5,5);
}
