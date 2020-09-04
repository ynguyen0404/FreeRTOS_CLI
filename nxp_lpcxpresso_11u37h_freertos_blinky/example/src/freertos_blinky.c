#include "board.h"
#include "FreeRTOS.h"
#include "task.h"

/* Sets up system hardware */
static void prvSetupHardware(void)
{
	SystemCoreClockUpdate();
	Board_Init();
}

/* LED0 toggle thread */
static void vLEDTask0(void *pvParameters) {
	bool LedState = false;
	while (1) {
		LedState = (bool) !LedState;

		Board_LED_Set(0, LedState);
		vTaskDelay(configTICK_RATE_HZ/50);

		Board_LED_Set(1, LedState);
		vTaskDelay(configTICK_RATE_HZ/60);

		Board_LED_Set(2, LedState);
		vTaskDelay(configTICK_RATE_HZ/70);

		Board_LED_Set(3, LedState);
		vTaskDelay(configTICK_RATE_HZ/80);
	}
}

///* LED1 toggle thread */
//static void vLEDTask1(void *pvParameters) {
//	bool LedState = false;
//	while (1) {
//		Board_LED_Set(1, LedState);
//		LedState = (bool) !LedState;
//
//		vTaskDelay(configTICK_RATE_HZ*2);
//	}
//}
//
///* LED2 toggle thread */
//static void vLEDTask2(void *pvParameters) {
//	bool LedState = false;
//	while (1) {
//		Board_LED_Set(2, LedState);
//		LedState = (bool) !LedState;
//
//		vTaskDelay(configTICK_RATE_HZ);
//	}
//}

static void vI2CTask1(void *pvParameters) {
	vReadValueSensorTask();
}

int main(void)
{
	prvSetupHardware();

//	/* LED1 toggle thread */
//	xTaskCreate(vLEDTask1, (signed char *) "vTaskLed1",
//				configMINIMAL_STACK_SIZE, NULL, (tskIDLE_PRIORITY + 1UL),
//				(xTaskHandle *) NULL);

//	/* LED2 toggle thread */
//	xTaskCreate(vLEDTask2, (signed char *) "vTaskLed2",
//				configMINIMAL_STACK_SIZE, NULL, (tskIDLE_PRIORITY + 1UL),
//				(xTaskHandle *) NULL);
//
	/* LED0 toggle thread */
	xTaskCreate(vLEDTask0, (signed char *) "vTaskLed0",
				64, NULL, (tskIDLE_PRIORITY + 1UL),
				(xTaskHandle *) NULL);


	xTaskCreate(vI2CTask1, (signed char *) "vTaskI2C",
				180, NULL, (tskIDLE_PRIORITY + 1UL),
				(xTaskHandle *) NULL);

	/* Start the scheduler */
	vTaskStartScheduler();

	/* Should never arrive here */
	return 1;
}
