--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM4.svd

--  This is a version for the STM32WL5x_CM4 MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt                      : constant Interrupt_ID := -1;

   --  Window watchdog early wakeup interrupt
   WWDG_Interrupt                          : constant Interrupt_ID := 0;

   --  PVD through EXTI[16], PVM[3] through EXTI[34]
   PVD_PVM_3_Interrupt                     : constant Interrupt_ID := 1;

   --  Tamper, TimeStamp, LSECSS,RTC_SSRU interrupt
   TAMP_RTCSTAMP_LSECSS_RTCSSRU_Interrupt  : constant Interrupt_ID := 2;

   --  RTC wakeup interrupt
   RTC_WKUP_Interrupt                      : constant Interrupt_ID := 3;

   --  Flash memory global interrupt and Flash memory ECC single error
   --  interrupt
   FLASH_Interrupt                         : constant Interrupt_ID := 4;

   --  RCC global interrupt
   RCC_Interrupt                           : constant Interrupt_ID := 5;

   --  EXTI line 0 interrupt through EXTI
   EXTI0_Interrupt                         : constant Interrupt_ID := 6;

   --  EXTI line 1 interrupt through EXTI
   EXTI1_Interrupt                         : constant Interrupt_ID := 7;

   --  EXTI line 2 interrupt through EXTI
   EXTI2_Interrupt                         : constant Interrupt_ID := 8;

   --  EXTI line 3 interrupt through EXTI
   EXTI3_Interrupt                         : constant Interrupt_ID := 9;

   --  EXTI line 4 interrupt through EXTI
   EXTI4_Interrupt                         : constant Interrupt_ID := 10;

   --  DMA1 channel 1 non-secure interrupt
   DMA1_CH1_Interrupt                      : constant Interrupt_ID := 11;

   --  DMA1 channel 2 non-secure interrupt
   DMA1_CH2_Interrupt                      : constant Interrupt_ID := 12;

   --  DMA1 channel 3 non-secure interrupt
   DMA1_CH3_Interrupt                      : constant Interrupt_ID := 13;

   --  DMA1 channel 4 non-secure interrupt
   DMA1_CH4_Interrupt                      : constant Interrupt_ID := 14;

   --  DMA1 channel 5 non-secure interrupt
   DMA1_CH5_Interrupt                      : constant Interrupt_ID := 15;

   --  DMA1 channel 6 non-secure interrupt
   DMA1_CH6_Interrupt                      : constant Interrupt_ID := 16;

   --  DMA1 channel 7 non-secure interrupt
   DMA1_CH7_Interrupt                      : constant Interrupt_ID := 17;

   --  ADC global interrupt
   ADC_Interrupt                           : constant Interrupt_ID := 18;

   --  DAC global interrupt
   DAC_Interrupt                           : constant Interrupt_ID := 19;

   --  PWR CPU2 HOLD wakeup interrupt ,CPU2 SEV through EXTI
   PWR_C2H_C2SEV_Interrupt                 : constant Interrupt_ID := 20;

   --  COMP2 and COMP1 interrupt through EXTI[22:21]
   COMP_Interrupt                          : constant Interrupt_ID := 21;

   --  EXTI line 9_5 interrupt through EXTI
   EXTI9_5_Interrupt                       : constant Interrupt_ID := 22;

   --  Timer 1 break interrupt
   TIM1_BRK_Interrupt                      : constant Interrupt_ID := 23;

   --  Timer 1 Update
   TIM1_UP_Interrupt                       : constant Interrupt_ID := 24;

   --  Timer 1 trigger and communication
   TIM1_TRG_COM_Interrupt                  : constant Interrupt_ID := 25;

   --  Timer 1 capture compare interrupt
   TIM1_CC_Interrupt                       : constant Interrupt_ID := 26;

   --  Timer 2 global interrupt
   TIM2_Interrupt                          : constant Interrupt_ID := 27;

   --  Timer 16 global interrupt
   TIM16_Interrupt                         : constant Interrupt_ID := 28;

   --  Timer 17 global interrupt
   TIM17_Interrupt                         : constant Interrupt_ID := 29;

   --  I2C1 event interrupt
   I2C1_EV_Interrupt                       : constant Interrupt_ID := 30;

   --  I2C1 event interrupt
   I2C1_ER_Interrupt                       : constant Interrupt_ID := 31;

   --  I2C2 event interrupt
   I2C2_EV_Interrupt                       : constant Interrupt_ID := 32;

   --  I2C2 error interrupt
   I2C2_ER_Interrupt                       : constant Interrupt_ID := 33;

   --  SPI 1 global interrupt
   SPI1_Interrupt                          : constant Interrupt_ID := 34;

   --  SPI2S2 global interrupt
   SPI2S2_Interrupt                        : constant Interrupt_ID := 35;

   --  USART1 global interrupt
   USART1_Interrupt                        : constant Interrupt_ID := 36;

   --  USART2 global interrupt
   USART2_Interrupt                        : constant Interrupt_ID := 37;

   --  LPUART1 global interrupt
   LPUART1_Interrupt                       : constant Interrupt_ID := 38;

   --  LPtimer 1 global interrupt
   LPTIM1_Interrupt                        : constant Interrupt_ID := 39;

   --  LPtimer 2 global interrupt
   LPTIM2_Interrupt                        : constant Interrupt_ID := 40;

   --  EXTI line 15_10] interrupt through EXTI
   EXTI15_10_Interrupt                     : constant Interrupt_ID := 41;

   --  RTC alarms A and B interrupt
   RTC_ALARM_Interrupt                     : constant Interrupt_ID := 42;

   --  LPtimer 3 global interrupt
   LPTIM3_Interrupt                        : constant Interrupt_ID := 43;

   --  Sub-GHz radio SPI global interrupt
   SUBGHZSPI_Interrupt                     : constant Interrupt_ID := 44;

   --  IPCC CPU1 RX occupied interrupt
   IPCC_C1_RX_IT_Interrupt                 : constant Interrupt_ID := 45;

   --  IPCC CPU1 TX free interrupt
   IPCC_C1_TX_IT_Interrupt                 : constant Interrupt_ID := 46;

   --  Semaphore interrupt 0 to CPU1
   HSEM_Interrupt                          : constant Interrupt_ID := 47;

   --  I2C3 event interrupt
   I2C3_EV_Interrupt                       : constant Interrupt_ID := 48;

   --  I2C3 error interrupt
   I2C3_ER_Interrupt                       : constant Interrupt_ID := 49;

   --  Radio IRQs, RFBUSY interrupt through EXTI
   Radio_IRQ_Busy_Interrupt                : constant Interrupt_ID := 50;

   --  AES global interrupt
   AES_Interrupt                           : constant Interrupt_ID := 51;

   --  True random number generator interrupt
   True_RNG_Interrupt                      : constant Interrupt_ID := 52;

   --  Private key accelerator interrupt
   PKA_Interrupt                           : constant Interrupt_ID := 53;

   --  DMA2 channel 1 non-secure interrupt
   DMA2_CH1_Interrupt                      : constant Interrupt_ID := 54;

   --  DMA2 channel 2 non-secure interrupt
   DMA2_CH2_Interrupt                      : constant Interrupt_ID := 55;

   --  DMA2 channel 3 non-secure interrupt
   DMA2_CH3_Interrupt                      : constant Interrupt_ID := 56;

   --  DMA2 channel 4 non-secure interrupt
   DMA2_CH4_Interrupt                      : constant Interrupt_ID := 57;

   --  DMA2 channel 5 non-secure interrupt
   DMA2_CH5_Interrupt                      : constant Interrupt_ID := 58;

   --  DMA2 channel 6 non-secure interrupt
   DMA2_CH6_Interrupt                      : constant Interrupt_ID := 59;

   --  DMA2 channel 7 non-secure interrupt
   DMA2_CH7_Interrupt                      : constant Interrupt_ID := 60;

   --  DMAMUX1 overrun interrupt
   DMAMUX1_OVR_Interrupt                   : constant Interrupt_ID := 61;

   --  FPU global interrupt
   FPU_Interrupt                           : constant Interrupt_ID := 81;

end Ada.Interrupts.Names;
