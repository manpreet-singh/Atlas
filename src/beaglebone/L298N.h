#ifndef ATLAS_L298N_H
#define ATLAS_L298N_H

#include <string>
#include <cmath>
#include <functional>

#include <iostream>

#include "adafruit/bbio/gpio.h"
#include "adafruit/bbio/pwm.h"

#define PWM_FREQ 1000

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

        void debug();
        
        // Destructor
        ~L298N();
    private:

        adafruit::bbio::Gpio * _leftPin1;
        adafruit::bbio::Gpio * _leftPin2;

        adafruit::bbio::Gpio * _rightPin1;
        adafruit::bbio::Gpio * _rightPin2;

        adafruit::bbio::Pwm * _leftPWM;
        adafruit::bbio::Pwm * _rightPWM;

        void setLeftSpeed(double);
        void setRightSpeed(double);

        bool _enabled = false;

};

#endif //ATLAS_L298N_H