## Lecture 5
![image](https://github.com/yeasin50/AssetsFor_/assets/46500228/1563398e-0a87-45fd-afc6-7fa6f799dd1e)


## Lecture:6

> What is serial communication Arduino board 
 In Arduino, “Serial Communication” means to transfer data in series to another device. In Arduino, we can do serial communication either with a computer or some other devices via USB plug and TX/RX pins of Arduino. The serial communication in Arduino is done through the pins which are dedicated for this purpose.

![image](https://github.com/yeasin50/AssetsFor_/assets/46500228/858b40cc-48a5-4d35-a42d-def0c3de2d2a)

![image](https://github.com/yeasin50/AssetsFor_/assets/46500228/f164e775-9a45-4f7c-a321-e2c83dcbd065)

A sample code example of serial communication/monitor is shown below, tick on every second
```ino
int counter = 0;
void setup(){
    Serial.begin(9600);
    Serial.println("counter setup complete");
}
void loop(){
    Serial.print("counter: ");
    Serial.println(counter++);
    delay(1000);
}
```
A better example will be reading analog sensor.

> The comment says 9600 bps, and just so you know bps stands
for bits-per-second (we will refer to this as the baud rate).

## PWM
(analogWrite, 3,5,6,9,10,11
> Pulse width modulation (PWM) is a modulation technique that generates variable-width pulses to represent the amplitude of an analog input signal. The output switching transistor is on more of the time for a high-amplitude signal and off more of the time for a low-amplitude signal.

![image](https://github.com/yeasin50/AssetsFor_/assets/46500228/a846fb6a-a459-42ac-a08a-0bc91bc391e3)

![image](https://github.com/yeasin50/AssetsFor_/assets/46500228/4e40d411-858e-4c86-9e18-4c584e9aa09f)

## [Control light with PIR](https://www.tinkercad.com/things/jNB3oPKtWiy)

![image](https://github.com/yeasin50/AssetsFor_/assets/46500228/c1882b7b-810f-4a71-b2d9-c740767daf2e)


```ino
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

  if(currentValue==HIGH){
    digitalWrite(LED, HIGH);
    if(pirPreviousState==LOW){
       pirPreviousState = HIGH;
       Serial.print("Motion Detected");
       Serial.println(currentValue);
  
     }
  else{
    digitalWrite(LED, LOW);
    if(pirPreviousState==HIGH){
        pirPreviousState = LOW;
        Serial.print("Motion Ended");
        Serial.println(currentValue);
    }
  }
  } 
}
```
#  Understanding Codes: Functions

- `min(x, y)`: return the smallest number between x and y
  
- `max(x, y)`: return the largest number between x and y
  
- `constrain(x, a, b)`: Constrains a number to be within a range(all data type)
  - `x` is the number to to constrain
  - `a` the lower end of the range
  - `b` the upper end of the range
    - returns `x` if x is between `a` and `b`
    - returns `a` if x is less than `a`
    - returns `b` if x is greater than `b`
  
- `abs(x)`: return absolute value 
  - `abs(-3)` and `abs(3)` both return `3`
  
- `map(value, fromLow, fromHigh, toLow, toHigh)`: Re-maps a number one range to another.  That is a `value` of `fromLow` will mapped into `toLow` and `fromHigh` to `toHigh`.
  - `y = map(x, 0, 5, 5, 10)`
- `pow(base, exponent)`: 
- `random(max)`: generate a random number from 0 to max-1.
  - `random(min, max)`: random number from min to max-1
  
- `millis()`: return the number of milliseconds since the Arduino board begin running the current program.(u_Time on GSLS)
- `delay(x)`: pause the program `x` milliseconds 
- `delayMicroseconds(x)`: 

-------

 
- [Blink_LED](code/blink_left_right.md)

### LED Dimmer
You can check PWM

> analogRead can be between 0-1023
> analogWrite can be between 0-255

PWM
```
int ledPin = 6;
int analogPin = 0;
int val = 0;

void setup()
{
    pinMode(ledPin, OUTPUT);
    Serial.begin(9600);
}

void loop()
{
    // analogRead can be between 0-1023
    val = analogRead(analogPin);
    Serial.println(val);
    // analogWrite can be between 0-255
    analogWrite(ledPin, val / 4);
}

```

## Simulate a LED Dimmer single
```ino
int brightness = 0;
void setup()
{
    pinMode(9, OUTPUT);
}
void loop()
{
    for (brightness = 0; brightness <= 255;
         brightness += 5)
    {
        analogWrite(9, brightness);
        delay(30); // Wait for 30 millisecond(s)
    }
    for (brightness = 255; brightness >= 0;
         brightness -= 5)
    {
        analogWrite(9, brightness);
        delay(30); // Wait for 30 millisecond(s)
    }
}
```

# [*Dim left right](https://www.tinkercad.com/things/gMSpoJBtZdJ)

![image](https://github.com/yeasin50/AssetsFor_/assets/46500228/cb8a7520-d44f-4635-8fdc-5f8c8a52b892)

```ino
// IO
int leftLED = 11;
int rightLED = 10;
int brightness = 0;
int delayInMilliseconds = 50;
void setup()
{
    pinMode(leftLED, OUTPUT);
    pinMode(rightLED, OUTPUT);
    Serial.begin(9600);
}

void loop()
{
    for (brightness = 0; brightness <= 255;
         brightness += 5)
    {
        analogWrite(leftLED, brightness);
        analogWrite(rightLED, 255 - brightness);
        Serial.print("Left LED: ");
        Serial.println(brightness);
        Serial.print("Right LED: ");
        Serial.println(255 - brightness);
        delay(delayInMilliseconds); // Wait for half a second
    }
    for (brightness = 255; brightness >= 0;
         brightness -= 5)
    {
        analogWrite(leftLED, brightness);
        analogWrite(rightLED, 255 - brightness);
        Serial.print("Left LED: ");
        Serial.println(brightness);
        Serial.print("Right LED: ");
        Serial.println(255 - brightness);
        delay(delayInMilliseconds); // Wait for half a second
    }
}
```

## Storing data in EEPROM

> An EEPROM is an Electrically Erasable
Programmable Read-Only Memory. It is a form of non-volatile memory that can remember things with the power being turned off, or after resetting the Arduino. The beauty of this kind of memory is that we can store data generated within a sketch on a more permanent basis.
> Anything that can be represented as bytes of data can be stored.
>  the decimal value of the number to fall between zero and 255.

[How to store on EROM 🤔](https://www.tutorialspoint.com/how-to-write-data-into-eeprom-with-arduino)

 - include the header `#include <EEPROM.h>`
 - To write `EEPROM.write(a,b);` The parameter a is the position in the EEPROM to store the integer (0~255) of data b. In this example, we have 1024 bytes of memory storage, so the value of a is between 0 and 1023.
 - To retrieve a piece of data is equally as simple, use: `z = EEPROM.read(a);` Where z is an integer to store the data from the EEPROM position a.


> This sketch will create random numbers between 0 and 255, store them in the EEPROM, then retrieve and display them on the serial monitor.

```
// Arduino internal EEPROM demonstration
#include <EEPROM.h>
int randomNumber;
int EEsize = 1024; // size in bytes of your board's EEPROM
void setup()
{
    Serial.begin(9600);
    randomSeed(analogRead(0));
}
void loop()
{
    Serial.println("Writing random numbers...");
    for (int i = 0; i < EEsize; i++)
    {
        randomNumber = random(255);
        EEPROM.write(i, randomNumber);
    }
    Serial.println();
    for (int a = 0; a < EEsize; a++)
    {
        randomNumber = EEPROM.read(a);
        Serial.print("EEPROM position: ");
        Serial.print(a);
        Serial.print(" contains ");
        Serial.println(randomNumber);
        delay(25);
    }
}
```
