//
// Created by singh on 7/11/2018.
//
#include "Point2D.h"
using namespace util;

Point2D::Point2D(double x, double y, double slope) : mX(x), mY(y), mSlope(slope)
{}

double* Point2D::getX()
{
    return &mX;
}

double* Point2D::getY()
{
    return &mY;
}

double* Point2D::getSlope()
{
    return &mSlope;
}