--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L0x3.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32L0x3
package Interfaces.STM32 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   --------------------
   -- Base addresses --
   --------------------

   AES_Base : constant System.Address :=
     System'To_Address (16#40026000#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#40007400#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#50000000#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#50000400#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#50000800#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#50000C00#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#50001C00#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#50001000#);
   LPTIM_Base : constant System.Address :=
     System'To_Address (16#40007C00#);
   RNG_Base : constant System.Address :=
     System'To_Address (16#40025000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   USART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   USART5_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   TSC_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   USB_FS_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   CRS_Base : constant System.Address :=
     System'To_Address (16#40006C00#);
   Firewall_Base : constant System.Address :=
     System'To_Address (16#40011C00#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   SYSCFG_COMP_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40007800#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   Flash_Base : constant System.Address :=
     System'To_Address (16#40022000#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#40012400#);
   DBGMCU_Base : constant System.Address :=
     System'To_Address (16#40015800#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   TIM21_Base : constant System.Address :=
     System'To_Address (16#40010800#);
   TIM22_Base : constant System.Address :=
     System'To_Address (16#40011400#);
   LPUSART1_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   USB_SRAM_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   LCD_Base : constant System.Address :=
     System'To_Address (16#40002400#);
   MPU_Base : constant System.Address :=
     System'To_Address (16#E000ED90#);
   STK_Base : constant System.Address :=
     System'To_Address (16#E000E010#);
   SCB_Base : constant System.Address :=
     System'To_Address (16#E000ED00#);

end Interfaces.STM32;
