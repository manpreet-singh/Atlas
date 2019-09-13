#ifndef ATLAS_GPIO_H
#define ATLAS_GPIO_H

#include <string>
#include <sstream>
#include <fstream>


/*
 * GPIO Class to access and get basic (boolean) control over pins.
 */
class GPIO
{
    public:
        enum PINMODE {INPUT, OUTPUT};

        GPIO(std::string);

        void pinMode(GPIO::PINMODE);

        void setPin(bool);

        int readPin();

        // void enablePullUp(); // Testing this feature

    private:
        std::string _pin;
        PINMODE _mode;
};

#endif //ATLAS_GPIO_H