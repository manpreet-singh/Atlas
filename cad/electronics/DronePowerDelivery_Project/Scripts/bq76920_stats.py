from pyftdi.i2c import I2cController
from time import sleep

from bq76920 import *

port = I2cController()
port.configure('ftdi://ftdi:232h:1/1')

device = 0x00

for i in range(127):
    ack = port.poll(i)
    if ack:
        print("0x{:02x}".format(i))
        device = i

prpl = port.get_port(device)

bat_volts = 0

## Device Initalization
prpl.write([CC_CFG, 0x19], relax=False)

## 
prpl.write([SYS_CTRL1, 0x18]) # Switch external thermister and ADC on
prpl.write([SYS_CTRL2, 0x40]) # switch CC_EN on


sys_ctrl2 = prpl.exchange([SYS_CTRL2], 1) # Read back SYS_CTRL2 Register
sys_ctrl2_int = int.from_bytes(sys_ctrl2, byteorder='big')
prpl.write([SYS_CTRL2, sys_ctrl2_int | 0b00000010]) # Enable Discharging battery
sleep(1) # Sleep for 1 second

while True:

    print()
    out = prpl.exchange([SYS_STAT], 1)
    print(out)
    sleep(1)
    out = prpl.exchange([SYS_CTRL2], 1)
    print(out)
    sleep(5)