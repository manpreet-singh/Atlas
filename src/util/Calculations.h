//
// Created by singh on 7/27/2018.
//

#ifndef SMOOTHNAVIGATOR_CALCULATIONS_H
#define SMOOTHNAVIGATOR_CALCULATIONS_H

namespace util
{
    class Calculations
    {
    public:
        static double length(double, double, int, double (*)(double));

    private:
        static double recursion(double, double, double, double(*d)(double), bool = false);

    };
}


#endif //SMOOTHNAVIGATOR_CALCULATIONS_H
