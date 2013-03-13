import processing.video.* ;
 
Movie bikeFilm, staticFilm ;
 
 
int x ;
int y ;
int rayon = 200 ;
float angle = 10 ;
 
void setup() {
  
  size (800,800);
  background(0);
   
  staticFilm = new Movie(this, "static.mov");
  bikeFilm = new Movie (this, "bike.mov");
   
  staticFilm.loop();
  bikeFilm.loop() ;
  
  staticFilm.loop();
  bikeFilm.play() ;
  
}

void movieEvent(Movie m) {
  m.read();
}

 
void draw() {
  angle = 1;
 
  x = round (width/2) ;
  y = round (height/2) ;
   
  imageMode(CENTER);
  image (bikeFilm, x, y) ;
   
}

