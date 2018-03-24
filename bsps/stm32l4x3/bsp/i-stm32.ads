--
--  Copyright (C) 2017, AdaCore
--

--  This spec has been automatically generated from STM32L4x2.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32L4x2
package Interfaces.STM32 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   --------------------
   -- Base addresses --
   --------------------

   DAC1_Base : constant System.Address :=
     System'To_Address (16#40007400#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   LCD_Base : constant System.Address :=
     System'To_Address (16#40002400#);
   TSC_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   COMP_Base : constant System.Address :=
     System'To_Address (16#40010200#);
   FIREWALL_Base : constant System.Address :=
     System'To_Address (16#40011C00#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   I2C4_Base : constant System.Address :=
     System'To_Address (16#40008400#);
   FLASH_Base : constant System.Address :=
     System'To_Address (16#40022000#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   SYSCFG_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   RNG_Base : constant System.Address :=
     System'To_Address (16#50060800#);
   AES_Base : constant System.Address :=
     System'To_Address (16#50060000#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#50040000#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#48000000#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#48000400#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#48000800#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#48000C00#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#48001000#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#48001C00#);
   SAI1_Base : constant System.Address :=
     System'To_Address (16#40015400#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   TIM15_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   TIM16_Base : constant System.Address :=
     System'To_Address (16#40014400#);
   TIM1_Base : constant System.Address :=
     System'To_Address (16#40012C00#);
   TIM6_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address :=
     System'To_Address (16#40001400#);
   LPTIM1_Base : constant System.Address :=
     System'To_Address (16#40007C00#);
   LPTIM2_Base : constant System.Address :=
     System'To_Address (16#40009400#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   LPUART1_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SDMMC_Base : constant System.Address :=
     System'To_Address (16#40012800#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#40010400#);
   VREFBUF_Base : constant System.Address :=
     System'To_Address (16#40010030#);
   CAN1_Base : constant System.Address :=
     System'To_Address (16#40006400#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   SWPMI1_Base : constant System.Address :=
     System'To_Address (16#40008800#);
   OPAMP_Base : constant System.Address :=
     System'To_Address (16#40007800#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E000#);
   CRS_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   USB_SRAM_Base : constant System.Address :=
     System'To_Address (16#40006C00#);
   USB_FS_Base : constant System.Address :=
     System'To_Address (16#40006800#);
   DFSDM_Base : constant System.Address :=
     System'To_Address (16#40016000#);
   QUADSPI_Base : constant System.Address :=
     System'To_Address (16#A0001000#);
   DBGMCU_Base : constant System.Address :=
     System'To_Address (16#E0042000#);

end Interfaces.STM32;
