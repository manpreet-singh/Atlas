#ifndef ATLAS_GPIO_H
#define ATLAS_GPIO_H

#include <string>
#include <sstream>
#include <fstream>
#include <iostream>

/**
 * GPIO Class to access and get basic (boolean) control over pins of the BBB
 * @author Manpreet Singh 2020
 */
class GPIO
{
    public:
        enum PINMODE {INPUT, OUTPUT};
        
        GPIO(std::string);

        void pinMode(GPIO::PINMODE);

        void setPin(bool);

        int readPin();

        // void enablePullUp(); // Feature has yet to be tested

    private:
        std::string path(std::string);
        std::string _pin;
        PINMODE _mode;
};

#endif //ATLAS_GPIO_H