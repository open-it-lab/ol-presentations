const int kPinButton1 = 2;
const int kPinLed = 9;

void setup()
{
  pinMode(kPinButton1, INPUT);
  digitalWrite(kPinButton1, HIGH); // turn on pull-up resistor
  pinMode(kPinLed, OUTPUT);
}

void loop()
{
  if(digitalRead(kPinButton1) == LOW){
    digitalWrite(kPinLed, HIGH);
  }
  else{
    digitalWrite(kPinLed, LOW);
  }
}


