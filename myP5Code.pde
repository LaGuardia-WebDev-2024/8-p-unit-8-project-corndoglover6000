//🟢setup Function - will run once
setup = function() {
    size(1500, 800);
    background(255,255,255,0);
    drawHorse(random(0,1500), random(300,800), color(0,200,200));
    drawHorse(random(0,1500), random(300,800), color(0,200,200));
    drawHorse(random(0,1500), random(300,800), color(0,200,200));
};

var horseX = 1500
var horseY = 800



//🟢draw Function - will run on repeat
draw = function(){
  
  drawHorse(horseX, horseY, color(0,200,200));
  
  horseX -= 1
  
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
  drawHorse(horseX, random(400,800), color(0,200,200));
  horseX -= 1
}

//🟡drawFish Function - will run when called
var drawHorse = function(horseX, horseY, horseColor){
  textSize(100);
  fill(horseColor);
  text("🐎", horseX, horseY);
  horseX -= 1
};




