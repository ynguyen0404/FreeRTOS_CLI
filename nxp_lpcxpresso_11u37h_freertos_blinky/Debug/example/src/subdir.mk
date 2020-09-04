################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../example/src/FreeRTOS_CLI.c \
../example/src/FreeRTOS_DriverInterface.c \
../example/src/FreeRTOS_IOUtils.c \
../example/src/IOUtils_CharQueueTxAndRx.c \
../example/src/IOUtils_CircularBufferRx.c \
../example/src/IOUtils_ZeroCopyTx.c \
../example/src/cr_startup_lpc11xx.c \
../example/src/freertos_blinky.c \
../example/src/i2c.c \
../example/src/sysinit.c 

OBJS += \
./example/src/FreeRTOS_CLI.o \
./example/src/FreeRTOS_DriverInterface.o \
./example/src/FreeRTOS_IOUtils.o \
./example/src/IOUtils_CharQueueTxAndRx.o \
./example/src/IOUtils_CircularBufferRx.o \
./example/src/IOUtils_ZeroCopyTx.o \
./example/src/cr_startup_lpc11xx.o \
./example/src/freertos_blinky.o \
./example/src/i2c.o \
./example/src/sysinit.o 

C_DEPS += \
./example/src/FreeRTOS_CLI.d \
./example/src/FreeRTOS_DriverInterface.d \
./example/src/FreeRTOS_IOUtils.d \
./example/src/IOUtils_CharQueueTxAndRx.d \
./example/src/IOUtils_CircularBufferRx.d \
./example/src/IOUtils_ZeroCopyTx.d \
./example/src/cr_startup_lpc11xx.d \
./example/src/freertos_blinky.d \
./example/src/i2c.d \
./example/src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
example/src/%.o: ../example/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -D__USE_LPCOPEN -DCORE_M0 -I"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\nxp_lpcxpresso_11u37h_freertos_blinky\example\inc" -I"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\nxp_lpcxpresso_11u37h_freertos_blinky\freertos\inc" -I"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\lpc_chip_11uxx_lib\inc" -I"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\nxp_lpcxpresso_11u37h_board_lib\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0 -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

example/src/cr_startup_lpc11xx.o: ../example/src/cr_startup_lpc11xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -D__USE_LPCOPEN -DCORE_M0 -I"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\nxp_lpcxpresso_11u37h_freertos_blinky\example\inc" -I"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\nxp_lpcxpresso_11u37h_freertos_blinky\freertos\inc" -I"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\lpc_chip_11uxx_lib\inc" -I"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\nxp_lpcxpresso_11u37h_board_lib\inc" -Os -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0 -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"example/src/cr_startup_lpc11xx.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


