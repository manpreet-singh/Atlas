#include <iostream>

#include "util/Path.h"
// #include "beaglebone/GPIO.h"

using namespace std;

int main()
{
    util::Path testPath("Bob");
    testPath.addPoint(util::Point2D(0,0,0));
    testPath.addPoint(util::Point2D(100, 200, 0));
    testPath.addPoint(util::Point2D(200,200,-5));
    testPath.generate();

    // GPIO gp();
    cout << "Path Length: " << testPath.getLength() << endl;

    return EXIT_SUCCESS;
}