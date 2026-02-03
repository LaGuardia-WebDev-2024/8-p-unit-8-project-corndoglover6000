//🟢setup Function - will run once
setup = function() {
    size(1500, 800);
    background(255,255,255,0);
};

//🟢draw Function - will run on repeat
draw = function(){

};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
  drawHorse(300, 200, color(0,200,200));
}

//🟡drawFish Function - will run when called
var drawHorse = function(horseX, horseY, horseColor){
  textSize(100);
  fill(horseColor);
  text("🐎", horseX, horseY);
};




