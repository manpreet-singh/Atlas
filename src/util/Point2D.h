//
// Created by singh on 7/6/2018.
//

#ifndef SMOOTHNAVIGATOR_POINT2D_H
#define SMOOTHNAVIGATOR_POINT2D_H


class Point2D {
public:
    /**
     * Point Class Constructor
     * @param x X coordinate of cartesian point
     * @param y Y coordinate of cartesian point
     * @param slope Intended slope at this current point
     */
    Point2D(double x, double y, double slope) : mX(x), mY(y), mSlope(slope)
    {}

    /**
     * Pointer to X value stored in memory
     * @return Pointer reference
     */
    double * getX() { return &mX; }

    /**
     * Pointer to Y value stored in memory
     * @return Pointer reference
     */
    double * getY() { return &mY; }

    /**
     * Get the intended slope at this point
     * @return Slope reference
     */
    double * getSlope() { return &mSlope; }

private:
    double mX;
    double mY;
    double mSlope;
};


#endif //SMOOTHNAVIGATOR_POINT2D_H
