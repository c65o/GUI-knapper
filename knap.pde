class Knap {

  boolean knapTrykket = false;
  int positionX = 0;
  int positionY = 0;
  int hojde = 100;
  int bredde = 100;
  int value = 0;
  String tekst = "fejl" ;

  Knap(int x, int y, int h, int b, int v) {
    positionX = x;
    positionY = y;
    hojde = h;
    bredde = b;
    value = v;
  }


  void tegnKnap(String t) {
    tekst = t;
    fill(256, 256, 256);
    rect(positionX, positionY, bredde, hojde);
    textSize(26);
    fill(0);
    text(tekst, positionX+5, positionY+60);
  }

  void registrerKlik() {


    if ((mouseX< positionX + bredde) && (mouseX>positionX) &&(mouseY<positionY +hojde ) && (mouseY> positionY)) {
      knapTrykket = true;


      if ((deposit.knapTrykket == true)&&(Konto2 > 0)) {
        Konto1 += deposit.value; 
        Konto2 -= deposit.value;
        deposit.knapTrykket = false;
      }
      if ((deposit2.knapTrykket == true)&&(Konto1 > 0)) {
        Konto2 += deposit.value; 
        Konto1 -= deposit.value;
        deposit2.knapTrykket = false;
      }
    }
  }
}
