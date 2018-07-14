#include <iostream>
#include <vector>
//#include <util/Point2D.h>
//#include <util/Spline.h>



int main()
{
//    Point2D p1(1,1, -2);
//    Point2D p2(1,0, 5);
//    try {
//        Spline sp(p1, p2);
//    } catch (std::exception& e) {
//        std::cerr << "Exception caught" << std::endl;
//        std::cerr << e.what() << std::endl;
//        return -1;
//    }
    std::vector<int> vec;
    vec.push_back(1);
    vec.push_back(2);
    vec.push_back(3);

    for (auto i = vec.begin(); i < vec.end(); ++i)
    {
        std::cout << *i << "\t";
    }
    std::cout << std::endl;

    return 0;
}