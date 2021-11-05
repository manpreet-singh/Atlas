#include "L298N.h"

/**
 * Construct the L298N H-Bridge driver
 * @param left1 Pin for left Channel 1
 * @param left2 Pin for left Channel 2
 * @param right1 Pin for right Channel 1
 * @param right2 Pin for right Channel 2
 */
L298N::L298N(std::string left1, std::string left2, std::string pwmLeft, std::string right1, std::string right2, std::string pwmRight)
{

    #if USE_ADAFRUIT_LIB == 1
    this->_leftPin1 = new adafruit::bbio::Gpio(left1, adafruit::bbio::Gpio::Direction::Output);
    this->_leftPin2 = new adafruit::bbio::Gpio(left2, adafruit::bbio::Gpio::Direction::Output);
  	this->_leftPWM = new adafruit::bbio::Pwm(pwmLeft);
    this->_leftPWM->start(0.0F, (float)PWM_FREQ, adafruit::bbio::Pwm::Polarity::Normal);
	
    this->_rightPin1 = new adafruit::bbio::Gpio(right1, adafruit::bbio::Gpio::Direction::Output);    
    this->_rightPin2 = new adafruit::bbio::Gpio(right2, adafruit::bbio::Gpio::Direction::Output);
	this->_rightPWM = new adafruit::bbio::Pwm(pwmRight);
    this->_rightPWM->start(0.0F, (float)PWM_FREQ, adafruit::bbio::Pwm::Polarity::Normal);

    #else
    
    this->_leftPin1 = new GPIO(left1);
    this->_leftPin2 = new GPIO(left2);

    this->_rightPin1 = new GPIO(right1);
    this->_rightPin1 = new GPIO(right2);

    this->_leftPWM = new PWM(pwmLeft);
    this->_rightPWM = new PWM(pwmRight);

    this->_leftPin1->pinMode(GPIO::OUTPUT);
    this->_leftPin2->pinMode(GPIO::OUTPUT);

    this->_rightPin1->pinMode(GPIO::OUTPUT);
    this->_rightPin2->pinMode(GPIO::OUTPUT);

    #endif
}

/**
 * Set the motor speeds/Directions
 * @param left Left speed/direction, values between -1.0 to 1.0 expected
 * @param left Right speed/direction, values between -1.0 to 1.0 expected
 */
void L298N::setMotors(double left, double right)
{
    if (std::abs(left) > 1.0 || std::abs(right) > 1.0)
        throw std::runtime_error("Unexpected values set");
    else if(this->_enabled)
    {
        this->setLeftSpeed(left);
        this->setRightSpeed(right);
    }
}

/**
 * Enable the L298N Device
 * @param b True to enable, False to Disable device
 */
void L298N::enable(bool b)
{
    this->_enabled = b;
}

/**
 * Calculate the duty cycle for the left PWM device
 * @param speed Expected value |speed| < 1
 */
void L298N::setLeftSpeed(double speed)
{
    if (speed > 0)
    {
        #if USE_ADAFRUIT_LIB == 1
        this->_leftPin1->set_value(adafruit::bbio::Gpio::Value::High);
        this->_leftPin2->set_value(adafruit::bbio::Gpio::Value::Low);
        #else
        this->_leftPin1->setPin(1);
        this->_leftPin2->setPin(0);
        #endif
    } 
    else
    {
        #if USE_ADAFRUIT_LIB == 1
        this->_leftPin1->set_value(adafruit::bbio::Gpio::Value::Low);
        this->_leftPin2->set_value(adafruit::bbio::Gpio::Value::High);
        #else
        this->_leftPin1->setPin(0);
        this->_leftPin2->setPin(1);
        #endif
    }

    double dutyCycleFactor = (speed + 1)/2;

    #if USE_ADAFRUIT_LIB == 1
    this->_leftPWM->set_duty_cycle(100*dutyCycleFactor);
    #else
    this->_leftPWM->setDutyCycle(dutyCycleFactor);
    #endif
}

/**
 * Calculate the duty cycle for the right PWM device
 * @param speed Expected value |speed| < 1
 */
void L298N::setRightSpeed(double speed)
{
    if (speed > 0)
    {
        #if USE_ADAFRUIT_LIB == 1
        this->_rightPin1->set_value(adafruit::bbio::Gpio::Value::High);
        this->_rightPin2->set_value(adafruit::bbio::Gpio::Value::Low);
        #else
        this->_rightPin1->setPin(1);
        this->_rightPin2->setPin(0);
        #endif
    } 
    else
    {
        #if USE_ADAFRUIT_LIB == 1
        this->_rightPin1->set_value(adafruit::bbio::Gpio::Value::Low);
        this->_rightPin2->set_value(adafruit::bbio::Gpio::Value::High);
        #else
        this->_rightPin1->setPin(0);
        this->_rightPin2->setPin(1);
        #endif
    }
	
	double dutyCycleFactor = (speed + 1)/2;
	
    #if USE_ADAFRUIT_LIB == 1
    this->_rightPWM->set_duty_cycle(100*dutyCycleFactor);
    #else
    this->_rightPWM->setDutyCycle(dutyCycleFactor);
    #endif
}

/**
 * Delete any internal objects
 */
L298N::~L298N()
{

    #if USE_ADAFRUIT_LIB == 1
    this->_leftPWM->stop();
    this->_leftPWM->~Pwm();

    this->_rightPWM->stop();
    this->_rightPWM->~Pwm();
    #endif


    delete _leftPin1;
    delete _leftPin2;
    delete _leftPWM;

    delete _rightPin1;
    delete _rightPin2;
    delete _rightPWM;
}
