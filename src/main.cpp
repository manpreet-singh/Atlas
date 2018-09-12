#include <iostream>

#include <SFML/Graphics.hpp>
#include <util/Path.h>

using namespace std;

int main()
{
    sf::RenderWindow window(sf::VideoMode(800,800), "Smooth Navigator");
    util::Path testPath("Bob");
    testPath.addPoint(util::Point2D(0,0,0));
    testPath.addPoint(util::Point2D(100, 200, 0));
    testPath.addPoint(util::Point2D(200,200,-5));
    testPath.generate();

    bool runOnce = true;

    while (window.isOpen())
    {
        sf::Event event{};
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
            if (event.type == sf::Event::KeyPressed && event.key.code == sf::Keyboard::Escape)
                window.close();
        }

        if (runOnce)
        {
            window.clear(sf::Color::Black);
            for (double i = 0; i < 200; i += 0.5)
            {
                auto x = (float)testPath.getX(i);
                auto y = (float) testPath.getY(i);
                sf::RectangleShape pixle(sf::Vector2f(1, 1));
                pixle.setPosition(x, y);
                pixle.setFillColor(sf::Color::White);
                window.draw(pixle);
            }
            std::cout << "Displaying Window" << std::endl;
            window.display();
            runOnce = false;
        }


    }
    return EXIT_SUCCESS;
}