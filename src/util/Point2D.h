#ifndef SMOOTHNAVIGATOR_POINT2D_H
#define SMOOTHNAVIGATOR_POINT2D_H

namespace util
{
    class Point2D
    {
    public:
        Point2D() = default;


        Point2D(double, double, double);


        double *getX();


        double *getY();


        double *getSlope();

    private:
        double mX = 0;
        double mY = 0;
        double mSlope = 0;
    };
}


#endif //SMOOTHNAVIGATOR_POINT2D_H
