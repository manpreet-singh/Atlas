#include <iostream>
#include <exception>
#include <cmath>
// #include <unistd.h>

// #include "util/Path.h"
// #include "util/Point2D.h"

// #include "beaglebone/L298N.h"
// #include "adafruit/bbio.h"

using namespace std;

int main()
{
    // util::Path testPath("Bob");
    // testPath.addPoint(util::Point2D(0,0,0));
    // testPath.addPoint(util::Point2D(1, 1, 0));
    // testPath.addPoint(util::Point2D(2,1,-5));
    // testPath.generate();
    // cout << "Path Length: " << testPath.getLength() << endl;

    // using adafruit::bbio::lib_options;

    // adafruit::bbio::init(lib_options(LOG_DEBUG, nullptr, LOG_PERROR));

    // // Construct the L298N Motor Driver with 4 control pins and 2 PWM pins
    // L298N esc("P9_11", "P9_13", "P9_14", "P9_15", "P9_17", "P9_16");
    // esc.enable(true);
    // double speed;

    // while (1) 
    // {
    //     cout << "Enter motor speeds between -1 and 1 : ";
    //     cin >> speed;
    //     if (abs(speed) <= 1)
    //     {
    //         try 
    //         {
    //             esc.setMotors(speed, speed);
    //         }
    //         catch (exception& e)
    //         {
    //             cout << "Exception caught: "; 
    //             cout << e.what() << endl;
    //         }
    //     }
    //     else
    //         break;
    // }

    cout << "Helllo World" << endl;

    return EXIT_SUCCESS;
}
