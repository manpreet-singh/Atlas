#ifndef DS2778_H
#define DS2778_H

// Memory Map of DS2778

#define PROTEC              0x00 // Protection Register
#define STATUS              0X01 // Status Register
#define RAAC_MSB            0x02 // Remaining Active-Absolute Capacity (mAH) MSB
#define RAAC_LSB            0x03 // Remaining Active-Absolute Capacity (mAH) LSB
#define RSAC_MSB            0x04 // Remaining Standby-Absolute Capacity (mAH) MSB
#define RSAC_LSB            0x05 // Remaining Standby-Absolute Capacity (mAH) LSB
#define RARC                0x06 // Remaining Active-Relative Capacity (%)
#define RSRC                0x07 // Remaining Standby-Relative Capacity (%)
#define AVG_CURR_MSB        0x08 // Average Current Register MSB
#define AVG_CURR_LSB        0x09 // Average Current Register LSB
#define TEMP_MSB            0x0A // Temperature Register MSB
#define TEMP_LSB            0x0B // Temperature Register LSB
#define CELL_LOW_VOLT_MSB   0x0C // V_IN1 - Vss MSB Voltage of the lower cell in pack
#define CELL_LOW_VOLT_LSB   0x0D // V_IN1 - Vss LSB
#define CURR_MSB            0x0E // Current Register MSB
#define CURR_LSB            0x0F // Current Register LSB
#define ACC_CURR_MSB        0x10 // Accumulated Current Register MSB
#define ACC_CURR_LSB        0x11 // Accumulated Current Register LSB
#define ACC_CURR_LSB_1      0x12 // Accumulated Current Register LSB - 1
#define ACC_CURR_LSB_2      0x13 // Accumulated Current Register LSB - 2
#define AGE_SCALAR          0x14 // Age Scalar Register
#define SPCL_FTRE           0x15 // Special Feature Register
#define FULL_REG_MSB        0x16 // Full Register MSB
#define FULL_REG_LSB        0x17 // Full Register LSB
#define ACTIVE_EMPTY_MSB    0x18 // Active-Empty Register MSB
#define ACTIVE_EMPTY_LSB    0x19 // Active-Empty Register LSB
#define STDBY_EMPTY_MSB     0x1A // Standby-Empty Register MSB
#define STDBY_EMPTY_LSB     0x1B // Standby-Empty Register LSB
#define CELL_HIGH_VOLT_MSB  0x1C // V_IN2 - V_IN1 MSB Voltage of the upper cell in pack
#define CELL_HGIH_VOLT_LSB  0x1D // V_IN2 - V_IN1 LSB 
#define CYCLE_COUNT         0x1E // Cycle Counter Register

// Parameter EEPROM Block Registers

#define CTRL                0x60 // Control register
#define AB                  0x61 // Accumulation Bias
#define AC_MSB              0x62 // Aging Capacity MSB
#define AC_LSB              0x63 // Aging Capacity LSB
#define VCHG                0x64 // Charge Voltage
#define IMIN                0x65 // Minimum Charge Current
#define VAE                 0x66 // Active-Empty Voltage
#define IAE                 0x67 // Active-Empty Current

#define RSNSP               0x69 // Sense Resistor Prime

#define RSGAIN_MSB          0x78 // Sense Resistor Gain MSB
#define RSGAIN_LSB          0x79 // Sense Resistor Gain LSB
#define RSTC                0x7A // Sense Resistor Temperature Coefficient
#define COB                 0x7B // Current Offset Bias

#define ADDR                0x80 // i2c Address (R/W). This is how to change i2c address of IC

// Struct to be able to hold all of the information available from the DS2778
struct DS2778
{
    uint8_t     protection;
    uint8_t     status;
    uint16_t    active_capacity;
    uint16_t    standby_capacity;
    uint8_t     active_capacity_percent;
    uint8_t     standby_capacity_percent;
    uint16_t    avg_current;
    uint16_t    temperature;
    uint16_t    lower_cell_volts;
    uint16_t    inst_current;
    uint32_t    acc_current;
    uint8_t     pack_age;
    uint16_t    active_empty;
    uint16_t    standby_empty;
    uint16_t    high_cell_volts;
    uint8_t     carge_cycle_count;
} battery_pack;

#ifdef __AVR__ // If we're using some AVR Device
#include <Arduino.h> // Not guarateed to work on ALL AVR devices
#include <Wire.h>

//Temporary
uint8_t device_addr = 0x59;

/**
 * @brief Read 1 byte of data from a specific register
 * 
 * @param i2c Pointer to Wire object to use for transmission.
 * @param reg_addr Address of the register to read from
 * @return uint8_t Data
 */
uint8_t read_register_8bits(TwoWire *i2c, uint8_t reg_addr)
{
    i2c->beginTransmission(device_addr);    // Start Transmission
    i2c->write(reg_addr);                   // Tell device which register to read
    i2c->requestFrom(device_addr, 1);       // Request 1 Byte (8 bits) from device
    uint8_t data = i2c->read();             // Read data from device
    i2c->endTransmission();                 // End Transmission once finished
    return data;
}

/**
 * @brief Read 2 bytes of data from 2 registers, and join them into a single 2 byte variable
 * 
 * @param i2c Pointer to Wire object to use for transmission.
 * @param msb_addr Address of the MSB register
 * @param lsb_addr Address of the LSB register
 * @return uint16_t Data
 */
uint16_t read_2_registers_16bits(TwoWire *i2c, uint8_t msb_addr, uint8_t lsb_addr)
{
    i2c->beginTransmission(device_addr);

    i2c->write(msb_addr);
    i2c->requestFrom(device_addr, 1);
    uint8_t msb = i2c->read();

    i2c->write(lsb_addr);
    i2c->requestFrom(device_addr, 1);
    uint8_t lsb = i2c->read();

    i2c->endTransmission();

    uint16_t data = ((msb << 8) | lsb);

    return data;
}

#endif // __AVR__

#endif //DS2778_H