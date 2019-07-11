// #include "Calculations.h"
// #include "Spline.h"
// using namespace util;

// /**
//  * Get the length of a curve using Simpson's rule
//  * @param a Lower limit
//  * @param b Upper limit
//  * @param resolution the number of points to use between the two limits
//  * @param d Function pointer
//  * @return Length of a curve
//  */
// double Calculations::length(double a, double b, int resolution, std::function<double(double)> d)
// {
//     if (a == b)
//         throw std::logic_error(std::string("Starting and End points are the same!"));
//     double step = (b-a)/resolution;
//     return step/3 * (d(a) + d(b) + Calculations::lengthRecursion(b, a + step, step, d));
// }

// /**
//  * Recursion Function to help calculate length of a curve
//  * @param end Endpoint of curve
//  * @param x Starting point of curve
//  * @param step Number to increment by
//  * @param d Function pointer
//  * @param even Helps keep track of things while recursioning (Yeah... don't even touch this value)
//  * @return part of the answer we need
//  */
// double Calculations::lengthRecursion(double end, double x, double step, std::function<double(double)> d, bool even)
// {
//     if(x > end)
//         return 0;
//     if (even)
//         return 2 * d(x) + lengthRecursion(end, x + step, step, d, false);

//     return 4 * d(x) + lengthRecursion(end, x + step, step, d, true);
// }