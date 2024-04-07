--
--  Copyright (C) 2024, AdaCore
--

--  This spec has been automatically generated from STM32U073.svd

--  This is a version for the STM32U073 MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt             : constant Interrupt_ID := -1;

   --  Window watchdog interrupt
   WWDG_Interrupt                 : constant Interrupt_ID := 0;

   --  PVD/PVM1/PVM2/PVM3 interrupt (combined with EXTI lines 16 and 19 and 20
   --  and 21)
   PVD_PVM_Interrupt              : constant Interrupt_ID := 1;

   --  RTC and TAMP interrupts(combined EXTI lines 19 and 21)
   RTC_TAMP_Interrupt             : constant Interrupt_ID := 2;

   --  FLASH global interrupt
   FLASH_Interrupt                : constant Interrupt_ID := 3;

   --  RCC and CRS global interrupt
   RCC_CRS_Interrupt              : constant Interrupt_ID := 4;

   --  EXTI lines 0 and 1 interrupt
   EXTI0_1_Interrupt              : constant Interrupt_ID := 5;

   --  EXTI lines 2 and 3 interrupt
   EXTI2_3_Interrupt              : constant Interrupt_ID := 6;

   --  EXTI lines 4 to 15 interrupt
   EXTI4_15_Interrupt             : constant Interrupt_ID := 7;

   --  USB global interrupt (combined with EXTI line 33)
   USB_Interrupt                  : constant Interrupt_ID := 8;

   --  DMA1 channel 1 interrupt
   DMA1_CHannel1_Interrupt        : constant Interrupt_ID := 9;

   --  DMA1 channel 2 and 3 interrupts
   DMA1_Channel2_3_Interrupt      : constant Interrupt_ID := 10;

   --  DMA1 channel 4, 5, 6, 7, DMAMUX, DMA2 channel 1, 2, 3, 4, 5 interrupts
   DMA1_Channel4_5_6_7_Interrupt  : constant Interrupt_ID := 11;

   --  ADC and COMP interrupts (ADC combined with EXTI lines 17 and 18)
   ADC_COMP_Interrupt             : constant Interrupt_ID := 12;

   --  TIM1 break, update, trigger and commutation interrupts
   TIM1_BRK_UP_TRG_COM_Interrupt  : constant Interrupt_ID := 13;

   --  TIM1 Capture Compare interrupt
   TIM1_CC_Interrupt              : constant Interrupt_ID := 14;

   --  TIM2 global interrupt
   TIM2_Interrupt                 : constant Interrupt_ID := 15;

   --  TIM3 global interrupt
   TIM3_Interrupt                 : constant Interrupt_ID := 16;

   --  TIM6, LPTIM1 and DAC global interrupt (combined with EXTI line 29)
   TIM6_DAC_LPTIM1_Interrupt      : constant Interrupt_ID := 17;

   --  TIM7 and LPTIM2 global interrupt (combined with EXTI line 30)
   TIM7_LPTIM2_Interrupt          : constant Interrupt_ID := 18;

   --  TIM15 and LPTIM3 global interrupt (combined with EXTI line 29)
   TIM15_LPTIM3_Interrupt         : constant Interrupt_ID := 19;

   --  TIM16 global interrupt
   TIM6_Interrupt                 : constant Interrupt_ID := 20;

   --  TSC global interrupt
   TSC_Interrupt                  : constant Interrupt_ID := 21;

   --  LCD global interrupt (combined with EXTI line 32)
   LCD_Interrupt                  : constant Interrupt_ID := 22;

   --  I2C1 global interrupt (combined with EXTI line 23)
   I2C1_Interrupt                 : constant Interrupt_ID := 23;

   --  I2C2/3/4 global interrupt
   I2C2_I2C3_I2C4_Interrupt       : constant Interrupt_ID := 24;

   --  SPI1 global interrupt
   SPI1_Interrupt                 : constant Interrupt_ID := 25;

   --  SPI2/3 global interrupt
   SPI2_SPI3_Interrupt            : constant Interrupt_ID := 26;

   --  USART1 global interrupt (combined with EXTI line 25)
   USART1_Interrupt               : constant Interrupt_ID := 27;

   --  USART2 and LPUART2 global interrupt (combined with EXTI lines 26 and 35)
   USART2_LPUART2_Interrupt       : constant Interrupt_ID := 28;

   --  USART3 and LPUART1 global interrupt (combined with EXTI lines 24 and 28)
   USART3_LPUART1_Interrupt       : constant Interrupt_ID := 29;

   --  USART4 and LPUART3 global interrupt (combined with EXTI lines 20 and 34)
   USART4_LPUART3_Interrupt       : constant Interrupt_ID := 30;

   --  FPU global interrupt
   FPU_Interrupt                  : constant Interrupt_ID := 81;

end Ada.Interrupts.Names;
