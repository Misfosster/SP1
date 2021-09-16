class Die {
  color EyeColor;
  color DieColor;
  color EachEye [] = {color(0), color(0), color(0), color(0), color(0), color(0), color(0)};
  int value;
  Die(color TempEyeColor, color TempDieColor) {
    EyeColor = TempEyeColor;
    DieColor = TempDieColor;
  }
  int roll() {
    value = int(random(6)+1);
    return value;
  }
  void HideEyes() {
    for (int i = 0; i <EachEye.length; i++) {
      EachEye[i] = DieColor;
    }
  }
  void WhatIsRolled() {
    switch (value) {
    case 1:
      EachEye[0] = EyeColor;
      break;
    case 2:
      EachEye[2] = EyeColor;
      EachEye[6] = EyeColor;
      break;
    case 3:
    EachEye[0] = EyeColor;
    EachEye[2] = EyeColor;
    EachEye[6] = EyeColor;
    break;
    case 4:
    EachEye[2] = EyeColor;
    EachEye[3] = EyeColor;
    EachEye[5] = EyeColor;
    EachEye[6] = EyeColor;
    break;
    case 5:
    EachEye[0] = EyeColor;
    EachEye[2] = EyeColor;
    EachEye[3] = EyeColor;
    EachEye[5] = EyeColor;
    EachEye[6] = EyeColor;
    break;
    case 6:
    EachEye[1] = EyeColor;
    EachEye[2] = EyeColor;
    EachEye[3] = EyeColor;
    EachEye[4] = EyeColor;
    EachEye[5] = EyeColor;
    EachEye[6] = EyeColor;
    break;
    }
  }
  void Draw(int x, int y, int DieSize) {
    HideEyes();
    WhatIsRolled();
    fill(DieColor);
    rect(x, y, DieSize, DieSize);
    //Terning øjne
    fill(EachEye[0]);
    ellipse(x, y, DieSize/5, DieSize/5);
    fill(EachEye[1]);
    ellipse(x, y-DieSize/3, DieSize/5, DieSize/5);
    fill(EachEye[2]);
    ellipse(x-DieSize/3, y-DieSize/3, DieSize/5, DieSize/5);
    fill(EachEye[3]);
    ellipse(x+DieSize/3, y-DieSize/3, DieSize/5, DieSize/5);
    fill(EachEye[4]);
    ellipse(x, y+DieSize/3, DieSize/5, DieSize/5);
    fill(EachEye[5]);
    ellipse(x-DieSize/3, y+DieSize/3, DieSize/5, DieSize/5);
    fill(EachEye[6]);
    ellipse(x+DieSize/3, y+DieSize/3, DieSize/5, DieSize/5);
  }
}
