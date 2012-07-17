/*
 * Program Name: Blink
 * Author: Alan Smith
 * Date Written: 17 March 2011
 * Description:
 *    Turns an LED on for one half second, then off for one half second repeatedly.
 */

/* Pin Definitions */ 
const int kPinLed =  13;    

/*
 * Function Name: setup
 * Purpose: Run once when the system powers up.
 */
void setup()  
{                
   pinMode(kPinLed, OUTPUT); // Always set up output pins!
}
 
/* 
 * Function name: loop
 * Purpose: Runs over and over again, as long as the Arduino has power
 */
void loop()                    
{
  digitalWrite(kPinLed, HIGH);   
  delay(500);                    
  digitalWrite(kPinLed, LOW);    
  delay(500);                    
} 
