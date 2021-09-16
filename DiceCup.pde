class DiceCup
{
  int one;
  int two;
  int three;
  int four;
  int five;
  int six;
  int RememberI;
  int SwitchDie1;
  int SwitchDie2;
  int DieX = 100;
  int DieY = 100;
  int DieSize =50;
  int NumberOfDice;
  String CupInput = "";
  Die AmountOfDice[];
  DiceCup() {
  }

  //void Shake(){
  // for(int i = 0; i < AmountOfDice.length;i++){
  // AmountOfDice[i].roll();
  // }
  //  };

  void Shake() {
    Die AmountOfDice[] = new Die [int(CupInput)];
    for (int i = 0; i < AmountOfDice.length; i++) {
      Die MegaDie;
      MegaDie = new Die(color(0), color(255));
      AmountOfDice[i] = MegaDie;
      AmountOfDice[i].roll();
    }
    for (int i = 0; i < AmountOfDice.length; i++) {
      switch (AmountOfDice[i].value) {
      case 1:
        one++;
             AmountOfDice[i].Draw(width/10+(one*(DieSize*3)/2)-one, height/10 + AmountOfDice[i].value*(DieSize*3)/2, DieSize);
      break;
      case 2:
        two++;
        AmountOfDice[i].Draw(width/10+(two*(DieSize*3)/2)-two, height/10 + AmountOfDice[i].value*(DieSize*3)/2, DieSize);
      break;
      case 3:
        three++;
         AmountOfDice[i].Draw(width/10+(three*(DieSize*3)/2)-three, height/10 + AmountOfDice[i].value*(DieSize*3)/2, DieSize);
      break;
      case 4:
        four++;
         AmountOfDice[i].Draw(width/10+(four*(DieSize*3)/2)-four, height/10 + AmountOfDice[i].value*(DieSize*3)/2, DieSize);
      break;
      case 5:
        five++;
         AmountOfDice[i].Draw(width/10+(five*(DieSize*3)/2)-five, height/10 + AmountOfDice[i].value*(DieSize*3)/2, DieSize);
      break;
      case 6:
        six++;
         AmountOfDice[i].Draw(width/10+(six*(DieSize*3)/2)-six, height/10 + AmountOfDice[i].value*(DieSize*3)/2, DieSize);
      break;
      }
    }
    /* for (int i = 0; i < AmountOfDice.length; i++) {
     RememberI = i;
     for (int s = i; s < AmountOfDice.length; s++) {
     if ( i < AmountOfDice.length && i+1 != AmountOfDice.length) {
     if (AmountOfDice[i].value > AmountOfDice[s].value) {
     println("number " + s + " is Switching");
     println(AmountOfDice[i].value);
     SwitchDie1  = AmountOfDice[i].value;
     SwitchDie2  = AmountOfDice[i+1].value;
     AmountOfDice[i].value = SwitchDie2;
     AmountOfDice[i+1].value = SwitchDie1;
     println(AmountOfDice[i].value);
     } else if (AmountOfDice[i].value == AmountOfDice[i+1].value) {
     }
     }
     i = RememberI;
     }
     AmountOfDice[i].Draw(DieX, DieY+i*(DieSize+DieSize/2), DieSize);
     }
     */
    println("");
  }
}
