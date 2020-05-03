#include <iostream>

#include "unistd.h"

#include "util/Path.h"
#include "util/Point2D.h"
#include "beaglebone/GPIO.h"

#include "adafruit/bbio/pwm.h"

using namespace std;

int main()
{
    util::Path testPath("Bob");
    testPath.addPoint(util::Point2D(0,0,0));
    testPath.addPoint(util::Point2D(1, 1, 0));
    testPath.addPoint(util::Point2D(2,1,-5));
    testPath.generate();
    cout << "Path Length: " << testPath.getLength() << endl;

    // adafruit::bbio::Pwm

    // cout << "Testing GPIO pin contorl on GPIO pin 60" << endl;

    // GPIO ledPin("gpio60");
    // ledPin.pinMode(GPIO::PINMODE::OUTPUT);

    // while (1) 
    // {
    //     ledPin.setPin(true);
    //     cout << "ON" << endl;
    //     usleep(500000);
    //     ledPin.setPin(false);
    //     cout << "OFF" << endl;
    //     usleep(500000);
    // }

    return EXIT_SUCCESS;
}