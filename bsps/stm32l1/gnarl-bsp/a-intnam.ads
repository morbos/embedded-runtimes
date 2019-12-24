--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L151.svd

--  This is a version for the STM32L151 MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt       : constant Interrupt_ID := -1;

   --  Window Watchdog interrupt
   WWDG_Interrupt           : constant Interrupt_ID := 0;

   --  PVD through EXTI Line detection interrupt
   PVD_Interrupt            : constant Interrupt_ID := 1;

   --  Tamper and TimeStamp through EXTI line interrupts
   TAMPER_STAMP_Interrupt   : constant Interrupt_ID := 2;

   --  RTC Wakeup through EXTI line interrupt
   RTC_WKUP_Interrupt       : constant Interrupt_ID := 3;

   --  Flash global interrupt
   FLASH_Interrupt          : constant Interrupt_ID := 4;

   --  RCC global interrupt
   RCC_Interrupt            : constant Interrupt_ID := 5;

   --  EXTI Line0 interrupt
   EXTI0_Interrupt          : constant Interrupt_ID := 6;

   --  EXTI Line1 interrupt
   EXTI1_Interrupt          : constant Interrupt_ID := 7;

   --  EXTI Line2 interrupt
   EXTI2_Interrupt          : constant Interrupt_ID := 8;

   --  EXTI Line3 interrupt
   EXTI3_Interrupt          : constant Interrupt_ID := 9;

   --  EXTI Line4 interrupt
   EXTI4_Interrupt          : constant Interrupt_ID := 10;

   --  DMA1 Channel1 global interrupt
   DMA1_Channel1_Interrupt  : constant Interrupt_ID := 11;

   --  DMA1 Channel2 global interrupt
   DMA1_Channel2_Interrupt  : constant Interrupt_ID := 12;

   --  DMA1 Channel3 global interrupt
   DMA1_Channel3_Interrupt  : constant Interrupt_ID := 13;

   --  DMA1 Channel4 global interrupt
   DMA1_Channel4_Interrupt  : constant Interrupt_ID := 14;

   --  DMA1 Channel5 global interrupt
   DMA1_Channel5_Interrupt  : constant Interrupt_ID := 15;

   --  DMA1 Channel6 global interrupt
   DMA1_Channel6_Interrupt  : constant Interrupt_ID := 16;

   --  DMA1 Channel7 global interrupt
   DMA1_Channel7_Interrupt  : constant Interrupt_ID := 17;

   --  ADC1 global interrupt
   ADC1_Interrupt           : constant Interrupt_ID := 18;

   --  USB High priority interrupt
   USB_HP_Interrupt         : constant Interrupt_ID := 19;

   --  USB Low priority interrupt
   USB_LP_Interrupt         : constant Interrupt_ID := 20;

   --  DAC interrupt
   DAC_Interrupt            : constant Interrupt_ID := 21;

   --  Comparator wakeup through EXTI line (21 and 22) interrupt/Channel
   --  acquisition interrupt
   COMP_CA_Interrupt        : constant Interrupt_ID := 22;

   --  EXTI Line[9:5] interrupts
   EXTI9_5_Interrupt        : constant Interrupt_ID := 23;

   --  LCD global interrupt
   LCD_Interrupt            : constant Interrupt_ID := 24;

   --  TIM9 global interrupt
   TIM9_Interrupt           : constant Interrupt_ID := 25;

   --  TIM10 global interrupt
   TIM10_Interrupt          : constant Interrupt_ID := 26;

   --  TIM11 global interrupt
   TIM11_Interrupt          : constant Interrupt_ID := 27;

   --  TIM2 global interrupt
   TIM2_Interrupt           : constant Interrupt_ID := 28;

   --  TIM3 global interrupt
   TIM3_Interrupt           : constant Interrupt_ID := 29;

   --  TIM4 global interrupt
   TIM4_Interrupt           : constant Interrupt_ID := 30;

   --  I2C1 event interrupt
   I2C1_EV_Interrupt        : constant Interrupt_ID := 31;

   --  I2C1 error interrupt
   I2C1_ER_Interrupt        : constant Interrupt_ID := 32;

   --  I2C2 event interrupt
   I2C2_EV_Interrupt        : constant Interrupt_ID := 33;

   --  I2C2 error interrupt
   I2C2_ER_Interrupt        : constant Interrupt_ID := 34;

   --  SPI1 global interrupt
   SPI1_Interrupt           : constant Interrupt_ID := 35;

   --  SPI2 global interrupt
   SPI2_Interrupt           : constant Interrupt_ID := 36;

   --  USART1 global interrupt
   USART1_Interrupt         : constant Interrupt_ID := 37;

   --  USART2 global interrupt
   USART2_Interrupt         : constant Interrupt_ID := 38;

   --  USART3 global interrupt
   USART3_Interrupt         : constant Interrupt_ID := 39;

   --  EXTI Line[15:10] interrupts
   EXTI15_10_Interrupt      : constant Interrupt_ID := 40;

   --  RTC Alarms (A and B) through EXTI line interrupt
   RTC_Alarm_Interrupt      : constant Interrupt_ID := 41;

   --  USB Device FS Wakeup through EXTI line interrupt
   USB_FS_WKUP_Interrupt    : constant Interrupt_ID := 42;

   --  TIM6 global interrupt
   TIM6_Interrupt           : constant Interrupt_ID := 43;

   --  TIM7 global interrupt
   TIM7_Interrupt           : constant Interrupt_ID := 44;

   --  SDIO global interrupt
   SDIO_Interrupt           : constant Interrupt_ID := 45;

   --  TIM5 global interrupt
   TIM5_Interrupt           : constant Interrupt_ID := 46;

   --  SPI3 global interrupt
   SPI3_Interrupt           : constant Interrupt_ID := 47;

   --  UART4 Global interrupt
   UART4_Interrupt          : constant Interrupt_ID := 48;

   --  UART5 Global interrupt
   UART5_Interrupt          : constant Interrupt_ID := 49;

   --  DMA2 Channel 1 interrupt
   DMA2_CH1_Interrupt       : constant Interrupt_ID := 50;

   --  DMA2 Channel 2 interrupt
   DMA2_CH2_Interrupt       : constant Interrupt_ID := 51;

   --  DMA2 Channel 3 interrupt
   DMA2_CH3_Interrupt       : constant Interrupt_ID := 52;

   --  DMA2 Channel 4 interrupt
   DMA2_CH4_Interrupt       : constant Interrupt_ID := 53;

   --  DMA2 Channel 5 interrupt
   DMA2_CH5_Interrupt       : constant Interrupt_ID := 54;

   --  AES global interrupt
   AES_Interrupt            : constant Interrupt_ID := 55;

   --  Comparator Channel Acquisition interrupt
   COMP_ACQ_Interrupt       : constant Interrupt_ID := 56;

   --  FPU global interrupt
   FPU_Interrupt            : constant Interrupt_ID := 81;

end Ada.Interrupts.Names;
