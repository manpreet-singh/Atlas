#include "L298N.h"

/**
 * IConstruct the L298N H-Bridge driver
 * @param left1 Pin for left Channel 1
 * @param left2 Pin for left Channel 2
 * @param right1 Pin for right Channel 1
 * @param right2 Pin for right Channel 2
 */
L298N::L298N(std::string left1, std::string left2, std::string right1, std::string right2) : _leftPin1(left1), _leftPin2(left2), _rightPin1(right1), _rightPin2(right2)
{
    
}

/**
 * Set the motor speeds/Directions
 * @param left Left speed/direction, values between -1.0 to 1.0 expected
 * @param left Right speed/direction, values between -1.0 to 1.0 expected
 */
void L298N::setMotors(double left, double right)
{
    if (std::abs(left) > 1.0 || std::abs(right) > 1.0)
        throw std::runtime_error("Unexpected motor values set");
    
    
}