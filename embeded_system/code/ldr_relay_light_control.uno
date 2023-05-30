

int LDR =A0; //  set analog input for LDR
int LED = 12;
int RELAY = 3;

int value = 0; 
void setup()
{
  pinMode(LED, OUTPUT);
  pinMode(RELAY, OUTPUT);
  pinMode(LDR, INPUT);
  
  Serial.begin(9600);
  
}

void loop()
{
 
  
  value = analogRead(LDR);
  Serial.print("LDR value: ");
  Serial.println(value);
  
  if(value<5){
    digitalWrite(LED, HIGH);
    digitalWrite(RELAY, HIGH);
  }
  else{
    digitalWrite(LED, LOW);
    digitalWrite(RELAY, LOW);
  }
    
}
