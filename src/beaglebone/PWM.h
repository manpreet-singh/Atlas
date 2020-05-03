#ifndef ATLAS_PWM_H
#define ATLAS_PWM_H

#include <string>
#include <sstream>
#include <fstream>
#include <iostream>

#define __DEPRECATED 1

/**
 * PWM Class to access the different PWM chips on the BBB
 * @author Manpreet Singh 2020
 */ 
[[DEPRECATED]]
class PWM
{
	public:
		PWM(std::string);

		void setFrequency(int);
		void setDutyCycle(int);

		void enable();
		void disable();

	private:
		std::string path(std::string);
		std::string _pwm_chip;

		int _frequency;
		int _period;

		int _duty_cycle;

		bool _enable;
};

#endif //ATLAS PWM_H