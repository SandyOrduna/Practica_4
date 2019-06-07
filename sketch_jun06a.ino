int loPin = A4;
int lnPin = A3;
const int ECGout = A0;
void setup() {
// initialize the serial communication:
Serial.begin(115200);
pinMode(loPin, INPUT); // Setup for leads off detection LO +
pinMode(lnPin, INPUT); // Setup for leads off detection LO –

}

void loop()
{

if((digitalRead(loPin) == 1)||(digitalRead(lnPin) == 1))
{
Serial.println('!');
}
else
{
// send the value of analog input 0:
Serial.println(analogRead(ECGout));
}
//Wait for a bit to keep serial data from saturating
delay(50);
}
