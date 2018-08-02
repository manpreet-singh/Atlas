#include "Point2D.h"
using namespace util;

/**
 * Point Class Constructor
 * @param x X coordinate of cartesian point
 * @param y Y coordinate of cartesian point
 * @param slope Intended slope at this current point
 */
Point2D::Point2D(double x, double y, double slope) : mX(x), mY(y), mSlope(slope)
{}

/**
 * Pointer to X value
 * @return X reference
 */
double* Point2D::getX()
{
    return &mX;
}

/**
 * Pointer to Y value
 * @return Y reference
 */
double* Point2D::getY()
{
    return &mY;
}

/**
 * Get the intended slope at this point
 * @return Slope reference
 */
double* Point2D::getSlope()
{
    return &mSlope;
}