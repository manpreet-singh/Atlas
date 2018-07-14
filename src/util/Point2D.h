//
// Created by singh on 7/6/2018.
//

#ifndef SMOOTHNAVIGATOR_POINT2D_H
#define SMOOTHNAVIGATOR_POINT2D_H


class Point2D {
public:
    Point2D() = default;

    /**
     * Point Class Constructor
     * @param x X coordinate of cartesian point
     * @param y Y coordinate of cartesian point
     * @param slope Intended slope at this current point
     */
    Point2D(double, double, double);
    /**
     * Pointer to X value stored in memory
     * @return Pointer reference
     */
    double * getX();

    /**
     * Pointer to Y value stored in memory
     * @return Pointer reference
     */
    double * getY();

    /**
     * Get the intended slope at this point
     * @return Slope reference
     */
    double * getSlope();

private:
    double mX = 0;
    double mY = 0;
    double mSlope = 0;
};


#endif //SMOOTHNAVIGATOR_POINT2D_H
