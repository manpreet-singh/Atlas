#ifndef ATLAS_GPIO_H
#define ATLAS_GPIO_H

#include <string>
#include <fstream>

class GPIO
{
    public:
        enum PINMODE {INPUT, OUTPUT};

        GPIO(std::string);

        void pinMode(GPIO::PINMODE);

        void setPin(bool);

        // void enablePullUp(); // Testing this feature

    private:
        std::string _pin;
        PINMODE _mode;
};

#endif //ATLAS_GPIO_H