#include <iostream>

#include <util/Point2D.h>
#include <util/Spline.h>



int main()
{
    Point2D p1(1,1, -2);
    Point2D p2(1,0, 5);
    try {
        Spline sp(p1, p2);
    } catch (std::exception& e) {
        std::cerr << "Exception caught" << std::endl;
        std::cerr << e.what() << std::endl;
        return -1;
    }

    return 0;
}