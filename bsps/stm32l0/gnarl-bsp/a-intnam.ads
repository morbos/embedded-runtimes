--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L0x3.svd

--  This is a version for the STM32L0x3 MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt         : constant Interrupt_ID := -1;

   --  Window Watchdog interrupt
   WWDG_Interrupt             : constant Interrupt_ID := 0;

   --  PVD through EXTI line detection
   PVD_Interrupt              : constant Interrupt_ID := 1;

   --  RTC global interrupt
   RTC_Interrupt              : constant Interrupt_ID := 2;

   --  RCC global interrupt
   RCC_Interrupt              : constant Interrupt_ID := 4;

   --  EXTI Line[1:0] interrupts
   EXTI0_1_Interrupt          : constant Interrupt_ID := 5;

   --  EXTI Line[3:2] interrupts
   EXTI2_3_Interrupt          : constant Interrupt_ID := 6;

   --  EXTI Line15 and EXTI4 interrupts
   EXTI4_15_Interrupt         : constant Interrupt_ID := 7;

   --  Touch sensing interrupt
   TSC_Interrupt              : constant Interrupt_ID := 8;

   --  DMA1 Channel1 global interrupt
   DMA1_Channel1_Interrupt    : constant Interrupt_ID := 9;

   --  DMA1 Channel2 and 3 interrupts
   DMA1_Channel2_3_Interrupt  : constant Interrupt_ID := 10;

   --  DMA1 Channel4 to 7 interrupts
   DMA1_Channel4_7_Interrupt  : constant Interrupt_ID := 11;

   --  ADC and comparator 1 and 2
   ADC_COMP_Interrupt         : constant Interrupt_ID := 12;

   --  LPTIMER1 interrupt through EXTI29
   LPTIM1_Interrupt           : constant Interrupt_ID := 13;

   --  USART4/USART5 global interrupt
   USART4_USART5_Interrupt    : constant Interrupt_ID := 14;

   --  TIM2 global interrupt
   TIM2_Interrupt             : constant Interrupt_ID := 15;

   --  TIM3 global interrupt
   TIM3_Interrupt             : constant Interrupt_ID := 16;

   --  TIM6 global interrupt and DAC
   TIM6_DAC_Interrupt         : constant Interrupt_ID := 17;

   --  TIM7 global interrupt and DAC
   TIM7_Interrupt             : constant Interrupt_ID := 18;

   --  TIMER21 global interrupt
   TIM21_Interrupt            : constant Interrupt_ID := 20;

   --  I2C3 global interrupt
   I2C3_Interrupt             : constant Interrupt_ID := 21;

   --  TIMER22 global interrupt
   TIM22_Interrupt            : constant Interrupt_ID := 22;

   --  I2C1 global interrupt
   I2C1_Interrupt             : constant Interrupt_ID := 23;

   --  I2C2 global interrupt
   I2C2_Interrupt             : constant Interrupt_ID := 24;

   --  SPI1_global_interrupt
   SPI1_Interrupt             : constant Interrupt_ID := 25;

   --  SPI2 global interrupt
   SPI2_Interrupt             : constant Interrupt_ID := 26;

   --  USART1 global interrupt
   USART1_Interrupt           : constant Interrupt_ID := 27;

   --  USART2 global interrupt
   USART2_Interrupt           : constant Interrupt_ID := 28;

   --  AES global interrupt RNG global interrupt and LPUART1 global interrupt
   --  through
   AES_RNG_LPUART1_Interrupt  : constant Interrupt_ID := 29;

   --  LCD global interrupt
   LCD_Interrupt              : constant Interrupt_ID := 30;

   --  USB event interrupt through EXTI18
   USB_Interrupt              : constant Interrupt_ID := 31;

   --  FPU global interrupt
   FPU_Interrupt              : constant Interrupt_ID := 81;

end Ada.Interrupts.Names;
