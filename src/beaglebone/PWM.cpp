#include "beaglebone/PWM.h"

PWM::PWM(std::string chip) : _pwm_chip(chip)
{
    std::ifstream period_file;
    std::ifstream duty_cycle_file;

    period_file.open(path(chip)+"/period", std::ios::in);
    duty_cycle_file.open(path(chip)+"/duty_cycle", std::ios::in);

    // Read the current frequency and duty cycle, if already set
    // and initialize the period variable
    if (period_file.is_open())
    {
        std::string data;
        std::getline(period_file, data);
        this->_period = std::stod(data);
    }

    // The period is measured in nano seconds on board the BBB,
    // Therefore we need to multiple by 10^-9 to get to the base unit
    // before converting to frequency
    this->_frequency = 1/(this->_period * 10e-9);

    int dutycycle;

    if (duty_cycle_file.is_open())
    {
        std::string data;
        std::getline(duty_cycle_file, data);
        dutycycle = std::stod(data);
    }

    // The duty cycle is also measured in nanoseconds
    // We will track the duty cycle as a fraction of the signal frequency
    this->_duty_cycle = dutycycle/this->_period;

    this->_enable = false;
}

/**
 * Set the frequency of the PWM signal
 * @param frequency Frequency in the units of Hertz
 */
void PWM::setFrequency(int frequency)
{
    if (this->_frequency != _frequency)
    {
        // Calculate the period
        int period = (1/this->_frequency)*10e9;

        std::fstream fs;
        fs.open(path(this->_pwm_chip)+"/period", std::fstream::out);
        fs << period;
        fs.close();
    }
}

/**
 * Set the duty cycle of the PWM signal
 * @param dutyCycle Percentage value between 0 and 1
 */
void PWM::setDutyCycle(double dutyCycle)
{
    if (dutyCycle > 0 && dutyCycle < 1)
    {
        this->_duty_cycle = dutyCycle;

        int d = this->_duty_cycle * this->_period;

        std::fstream fs;
        fs.open(path(this->_pwm_chip)+"/duty_cycle", std::fstream::out);
        fs << d;
        fs.close();
    }
}

/**
 * Enable this PWM chip
 */
void PWM::enable()
{
    if (!this->_enable)  
    {  
        this->_enable = true;

        std::fstream fs;
        fs.open(path(this->_pwm_chip)+"/enable", std::fstream::out);
        fs << 1;
        fs.close();
    }
}

/**
 * Disable this PWM chip
 */
void PWM::disable()
{
    if (this->_enable)
    {
        this->_enable = false;

        std::fstream fs;
        fs.open(path(this->_pwm_chip)+"/enable", std::fstream::out);
        fs << 0;
        fs.close();
    }
}

std::string PWM::path(std::string s)
{
    return "/sys/class/pwm/pwm-" + s;
}