#include <Arduino.h>
#include <Wire.h>

// ROS Headers
#include <ros.h>
#include <ros/time.h>
#include <tf/tf.h>
#include <tf/transform_broadcaster.h>

// Motor Driver Header
#include "motor_driver.h"

ros::NodeHandle  nh;

geometry_msgs::TransformStamped t;
tf::TransformBroadcaster broadcaster;

// Odomoetry Variables
double x = 1.0;
double y = 0.0;
double theta = 1.57;

// Published Topic Names
char base_link[] = "/base_link";
char odom[] = "/odom";

// State machine modes
enum State{READ, RESPOND, EXECUTE};

// Valid instructions
// const enum Instruction{};

const int ledPin = 13; // onboard LED
static_assert(LOW == 0, "Expecting LOW to be 0");

bool parity;
uint8_t rcvdMssg;

void receiveEvent(int);
void requestEvent();
bool getParity(unsigned int);

void setup() {
    Serial.begin(9600);
    Wire.begin(0x8);                // join i2c bus with address #8
    Wire.onReceive(receiveEvent); // register event
    Wire.onRequest(requestEvent);
    pinMode(ledPin, OUTPUT);
    digitalWrite(ledPin, LOW); // turn it off

    nh.initNode();
    broadcaster.init(nh);
}

void loop() {
//    delay(100);
  // drive in a circle
  double dx = 0.2;
  double dtheta = 0.18;
  x += cos(theta)*dx*0.1;
  y += sin(theta)*dx*0.1;
  theta += dtheta*0.1;
  if(theta > 3.14)
    theta=-3.14;
    
  // tf odom->base_link
  t.header.frame_id = odom;
  t.child_frame_id = base_link;
  
  t.transform.translation.x = x;
  t.transform.translation.y = y;
  
  t.transform.rotation = tf::createQuaternionFromYaw(theta);
  t.header.stamp = nh.now();
  
  broadcaster.sendTransform(t);
  nh.spinOnce();
  
  delay(10);
}

// function that executes whenever data is received from master
// this function is registered as an event, see setup()
void receiveEvent(int foo) {
    while (Wire.available()) { // loop through all but the last
        uint8_t c = Wire.read(); // receive byte as a unsigned 8 bit integer
        parity = getParity(c); // Calculate parity on recive
        Serial.print("Rx: ");
        Serial.print(c, HEX);
        Serial.print("\tP: ");
        Serial.println(parity);
        rcvdMssg = c;
    }
}

void requestEvent()
{
    Wire.write(parity);
}

bool getParity(unsigned int n) 
{ 
    bool parity = 0; 
    while (n) 
    { 
        parity = !parity; 
        n      = n & (n - 1); 
    }         
    return parity; 
}
