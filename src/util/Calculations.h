#ifndef SMOOTHNAVIGATOR_CALCULATIONS_H
#define SMOOTHNAVIGATOR_CALCULATIONS_H

namespace util
{
    class Calculations
    {
    public:
        static double length(double, double, int, double (*)(double));

    private:
        static double lengthRecursion(double, double, double, double(*d)(double), bool = false);

    };
}


#endif //SMOOTHNAVIGATOR_CALCULATIONS_H
