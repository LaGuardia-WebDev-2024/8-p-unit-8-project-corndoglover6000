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
var horseyyyX = random(0,1500);
var horseyyyY = random(600,800);



//🟢draw Function - will run on repeat
draw = function(){
  background(255,255,255,0);
  drawHorse(horseX, horseY, color(0,200,200));
  drawHorse(horseyX, horseyY, color(0,200,200));
  drawHorse(horseyyyX, horseyyyY, color(0,200,200));
  drawHorse(horseyX+200, horseY+100, color(0,200,200));
  drawHorse(horseyyyX-200, horseyY+50, color(0,200,200));
  horseX -= 1
  horseyX -= 1.5
  horseyyyX -= 2

  if(keyPressed){
    if(key == 'w' || key== 'W'){
      wildHorses();
      wildX -= 4;
    };
    if(wildX < -200){
      secondLine();
      secondLineX -= 4;
    };
  };
  if(secondLineX < -1000){
    wildX = 1500;
    secondLineX = 1500;
  };
  
};


//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
  //i like horses
  horseX = random(0,1500);
  horseY = random(300,800);
  horseyX = random(0,1500);
  horseyY = random(600,800);
  horseyyyX = random(0,1500);
  horseyyyY = random(600,800);

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
  //wild, wild horses
  //we'll ride the someday,,,,,,
};




