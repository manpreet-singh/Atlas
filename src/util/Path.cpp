#include <iostream>
#include <utility>
#include "Path.h"

using namespace util;

Path::Path(std::string s) : mName(std::move(s))
{}

/**
 * Add a point to the path
 * @param p Point to add
 */
void Path::addPoint(Point2D p)
{
    this->mPointsQueue.push(p);
}

/**
 * Generate the splines with the points in the queue
 */
void Path::generate()
{
    if (mPointsQueue.empty())
    {
        std::cerr << "Points queue empty!" << std::endl;
        return;
    }

    unsigned long long int queueSize = this->mPointsQueue.size(); // why tho @_@

    for (int i = 0; i < queueSize; i++)
    {
        Point2D p1 = this->mPointsQueue.front();
        this->mPointsQueue.pop();

        Point2D p2 = this->mPointsQueue.front();

        this->mSplines.push_back(new Spline(p1, p2));
    }

    for (Spline * spline : this->mSplines)
    {
        this->mPathLength += spline->length();
    }
}

/**
 * Set the speed to traverse the path (I don't know these units yet  ¯\_(ツ)_/¯ )
 * @param s Speed
 */
void Path::setSpeed(double s)
{
    this->mSpeed = s;
}

/**
 * Get the X value along the path at a given time t
 * @param t Time
 * @return X value along Path
 */
double Path::getX(double t)
{
    return t * this->mSpeed;
}

/**
 * Get the Y value along the path at a given time t
 * @param t Time
 * @return Y value along Path
 */
double Path::getY(double t)
{
    Spline *foo = nullptr;
    for (Spline *s : this->mSplines)
    {
        if (s->inRange(getX(t)))
            foo = s;
    }
    if (foo == nullptr)
        throw std::range_error(std::string("Inputted value is not within the range of this function"));
    return foo->get(getX(t));
}
