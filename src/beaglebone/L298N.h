#ifndef ATLAS_L298N_H
#define ATLAS_L298N_H

#include <string>
#include <cmath>
#include <functional>

/*
 * L298N Dual motor H-Bridge controller driver.
 */
class L298N 
{
    public:
        L298N(std::string, std::string, std::string, std::string);
        void setMotors(double, double);
    private:

        std::string _leftPin1;
        std::string _leftPin2;

        std::string _rightPin1;
        std::string _rightPin2;

        std::string _leftPWM;
        std::string _rightPWM;

        void setLeftDirection();
        void setRightDirection();

        void enableLeft(bool);
        void enableRight(bool);

        
};

#endif //ATLAS_L298N_H