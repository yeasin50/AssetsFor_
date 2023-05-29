
// contol light with LDR sensor
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
