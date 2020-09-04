#ifndef INC_I2C_H
#define INC_I2C_H


#include "board.h"
#include <stdlib.h>


/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

#define DEFAULT_I2C          I2C0

#define I2C_EEPROM_BUS       DEFAULT_I2C
#define I2C_IOX_BUS          DEFAULT_I2C

#define SPEED_100KHZ         100000
#define SPEED_400KHZ         400000
#define I2C_DEFAULT_SPEED    SPEED_100KHZ
#define I2C_FASTPLUS_BIT     0

#if (I2C_DEFAULT_SPEED > SPEED_400KHZ)
#undef  I2C_FASTPLUS_BIT
#define I2C_FASTPLUS_BIT IOCON_FASTI2C_EN
#endif


//void SysTick_Handler(void);
void I2C_IRQHandler(void);
void vReadValueSensorTask(void);

#endif /* INC_I2C_H */
