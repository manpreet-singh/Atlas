#include <iostream>

#include "util/Path.h"

using namespace std;

int main()
{
    util::Path p("bob");
    p.addPoint(util::Point2D(0,0,0));
    p.addPoint(util::Point2D(1,1,1));
    p.addPoint(util::Point2D(2,1,-0.5));
    p.addPoint(util::Point2D(4,5,10));
    p.generate();

    cout << p.getLength() << endl;
    return 0;
}