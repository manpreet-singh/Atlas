#include <iostream>
// #include <unistd.h>

// #include "util/Path.h"
// #include "util/Point2D.h"

#include "beaglebone/L298N.h"

using namespace std;

int main()
{
    // util::Path testPath("Bob");
    // testPath.addPoint(util::Point2D(0,0,0));
    // testPath.addPoint(util::Point2D(1, 1, 0));
    // testPath.addPoint(util::Point2D(2,1,-5));
    // testPath.generate();
    // cout << "Path Length: " << testPath.getLength() << endl;

    // Construct the L298N Motor Driver with 4 control pins and 2 PWM pins
    L298N esc("P9_11", "P9_13", "P9_15", "P9_17", "P9_14", "P9_16");
    esc.enable(true);
    double speed;

    while (1) 
    {
        cout << "Enter motor speeds between -1 and 1 : ";
        cin >> speed;
        esc.setMotors(speed, speed);
    }

    cout << "ello there" << endl;

    return EXIT_SUCCESS;
}