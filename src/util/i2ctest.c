#include <stdio.h>
#include <stdlib.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <fcntl.h>

void arduino_init(int addr)
{
    int file;
    char *filename = "/dev/i2c-1";
    if ((file = open(filename, O_RDWR)) < 0)
    {
        perror("Failed to open i2c bus\n");
        exit(1);
    }

    if (ioctl(file, I2C_SLAVE, addr) < 0)
    {
        printf("Failed to acquire bus access and/or talk to slave.\n");
        exit(1);
    }

    
}