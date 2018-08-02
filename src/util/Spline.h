#ifndef SMOOTHNAVIGATOR_SPLINE_H
#define SMOOTHNAVIGATOR_SPLINE_H

#include "Point2D.h"

namespace util
{
    class Spline
    {
    public:
        Spline(Point2D i, Point2D f);

        double get(double);

        double length();

        bool inRange(double);

    private:
        Point2D mInitial;
        Point2D mFinal;

        bool mFlipped;

        double mCoefficents[4] = {0, 0, 0, 0};

        double mSplineLength;

        void mGenerate();


        void mRowReduce(double matrix[4][5]);


        void mPrintMatrix(double A[4][5]);


        double getValueAt(double);

        double derivativeValueAt(double);

        double lengthHelperFunction(double);
    };
}

#endif //SMOOTHNAVIGATOR_SPLINE_H
