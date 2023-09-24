
#define LED 2
#define EMG true


int analogPin = 3;     
int data = 0;           
char userInput;

void setup() {
  // Set pin mode
  pinMode(LED,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  delay(500);
  digitalWrite(LED,HIGH);
  delay(500);
  digitalWrite(LED,LOW);

  if (EMG) {
    if(Serial.available() > 0) {
      user_input = Serial.read();
      if (user_input == 'g') {
        data = analogRead(analogPin);
        Serial.println(data);
      }
    }
  }
}