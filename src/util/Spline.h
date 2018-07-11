//
// Created by singh on 7/6/2018.
//

#ifndef SMOOTHNAVIGATOR_SPLINE_H
#define SMOOTHNAVIGATOR_SPLINE_H

#include "Point2D.h"


class Spline {
public:
    Spline(Point2D i, Point2D f);

    double get(double x);

private:
    Point2D mInitial;
    Point2D mFinal;

    bool mFlipped;

    double mCoefficents[4] = {0,0,0,0};

    /*
     * A brief explanation of how the equations used in the function below were derived
     *
     * This cubic interpolations is done using Linear Algebra
     * Given 2 points and their respective slopes and the general formula
     * of a cubic function f(t) = a*t^3 + b*t^2 + c*t + d
     * and its derivative f'(t) = a*3*t^2 + b*2*t + c
     *
     * We know the function has to satisfy the following constraints :
     *
     *  Given two points, (0, f(0)) and (1,f(0))
     *
     *  f(0) is the initial point
     *  f(1) is the final point
     *
     *  f'(0) is the slope at the initial point
     *  f'(1) is the slope at the final point
     *
     * Knowing this we can construct a matrix of coefficients and will know that the follow is true:
     *
     *  | 1 1 1 1 |   | a |     | f(1)  |
     *  | 3 2 1 0 |   | b |     | f'(1) |
     *  | 0 0 1 0 | x | c |  =  | f'(0) |
     *  | 0 0 0 1 |   | d |     | f(0)  |
     *
     * Row reducing the augment of the coefficient matrix and the constraints vector we get the following conclusion:
     *
     *  a = 2*f(0) + f'(0) - 2*f(1) + f'(1)
     *  b = -3*f(0) - 2*f'(0) + 3*f(1) - f'(1)
     *  c = f'(0)
     *  d = f(0)
      */
    void mGenerate();

    /**
     * Row reduce a 4x5 matrix and put its answer into coefficents array
     * @param matrix Matrix array to row reduce.
     */
    void mRowReduce(double matrix[4][5]);

    /**
     * Print out a 4x5 matrix to the console
     * @param A
     */
    void mPrintMatrix(double A[4][5]);

    /**
     * Get the associated y value at the value x from the cubic equation
     * @param x x value
     * @return y value
     */
    double getValueAt(double);
};

#endif //SMOOTHNAVIGATOR_SPLINE_H
