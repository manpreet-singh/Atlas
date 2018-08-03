#include <iostream>
#include <vector>
#include <cmath>
#include <util/Spline.h>

#include "util/Calculations.h"

int main()
{
    std::cout << "Hello World" << std::endl;
    util::Spline s(util::Point2D(), util::Point2D(1,1,1));
    std::cout << s.length() << std::endl;
    return 0;
}