#include <Arduino.h>
#include <DS2778.h>
#include <stdint.h>

// Helper Macro
#define MASK(x) ((unsigned char) (1<<(x)))

// Motor control pins
#define PWM_A 4 // Motor 1 PWM
#define IN_1  3
#define IN_2  2

#define PWM_B 7 // Motor 2 PWM
#define IN_3  5
#define IN_4  6

// Encoders
#define S1 _BV(PORTB0) //Pin 8
#define S2 _BV(PORTB1) //Pin 9
#define S3 _BV(PORTB2) //Pin 10
#define S4 _BV(PORTB3) //Pin 11

enum ENC_STATE { IDLE, INCREMENT, DECREMENT };

ENC_STATE enc1 = IDLE;
ENC_STATE enc2 = IDLE;

int enc1_count;
int enc2_count;

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

    enc1_count = 0;
    enc2_count = 0;

    // Enables interrupts on PORTB
    cli();
    PCICR |= _BV(PCIE0);
    PCMSK0 |= 0b00001111; // Select pins that create interrupts on PORTB
    sei();

    digitalWrite(IN_1, HIGH);
    digitalWrite(IN_2, LOW);
}

/*
 * Port B Interrupt Service rountine
 * Handles Encoder pulses on PORTB pins 0-3
 */
ISR(PCINT0_vect)
{

    // TODO: Optimize this interrupt service routine through testing, look to remove certain steps if possible

    uint8_t portb_val = PINB;
    uint8_t mask = portb_val ^ prev_portb_val; // Pick out all of the pin changes from prev isr trig

    // Encoder 1 Interrupt Handling
    if (mask & S1)
    {
        if (enc1 == IDLE)
            enc1 = INCREMENT;
        else if (enc1 == DECREMENT)
        {
            enc1_count--;
            enc1 = IDLE;
        }
    }
    if (mask & S2)
    {
        if (enc1 == IDLE)
            enc1 = DECREMENT;
        else if (enc1 == INCREMENT)
        {
            enc1_count++;
            enc1 = IDLE;
        }
    }
    
    // Encoder 2 Interrupt Handling
    if (mask & S3)
    {
        if (enc2 == IDLE)
            enc2 = INCREMENT;
        else if (enc1 == DECREMENT)
        {
            enc2_count--;
            enc2 = IDLE;
        }
    }

    if (mask & S4)
    {
        if (enc2 == IDLE)
            enc2 = DECREMENT;
        else if (enc2 == INCREMENT)
        {
            enc2_count++;
            enc2 = IDLE;
        }
    }
}

void loop() {
    // put your main code here, to run repeatedly:
    if (Serial.available() > 0 ) {
        int val = Serial.read();
        analogWrite(PWM_A, val);
    }
    Serial.write(enc1_count);
    Serial.write(enc2_count);
}
