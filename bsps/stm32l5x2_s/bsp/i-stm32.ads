--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L5x2.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  STM32L5x2
package Interfaces.STM32 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   --------------------
   -- Base addresses --
   --------------------

   DFSDM1_Base : constant System.Address :=
     System'To_Address (16#40016000#);
   SEC_DFSDM1_Base : constant System.Address :=
     System'To_Address (16#50016000#);
   DMAMUX1_Base : constant System.Address :=
     System'To_Address (16#40020800#);
   SEC_DMAMUX1_Base : constant System.Address :=
     System'To_Address (16#50020800#);
   EXTI_Base : constant System.Address :=
     System'To_Address (16#4002F400#);
   SEC_EXTI_Base : constant System.Address :=
     System'To_Address (16#5002F400#);
   FLASH_Base : constant System.Address :=
     System'To_Address (16#40022000#);
   SEC_FLASH_Base : constant System.Address :=
     System'To_Address (16#50022000#);
   GPIOA_Base : constant System.Address :=
     System'To_Address (16#42020000#);
   SEC_GPIOA_Base : constant System.Address :=
     System'To_Address (16#5202000#);
   GPIOB_Base : constant System.Address :=
     System'To_Address (16#42020400#);
   SEC_GPIOB_Base : constant System.Address :=
     System'To_Address (16#52020400#);
   GPIOC_Base : constant System.Address :=
     System'To_Address (16#42020800#);
   GPIOD_Base : constant System.Address :=
     System'To_Address (16#42020C00#);
   GPIOE_Base : constant System.Address :=
     System'To_Address (16#42021000#);
   GPIOF_Base : constant System.Address :=
     System'To_Address (16#42021400#);
   GPIOG_Base : constant System.Address :=
     System'To_Address (16#42021800#);
   SEC_GPIOC_Base : constant System.Address :=
     System'To_Address (16#52020800#);
   SEC_GPIOD_Base : constant System.Address :=
     System'To_Address (16#52020C00#);
   SEC_GPIOE_Base : constant System.Address :=
     System'To_Address (16#52021000#);
   SEC_GPIOF_Base : constant System.Address :=
     System'To_Address (16#52021400#);
   SEC_GPIOG_Base : constant System.Address :=
     System'To_Address (16#52021800#);
   GPIOH_Base : constant System.Address :=
     System'To_Address (16#42021C00#);
   SEC_GPIOH_Base : constant System.Address :=
     System'To_Address (16#52021C00#);
   TAMP_Base : constant System.Address :=
     System'To_Address (16#50003400#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40005400#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40005800#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40005C00#);
   I2C4_Base : constant System.Address :=
     System'To_Address (16#40008400#);
   SEC_I2C1_Base : constant System.Address :=
     System'To_Address (16#50005400#);
   SEC_I2C2_Base : constant System.Address :=
     System'To_Address (16#50005800#);
   SEC_I2C3_Base : constant System.Address :=
     System'To_Address (16#50005C00#);
   SEC_I2C4_Base : constant System.Address :=
     System'To_Address (16#50008400#);
   ICache_Base : constant System.Address :=
     System'To_Address (16#40030400#);
   SEC_ICache_Base : constant System.Address :=
     System'To_Address (16#50030400#);
   IWDG_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   SEC_IWDG_Base : constant System.Address :=
     System'To_Address (16#50003000#);
   LPTIM1_Base : constant System.Address :=
     System'To_Address (16#40007C00#);
   LPTIM2_Base : constant System.Address :=
     System'To_Address (16#40009400#);
   LPTIM3_Base : constant System.Address :=
     System'To_Address (16#40009800#);
   SEC_LPTIM1_Base : constant System.Address :=
     System'To_Address (16#50007C00#);
   SEC_LPTIM2_Base : constant System.Address :=
     System'To_Address (16#50009400#);
   SEC_LPTIM3_Base : constant System.Address :=
     System'To_Address (16#50009800#);
   MPCBB1_Base : constant System.Address :=
     System'To_Address (16#40032C00#);
   MPCBB2_Base : constant System.Address :=
     System'To_Address (16#40033000#);
   PWR_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   SEC_PWR_Base : constant System.Address :=
     System'To_Address (16#50007000#);
   RCC_Base : constant System.Address :=
     System'To_Address (16#40021000#);
   SEC_RCC_Base : constant System.Address :=
     System'To_Address (16#50021000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40002800#);
   SEC_RTC_Base : constant System.Address :=
     System'To_Address (16#50002800#);
   SAI1_Base : constant System.Address :=
     System'To_Address (16#40015400#);
   SAI2_Base : constant System.Address :=
     System'To_Address (16#40015800#);
   SEC_SAI1_Base : constant System.Address :=
     System'To_Address (16#50015400#);
   SEC_SAI2_Base : constant System.Address :=
     System'To_Address (16#50015800#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   SEC_DMA1_Base : constant System.Address :=
     System'To_Address (16#50020000#);
   DMA2_Base : constant System.Address :=
     System'To_Address (16#40020400#);
   SEC_DMA2_Base : constant System.Address :=
     System'To_Address (16#50020400#);
   SEC_MPCBB1_Base : constant System.Address :=
     System'To_Address (16#50032C00#);
   SEC_MPCBB2_Base : constant System.Address :=
     System'To_Address (16#50033000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40003800#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40003C00#);
   SEC_SPI1_Base : constant System.Address :=
     System'To_Address (16#50013000#);
   SEC_SPI2_Base : constant System.Address :=
     System'To_Address (16#50003800#);
   SEC_SPI3_Base : constant System.Address :=
     System'To_Address (16#50003C00#);
   TIM1_Base : constant System.Address :=
     System'To_Address (16#40012C00#);
   SEC_TIM1_Base : constant System.Address :=
     System'To_Address (16#50012C00#);
   TIM15_Base : constant System.Address :=
     System'To_Address (16#40014000#);
   SEC_TIM15_Base : constant System.Address :=
     System'To_Address (16#50014000#);
   TIM16_Base : constant System.Address :=
     System'To_Address (16#40014400#);
   SEC_TIM16_Base : constant System.Address :=
     System'To_Address (16#50014400#);
   TIM17_Base : constant System.Address :=
     System'To_Address (16#40014800#);
   SEC_TIM17_Base : constant System.Address :=
     System'To_Address (16#50014800#);
   TIM2_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   SEC_TIM2_Base : constant System.Address :=
     System'To_Address (16#50000000#);
   TIM3_Base : constant System.Address :=
     System'To_Address (16#40000400#);
   SEC_TIM3_Base : constant System.Address :=
     System'To_Address (16#50000400#);
   TIM4_Base : constant System.Address :=
     System'To_Address (16#40000800#);
   SEC_TIM4_Base : constant System.Address :=
     System'To_Address (16#50000800#);
   TIM5_Base : constant System.Address :=
     System'To_Address (16#40000C00#);
   SEC_TIM5_Base : constant System.Address :=
     System'To_Address (16#50000C00#);
   TIM8_Base : constant System.Address :=
     System'To_Address (16#40013400#);
   SEC_TIM8_Base : constant System.Address :=
     System'To_Address (16#50013400#);
   TZIC_Base : constant System.Address :=
     System'To_Address (16#40032800#);
   SEC_TZIC_Base : constant System.Address :=
     System'To_Address (16#50032800#);
   TZSC_Base : constant System.Address :=
     System'To_Address (16#40032400#);
   SEC_TZSC_Base : constant System.Address :=
     System'To_Address (16#50032400#);
   WWDG_Base : constant System.Address :=
     System'To_Address (16#40002C00#);
   SEC_WWDG_Base : constant System.Address :=
     System'To_Address (16#50002C00#);
   SYSCFG_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   SEC_SYSCFG_Base : constant System.Address :=
     System'To_Address (16#50010000#);
   PKA_Base : constant System.Address :=
     System'To_Address (16#420C2000#);
   SEC_PKA_Base : constant System.Address :=
     System'To_Address (16#520C2000#);
   DBGMCU_Base : constant System.Address :=
     System'To_Address (16#E0044000#);
   USB_Base : constant System.Address :=
     System'To_Address (16#4000D400#);
   SEC_USB_Base : constant System.Address :=
     System'To_Address (16#5000D400#);
   OCTOSPI1_Base : constant System.Address :=
     System'To_Address (16#44021000#);
   SEC_OCTOSPI1_Base : constant System.Address :=
     System'To_Address (16#54021000#);
   LPUART1_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   SEC_LPUART1_Base : constant System.Address :=
     System'To_Address (16#50008000#);
   COMP_Base : constant System.Address :=
     System'To_Address (16#40010200#);
   SEC_COMP_Base : constant System.Address :=
     System'To_Address (16#50010200#);
   VREFBUF_Base : constant System.Address :=
     System'To_Address (16#40010030#);
   SEC_VREFBUF_Base : constant System.Address :=
     System'To_Address (16#50010030#);
   TSC_Base : constant System.Address :=
     System'To_Address (16#40024000#);
   SEC_TSC_Base : constant System.Address :=
     System'To_Address (16#50024000#);
   UCPD1_Base : constant System.Address :=
     System'To_Address (16#4000DC00#);
   SEC_UCPD1_Base : constant System.Address :=
     System'To_Address (16#5000DC00#);
   FDCAN1_Base : constant System.Address :=
     System'To_Address (16#4000A400#);
   SEC_FDCAN1_Base : constant System.Address :=
     System'To_Address (16#5000A400#);
   CRC_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   SEC_CRC_Base : constant System.Address :=
     System'To_Address (16#50023000#);
   CRS_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   SEC_CRS_Base : constant System.Address :=
     System'To_Address (16#50006000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40013800#);
   SEC_USART1_Base : constant System.Address :=
     System'To_Address (16#50013800#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40004400#);
   SEC_USART2_Base : constant System.Address :=
     System'To_Address (16#50004400#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40004800#);
   SEC_USART3_Base : constant System.Address :=
     System'To_Address (16#50004800#);
   UART4_Base : constant System.Address :=
     System'To_Address (16#40004C00#);
   UART5_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   SEC_UART4_Base : constant System.Address :=
     System'To_Address (16#50004C00#);
   SEC_UART5_Base : constant System.Address :=
     System'To_Address (16#50005000#);
   ADC_Common_Base : constant System.Address :=
     System'To_Address (16#42028300#);
   SEC_ADC_Common_Base : constant System.Address :=
     System'To_Address (16#52028300#);
   ADC_Base : constant System.Address :=
     System'To_Address (16#42028000#);
   SEC_ADC_Base : constant System.Address :=
     System'To_Address (16#52028000#);
   NVIC_Base : constant System.Address :=
     System'To_Address (16#E000E100#);
   NVIC_STIR_Base : constant System.Address :=
     System'To_Address (16#E000EF00#);

end Interfaces.STM32;
