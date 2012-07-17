const int kPinLed = 9;

void setup()
{
  pinMode(kPinLed, OUTPUT);
}

void loop()
{   
  for(int i = 0; i < 4; i++){
    digitalWrite(kPinLed, HIGH);
    delay(200);
    digitalWrite(kPinLed, LOW);
    delay(200);
  }
  delay(1000); // 1 second
}

   
