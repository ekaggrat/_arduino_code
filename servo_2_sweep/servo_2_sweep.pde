// Sweep
// by BARRAGAN <http://barraganstudio.com> 
// This example code is in the public domain.


#include <Servo.h> 

Servo myservo1;  // create servo object to control a servo 
Servo myservo2;               // a maximum of eight servo objects can be created 

int pos = 0;    // variable to store the servo position 

void setup() 
{ 
  myservo1.attach(6);
  myservo2.attach(7);  // attaches the servo on pin 9 to the servo object 
} 


void loop() 
{ 
  for(pos = 5; pos < 180; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo1.write(pos);
    myservo2.write(pos);     // tell servo to go to position in variable 'pos' 
    delay(15);                       // waits 15ms for the servo to reach the position 
  } 
  for(pos = 180; pos>=5; pos-=1)     // goes from 180 degrees to 0 degrees 
  {                                
    myservo1.write(pos); 
    myservo2.write(pos);     // tell servo to go to position in variable 'pos' 
    delay(15);                       // waits 15ms for the servo to reach the position 
  } 
} 
