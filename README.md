# CICS-to-PPS-100-RS232-Translator
Codan CICS to JPS PPS-100 RS232 Command Translator V1.0.0

 This project uses two of the Arduino Mega 2560 serial ports to read Codan transceiver frequency information then translate it to JPS PPS-100 serial commands for correct filter selection.
 
 CICS is polled every second to ensure any channel changes are propogated to the PPS-100.

 The LCD in this project displays the frequency sent to the PPS-100. It can be used to display several things if required e.g PPS status. This may come later.

 Thanks to Ryan Zhang for his help on the Parsing routine.
