#include "GPIO.h"

#define GPIO_PATH(p) "/sys/class/gpio/" #p

GPIO::GPIO(std::string pin) : _pin(pin)
{
    // Grab current pinmode from system.
    std::ofstream mode_file;
    mode_file.open(GPIO_PATH(this->_pin)"/direction", std::fstream::in);
    if (mode_file.is_open())
    {
        // TODO: Parse the data and set appropriate ENUM to _mode
    }
    
}

/**
 * Set the pin mode for this GPIO pin. INPUT for getting input to this pin, OUTPUT for setting this pin HIGH or LOW.
 * @param mode PINMODE Enum from the GPIO class.
 */
void GPIO::pinMode(GPIO::PINMODE mode)
{
    this->_mode = mode;
    std::fstream fs;
    fs.open(GPIO_PATH(this->_pin)"/direction", std::fstream::out);
    if (mode == INPUT)
        fs << "in";
    else if (mode == OUTPUT)
        fs << "out";
        
    fs.close();
}

/**
 * Set the pin HIGH(true) or LOW(false) when this pin is in OUTPUT mode
 */
void GPIO::setPin(bool foo)
{
    //TODO: Set pin value to HIGH(1) or LOW(0)
}