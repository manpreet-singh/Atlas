//
// Created by singh on 7/14/2018.
//

#ifndef SMOOTHNAVIGATOR_PATH_H
#define SMOOTHNAVIGATOR_PATH_H

#include <string>
#include <vector>
#include <queue>
#include "Spline.h"

class Path
{
public:
    Path() = default;

    void addPoint(Point2D);
    void generate();
    void setSpeed(double);

private:
    std::string mName;
    std::vector<Spline*> mSplines;
    std::queue<Point2D> mPointsQueue;

    double mSpeed = 0;
    double mPathLength = 0;

};


#endif //SMOOTHNAVIGATOR_PATH_H
