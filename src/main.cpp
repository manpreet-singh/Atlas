#include <iostream>

#include "unistd.h"

// #include "util/Path.h"
#include "beaglebone/GPIO.h"

using namespace std;

int main()
{
    // util::Path testPath("Bob");
    // testPath.addPoint(util::Point2D(0,0,0));
    // testPath.addPoint(util::Point2D(100, 200, 0));
    // testPath.addPoint(util::Point2D(200,200,-5));
    // testPath.generate();
    // cout << "Path Length: " << testPath.getLength() << endl;

    cout << "Testing GPIO pin contorl on GPIO pin 60" << endl;

    GPIO ledPin("gpio60");
    ledPin.pinMode(GPIO::PINMODE::OUTPUT);

    while (1) 
    {
        ledPin.setPin(true);
        cout << "ON" << endl;
        usleep(500000);
        ledPin.setPin(false);
        cout << "OFF" << endl;
        usleep(500000);
    }

    return EXIT_SUCCESS;
}