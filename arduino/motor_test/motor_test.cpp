#include <Arduino.h>

// Motor control pins
#define PWM_A 4 // Motor 1
#define IN_1  3
#define IN_2  2
#define PWM_B 7 // Motor 2
#define IN_3  5
#define IN_4  6

// Encoders
#define S1 _BV(PORTB0) //Pin 8
#define S2 _BV(PORTB1)//Pin 9
#define S3 _BV(PORTB2)//Pin 10
#define S4 _BV(PORTB3)//Pin 11

enum ENC_STATE { IDLE, INCREMENT, DECREMENT };

ENC_STATE enc1 = IDLE;
ENC_STATE enc2 = IDLE;

// Interrupt Port Status
volatile uint8_t prev_portb_val;

void setup() {
    // put your setup code here, to run once:

    Serial.begin(9600);

    pinMode(PWM_A, OUTPUT);
    pinMode(IN_1,  OUTPUT);
    pinMode(IN_2,  OUTPUT);
    pinMode(PWM_B, OUTPUT);
    pinMode(IN_3,  OUTPUT);
    pinMode(IN_4,  OUTPUT);

    cli();
    PCICR |= _BV(PCIE0);
    PCMSK0 |= 0b00001111;
    sei();

    digitalWrite(IN_1, HIGH);
    digitalWrite(IN_2, LOW);
}

ISR(PCINT0_vect)
{
    uint8_t portb_val = PINB;
    uint8_t mask = portb_val ^ prev_portb_val; // Pick out all of the pin changes from prev isr trig
    if (mask & S1)
    {
        if (enc1 == IDLE)
            enc1 = INCREMENT;
        // else if (enc1 == )
        // TODO: Add additional checks for Interrupt processing
    }
    
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
