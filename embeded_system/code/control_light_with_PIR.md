

## Control light with PIR

[Tinker this](https://www.tinkercad.com/things/jNB3oPKtWiy)

```uno
int PIR = 3; //  set digital input for PIR
int LED = 2;

int currentValue = 0;
int pirPreviousState = LOW;

void setup()
{
  pinMode(LED, OUTPUT);
  pinMode(PIR, INPUT);
  Serial.begin(9600);
}

void loop()
{
  currentValue = digitalRead(PIR);

  if (currentValue == HIGH) // value is HIGH when motion is detected
  {
    digitalWrite(LED, HIGH);
    if (pirPreviousState == LOW)
    {
      pirPreviousState = HIGH;
      Serial.print("Motion Detected");
      Serial.println(currentValue);
    }
    else
    {
      digitalWrite(LED, LOW);
      if (pirPreviousState == HIGH)
      {
        pirPreviousState = LOW;
        Serial.print("Motion Ended");
        Serial.println(currentValue);
      }
    }
  }
}
```

![image](https://github.com/yeasin50/AssetsFor_/assets/46500228/e10e3244-ad93-4433-951b-93017946042b)
