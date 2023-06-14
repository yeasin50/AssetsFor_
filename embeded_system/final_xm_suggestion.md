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
