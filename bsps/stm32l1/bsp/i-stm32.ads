--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L151.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32L151
package Interfaces.STM32 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   --------------------
   -- Base addresses --
   --------------------

   AES_Base : constant System.Address :=
     System'To_Address (16#50060000#);
   COMP_Base : constant System.Address :=
     System'To_Address (16#40007C00#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#40007400#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40026000#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40026400#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   Flash_Base : constant System.Address :=
     System'To_Address (16#40023C00#);
   FSMC_Base : constant System.Address :=
     System'To_Address (16#A0000000#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#40020800#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#40020C00#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   GPIOF_Base : constant System.Address :=
     System'To_Address (16#40021800#);
   GPIOG_Base : constant System.Address :=
     System'To_Address (16#40021C00#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#40021400#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   LCD_Base : constant System.Address :=
     System'To_Address (16#40002400#);
   OPAMP_Base : constant System.Address :=
     System'To_Address (16#40007C5C#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#40023800#);
   RI_Base : constant System.Address :=
     System'To_Address (16#40007C04#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   SDIO_Base : constant System.Address :=
     System'To_Address (16#40012C00#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   SYSCFG_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   TIM10_Base : constant System.Address :=
     System'To_Address (16#40010C00#);
   TIM11_Base : constant System.Address :=
     System'To_Address (16#40011000#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM4_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   TIM5_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   TIM9_Base : constant System.Address :=
     System'To_Address (16#40010800#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   UART5_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   USB_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   USB_SRAM_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#40012400#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   DBGMCU_Base : constant System.Address :=
     System'To_Address (16#E0042000#);
   MPU_Base : constant System.Address :=
     System'To_Address (16#E000ED90#);
   SCB_ACTRL_Base : constant System.Address :=
     System'To_Address (16#E000E008#);
   NVIC_STIR_Base : constant System.Address :=
     System'To_Address (16#E000EF00#);
   SCB_Base : constant System.Address :=
     System'To_Address (16#E000ED00#);
   STK_Base : constant System.Address :=
     System'To_Address (16#E000E010#);

end Interfaces.STM32;
