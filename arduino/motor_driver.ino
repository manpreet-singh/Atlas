#include "Wire.h"

void setup()
{
    Wire.begin(1);
    Wire.onReceive(receiveEvent);

}

void loop()
{

}

void receiveEvent( int i)
{
    while (1 < Wire.available())
    {
        
    }
}