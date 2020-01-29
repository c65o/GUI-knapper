int Konto1 =5000;
int Konto2 =7000;
boolean bank = true;


Knap deposit = new Knap(100, 100, 100, 220, 100);
Knap deposit2 = new Knap(100, 300, 100, 220, -100);
Knap withdraw = new Knap(400, 100, 100, 220, 100);
Knap withdraw2 = new Knap(400, 300, 100, 220, -100);
Knap KontoD = new Knap(100, 450, 100, 220, 0);
Knap KontoD2 = new Knap(400, 450, 100, 220, 0);

void setup() {
  size(700, 700);
}

void draw() {

  if (bank == true) {
    clear();
    background(0, 55, 85);
    deposit.tegnKnap("Indsæt 100 kr");
    deposit2.tegnKnap("Overfør -100 kr");
    withdraw.tegnKnap("Indsæt 100 kr");
    withdraw2.tegnKnap("Overfør -100 kr");
    KontoD.tegnKnap("Konto 1: "+Konto1);
    KontoD2.tegnKnap("Konto 2: "+Konto2);

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

    if ((withdraw.knapTrykket == true)&&(Konto1 > 0)) {
      Konto2 += deposit.value; 
      Konto1 -= deposit.value;
      withdraw.knapTrykket = false;
    }
    if ((withdraw2.knapTrykket == true)&&(Konto2 > 0)) {
      Konto1 += deposit.value; 
      Konto2 -= deposit.value;
      withdraw2.knapTrykket = false;
    }
  }
}

void mouseReleased() {
  deposit.registrerKlik();
  deposit2.registrerKlik();
  withdraw.registrerKlik();
  withdraw2.registrerKlik();
}
