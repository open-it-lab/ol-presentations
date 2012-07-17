const int kPinLed = 13;

void setup()
{
  pinMode(kPinLed, OUTPUT);
}

int delayTime = 1000;

void loop()
{
  while(delayTime > 0){  // while delayTime is greater than 0
    digitalWrite(kPinLed, HIGH);
    delay(delayTime);
    digitalWrite(kPinLed, LOW);
    delay(delayTime);
    delayTime = delayTime - 100;
  }
  while(delayTime < 1000){  // while delayTime is less than 1000
    delayTime = delayTime + 100;   // do this first so we don't have a loop with delayTime = 0
    digitalWrite(kPinLed, HIGH);
    delay(delayTime);
    digitalWrite(kPinLed, LOW);
    delay(delayTime);
  }
}


