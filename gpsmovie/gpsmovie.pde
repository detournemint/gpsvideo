import processing.video.* ;
 
Movie bikeFilm, staticFilm, officeFilm, homeFilm ;

PImage movie;
 
void setup() {
  size(displayWidth, displayHeight);
  background(0);
   
  staticFilm = new Movie(this, "static.mov");
  bikeFilm = new Movie (this, "bike.mov");
  officeFilm = new Movie (this, "office.mov");
  homeFilm = new Movie(this, "room.mov");
   
  staticFilm.play(); 
  staticFilm.loop();
  
  
}

 
void draw() {
   movie = bikeFilm; 
   if (key == 's'){
     movie = bikeFilm;
     bikeFilm.loop();
     officeFilm.pause();
     homeFilm.pause();
   }
  else if (key == 'd'){
     movie = officeFilm; 
     officeFilm.loop();
     bikeFilm.pause();
     homeFilm.pause();
     
     
  } else if (key == 'f'){
    movie = homeFilm;
    homeFilm.loop();
    bikeFilm.pause();
    officeFilm.pause();
    
  } else {
    
    movie = staticFilm;
    
  }
 
 image(staticFilm, 0, 0);
 image(staticFilm, 0, 200);
 
 tint(255, 126);
 image(movie, 100, 100);
 
 
  //Testing to see if they play at the same time.
  println("Movie 1: " + bikeFilm.time());
  println("Movie 2: " + officeFilm.time());
}

void movieEvent(Movie m) {
 m.read();
  
}

