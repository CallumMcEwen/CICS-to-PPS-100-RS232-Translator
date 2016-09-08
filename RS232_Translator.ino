/*
 
 Codan CICS to JPS PPS-100 translator V1.0.0

 This project reads the Codan transceiver frequency information using CICS
 then translates it to JPS PPS-100 serial commands for correct filter selection.

 CICS is polled every second to ensure any channel changes are
 propogated to the PPS-100 and the correct filter is selected.

 The LCD in this project displays the frequency sent to the PPS-100. It can be
 used to display several things if required e.g PPS status.

 Thanks to Ryan Zhang for his help on the Parsing routine.
  
 */

#include <LiquidCrystal.h>
LiquidCrystal lcd(12, 11, 5, 4, 3, 2); // RS, E, DB4, DB5, DB6, DB7

#define INPUT_SIZE 31     // A buffer. 31 should do it for a CICS response
byte pps_unitno = 0x01;   // Change this to your PPS-100 unit number.

// Let's get everything setup and ready.
void setup() {
  lcd.begin(16, 2);     // Setup the LCD's number of columns and rows:
  Serial1.begin(9600);  // PPS-100 Serial Port
  Serial2.begin(9600);  // CICS Serial Port

  // Initialise CICS.
  Serial2.write("echo off\r"); // Turn CICS echo off

  // Initialise PPS-100.
  Serial1.write(0xE0);        // PPS-100 synchronisation byte
  Serial1.write(pps_unitno);  // PPS-100 unit address byte
  Serial1.write(0x01);        // Place PPS-100 in Bypass mode
  Serial1.write("\r");        // Carriage Return

  // Show the information screen.
  lcd.clear();
  lcd.write("CICS to PPS-100");
  lcd.setCursor(0,2);
  lcd.write("VK5FCAM V1.0");
  delay(5000);

  // Setup the LCD with static text.
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.write("PPS tuned to:");
  lcd.setCursor(5,1);
  lcd.write("kHz");
}

// PPS Routines
void pps_unbypass() {
  Serial1.write(0xE0);       // PPS-100 synchronisation byte
  Serial1.write(pps_unitno); // PPS-100 unit address byte
  Serial1.write(0x02);       // Place PPS-100 in Bypass mode
  Serial1.write("\r");
}

 void pps_write(int mhz, int khz) {
  pps_unbypass();
  Serial1.write(0xE0);        // PPS-100 synchronisation byte
  Serial1.write(pps_unitno);  // PPS-100 unit address byte
  Serial1.write(0x00);        // PPS-100 command byte (00 tune to freq)
  Serial1.write(mhz);         // PPS-100 tune Byte MHz
  Serial1.write(khz);         // PPS-100 tune Byte kHz
  Serial1.write("\r");
}

// LCD Routines
void displayFreqs(char* freq) {
  lcd.setCursor(0,1);
  lcd.write(freq);
}

char * parse_cics_freq(char *message) {   
    char *space = strchr(message, ' ');
    char *dot   = strchr(message, '.');

    if (!space || !dot || dot - space < 5)
        return NULL;    // invalid message

    if (dot - space == 5)
        *space = '0';   // prepend a zero

    *(dot - 1) = '\0';  // terminate the string

    return dot - 5;
    }

// Main Loop
void loop() {
	int a, b, c, d;

  Serial2.write("freq\r");    // Send CICS command to retrieve Frequency information
  delay (200);                // Give CICS enough time to write all data to serial
	
	if (Serial2.available()) {
		char input[INPUT_SIZE + 1];
		char *output;
		byte size = Serial2.readBytes(input, INPUT_SIZE);
		input[size] = 0;

		output = parse_cics_freq(input);
		
		a = output[0] - '0';
		b = output[1] - '0';
		c = output[2] - '0';
		d = output[3] - '0';

		pps_write(a * 16 + b, c * 16 + d);

		displayFreqs(output);
		delay (1000);   // 2 second delay before doing it again
	}
}
