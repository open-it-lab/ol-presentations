const int kPinLed = 13;

void setup()
{
  pinMode(kPinLed, OUTPUT);
}

int delayTime = 1000;

void loop()
{  
  if(delayTime <= 100){   // If it is less than or equal to 100, reset it
    delayTime = 1000;
  }
  else{  
    delayTime = delayTime - 100;
  }
  digitalWrite(kPinLed, HIGH);
  delay(delayTime);
  digitalWrite(kPinLed, LOW);
  delay(delayTime);
}

