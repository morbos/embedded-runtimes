--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM4.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32WL5x_CM4
package Interfaces.STM32 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   --------------------
   -- Base addresses --
   --------------------

   ADC_Base : constant System.Address := System'To_Address (16#40012400#);
   AES_Base : constant System.Address := System'To_Address (16#58001800#);
   COMP_Base : constant System.Address := System'To_Address (16#40010200#);
   CRC_Base : constant System.Address := System'To_Address (16#40023000#);
   DAC_Base : constant System.Address := System'To_Address (16#40007400#);
   DBGMCU_Base : constant System.Address := System'To_Address (16#E0042000#);
   DMA1_Base : constant System.Address := System'To_Address (16#40020000#);
   DMA2_Base : constant System.Address := System'To_Address (16#40020400#);
   DMAMUX_Base : constant System.Address := System'To_Address (16#40020800#);
   EXTI_Base : constant System.Address := System'To_Address (16#58000800#);
   FLASH_Base : constant System.Address := System'To_Address (16#58004000#);
   GPIOA_Base : constant System.Address := System'To_Address (16#48000000#);
   GPIOB_Base : constant System.Address := System'To_Address (16#48000400#);
   GPIOC_Base : constant System.Address := System'To_Address (16#48000800#);
   GPIOH_Base : constant System.Address := System'To_Address (16#48001C00#);
   HSEM_Base : constant System.Address := System'To_Address (16#58001400#);
   I2C1_Base : constant System.Address := System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address := System'To_Address (16#40005800#);
   I2C3_Base : constant System.Address := System'To_Address (16#40005C00#);
   IPCC_Base : constant System.Address := System'To_Address (16#58000C00#);
   IWDG_Base : constant System.Address := System'To_Address (16#40003000#);
   LPTIM1_Base : constant System.Address := System'To_Address (16#40007C00#);
   LPTIM2_Base : constant System.Address := System'To_Address (16#40009400#);
   LPTIM3_Base : constant System.Address := System'To_Address (16#40009800#);
   LPUART_Base : constant System.Address := System'To_Address (16#40008000#);
   MPU_Base : constant System.Address := System'To_Address (16#E000ED90#);
   NVIC_Base : constant System.Address := System'To_Address (16#E000E100#);
   NVIC_STIR_Base : constant System.Address := System'To_Address (16#E000EF00#);
   PKA_Base : constant System.Address := System'To_Address (16#58002000#);
   PWR_Base : constant System.Address := System'To_Address (16#58000400#);
   RCC_Base : constant System.Address := System'To_Address (16#58000000#);
   RNG_Base : constant System.Address := System'To_Address (16#58001000#);
   RTC_Base : constant System.Address := System'To_Address (16#40002800#);
   SCB_Base : constant System.Address := System'To_Address (16#E000ED00#);
   SCB_ACTRL_Base : constant System.Address := System'To_Address (16#E000E008#);
   SPI1_Base : constant System.Address := System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address := System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address := System'To_Address (16#58010000#);
   STK_Base : constant System.Address := System'To_Address (16#E000E010#);
   SYSCFG_Base : constant System.Address := System'To_Address (16#40010000#);
   SYSCFG_continue_Base : constant System.Address := System'To_Address (16#40010100#);
   TAMP_Base : constant System.Address := System'To_Address (16#4000B000#);
   TIM1_Base : constant System.Address := System'To_Address (16#40012C00#);
   TIM2_Base : constant System.Address := System'To_Address (16#40000000#);
   TIM16_Base : constant System.Address := System'To_Address (16#40014400#);
   TIM17_Base : constant System.Address := System'To_Address (16#40014800#);
   TZIC_Base : constant System.Address := System'To_Address (16#58004800#);
   TZSC_Base : constant System.Address := System'To_Address (16#58004400#);
   USART1_Base : constant System.Address := System'To_Address (16#40013800#);
   USART2_Base : constant System.Address := System'To_Address (16#40004400#);
   VREFBUF_Base : constant System.Address := System'To_Address (16#40010030#);
   WWDG_Base : constant System.Address := System'To_Address (16#40002C00#);

end Interfaces.STM32;
