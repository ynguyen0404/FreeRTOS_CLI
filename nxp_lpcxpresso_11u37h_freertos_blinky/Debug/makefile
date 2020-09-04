################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include freertos/src/subdir.mk
-include example/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: nxp_lpcxpresso_11u37h_freertos_blinky.axf

# Tool invocations
nxp_lpcxpresso_11u37h_freertos_blinky.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\nxp_lpcxpresso_11u37h_board_lib\Debug" -L"C:\Users\Admin\Documents\MCUXpressoIDE_11.2.0_4120\workspace\lpc_chip_11uxx_lib\Debug" -Xlinker -Map="nxp_lpcxpresso_11u37h_freertos_blinky.map" -Xlinker -print-memory-usage -Xlinker --gc-sections -mcpu=cortex-m0 -mthumb -T "nxp_lpcxpresso_11u37h_freertos_blinky_Debug.ld" -o "nxp_lpcxpresso_11u37h_freertos_blinky.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) nxp_lpcxpresso_11u37h_freertos_blinky.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "nxp_lpcxpresso_11u37h_freertos_blinky.axf"; # arm-none-eabi-objcopy -O binary "nxp_lpcxpresso_11u37h_freertos_blinky.axf" "nxp_lpcxpresso_11u37h_freertos_blinky.bin" ; checksum -p LPC11U37_401 -d "nxp_lpcxpresso_11u37h_freertos_blinky.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
