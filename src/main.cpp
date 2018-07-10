#include <iostream>
#include <iostream>
#include <cstdlib>
#include <iomanip>
#include <util/Point2D.h>
#include <util/Spline.h>

using namespace std;

void printmatrix(double A[][5]) // Outputs the matrix
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

void mRowReduce(double matrix[][5])
{
    const int nrows = 4; // Number of rows
    const int ncolm = 5; // Number of columns

    int lead = 0;

    while (lead < nrows)
    {
        float d, m; // Division and Multiplier

        for (int i = 0; i < nrows; i++)
        {
            d = matrix[lead][lead];
            m = matrix[i][lead] / d;

            for (int j = 0; j < ncolm; j++)
            {
                if (i == lead)
                    matrix[i][j] /= d;
                else
                    matrix[i][j] -= matrix[lead][j] * m;
            }
        }
        lead++;
        printmatrix(matrix);
    }

    double answer[4];
    for (int i = 0; i < nrows; i++)
        answer[i] = matrix[i][4];

    for (double i : answer)
        cout << setw(7) << setprecision(4) << i << " ";
    cout << endl;
}

int main()
{
//    double A[4][5] = {
//            {1,1,1,1,1},
//            {3,2,1,0,0.5},
//            {0,0,1,0,2},
//            {0,0,0,1,0}
//    };
//
//    mRowReduce(A);

    Point2D p1(0,1, -2);
    Point2D p2(1,0, 5);
    Spline sp(p1, p2);

    return 0;
}