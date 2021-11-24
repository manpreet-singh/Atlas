#ifndef ATLAS_L298N_H
#define ATLAS_L298N_H

#include <string>
#include <cmath>
#include <functional>

#include <iostream>

#define PWM_FREQ 1000

#define USE_ADAFRUIT_LIB 0

#if USE_ADAFRUIT_LIB == 1

#include "adafruit/bbio/gpio.h"
#include "adafruit/bbio/pwm.h"

#else

#include "beaglebone/GPIO.h"
#include "beaglebone/PWM.h"

#endif

/**
 * L298N Dual motor H-Bridge controller driver.
 */
class L298N 
{
    public:

        // Contructor
        L298N(std::string, std::string, std::string, std::string, std::string, std::string);

        // Set motor values
        void setMotors(double, double);

        // Enable the device
        void enable(bool);
        
        // Destructor
        ~L298N();
    private:

        #if USE_ADAFRUIT_LIB == 1
        adafruit::bbio::Gpio * _leftPin1;
        adafruit::bbio::Gpio * _leftPin2;

        adafruit::bbio::Gpio * _rightPin1;
        adafruit::bbio::Gpio * _rightPin2;

        adafruit::bbio::Pwm * _leftPWM;
        adafruit::bbio::Pwm * _rightPWM;
        
        #else

        GPIO * _leftPin1;
        GPIO * _leftPin2;

        GPIO * _rightPin1;
        GPIO * _rightPin2;

        PWM * _leftPWM;
        PWM * _rightPWM;

        #endif

        void setLeftSpeed(double);
        void setRightSpeed(double);

        bool _enabled = false;

};

#endif //ATLAS_L298N_H