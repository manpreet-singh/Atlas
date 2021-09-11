#define PWM_A 4
#define IN_1  3
#define IN_2  2

void setup() {
  // put your setup code here, to run once:

  Serial.begin(9600);
  
  pinMode(PWM_A, OUTPUT);
  pinMode(IN_1,  OUTPUT);
  pinMode(IN_2,  OUTPUT);

  digitalWrite(IN_1, HIGH);
  digitalWrite(IN_2, LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0 ) {
    String val = Serial.readString();
    Serial.print("Setting value to: ");
    Serial.println(val);
    int num = val.toInt();
    Serial.println(num);
//    Serial.write("\n");
    analogWrite(PWM_A, num);
  }
}
