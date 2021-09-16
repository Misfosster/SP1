Die Die1;
int TheSize = 800;
String MainInput ="";
int DieRoll1;
DiceCup TheDiceCup;
void setup() {
  noStroke();
  size(800,800);
  TheDiceCup = new DiceCup();
  Die1 = new Die(color(0), color(255));
  rectMode(CENTER);
  println("How Many dice do you want?");
}
void draw() {
}
void keyPressed() {
  if (keyCode == ENTER) {
    TheDiceCup.CupInput = MainInput;
    TheDiceCup.Shake();
  }
  else {
  MainInput += key;
}
  //DieRoll1 = Die1.roll();
  //Die1.Draw(200,200,200);
  //println(DieRoll1);
}
