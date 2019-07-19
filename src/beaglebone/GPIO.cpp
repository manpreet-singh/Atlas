#include "GPIO.h"

#define GPIO_PATH(p) "/sys/class/gpio/" #p

GPIO::GPIO(std::string pin) : _pin(pin)
{
    // Grab current pinmode from system.
    std::ifstream mode_file;
    mode_file.open(GPIO_PATH(this->_pin)"/direction", std::ios::in);
    std::string data;
    if (mode_file.is_open()) 
    {
        std::getline(mode_file, data);
        if (data == "in")
            this->_mode = INPUT;
        else
            this->_mode = OUTPUT;
    }
}

/**
 * Set the pin mode for this GPIO pin. INPUT for getting input to this pin, OUTPUT for setting this pin HIGH or LOW.
 * @param mode PINMODE Enum from the GPIO class.
 */
void GPIO::pinMode(GPIO::PINMODE mode)
{
    if (this->_mode != mode)
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
}

/**
 * Set the pin HIGH(true) or LOW(false) when this pin is in OUTPUT mode
 */
void GPIO::setPin(bool foo)
{
    std::fstream fs;
    fs.open(GPIO_PATH(this->_pin)"/value", std::fstream::out);
    if (fs.is_open())
        fs << (foo ? 1 : 0);

    fs.close();    
}

/**
 * Read the pin input value when this pin is in Input mode.
 * @returns 1 if pin is HIGH, 0 if pin is LOW, -1 if pin is not in the correct mode.
 */
int GPIO::readPin()
{
    if (this->_mode != INPUT) // Check to see if we're in INPUT mode
        return -1;
    
    std::ifstream input;
    int pin_value;
    std::string data;

    input.open(GPIO_PATH(this->_pin)"/value", std::ios::in); // Open file
    if (input.is_open())
        std::getline(input, data); // Read data

    input.close(); // Close the file
    
    std::stringstream ss(data); // String stream to convert to convert data to an integer

    ss >> pin_value; 

    return pin_value;
}