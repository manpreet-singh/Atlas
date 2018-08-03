#ifndef SMOOTHNAVIGATOR_PATH_H
#define SMOOTHNAVIGATOR_PATH_H

#include <string>
#include <vector>
#include <queue>
#include "Spline.h"

namespace util
{
    class Path
    {
    public:
        Path() = default;

        explicit Path(std::string);

        void addPoint(Point2D);

        void generate();

        void setSpeed(double);

        double getX(double);

        double getY(double);

        double getLength();

    private:
        std::string mName;
        std::vector<Spline *> mSplines;
        std::queue<Point2D> mPointsQueue;

        double mSpeed = 1.0;
        double mPathLength = 0;

    };
}


#endif //SMOOTHNAVIGATOR_PATH_H
