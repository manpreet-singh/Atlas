# Atlas Robot Platform

Table of Contents

* Overview
* Electrical Design
* Software Design
* Mechanical Design

---

## Overview

The Atlas Robot is a small custom robot designed and built for educational proposes. The Atlas Robot features custom designed Electrical and Mechcanical Hardware featuring 3D printing technology and Embedded systems design. 
The original purpose of this project was to bring together Mechcanical, Electrical, and Software design for my Undergrad Capstone project, but it has since morphed into a single project focusing on Embedded systems design that soaks up more of my time as the project timeline expands exponentially.


---

## Electrical Design

The electrical design of this robot consists of a custom battery board and a MCU driver board with motor controllers. 

### Custom Power solution

Electrical Schematic of the power board can be found here: [Link to PDF](https://github.com/manpreet-singh/Atlas/blob/b2b3af6c37c7f48b9bfceda13a4e8d811f8669c3/cad/electronics/AtlasPD/5V%20Buck%20Converter.pdf)

The power solution consists of 2 18650 Li-Ion cells providing a total of ~7.4V for system use. A buck step down converter is used to drop the 7.5V down to 5V for MCU power. 

<img src="https://raw.githubusercontent.com/manpreet-singh/Atlas/d47e119e5d93c1e35f4de9e734c4386765d2ce03/cad/electronics/AtlasPD/BB2.png">

<img src="https://raw.githubusercontent.com/manpreet-singh/Atlas/d47e119e5d93c1e35f4de9e734c4386765d2ce03/cad/electronics/AtlasPD/photos/battery_board/top_perspective.png">

<img src="https://raw.githubusercontent.com/manpreet-singh/Atlas/d47e119e5d93c1e35f4de9e734c4386765d2ce03/cad/electronics/AtlasPD/photos/battery_board/bottom_perspective.png">

### Custom MCU solution

The original design of the MCU board is being held back by the neverending global IC Shortage, unable to source components for MCU and its supporting peripherals/ICs.

The original plan was to leverage the ease of the Arduino framework by developing a MCU board using the ATMEGA328P, however the Atmega series of MCUs are very difficult to source for small production fabrication. The plan has changed to center around the ever so popular STM32 family of Microcontrollers. The future design for the MCU can be found here: [Link to PDF](https://github.com/manpreet-singh/Atlas/blob/b2b3af6c37c7f48b9bfceda13a4e8d811f8669c3/cad/electronics/AtlasMCU_STM32/AtlasMCU_STM32.pdf)

The custom MCU will have a IMU on board and supporting hardware for a GPS module (Yet to be added to schematic) for the purposes of localization and navigation.


---

## Software Design

The current plan is to put the ROS software tools onto the Custom MCU and have the MCU relay sensor information to a SBC like a Raspberry Pi or a Jetson Nano.

### Sensors & Filters

### Integration with ROS

---

## Mechcanical Design

### Drive Base

