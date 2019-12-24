--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L151.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.RCC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  CR_RTCPRE array
   type CR_RTCPRE_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CR_RTCPRE
   type CR_RTCPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTCPRE as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RTCPRE as an array
            Arr : CR_RTCPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CR_RTCPRE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Clock control register
   type CR_Register is record
      --  Internal high-speed clock enable
      HSION          : Boolean := False;
      --  Read-only. Internal high-speed clock ready flag
      HSIRDY         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  MSI clock enable
      MSION          : Boolean := True;
      --  Read-only. MSI clock ready flag
      MSIRDY         : Boolean := True;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  HSE clock enable
      HSEON          : Boolean := False;
      --  Read-only. HSE clock ready flag
      HSERDY         : Boolean := False;
      --  HSE clock bypass
      HSEBYP         : Boolean := False;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  PLL enable
      PLLON          : Boolean := False;
      --  Read-only. PLL clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Clock security system enable
      CSSON          : Boolean := False;
      --  RTCPRE0
      RTCPRE         : CR_RTCPRE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      HSION          at 0 range 0 .. 0;
      HSIRDY         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MSION          at 0 range 8 .. 8;
      MSIRDY         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CSSON          at 0 range 28 .. 28;
      RTCPRE         at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ICSCR_HSICAL_Field is Interfaces.Bit_Types.Byte;
   subtype ICSCR_HSITRIM_Field is Interfaces.Bit_Types.UInt5;
   subtype ICSCR_MSIRANGE_Field is Interfaces.Bit_Types.UInt3;
   subtype ICSCR_MSICAL_Field is Interfaces.Bit_Types.Byte;
   subtype ICSCR_MSITRIM_Field is Interfaces.Bit_Types.Byte;

   --  Internal clock sources calibration register
   type ICSCR_Register is record
      --  Read-only. nternal high speed clock calibration
      HSICAL   : ICSCR_HSICAL_Field := 16#0#;
      --  High speed internal clock trimming
      HSITRIM  : ICSCR_HSITRIM_Field := 16#10#;
      --  MSI clock ranges
      MSIRANGE : ICSCR_MSIRANGE_Field := 16#5#;
      --  Read-only. MSI clock calibration
      MSICAL   : ICSCR_MSICAL_Field := 16#0#;
      --  MSI clock trimming
      MSITRIM  : ICSCR_MSITRIM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSCR_Register use record
      HSICAL   at 0 range 0 .. 7;
      HSITRIM  at 0 range 8 .. 12;
      MSIRANGE at 0 range 13 .. 15;
      MSICAL   at 0 range 16 .. 23;
      MSITRIM  at 0 range 24 .. 31;
   end record;

   subtype CFGR_SW_Field is Interfaces.Bit_Types.UInt2;
   subtype CFGR_SWS_Field is Interfaces.Bit_Types.UInt2;
   subtype CFGR_HPRE_Field is Interfaces.Bit_Types.UInt4;
   --  CFGR_PPRE array element
   subtype CFGR_PPRE_Element is Interfaces.Bit_Types.UInt3;

   --  CFGR_PPRE array
   type CFGR_PPRE_Field_Array is array (1 .. 2) of CFGR_PPRE_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CFGR_PPRE
   type CFGR_PPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRE as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  PPRE as an array
            Arr : CFGR_PPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CFGR_PPRE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype CFGR_PLLMUL_Field is Interfaces.Bit_Types.UInt4;
   subtype CFGR_PLLDIV_Field is Interfaces.Bit_Types.UInt2;
   subtype CFGR_MCOSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype CFGR_MCOPRE_Field is Interfaces.Bit_Types.UInt3;

   --  Clock configuration register
   type CFGR_Register is record
      --  System clock switch
      SW             : CFGR_SW_Field := 16#0#;
      --  Read-only. System clock switch status
      SWS            : CFGR_SWS_Field := 16#0#;
      --  AHB prescaler
      HPRE           : CFGR_HPRE_Field := 16#0#;
      --  APB low-speed prescaler (APB1)
      PPRE           : CFGR_PPRE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PLL entry clock source
      PLLSRC         : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLL multiplication factor
      PLLMUL         : CFGR_PLLMUL_Field := 16#0#;
      --  PLL output division
      PLLDIV         : CFGR_PLLDIV_Field := 16#0#;
      --  Microcontroller clock output selection
      MCOSEL         : CFGR_MCOSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Microcontroller clock output prescaler
      MCOPRE         : CFGR_MCOPRE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      HPRE           at 0 range 4 .. 7;
      PPRE           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PLLSRC         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PLLMUL         at 0 range 18 .. 21;
      PLLDIV         at 0 range 22 .. 23;
      MCOSEL         at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      MCOPRE         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Clock interrupt register
   type CIR_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYF        : Boolean := False;
      --  Read-only. LSE ready interrupt flag
      LSERDYF        : Boolean := False;
      --  Read-only. HSI ready interrupt flag
      HSIRDYF        : Boolean := False;
      --  Read-only. HSE ready interrupt flag
      HSERDYF        : Boolean := False;
      --  Read-only. PLL ready interrupt flag
      PLLRDYF        : Boolean := False;
      --  Read-only. MSI ready interrupt flag
      MSIRDYF        : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Clock security system interrupt flag
      CSSF           : Boolean := False;
      --  LSI ready interrupt enable
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable
      LSERDYIE       : Boolean := False;
      --  HSI ready interrupt enable
      HSIRDYIE       : Boolean := False;
      --  HSE ready interrupt enable
      HSERDYIE       : Boolean := False;
      --  PLL ready interrupt enable
      PLLRDYIE       : Boolean := False;
      --  MSI ready interrupt enable
      MSIRDYIE       : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. LSI ready interrupt clear
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear
      LSERDYC        : Boolean := False;
      --  Write-only. HSI ready interrupt clear
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear
      HSERDYC        : Boolean := False;
      --  Write-only. PLL ready interrupt clear
      PLLRDYC        : Boolean := False;
      --  Write-only. MSI ready interrupt clear
      MSIRDYC        : Boolean := False;
      --  unspecified
      Reserved_22_22 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Clock security system interrupt clear
      CSSC           : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      PLLRDYF        at 0 range 4 .. 4;
      MSIRDYF        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CSSF           at 0 range 7 .. 7;
      LSIRDYIE       at 0 range 8 .. 8;
      LSERDYIE       at 0 range 9 .. 9;
      HSIRDYIE       at 0 range 10 .. 10;
      HSERDYIE       at 0 range 11 .. 11;
      PLLRDYIE       at 0 range 12 .. 12;
      MSIRDYIE       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LSIRDYC        at 0 range 16 .. 16;
      LSERDYC        at 0 range 17 .. 17;
      HSIRDYC        at 0 range 18 .. 18;
      HSERDYC        at 0 range 19 .. 19;
      PLLRDYC        at 0 range 20 .. 20;
      MSIRDYC        at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      CSSC           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  AHB peripheral reset register
   type AHBRSTR_Register is record
      --  IO port A reset
      GPIOARST       : Boolean := False;
      --  IO port B reset
      GPIOBRST       : Boolean := False;
      --  IO port C reset
      GPIOCRST       : Boolean := False;
      --  IO port D reset
      GPIODRST       : Boolean := False;
      --  IO port E reset
      GPIOERST       : Boolean := False;
      --  IO port H reset
      GPIOHRST       : Boolean := False;
      --  IO port F reset
      GPIOFRST       : Boolean := False;
      --  IO port G reset
      GPIOGRST       : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CRC reset
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  FLITF reset
      FLITFRST       : Boolean := False;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte := 16#0#;
      --  DMA1 reset
      DMA1RST        : Boolean := False;
      --  DMA2 reset
      DMA2RST        : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  FSMC reset
      FSMCRST        : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBRSTR_Register use record
      GPIOARST       at 0 range 0 .. 0;
      GPIOBRST       at 0 range 1 .. 1;
      GPIOCRST       at 0 range 2 .. 2;
      GPIODRST       at 0 range 3 .. 3;
      GPIOERST       at 0 range 4 .. 4;
      GPIOHRST       at 0 range 5 .. 5;
      GPIOFRST       at 0 range 6 .. 6;
      GPIOGRST       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLITFRST       at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      DMA1RST        at 0 range 24 .. 24;
      DMA2RST        at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      FSMCRST        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  APB2 peripheral reset register
   type APB2RSTR_Register is record
      --  SYSCFGRST
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM9RST
      TIM9RST        : Boolean := False;
      --  TM10RST
      TM10RST        : Boolean := False;
      --  TM11RST
      TM11RST        : Boolean := False;
      --  unspecified
      Reserved_5_8   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  ADC1RST
      ADC1RST        : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SDIORST
      SDIORST        : Boolean := False;
      --  SPI1RST
      SPI1RST        : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1RST
      USART1RST      : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      SYSCFGRST      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM9RST        at 0 range 2 .. 2;
      TM10RST        at 0 range 3 .. 3;
      TM11RST        at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      ADC1RST        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SDIORST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  APB1 peripheral reset register
   type APB1RSTR_Register is record
      --  Timer 2 reset
      TIM2RST        : Boolean := False;
      --  Timer 3 reset
      TIM3RST        : Boolean := False;
      --  Timer 4 reset
      TIM4RST        : Boolean := False;
      --  Timer 5 reset
      TIM5RST        : Boolean := False;
      --  Timer 6reset
      TIM6RST        : Boolean := False;
      --  Timer 7 reset
      TIM7RST        : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LCD reset
      LCDRST         : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Window watchdog reset
      WWDRST         : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI 2 reset
      SPI2RST        : Boolean := False;
      --  SPI 3 reset
      SPI3RST        : Boolean := False;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART 2 reset
      USART2RST      : Boolean := False;
      --  USART 3 reset
      USART3RST      : Boolean := False;
      --  UART 4 reset
      UART4RST       : Boolean := False;
      --  UART 5 reset
      UART5RST       : Boolean := False;
      --  I2C 1 reset
      I2C1RST        : Boolean := False;
      --  I2C 2 reset
      I2C2RST        : Boolean := False;
      --  USB reset
      USBRST         : Boolean := False;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Power interface reset
      PWRRST         : Boolean := False;
      --  DAC interface reset
      DACRST         : Boolean := False;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  COMP interface reset
      COMPRST        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      TIM5RST        at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      LCDRST         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDRST         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      SPI3RST        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      UART4RST       at 0 range 19 .. 19;
      UART5RST       at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      USBRST         at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PWRRST         at 0 range 28 .. 28;
      DACRST         at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      COMPRST        at 0 range 31 .. 31;
   end record;

   --  AHB peripheral clock enable register
   type AHBENR_Register is record
      --  IO port A clock enable
      GPIOPAEN       : Boolean := False;
      --  IO port B clock enable
      GPIOPBEN       : Boolean := False;
      --  IO port C clock enable
      GPIOPCEN       : Boolean := False;
      --  IO port D clock enable
      GPIOPDEN       : Boolean := False;
      --  IO port E clock enable
      GPIOPEEN       : Boolean := False;
      --  IO port H clock enable
      GPIOPHEN       : Boolean := False;
      --  IO port F clock enable
      GPIOPFEN       : Boolean := False;
      --  IO port G clock enable
      GPIOPGEN       : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CRC clock enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  FLITF clock enable
      FLITFEN        : Boolean := True;
      --  unspecified
      Reserved_16_23 : Interfaces.Bit_Types.Byte := 16#0#;
      --  DMA1 clock enable
      DMA1EN         : Boolean := False;
      --  DMA2 clock enable
      DMA2EN         : Boolean := False;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  FSMCEN
      FSMCEN         : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBENR_Register use record
      GPIOPAEN       at 0 range 0 .. 0;
      GPIOPBEN       at 0 range 1 .. 1;
      GPIOPCEN       at 0 range 2 .. 2;
      GPIOPDEN       at 0 range 3 .. 3;
      GPIOPEEN       at 0 range 4 .. 4;
      GPIOPHEN       at 0 range 5 .. 5;
      GPIOPFEN       at 0 range 6 .. 6;
      GPIOPGEN       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLITFEN        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      DMA1EN         at 0 range 24 .. 24;
      DMA2EN         at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      FSMCEN         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  APB2 peripheral clock enable register
   type APB2ENR_Register is record
      --  System configuration controller clock enable
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM9 timer clock enable
      TIM9EN         : Boolean := False;
      --  TIM10 timer clock enable
      TIM10EN        : Boolean := False;
      --  TIM11 timer clock enable
      TIM11EN        : Boolean := False;
      --  unspecified
      Reserved_5_8   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  ADC1 interface clock enable
      ADC1EN         : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SDIO clock enable
      SDIOEN         : Boolean := False;
      --  SPI 1 clock enable
      SPI1EN         : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 clock enable
      USART1EN       : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      SYSCFGEN       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM9EN         at 0 range 2 .. 2;
      TIM10EN        at 0 range 3 .. 3;
      TIM11EN        at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      ADC1EN         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SDIOEN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  APB1 peripheral clock enable register
   type APB1ENR_Register is record
      --  Timer 2 clock enable
      TIM2EN         : Boolean := False;
      --  Timer 3 clock enable
      TIM3EN         : Boolean := False;
      --  Timer 4 clock enable
      TIM4EN         : Boolean := False;
      --  Timer 5 clock enable
      TIM5EN         : Boolean := False;
      --  Timer 6 clock enable
      TIM6EN         : Boolean := False;
      --  Timer 7 clock enable
      TIM7EN         : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LCD clock enable
      LCDEN          : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Window watchdog clock enable
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI 2 clock enable
      SPI2EN         : Boolean := False;
      --  SPI 3 clock enable
      SPI3EN         : Boolean := False;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART 2 clock enable
      USART2EN       : Boolean := False;
      --  USART 3 clock enable
      USART3EN       : Boolean := False;
      --  UART 4 clock enable
      USART4EN       : Boolean := False;
      --  UART 5 clock enable
      USART5EN       : Boolean := False;
      --  I2C 1 clock enable
      I2C1EN         : Boolean := False;
      --  I2C 2 clock enable
      I2C2EN         : Boolean := False;
      --  USB clock enable
      USBEN          : Boolean := False;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Power interface clock enable
      PWREN          : Boolean := False;
      --  DAC interface clock enable
      DACEN          : Boolean := False;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  COMP interface clock enable
      COMPEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      LCDEN          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      USART4EN       at 0 range 19 .. 19;
      USART5EN       at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      USBEN          at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PWREN          at 0 range 28 .. 28;
      DACEN          at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      COMPEN         at 0 range 31 .. 31;
   end record;

   --  AHB peripheral clock enable in low power mode register
   type AHBLPENR_Register is record
      --  IO port A clock enable during Sleep mode
      GPIOALPEN      : Boolean := True;
      --  IO port B clock enable during Sleep mode
      GPIOBLPEN      : Boolean := True;
      --  IO port C clock enable during Sleep mode
      GPIOCLPEN      : Boolean := True;
      --  IO port D clock enable during Sleep mode
      GPIODLPEN      : Boolean := True;
      --  IO port E clock enable during Sleep mode
      GPIOELPEN      : Boolean := True;
      --  IO port H clock enable during Sleep mode
      GPIOHLPEN      : Boolean := True;
      --  IO port F clock enable during Sleep mode
      GPIOFLPEN      : Boolean := False;
      --  IO port G clock enable during Sleep mode
      GPIOGLPEN      : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CRC clock enable during Sleep mode
      CRCLPEN        : Boolean := True;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  FLITF clock enable during Sleep mode
      FLITFLPEN      : Boolean := True;
      --  SRAM clock enable during Sleep mode
      SRAMLPEN       : Boolean := True;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  DMA1 clock enable during Sleep mode
      DMA1LPEN       : Boolean := True;
      --  DMA2 clock enable during Sleep mode
      DMA2LPEN       : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBLPENR_Register use record
      GPIOALPEN      at 0 range 0 .. 0;
      GPIOBLPEN      at 0 range 1 .. 1;
      GPIOCLPEN      at 0 range 2 .. 2;
      GPIODLPEN      at 0 range 3 .. 3;
      GPIOELPEN      at 0 range 4 .. 4;
      GPIOHLPEN      at 0 range 5 .. 5;
      GPIOFLPEN      at 0 range 6 .. 6;
      GPIOGLPEN      at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCLPEN        at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLITFLPEN      at 0 range 15 .. 15;
      SRAMLPEN       at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DMA1LPEN       at 0 range 24 .. 24;
      DMA2LPEN       at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  APB2 peripheral clock enable in low power mode register
   type APB2LPENR_Register is record
      --  System configuration controller clock enable during Sleep mode
      SYSCFGLPEN     : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM9 timer clock enable during Sleep mode
      TIM9LPEN       : Boolean := False;
      --  TIM10 timer clock enable during Sleep mode
      TIM10LPEN      : Boolean := False;
      --  TIM11 timer clock enable during Sleep mode
      TIM11LPEN      : Boolean := False;
      --  unspecified
      Reserved_5_8   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  ADC1 interface clock enable during Sleep mode
      ADC1LPEN       : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SDIO clock enable during Sleep mode
      SDIOLPEN       : Boolean := False;
      --  SPI 1 clock enable during Sleep mode
      SPI1LPEN       : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 clock enable during Sleep mode
      USART1LPEN     : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2LPENR_Register use record
      SYSCFGLPEN     at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM9LPEN       at 0 range 2 .. 2;
      TIM10LPEN      at 0 range 3 .. 3;
      TIM11LPEN      at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      ADC1LPEN       at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SDIOLPEN       at 0 range 11 .. 11;
      SPI1LPEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1LPEN     at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  APB1 peripheral clock enable in low power mode register
   type APB1LPENR_Register is record
      --  Timer 2 clock enable during Sleep mode
      TIM2LPEN       : Boolean := False;
      --  Timer 3 clock enable during Sleep mode
      TIM3LPEN       : Boolean := False;
      --  Timer 4 clock enable during Sleep mode
      TIM4LPEN       : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Timer 6 clock enable during Sleep mode
      TIM6LPEN       : Boolean := False;
      --  Timer 7 clock enable during Sleep mode
      TIM7LPEN       : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LCD clock enable during Sleep mode
      LCDLPEN        : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Window watchdog clock enable during Sleep mode
      WWDGLPEN       : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI 2 clock enable during Sleep mode
      SPI2LPEN       : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART 2 clock enable during Sleep mode
      USART2LPEN     : Boolean := False;
      --  USART 3 clock enable during Sleep mode
      USART3LPEN     : Boolean := False;
      --  unspecified
      Reserved_19_20 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  I2C 1 clock enable during Sleep mode
      I2C1LPEN       : Boolean := False;
      --  I2C 2 clock enable during Sleep mode
      I2C2LPEN       : Boolean := False;
      --  USB clock enable during Sleep mode
      USBLPEN        : Boolean := False;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Power interface clock enable during Sleep mode
      PWRLPEN        : Boolean := False;
      --  DAC interface clock enable during Sleep mode
      DACLPEN        : Boolean := False;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  COMP interface clock enable during Sleep mode
      COMPLPEN       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1LPENR_Register use record
      TIM2LPEN       at 0 range 0 .. 0;
      TIM3LPEN       at 0 range 1 .. 1;
      TIM4LPEN       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6LPEN       at 0 range 4 .. 4;
      TIM7LPEN       at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      LCDLPEN        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGLPEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2LPEN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2LPEN     at 0 range 17 .. 17;
      USART3LPEN     at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      I2C1LPEN       at 0 range 21 .. 21;
      I2C2LPEN       at 0 range 22 .. 22;
      USBLPEN        at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PWRLPEN        at 0 range 28 .. 28;
      DACLPEN        at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      COMPLPEN       at 0 range 31 .. 31;
   end record;

   subtype CSR_RTCSEL_Field is Interfaces.Bit_Types.UInt2;

   --  Control/status register
   type CSR_Register is record
      --  Internal low-speed oscillator enable
      LSION          : Boolean := False;
      --  Read-only. Internal low-speed oscillator ready
      LSIRDY         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  External low-speed oscillator enable
      LSEON          : Boolean := False;
      --  Read-only. External low-speed oscillator ready
      LSERDY         : Boolean := False;
      --  External low-speed oscillator bypass
      LSEBYP         : Boolean := False;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  RTC and LCD clock source selection
      RTCSEL         : CSR_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_21 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  RTC clock enable
      RTCEN          : Boolean := False;
      --  RTC software reset
      RTCRST         : Boolean := False;
      --  Remove reset flag
      RMVF           : Boolean := False;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PIN reset flag
      PINRSTF        : Boolean := False;
      --  POR/PDR reset flag
      PORRSTF        : Boolean := False;
      --  Software reset flag
      SFTRSTF        : Boolean := False;
      --  Independent watchdog reset flag
      IWDGRSTF       : Boolean := False;
      --  Window watchdog reset flag
      WWDGRSTF       : Boolean := False;
      --  Low-power reset flag
      LPWRSTF        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      LSION          at 0 range 0 .. 0;
      LSIRDY         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LSEON          at 0 range 8 .. 8;
      LSERDY         at 0 range 9 .. 9;
      LSEBYP         at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RTCSEL         at 0 range 16 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      RTCEN          at 0 range 22 .. 22;
      RTCRST         at 0 range 23 .. 23;
      RMVF           at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      PORRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRSTF        at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  Clock control register
      CR        : aliased CR_Register;
      --  Internal clock sources calibration register
      ICSCR     : aliased ICSCR_Register;
      --  Clock configuration register
      CFGR      : aliased CFGR_Register;
      --  Clock interrupt register
      CIR       : aliased CIR_Register;
      --  AHB peripheral reset register
      AHBRSTR   : aliased AHBRSTR_Register;
      --  APB2 peripheral reset register
      APB2RSTR  : aliased APB2RSTR_Register;
      --  APB1 peripheral reset register
      APB1RSTR  : aliased APB1RSTR_Register;
      --  AHB peripheral clock enable register
      AHBENR    : aliased AHBENR_Register;
      --  APB2 peripheral clock enable register
      APB2ENR   : aliased APB2ENR_Register;
      --  APB1 peripheral clock enable register
      APB1ENR   : aliased APB1ENR_Register;
      --  AHB peripheral clock enable in low power mode register
      AHBLPENR  : aliased AHBLPENR_Register;
      --  APB2 peripheral clock enable in low power mode register
      APB2LPENR : aliased APB2LPENR_Register;
      --  APB1 peripheral clock enable in low power mode register
      APB1LPENR : aliased APB1LPENR_Register;
      --  Control/status register
      CSR       : aliased CSR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      ICSCR     at 16#4# range 0 .. 31;
      CFGR      at 16#8# range 0 .. 31;
      CIR       at 16#C# range 0 .. 31;
      AHBRSTR   at 16#10# range 0 .. 31;
      APB2RSTR  at 16#14# range 0 .. 31;
      APB1RSTR  at 16#18# range 0 .. 31;
      AHBENR    at 16#1C# range 0 .. 31;
      APB2ENR   at 16#20# range 0 .. 31;
      APB1ENR   at 16#24# range 0 .. 31;
      AHBLPENR  at 16#28# range 0 .. 31;
      APB2LPENR at 16#2C# range 0 .. 31;
      APB1LPENR at 16#30# range 0 .. 31;
      CSR       at 16#34# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => System'To_Address (16#40023800#);

end Interfaces.STM32.RCC;
