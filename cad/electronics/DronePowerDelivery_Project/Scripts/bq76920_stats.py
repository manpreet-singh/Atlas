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

prpl.write([CC_CFG, 0x19], relax=False)
# prpl.write([SYS_STAT, 0x80], relax=False)

sleep(1) # Sleep for 1 second

while True:
    # prpl.write([VC1_HI], relax=False)
    # device_response = bytes(prpl.read(1))

    # bat_volts = int.from_bytes(device_response, 'big')
    # bat_volts = bat_volts << 8

    # prpl.write([VC1_LO], relax=False)
    # device_response = bytes(prpl.read(1))
    # bat_volts = bat_volts + int.from_bytes(device_response, 'big')
    # bat_volts = bat_volts & 0xFF

    # print(bat_volts*0.380 + 30)
    # print(device_response)

    print()
    out = prpl.exchange([SYS_CTRL1], 1)
    print(out)
    sleep(1)
    out = prpl.exchange([SYS_CTRL2], 1)
    print(out)
    sleep(5)