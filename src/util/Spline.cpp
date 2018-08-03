#include <iostream>
#include <iomanip>
#include <cmath>

#include "Spline.h"
#include "Calculations.h"

using namespace std;
using namespace util;

Spline::Spline(Point2D i, Point2D f)
{
    if (*i.getX() == *f.getX())
    {
        std::cerr << *i.getX() << "\t" << *f.getX() << std::endl;
        throw std::runtime_error(std::string("X values of two points are the same."));
    }

    else if (*i.getX() > *f.getX())
    {
        mInitial = f;
        mFinal = i;
        mFlipped = true;
    }
    else
    {
        mInitial = i;
        mFinal = f;
        mFlipped = false;
    }
    mGenerate();
    mSplineLength = Calculations::length(*i.getX(), *f.getX(), 100, std::bind(this->lengthHelperFunction, this, _1));
}

double Spline::get(double x)
{
    if (this->mFlipped)
        return this->getValueAt(*mFinal.getX() - x);
    return this->getValueAt(x);
}

double Spline::length()
{
    return mSplineLength;
}

bool Spline::inRange(double foo)
{
    return foo > *this->mInitial.getX() && foo < *this->mFinal.getX();
}

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
void Spline::mGenerate()
{
    double matrix[4][5] = {
            {*mFinal.getX(), *mFinal.getX(), *mFinal.getX(), 1, *mFinal.getY()},
            {*mFinal.getX()*3, *mFinal.getX()*2, 1, 0, *mFinal.getSlope()},
            {*mInitial.getX()*3, *mInitial.getX()*2, 1, 0, *mInitial.getSlope()},
            {*mInitial.getX(), *mInitial.getX(), *mInitial.getX(), 1, *mInitial.getY()}
    };
    mPrintMatrix(matrix);
    mRowReduce(matrix);
    for (double i : mCoefficents)
        std::cout << i << "\t";
    std::cout << std::endl;
}

/**
 * Row reduce a 4x5 matrix and put its answer into coefficents array
 * @param matrix Matrix array to row reduce.
 */
void Spline::mRowReduce(double matrix[4][5])
{
    const int rows = 4; // Number of rows
    const int colm = 5; // Number of columns

    int lead = 0;

    while (lead < rows)
    {
        double d, m; // Division and Multiplier

        for (int i = 0; i < rows; i++)
        {
            d = matrix[lead][lead];
            m = matrix[i][lead] / d;

            for (int j = 0; j < colm; j++)
            {
                if (i == lead)
                    matrix[i][j] /= d;
                else
                    matrix[i][j] -= matrix[lead][j] * m;
            }
        }
        lead++;
    }
    std::cout << "Matrix reduced" << std::endl;
    for (int i = 0; i < rows; i++)
        mCoefficents[i] = matrix[i][4];
}

/**
 * Print out a 4x5 matrix to the console
 * @param A
 */
void Spline::mPrintMatrix(double A[4][5])
{
    int p=4;
    int q=5;
    for (int i=0; i<p; i++) {
        for (int j=0; j<q; j++) {
            cout << setw(7) << setprecision(4) << A[i][j] << " ";
        }
        cout << endl;
    }
    cout << endl;
}

/**
 * Get the associated y value at the value x from the cubic equation
 * @param x input value
 * @return y value of curve at given point x
 */
double Spline::getValueAt(double x)
{
    return mCoefficents[0]*pow(x, 3) + mCoefficents[1]*pow(x, 2) + mCoefficents[2]*x + mCoefficents[3];
}

double Spline::derivativeValueAt(double x)
{
    return mCoefficents[0]*pow(x, 2) + mCoefficents[1]*x + mCoefficents[2];
}

double Spline::lengthHelperFunction(double x)
{
    return sqrt(1 + pow(this->derivativeValueAt(x), 2));
}
