// IO
int Light = 8;
int SwitchInput = 2;

// variable
int lightState = 0;
int buttonState = 0; //

void setup()
{
    pinMode(Light, OUTPUT);
    pinMode(SwitchInput, INPUT);
}

void loop()
{
    buttonState = digitalRead(SwitchInput);
    if (buttonState)
    {
        if (lightState)
        {
            lightState = 0;
        }
        else
        {
            lightState = 1;
        }
    }
    digitalWrite(Light, lightState);
}