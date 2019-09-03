
float x=50;
float y=150;
int g=10;
int h=60;
float q=850;
float e=150;
float r=1250;
float t=100;
int l=1;
int k=10;
int screen=1;


void setup()
{
background(0);
  size(800,200);
}

void draw()
{
 if(screen==1)
 {
  Starting(); 
 }
 if(screen==2)
 {
   Game();
 }
}

void Starting()
{
  background(0);
 textSize(30);
 fill(255,255,255);
 text("Don't touch red. W=Up Jump, S=Down Jump",10,60);
  textSize(30);
 fill(255,255,255);
 text("Press Space to Start ",10,100);
  
}


void Game()

{ background(0);
 fill(255,255,255);
ellipse(x,y,30,30);
Obstacles();
Limit();
GameOver();
float D= dist(x,y,r,t);
float K= dist(x,y,q,e);

if(D<15+15)
{
 background(5,48,255);
 noLoop();
 textSize(30);
 fill(0);
 text("The circles are red. Game Over",g,h);
}
if(K<15+15)
{
 background(5,48,255);
 noLoop();
 textSize(30);
 fill(0);
 text("You have failed. Congrats. Game Over",g,h);
}
}

void Limit()
{
fill(252,5,5);
rect(0,0,800,73);
textSize(30);
fill(0);
text("Don't touch red. W=jump, S=down jump",g,h);

}

void GameOver()
{
  if(y<73)
{
  y=-1000;
background(255,255,255);
g=1000;
h=1000;
textSize(30);
fill(0);
text("C'mon, You really thought that would work.",10,60);
textSize(30);
fill(0);
text("You lost! Can't even follow simple instructions. wow",10,100);
}
 
  if(y>190)
{
  y=-1000;
background(255,255,255);
g=1000;
h=1000;
textSize(30);
fill(0);
text("You lost! ",10,60);
}

}

void Obstacles()
{
  
  fill(252,5,5);
  ellipse(r,t,30,30);
  ellipse(q,e,30,30);
  q=q-k;
 r=r-k;
   if(q<-430)
  {
    q=q-(k+l);
    q=850;
  }
  if(r<-430)
  {
    r=850;
    r=r-(k+l);
  }
}

void Collisions()
{
  
  
}




void keyPressed()

{
 if(key == 'w')
 {
  background(0);
  y=y-50;
 }
 {
 if(key == 's')
 {
  background(0);
  y=y+50;
 }
 if(key == ' ')
 {
 screen=2;
 }
 }
}
