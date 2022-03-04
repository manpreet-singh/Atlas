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

#endif //DS2778_H