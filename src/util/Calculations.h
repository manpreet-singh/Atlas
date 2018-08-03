#ifndef SMOOTHNAVIGATOR_CALCULATIONS_H
#define SMOOTHNAVIGATOR_CALCULATIONS_H

#include <functional>

#include "Spline.h"

using namespace std::placeholders;

namespace util
{
    class Calculations
    {
    public:
        static double length(double, double, int, std::function<double(double)>);

    private:
        static double lengthRecursion(double, double, double, std::function<double(double)>, bool = false);

    };
}


#endif //SMOOTHNAVIGATOR_CALCULATIONS_H
