//
// Created by singh on 7/11/2018.
//

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
    mSplineLength = Calculations::length(*i.getX(), *i.getY(), 100, this->lengthHelperFunction);
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
    mPrintMatrix(matrix);
    std::cout << "Matrix reduced" << std::endl;
    for (int i = 0; i < rows; i++)
        mCoefficents[i] = matrix[i][4];
}

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
    return sqrt(1 + pow(derivativeValueAt(x), 2));
}
