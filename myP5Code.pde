//🟢setup Function - will run once
setup = function() {
    size(1500, 800);
    background(255,255,255,0);
    
    
};

var wildX = 1500;
var secondLineX = 1500;
var horseX = random(0,1500);
var horseY = random(600,800);
var horseyX = random(0,1500);
var horseyY = random(600,800);



//🟢draw Function - will run on repeat
draw = function(){
  background(255,255,255,0);
  drawHorse(horseX, horseY, color(0,200,200));
  drawHorse(horseyX, horseyY, color(0,200,200));
  horseX -= 1
  horseyX -= 1.5
  
  if(keyPressed){
    if(key == 'w' || key== 'W'){
      wildHorses();
      wildX -= 2;
    };
    if(wildX < -100){
      secondLine();
      secondLineX -= 2;
    };
  };
  
};


//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
  //drawHorse();
  horseX = random(0,1500);
  horseY = random(300,800);
  horseyX = random(0,1500);
  horseyY = random(600,800);

};

//🟡drawFish Function - will run when called
var drawHorse = function(horseX, horseY){
  textSize(100);
  text("🐎", horseX, horseY);
};

var wildHorses = function(){
  textSize(100);
  fill(9, 87, 97);
  text("wild horses,,,", wildX, 200);
};

var secondLine = function(){
  textSize(100);
  fill(9, 87, 97);
  text("couldn't drag me away,,,", secondLineX, 200);
};




