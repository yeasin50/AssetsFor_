## contol light with LDR sensor

[Tinker this](https://www.tinkercad.com/things/0rxbqRuRQFK)

```uno
int LDR =A0; //  set analog input for LDR
int LED = 2;

int value = 0; 
void setup()
{
  pinMode(LED, OUTPUT);
  pinMode(LDR, INPUT);
  
  Serial.begin(9600);
  
}

void loop()
{
  
  value = analogRead(LDR);
  Serial.print("LDR value: ");
  Serial.println(value);
  
  if(value<300){
    digitalWrite(LED, HIGH);
  }
  else{
    digitalWrite(LED, LOW);
  }
    
}
```
![control_light_with_LDR](https://github.com/yeasin50/AssetsFor_/assets/46500228/d47da836-2e4f-42ff-bc6a-56d9df21a52a)
