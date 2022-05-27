# Atlas Robot Platform

Table of Contents

* Overview
* Electrical Design
* Software Design
* Mechanical Design

---

## Overview

The Atlas Robot is a small Custom robot designed and built for educational proposes. The Atlas Robot features custom designed Electrical and Mechcanical Hardware featuring 3D printing technology and Embedded systems design. 
The purpose of this project is to bring together Mechcanical, Electrical, and Software design for my Undergrad Capstone project, but it has since morphed into a single project that soaks up more of my as the project timeline expands eponentially.


---

## Electrical Design

The electrical design of this robot consists of a custom battery board and a MCU driver board with motor controllers. 

### Custom Power solution

The power solution consists of 2 18650 Li-Ion cells providing a total of ~7.4V for system use. A buck step down converter is used to drop the 7.5V down to 5V for MCU power. 

<img src="https://raw.githubusercontent.com/manpreet-singh/Atlas/d47e119e5d93c1e35f4de9e734c4386765d2ce03/cad/electronics/AtlasPD/BB2.png">

<img src="https://raw.githubusercontent.com/manpreet-singh/Atlas/d47e119e5d93c1e35f4de9e734c4386765d2ce03/cad/electronics/AtlasPD/photos/battery_board/top_perspective.png">

<img src="https://raw.githubusercontent.com/manpreet-singh/Atlas/d47e119e5d93c1e35f4de9e734c4386765d2ce03/cad/electronics/AtlasPD/photos/battery_board/bottom_perspective.png">

### Custom MCU solution

This is being held back by the current global IC Shortage, unable to source components for MCU and its supporting components/ICs.

The custom MCU will have a IMU on board and supporting hardware for a GPS module for the purposes of localization and navigation.

---

## Software Design

The current plan is to put the ROS software tools onto the Custom MCU and have the MCU relay sensor information to a SBC like a Raspberry Pi or a Jetson Nano.

### Sensors & Filters

### Integration with ROS

---

## Mechcanical Design

### Drive Base

