import processing.video.* ;
 
Movie bikeFilm, staticFilm, officeFilm, homeFilm ;

PImage movie;
 
void setup() {
  size(1000, 1000);
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
     bikeFilm.play();
     officeFilm.stop();
     homeFilm.stop();
     movie = bikeFilm;
   }
  else if (key == 'd'){
     officeFilm.play();
     bikeFilm.stop();
     homeFilm.stop();
     movie = officeFilm;
     
  } else if (key == 'f'){
    homeFilm.play();
    bikeFilm.stop();
    officeFilm.stop();
    movie = homeFilm;
  } else {
    
    movie = staticFilm;
    
  }
 
 image(staticFilm, 0, 0);
 tint(255, 126);
 image(movie, 20, 100);
 
 
  //Testing to see if they play at the same time.
  println("Movie 1: " + bikeFilm.time());
  println("Movie 2: " + officeFilm.time());
}

void movieEvent(Movie m) {
 m.read();
  
}

