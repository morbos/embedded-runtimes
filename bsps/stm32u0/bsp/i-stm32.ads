--
--  Copyright (C) 2024, AdaCore
--

--  This spec has been automatically generated from STM32U073.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32U073
package Interfaces.STM32 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   --------------------
   -- Base addresses --
   --------------------

   ADC_Base : constant System.Address := System'To_Address (16#40012400#);
   COMP1_Base : constant System.Address := System'To_Address (16#40010200#);
   CRC_Base : constant System.Address := System'To_Address (16#40023000#);
   CRS_Base : constant System.Address := System'To_Address (16#40006C00#);
   DAC_Base : constant System.Address := System'To_Address (16#40007400#);
   DBGMCU_Base : constant System.Address := System'To_Address (16#40015800#);
   DMAMUX_Base : constant System.Address := System'To_Address (16#40020800#);
   DMA1_Base : constant System.Address := System'To_Address (16#40020000#);
   DMA2_Base : constant System.Address := System'To_Address (16#40020400#);
   EXTI_Base : constant System.Address := System'To_Address (16#40021800#);
   FLASH_Base : constant System.Address := System'To_Address (16#40022000#);
   GPIOA_Base : constant System.Address := System'To_Address (16#50000000#);
   GPIOB_Base : constant System.Address := System'To_Address (16#50000400#);
   GPIOC_Base : constant System.Address := System'To_Address (16#50000800#);
   GPIOD_Base : constant System.Address := System'To_Address (16#50000C00#);
   GPIOE_Base : constant System.Address := System'To_Address (16#50001000#);
   GPIOF_Base : constant System.Address := System'To_Address (16#50001400#);
   IWDG_Base : constant System.Address := System'To_Address (16#40003000#);
   I2C1_Base : constant System.Address := System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address := System'To_Address (16#40005800#);
   I2C3_Base : constant System.Address := System'To_Address (16#40008800#);
   LCD_Base : constant System.Address := System'To_Address (16#40002400#);
   LPTIM1_Base : constant System.Address := System'To_Address (16#40007C00#);
   LPTIM2_Base : constant System.Address := System'To_Address (16#40009400#);
   LPTIM3_Base : constant System.Address := System'To_Address (16#40009000#);
   LPUART1_Base : constant System.Address := System'To_Address (16#40008000#);
   LPUART2_Base : constant System.Address := System'To_Address (16#40008400#);
   LPUART3_Base : constant System.Address := System'To_Address (16#40008C00#);
   OPAMP_Base : constant System.Address := System'To_Address (16#40007800#);
   PWR_Base : constant System.Address := System'To_Address (16#40007000#);
   RCC_Base : constant System.Address := System'To_Address (16#40021000#);
   RNG_Base : constant System.Address := System'To_Address (16#40025000#);
   RTC_Base : constant System.Address := System'To_Address (16#40002800#);
   SPI1_Base : constant System.Address := System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address := System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address := System'To_Address (16#40003C00#);
   SYSCFG_Base : constant System.Address := System'To_Address (16#40010000#);
   TAMP_Base : constant System.Address := System'To_Address (16#4000B000#);
   TIM1_Base : constant System.Address := System'To_Address (16#40012C00#);
   TIM6_Base : constant System.Address := System'To_Address (16#40001000#);
   TIM7_Base : constant System.Address := System'To_Address (16#40001400#);
   TSC_Base : constant System.Address := System'To_Address (16#40024000#);
   USART1_Base : constant System.Address := System'To_Address (16#40013800#);
   USART2_Base : constant System.Address := System'To_Address (16#40004400#);
   USART3_Base : constant System.Address := System'To_Address (16#40004800#);
   USART4_Base : constant System.Address := System'To_Address (16#40004C00#);
   USB_Base : constant System.Address := System'To_Address (16#40005C00#);
   VREFBUF_Base : constant System.Address := System'To_Address (16#40010030#);
   WWDG_Base : constant System.Address := System'To_Address (16#40002C00#);

end Interfaces.STM32;
