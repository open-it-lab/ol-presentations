const int kPinLed = 13;

void setup()
{
   pinMode(kPinLed, OUTPUT);
}

int delayTime = 1000;

void loop()
{
    delayTime = delayTime - 100;
    if(delayTime <= 0){   // If the delay time is zero or less, reset it.
      delayTime = 1000;
    }
    digitalWrite(kPinLed, HIGH);
    delay(delayTime);
    digitalWrite(kPinLed, LOW);
    delay(delayTime);
}
