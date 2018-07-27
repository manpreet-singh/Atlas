#include <iostream>
#include <vector>
#include <cmath>
//#include <util/Point2D.h>
//#include <util/Spline.h>

#include "util/Calculations.h"

double func(double x)
{
    return sqrt(1 + pow(4*x, 2));
}

int main()
{
    double ans = util::Calculations::length(1, 2, 100, func);
    std::cout << ans << std::endl;
    return 0;
}