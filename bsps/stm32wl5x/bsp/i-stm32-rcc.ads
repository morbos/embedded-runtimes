--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM4.svd

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

   subtype CR_MSIRANGE_Field is Interfaces.Bit_Types.UInt4;

   --  Clock control register
   type CR_Register is record
      --  MSI clock enable
      MSION          : Boolean := True;
      --  Read-only. MSI clock ready flag (After reset this bit will be read 1
      --  once the MSI is ready)
      MSIRDY         : Boolean := False;
      --  MSI clock PLL enable
      MSIPLLEN       : Boolean := False;
      --  MSI range control selection
      MSIRGSEL       : Boolean := False;
      --  MSI clock ranges
      MSIRANGE       : CR_MSIRANGE_Field := 16#6#;
      --  HSI16 clock enable
      HSION          : Boolean := False;
      --  HSI16 always enable for peripheral kernel clocks.
      HSIKERON       : Boolean := False;
      --  Read-only. HSI16 clock ready flag. (After wakeup from Stop this bit
      --  will be read 1 once the HSI16 is ready)
      HSIRDY         : Boolean := False;
      --  HSI16 automatic start from Stop
      HSIASFS        : Boolean := False;
      --  Read-only. HSI16 kernel clock ready flag for peripherals requests.
      HSIKERDY       : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  HSE32 clock enable
      HSEON          : Boolean := False;
      --  Read-only. HSE32 clock ready flag
      HSERDY         : Boolean := False;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  HSE32 Clock security system enable
      CSSON          : Boolean := False;
      --  HSE32 sysclk prescaler
      HSEPRE         : Boolean := False;
      --  Enable HSE32 VDDTCXO output on package pin PB0-VDDTCXO.
      HSEBYPPWR      : Boolean := False;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Main PLL enable
      PLLON          : Boolean := False;
      --  Read-only. Main PLL clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      MSION          at 0 range 0 .. 0;
      MSIRDY         at 0 range 1 .. 1;
      MSIPLLEN       at 0 range 2 .. 2;
      MSIRGSEL       at 0 range 3 .. 3;
      MSIRANGE       at 0 range 4 .. 7;
      HSION          at 0 range 8 .. 8;
      HSIKERON       at 0 range 9 .. 9;
      HSIRDY         at 0 range 10 .. 10;
      HSIASFS        at 0 range 11 .. 11;
      HSIKERDY       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      HSEPRE         at 0 range 20 .. 20;
      HSEBYPPWR      at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ICSCR_MSICAL_Field is Interfaces.Bit_Types.Byte;
   subtype ICSCR_MSITRIM_Field is Interfaces.Bit_Types.Byte;
   subtype ICSCR_HSICAL_Field is Interfaces.Bit_Types.Byte;
   subtype ICSCR_HSITRIM_Field is Interfaces.Bit_Types.UInt7;

   --  Internal clock sources calibration register
   type ICSCR_Register is record
      --  Read-only. MSI clock calibration
      MSICAL         : ICSCR_MSICAL_Field := 16#0#;
      --  MSI clock trimming
      MSITRIM        : ICSCR_MSITRIM_Field := 16#0#;
      --  Read-only. HSI16 clock calibration
      HSICAL         : ICSCR_HSICAL_Field := 16#0#;
      --  HSI16 clock trimming
      HSITRIM        : ICSCR_HSITRIM_Field := 16#40#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSCR_Register use record
      MSICAL         at 0 range 0 .. 7;
      MSITRIM        at 0 range 8 .. 15;
      HSICAL         at 0 range 16 .. 23;
      HSITRIM        at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
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

   subtype CFGR_MCOSEL_Field is Interfaces.Bit_Types.UInt4;
   subtype CFGR_MCOPRE_Field is Interfaces.Bit_Types.UInt3;

   --  Clock configuration register
   type CFGR_Register is record
      --  System clock switch
      SW             : CFGR_SW_Field := 16#0#;
      --  Read-only. System clock switch status
      SWS            : CFGR_SWS_Field := 16#0#;
      --  HCLK1 prescaler (CPU1, AHB1, AHB2, and SRAM1.)
      HPRE           : CFGR_HPRE_Field := 16#0#;
      --  PCLK1 low-speed prescaler (APB1)
      PPRE           : CFGR_PPRE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Wakeup from Stop and CSS backup clock selection
      STOPWUCK       : Boolean := False;
      --  Read-only. HCLK1 prescaler flag (CPU1, AHB1, AHB2, and SRAM1)
      HPREF          : Boolean := True;
      --  Read-only. PCLK1 prescaler flag (APB1)
      PPRE1F         : Boolean := True;
      --  Read-only. PCLK2 prescaler flag (APB2)
      PPRE2F         : Boolean := True;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Microcontroller clock output
      MCOSEL         : CFGR_MCOSEL_Field := 16#0#;
      --  Microcontroller clock output prescaler
      MCOPRE         : CFGR_MCOPRE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      HPRE           at 0 range 4 .. 7;
      PPRE           at 0 range 8 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STOPWUCK       at 0 range 15 .. 15;
      HPREF          at 0 range 16 .. 16;
      PPRE1F         at 0 range 17 .. 17;
      PPRE2F         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      MCOSEL         at 0 range 24 .. 27;
      MCOPRE         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype PLLCFGR_PLLSRC_Field is Interfaces.Bit_Types.UInt2;
   subtype PLLCFGR_PLLM_Field is Interfaces.Bit_Types.UInt3;
   subtype PLLCFGR_PLLN_Field is Interfaces.Bit_Types.UInt7;
   subtype PLLCFGR_PLLP_Field is Interfaces.Bit_Types.UInt5;
   subtype PLLCFGR_PLLQ_Field is Interfaces.Bit_Types.UInt3;
   subtype PLLCFGR_PLLR_Field is Interfaces.Bit_Types.UInt3;

   --  PLL configuration register
   type PLLCFGR_Register is record
      --  Main PLL entry clock source
      PLLSRC         : PLLCFGR_PLLSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Division factor for the main PLL input clock
      PLLM           : PLLCFGR_PLLM_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Main PLL multiplication factor for VCO
      PLLN           : PLLCFGR_PLLN_Field := 16#1#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Main PLL PLLPCLK output enable
      PLLPEN         : Boolean := False;
      --  Main PLL division factor for PLLPCLK.
      PLLP           : PLLCFGR_PLLP_Field := 16#2#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Main PLL PLLQCLK output enable
      PLLQEN         : Boolean := False;
      --  Main PLL division factor for PLLQCLK
      PLLQ           : PLLCFGR_PLLQ_Field := 16#1#;
      --  Main PLL PLLRCLK output enable
      PLLREN         : Boolean := False;
      --  Main PLL division factor for PLLRCLK
      PLLR           : PLLCFGR_PLLR_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLLCFGR_Register use record
      PLLSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PLLM           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PLLN           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PLLPEN         at 0 range 16 .. 16;
      PLLP           at 0 range 17 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PLLQEN         at 0 range 24 .. 24;
      PLLQ           at 0 range 25 .. 27;
      PLLREN         at 0 range 28 .. 28;
      PLLR           at 0 range 29 .. 31;
   end record;

   --  Clock interrupt enable register
   type CIER_Register is record
      --  LSI ready interrupt enable
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable
      LSERDYIE       : Boolean := False;
      --  MSI ready interrupt enable
      MSIRDYIE       : Boolean := False;
      --  HSI16 ready interrupt enable
      HSIRDYIE       : Boolean := False;
      --  HSE32 ready interrupt enable
      HSERDYIE       : Boolean := False;
      --  PLL ready interrupt enable
      PLLRDYIE       : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LSE clock security system interrupt enable
      LSECSSIE       : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIER_Register use record
      LSIRDYIE       at 0 range 0 .. 0;
      LSERDYIE       at 0 range 1 .. 1;
      MSIRDYIE       at 0 range 2 .. 2;
      HSIRDYIE       at 0 range 3 .. 3;
      HSERDYIE       at 0 range 4 .. 4;
      PLLRDYIE       at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      LSECSSIE       at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Clock interrupt flag register
   type CIFR_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYF        : Boolean;
      --  Read-only. LSE ready interrupt flag
      LSERDYF        : Boolean;
      --  Read-only. MSI ready interrupt flag
      MSIRDYF        : Boolean;
      --  Read-only. HSI16 ready interrupt flag
      HSIRDYF        : Boolean;
      --  Read-only. HSE32 ready interrupt flag
      HSERDYF        : Boolean;
      --  Read-only. PLL ready interrupt flag
      PLLRDYF        : Boolean;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. HSE32 Clock security system interrupt flag
      CSSF           : Boolean;
      --  Read-only. LSE Clock security system interrupt flag
      LSECSSF        : Boolean;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIFR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      MSIRDYF        at 0 range 2 .. 2;
      HSIRDYF        at 0 range 3 .. 3;
      HSERDYF        at 0 range 4 .. 4;
      PLLRDYF        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CSSF           at 0 range 8 .. 8;
      LSECSSF        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Clock interrupt clear register
   type CICR_Register is record
      --  Write-only. LSI ready interrupt clear
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear
      LSERDYC        : Boolean := False;
      --  Write-only. MSI ready interrupt clear
      MSIRDYC        : Boolean := False;
      --  Write-only. HSI16 ready interrupt clear
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE32 ready interrupt clear
      HSERDYC        : Boolean := False;
      --  Write-only. PLL ready interrupt clear
      PLLRDYC        : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. HSE32 Clock security system interrupt clear
      CSSC           : Boolean := False;
      --  Write-only. LSE Clock security system interrupt clear
      LSECSSC        : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CICR_Register use record
      LSIRDYC        at 0 range 0 .. 0;
      LSERDYC        at 0 range 1 .. 1;
      MSIRDYC        at 0 range 2 .. 2;
      HSIRDYC        at 0 range 3 .. 3;
      HSERDYC        at 0 range 4 .. 4;
      PLLRDYC        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CSSC           at 0 range 8 .. 8;
      LSECSSC        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  AHB1 peripheral reset register
   type AHB1RSTR_Register is record
      --  DMA1 reset
      DMA1RST        : Boolean := False;
      --  DMA2 reset
      DMA2RST        : Boolean := False;
      --  DMAMUX1 reset
      DMAMUX1RST     : Boolean := False;
      --  unspecified
      Reserved_3_11  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  CRC reset
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB1RSTR_Register use record
      DMA1RST        at 0 range 0 .. 0;
      DMA2RST        at 0 range 1 .. 1;
      DMAMUX1RST     at 0 range 2 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  AHB2 peripheral reset register
   type AHB2RSTR_Register is record
      --  IO port A reset
      GPIOARST      : Boolean := False;
      --  IO port B reset
      GPIOBRST      : Boolean := False;
      --  IO port C reset
      GPIOCRST      : Boolean := False;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  IO port H reset
      GPIOHRST      : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB2RSTR_Register use record
      GPIOARST      at 0 range 0 .. 0;
      GPIOBRST      at 0 range 1 .. 1;
      GPIOCRST      at 0 range 2 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      GPIOHRST      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AHB3 peripheral reset register
   type AHB3RSTR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  PKARST
      PKARST         : Boolean := False;
      --  AESRST
      AESRST         : Boolean := False;
      --  RNGRST
      RNGRST         : Boolean := False;
      --  HSEMRST
      HSEMRST        : Boolean := False;
      --  IPCCRST
      IPCCRST        : Boolean := False;
      --  unspecified
      Reserved_21_24 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Flash interface reset
      FLASHRST       : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB3RSTR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      PKARST         at 0 range 16 .. 16;
      AESRST         at 0 range 17 .. 17;
      RNGRST         at 0 range 18 .. 18;
      HSEMRST        at 0 range 19 .. 19;
      IPCCRST        at 0 range 20 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      FLASHRST       at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  APB1 peripheral reset register 1
   type APB1RSTR1_Register is record
      --  TIM2 timer reset
      TIM2RST        : Boolean := False;
      --  unspecified
      Reserved_1_13  : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  SPI2S2 reset
      SPI2S2RST      : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART2 reset
      USART2RST      : Boolean := False;
      --  unspecified
      Reserved_18_20 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  I2C1 reset
      I2C1RST        : Boolean := False;
      --  I2C2 reset
      I2C2RST        : Boolean := False;
      --  I2C3 reset
      I2C3RST        : Boolean := False;
      --  unspecified
      Reserved_24_28 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  DAC1 reset
      DACRST         : Boolean := False;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Low Power Timer 1 reset
      LPTIM1RST      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR1_Register use record
      TIM2RST        at 0 range 0 .. 0;
      Reserved_1_13  at 0 range 1 .. 13;
      SPI2S2RST      at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2RST      at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      I2C3RST        at 0 range 23 .. 23;
      Reserved_24_28 at 0 range 24 .. 28;
      DACRST         at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LPTIM1RST      at 0 range 31 .. 31;
   end record;

   --  APB1 peripheral reset register 2
   type APB1RSTR2_Register is record
      --  Low-power UART 1 reset
      LPUART1RST    : Boolean := False;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Low-power timer 2 reset
      LPTIM2RST     : Boolean := False;
      --  Low-power timer 3 reset
      LPTIM3RST     : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR2_Register use record
      LPUART1RST    at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      LPTIM2RST     at 0 range 5 .. 5;
      LPTIM3RST     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  APB2 peripheral reset register
   type APB2RSTR_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  ADC reset
      ADCRST         : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM1 timer reset
      TIM1RST        : Boolean := False;
      --  SPI1 reset
      SPI1RST        : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 reset
      USART1RST      : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TIM16 timer reset
      TIM16RST       : Boolean := False;
      --  TIM17 timer reset
      TIM17RST       : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      ADCRST         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TIM1RST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      TIM17RST       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  APB3 peripheral reset register
   type APB3RSTR_Register is record
      --  Sub-GHz radio SPI reset
      SUBGHZSPIRST  : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB3RSTR_Register use record
      SUBGHZSPIRST  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  AHB1 peripheral clock enable register
   type AHB1ENR_Register is record
      --  CPU1 DMA1 clock enable
      DMA1EN         : Boolean := False;
      --  CPU1 DMA2 clock enable
      DMA2EN         : Boolean := False;
      --  CPU1 DMAMUX1 clock enable
      DMAMUX1EN      : Boolean := False;
      --  unspecified
      Reserved_3_11  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  CPU1 CRC clock enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB1ENR_Register use record
      DMA1EN         at 0 range 0 .. 0;
      DMA2EN         at 0 range 1 .. 1;
      DMAMUX1EN      at 0 range 2 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  AHB2 peripheral clock enable register
   type AHB2ENR_Register is record
      --  CPU1 IO port A clock enable
      GPIOAEN       : Boolean := False;
      --  CPU1 IO port B clock enable
      GPIOBEN       : Boolean := False;
      --  CPU1 IO port C clock enable
      GPIOCEN       : Boolean := False;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CPU1 IO port H clock enable
      GPIOHEN       : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB2ENR_Register use record
      GPIOAEN       at 0 range 0 .. 0;
      GPIOBEN       at 0 range 1 .. 1;
      GPIOCEN       at 0 range 2 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      GPIOHEN       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AHB3 peripheral clock enable register
   type AHB3ENR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  PKAEN
      PKAEN          : Boolean := False;
      --  AESEN
      AESEN          : Boolean := False;
      --  RNGEN
      RNGEN          : Boolean := False;
      --  HSEMEN
      HSEMEN         : Boolean := True;
      --  IPCCEN
      IPCCEN         : Boolean := False;
      --  unspecified
      Reserved_21_24 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CPU1 Flash interface clock enable
      FLASHEN        : Boolean := True;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB3ENR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      PKAEN          at 0 range 16 .. 16;
      AESEN          at 0 range 17 .. 17;
      RNGEN          at 0 range 18 .. 18;
      HSEMEN         at 0 range 19 .. 19;
      IPCCEN         at 0 range 20 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      FLASHEN        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  APB1 peripheral clock enable register 1
   type APB1ENR1_Register is record
      --  CPU1 TIM2 timer clock enable
      TIM2EN         : Boolean := False;
      --  unspecified
      Reserved_1_9   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  CPU1 RTC APB clock enable
      RTCAPBEN       : Boolean := False;
      --  CPU1 Window watchdog clock enable
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CPU1 SPI2S2 clock enable
      SPI2S2EN       : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CPU1 USART2 clock enable
      USART2EN       : Boolean := False;
      --  unspecified
      Reserved_18_20 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CPU1 I2C1 clocks enable
      I2C1EN         : Boolean := False;
      --  CPU1 I2C2 clocks enable
      I2C2EN         : Boolean := False;
      --  CPU1 I2C3 clocks enable
      I2C3EN         : Boolean := False;
      --  unspecified
      Reserved_24_28 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  CPU1 DAC1 clock enable
      DAC1EN         : Boolean := False;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPU1 Low power timer 1 clocks enable
      LPTIM1EN       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR1_Register use record
      TIM2EN         at 0 range 0 .. 0;
      Reserved_1_9   at 0 range 1 .. 9;
      RTCAPBEN       at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2S2EN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2EN       at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      I2C3EN         at 0 range 23 .. 23;
      Reserved_24_28 at 0 range 24 .. 28;
      DAC1EN         at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LPTIM1EN       at 0 range 31 .. 31;
   end record;

   --  APB1 peripheral clock enable register 2
   type APB1ENR2_Register is record
      --  CPU1 Low power UART 1 clocks enable
      LPUART1EN     : Boolean := False;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CPU1 Low power timer 2 clocks enable
      LPTIM2EN      : Boolean := False;
      --  CPU1 Low power timer 3 clocks enable
      LPTIM3EN      : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR2_Register use record
      LPUART1EN     at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      LPTIM2EN      at 0 range 5 .. 5;
      LPTIM3EN      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  APB2 peripheral clock enable register
   type APB2ENR_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  CPU1 ADC clocks enable
      ADCEN          : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPU1 TIM1 timer clock enable
      TIM1EN         : Boolean := False;
      --  CPU1 SPI1 clock enable
      SPI1EN         : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPU1 USART1clocks enable
      USART1EN       : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CPU1 TIM16 timer clock enable
      TIM16EN        : Boolean := False;
      --  CPU1 TIM17 timer clock enable
      TIM17EN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      ADCEN          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  APB3 peripheral clock enable register
   type APB3ENR_Register is record
      --  sub-GHz radio SPI clock enable
      SUBGHZSPIEN   : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB3ENR_Register use record
      SUBGHZSPIEN   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  AHB1 peripheral clocks enable in Sleep modes register
   type AHB1SMENR_Register is record
      --  DMA1 clock enable during CPU1 CSleep mode.
      DMA1SMEN       : Boolean := True;
      --  DMA2 clock enable during CPU1 CSleep mode
      DMA2SMEN       : Boolean := True;
      --  DMAMUX1 clock enable during CPU1 CSleep mode.
      DMAMUX1SMEN    : Boolean := True;
      --  unspecified
      Reserved_3_11  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  CRC clock enable during CPU1 CSleep mode.
      CRCSMEN        : Boolean := True;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB1SMENR_Register use record
      DMA1SMEN       at 0 range 0 .. 0;
      DMA2SMEN       at 0 range 1 .. 1;
      DMAMUX1SMEN    at 0 range 2 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      CRCSMEN        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  AHB2 peripheral clocks enable in Sleep modes register
   type AHB2SMENR_Register is record
      --  IO port A clock enable during CPU1 CSleep mode.
      GPIOASMEN     : Boolean := True;
      --  IO port B clock enable during CPU1 CSleep mode.
      GPIOBSMEN     : Boolean := True;
      --  IO port C clock enable during CPU1 CSleep mode.
      GPIOCSMEN     : Boolean := True;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  IO port H clock enable during CPU1 CSleep mode.
      GPIOHSMEN     : Boolean := True;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB2SMENR_Register use record
      GPIOASMEN     at 0 range 0 .. 0;
      GPIOBSMEN     at 0 range 1 .. 1;
      GPIOCSMEN     at 0 range 2 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      GPIOHSMEN     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AHB3 peripheral clocks enable in Sleep and Stop modes register
   type AHB3SMENR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  PKA accelerator clock enable during CPU1 CSleep mode.
      PKASMEN        : Boolean := True;
      --  AES accelerator clock enable during CPU1 CSleep mode.
      AESSMEN        : Boolean := True;
      --  True RNG clocks enable during CPU1 Csleep and CStop modes
      RNGSMEN        : Boolean := True;
      --  unspecified
      Reserved_19_22 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SRAM1 interface clock enable during CPU1 CSleep mode.
      SRAM1SMEN      : Boolean := True;
      --  SRAM2 memory interface clock enable during CPU1 CSleep mode
      SRAM2SMEN      : Boolean := True;
      --  Flash interface clock enable during CPU1 CSleep mode.
      FLASHSMEN      : Boolean := True;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB3SMENR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      PKASMEN        at 0 range 16 .. 16;
      AESSMEN        at 0 range 17 .. 17;
      RNGSMEN        at 0 range 18 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      SRAM1SMEN      at 0 range 23 .. 23;
      SRAM2SMEN      at 0 range 24 .. 24;
      FLASHSMEN      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  APB1 peripheral clocks enable in Sleep mode register 1
   type APB1SMENR1_Register is record
      --  TIM2 timer clock enable during CPU1 CSleep mode.
      TIM2SMEN       : Boolean := True;
      --  unspecified
      Reserved_1_9   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  RTC bus clock enable during CPU1 CSleep mode.
      RTCAPBSMEN     : Boolean := True;
      --  Window watchdog clocks enable during CPU1 CSleep mode.
      WWDGSMEN       : Boolean := True;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI2S2 clock enable during CPU1 CSleep mode.
      SPI2S2SMEN     : Boolean := True;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART2 clock enable during CPU1 CSleep mode.
      USART2SMEN     : Boolean := True;
      --  unspecified
      Reserved_18_20 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  I2C1 clock enable during CPU1 Csleep and CStop modes
      I2C1SMEN       : Boolean := True;
      --  I2C2 clock enable during CPU1 Csleep and CStop modes
      I2C2SMEN       : Boolean := True;
      --  I2C3 clock enable during CPU1 Csleep and CStop modes
      I2C3SMEN       : Boolean := True;
      --  unspecified
      Reserved_24_28 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  DAC1 clock enable during CPU1 CSleep mode.
      DACSMEN        : Boolean := True;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Low power timer 1 clock enable during CPU1 Csleep and CStop mode
      LPTIM1SMEN     : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1SMENR1_Register use record
      TIM2SMEN       at 0 range 0 .. 0;
      Reserved_1_9   at 0 range 1 .. 9;
      RTCAPBSMEN     at 0 range 10 .. 10;
      WWDGSMEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2S2SMEN     at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2SMEN     at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1SMEN       at 0 range 21 .. 21;
      I2C2SMEN       at 0 range 22 .. 22;
      I2C3SMEN       at 0 range 23 .. 23;
      Reserved_24_28 at 0 range 24 .. 28;
      DACSMEN        at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LPTIM1SMEN     at 0 range 31 .. 31;
   end record;

   --  APB1 peripheral clocks enable in Sleep mode register 2
   type APB1SMENR2_Register is record
      --  Low power UART 1 clock enable during CPU1 Csleep and CStop modes.
      LPUART1SMEN   : Boolean := True;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Low power timer 2 clock enable during CPU1 Csleep and CStop modes
      LPTIM2SMEN    : Boolean := True;
      --  Low power timer 3 clock enable during CPU1 Csleep and CStop modes
      LPTIM3SMEN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1SMENR2_Register use record
      LPUART1SMEN   at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      LPTIM2SMEN    at 0 range 5 .. 5;
      LPTIM3SMEN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  APB2 peripheral clocks enable in Sleep mode register
   type APB2SMENR_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  ADC clocks enable during CPU1 Csleep and CStop modes
      ADCSMEN        : Boolean := True;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM1 timer clock enable during CPU1 CSleep mode.
      TIM1SMEN       : Boolean := True;
      --  SPI1 clock enable during CPU1 CSleep mode.
      SPI1SMEN       : Boolean := True;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 clock enable during CPU1 Csleep and CStop modes.
      USART1SMEN     : Boolean := True;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TIM16 timer clock enable during CPU1 CSleep mode.
      TIM16SMEN      : Boolean := True;
      --  TIM17 timer clock enable during CPU1 CSleep mode.
      TIM17SMEN      : Boolean := True;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2SMENR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      ADCSMEN        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TIM1SMEN       at 0 range 11 .. 11;
      SPI1SMEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1SMEN     at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      TIM16SMEN      at 0 range 17 .. 17;
      TIM17SMEN      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  APB3 peripheral clock enable in Sleep mode register
   type APB3SMENR_Register is record
      --  Sub-GHz radio SPI clock enable during Sleep and Stop modes
      SUBGHZSPISMEN : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB3SMENR_Register use record
      SUBGHZSPISMEN at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CCIPR_USART1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_USART2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_SPI2S2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_LPUART1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_I2C1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_I2C2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_I2C3SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_LPTIM1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_LPTIM2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_LPTIM3SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_ADCSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CCIPR_RNGSEL_Field is Interfaces.Bit_Types.UInt2;

   --  Peripherals independent clock configuration register
   type CCIPR_Register is record
      --  USART1 clock source selection
      USART1SEL      : CCIPR_USART1SEL_Field := 16#0#;
      --  USART2 clock source selection
      USART2SEL      : CCIPR_USART2SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SPI2S2 I2S clock source selection
      SPI2S2SEL      : CCIPR_SPI2S2SEL_Field := 16#0#;
      --  LPUART1 clock source selection
      LPUART1SEL     : CCIPR_LPUART1SEL_Field := 16#0#;
      --  I2C1 clock source selection
      I2C1SEL        : CCIPR_I2C1SEL_Field := 16#0#;
      --  I2C2 clock source selection
      I2C2SEL        : CCIPR_I2C2SEL_Field := 16#0#;
      --  I2C3 clock source selection
      I2C3SEL        : CCIPR_I2C3SEL_Field := 16#0#;
      --  Low power timer 1 clock source selection
      LPTIM1SEL      : CCIPR_LPTIM1SEL_Field := 16#0#;
      --  Low power timer 2 clock source selection
      LPTIM2SEL      : CCIPR_LPTIM2SEL_Field := 16#0#;
      --  Low power timer 3 clock source selection
      LPTIM3SEL      : CCIPR_LPTIM3SEL_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  ADC clock source selection
      ADCSEL         : CCIPR_ADCSEL_Field := 16#0#;
      --  RNG clock source selection
      RNGSEL         : CCIPR_RNGSEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCIPR_Register use record
      USART1SEL      at 0 range 0 .. 1;
      USART2SEL      at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SPI2S2SEL      at 0 range 8 .. 9;
      LPUART1SEL     at 0 range 10 .. 11;
      I2C1SEL        at 0 range 12 .. 13;
      I2C2SEL        at 0 range 14 .. 15;
      I2C3SEL        at 0 range 16 .. 17;
      LPTIM1SEL      at 0 range 18 .. 19;
      LPTIM2SEL      at 0 range 20 .. 21;
      LPTIM3SEL      at 0 range 22 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      ADCSEL         at 0 range 28 .. 29;
      RNGSEL         at 0 range 30 .. 31;
   end record;

   subtype BDCR_LSEDRV_Field is Interfaces.Bit_Types.UInt2;
   subtype BDCR_RTCSEL_Field is Interfaces.Bit_Types.UInt2;

   --  Backup domain control register
   type BDCR_Register is record
      --  LSE oscillator enable
      LSEON          : Boolean := False;
      --  Read-only. LSE oscillator ready
      LSERDY         : Boolean := False;
      --  LSE oscillator bypass
      LSEBYP         : Boolean := False;
      --  LSE oscillator drive capability
      LSEDRV         : BDCR_LSEDRV_Field := 16#0#;
      --  CSS on LSE enable
      LSECSSON       : Boolean := False;
      --  Read-only. CSS on LSE failure Detection
      LSECSSD        : Boolean := False;
      --  LSE system clock enable
      LSESYSEN       : Boolean := False;
      --  RTC clock source selection
      RTCSEL         : BDCR_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. LSE system clock ready
      LSESYSRDY      : Boolean := False;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  RTC clock enable
      RTCEN          : Boolean := False;
      --  Backup domain software reset
      BDRST          : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Low speed clock output enable
      LSCOEN         : Boolean := False;
      --  Low speed clock output selection
      LSCOSEL        : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDCR_Register use record
      LSEON          at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      LSEBYP         at 0 range 2 .. 2;
      LSEDRV         at 0 range 3 .. 4;
      LSECSSON       at 0 range 5 .. 5;
      LSECSSD        at 0 range 6 .. 6;
      LSESYSEN       at 0 range 7 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      LSESYSRDY      at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      LSCOEN         at 0 range 24 .. 24;
      LSCOSEL        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CSR_MSISRANGE_Field is Interfaces.Bit_Types.UInt4;

   --  Control/status register
   type CSR_Register is record
      --  LSI oscillator enable
      LSION          : Boolean := False;
      --  Read-only. LSI oscillator ready
      LSIRDY         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LSI frequency prescaler
      LSIPRE         : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  MSI clock ranges
      MSISRANGE      : CSR_MSISRANGE_Field := 16#6#;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. Radio in reset status flag
      RFRSTF         : Boolean := True;
      --  Radio reset
      RFRST          : Boolean := True;
      --  unspecified
      Reserved_16_22 : Interfaces.Bit_Types.UInt7 := 16#1#;
      --  Remove reset flag
      RMVF           : Boolean := False;
      --  Read-only. Radio illegal access flag
      RFILARSTF      : Boolean := False;
      --  Read-only. Option byte loader reset flag
      OBLRSTF        : Boolean := False;
      --  Read-only. Pin reset flag
      PINRSTF        : Boolean := True;
      --  Read-only. BOR flag
      BORRSTF        : Boolean := True;
      --  Read-only. Software reset flag
      SFTRSTF        : Boolean := False;
      --  Read-only. Independent window watchdog reset flag
      IWDGRSTF       : Boolean := False;
      --  Read-only. Window watchdog reset flag
      WWDGRSTF       : Boolean := False;
      --  Read-only. Low-power reset flag
      LPWRRSTF       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      LSION          at 0 range 0 .. 0;
      LSIRDY         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      LSIPRE         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      MSISRANGE      at 0 range 8 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      RFRSTF         at 0 range 14 .. 14;
      RFRST          at 0 range 15 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      RMVF           at 0 range 23 .. 23;
      RFILARSTF      at 0 range 24 .. 24;
      OBLRSTF        at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      BORRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRRSTF       at 0 range 31 .. 31;
   end record;

   subtype EXTCFGR_SHDHPRE_Field is Interfaces.Bit_Types.UInt4;
   subtype EXTCFGR_C2HPRE_Field is Interfaces.Bit_Types.UInt4;

   --  Extended clock recovery register
   type EXTCFGR_Register is record
      --  HCLK3 shared prescaler (AHB3, Flash, and SRAM2)
      SHDHPRE        : EXTCFGR_SHDHPRE_Field := 16#0#;
      --  [dual core device only] HCLK2 prescaler (CPU2)
      C2HPRE         : EXTCFGR_C2HPRE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Read-only. HCLK3 shared prescaler flag (AHB3, Flash, and SRAM2)
      SHDHPREF       : Boolean := True;
      --  Read-only. CLK2 prescaler flag (CPU2)
      C2HPREF        : Boolean := True;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTCFGR_Register use record
      SHDHPRE        at 0 range 0 .. 3;
      C2HPRE         at 0 range 4 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      SHDHPREF       at 0 range 16 .. 16;
      C2HPREF        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  CPU2 AHB1 peripheral clock enable register
   type C2AHB1ENR_Register is record
      --  CPU2 DMA1 clock enable
      DMA1EN         : Boolean := False;
      --  CPU2 DMA2 clock enable
      DMA2EN         : Boolean := False;
      --  CPU2 DMAMUX1 clock enable
      DMAMUX1EN      : Boolean := False;
      --  unspecified
      Reserved_3_11  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  CPU2 CRC clock enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2AHB1ENR_Register use record
      DMA1EN         at 0 range 0 .. 0;
      DMA2EN         at 0 range 1 .. 1;
      DMAMUX1EN      at 0 range 2 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  CPU2 AHB2 peripheral clock enable register
   type C2AHB2ENR_Register is record
      --  CPU2 IO port A clock enable
      GPIOAEN       : Boolean := False;
      --  CPU2 IO port B clock enable
      GPIOBEN       : Boolean := False;
      --  CPU2 IO port C clock enable
      GPIOCEN       : Boolean := False;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CPU2 IO port H clock enable
      GPIOHEN       : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2AHB2ENR_Register use record
      GPIOAEN       at 0 range 0 .. 0;
      GPIOBEN       at 0 range 1 .. 1;
      GPIOCEN       at 0 range 2 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      GPIOHEN       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CPU2 AHB3 peripheral clock enable register [dual core device only]
   type C2AHB3ENR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  CPU2 PKA accelerator clock enable
      PKAEN          : Boolean := False;
      --  CPU2 AES accelerator clock enable
      AESEN          : Boolean := False;
      --  CPU2 True RNG clocks enable
      RNGEN          : Boolean := False;
      --  CPU2 HSEM clock enable
      HSEMEN         : Boolean := True;
      --  CPU2 IPCC interface clock enable
      IPCCEN         : Boolean := False;
      --  unspecified
      Reserved_21_24 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CPU2 Flash interface clock enable
      FLASHEN        : Boolean := True;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2AHB3ENR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      PKAEN          at 0 range 16 .. 16;
      AESEN          at 0 range 17 .. 17;
      RNGEN          at 0 range 18 .. 18;
      HSEMEN         at 0 range 19 .. 19;
      IPCCEN         at 0 range 20 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      FLASHEN        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  CPU2 APB1 peripheral clock enable register 1 [dual core device only]
   type C2APB1ENR1_Register is record
      --  CPU2 TIM2 timer clock enable
      TIM2EN         : Boolean := False;
      --  unspecified
      Reserved_1_9   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  CPU2 RTC APB clock enable
      RTCAPBEN       : Boolean := False;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CPU2 SPI2S2 clock enable
      SPI2S2EN       : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CPU2 USART2 clock enable
      USART2EN       : Boolean := False;
      --  unspecified
      Reserved_18_20 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CPU2 I2C1 clocks enable
      I2C1EN         : Boolean := False;
      --  CPU2 I2C2 clocks enable
      I2C2EN         : Boolean := False;
      --  CPU2 I2C3 clocks enable
      I2C3EN         : Boolean := False;
      --  unspecified
      Reserved_24_28 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  CPU2 DAC1 clock enable
      DAC1EN         : Boolean := False;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPU2 Low power timer 1 clocks enable
      LPTIM1EN       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2APB1ENR1_Register use record
      TIM2EN         at 0 range 0 .. 0;
      Reserved_1_9   at 0 range 1 .. 9;
      RTCAPBEN       at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      SPI2S2EN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2EN       at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      I2C3EN         at 0 range 23 .. 23;
      Reserved_24_28 at 0 range 24 .. 28;
      DAC1EN         at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LPTIM1EN       at 0 range 31 .. 31;
   end record;

   --  CPU2 APB1 peripheral clock enable register 2 [dual core device only]
   type C2APB1ENR2_Register is record
      --  CPU2 Low power UART 1 clocks enable
      LPUART1EN     : Boolean := False;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CPU2 Low power timer 2 clocks enable
      LPTIM2EN      : Boolean := False;
      --  CPU2 Low power timer 3 clocks enable
      LPTIM3EN      : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2APB1ENR2_Register use record
      LPUART1EN     at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      LPTIM2EN      at 0 range 5 .. 5;
      LPTIM3EN      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  CPU2 APB2 peripheral clock enable register [dual core device only]
   type C2APB2ENR_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  ADC clocks enable
      ADCEN          : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPU2 TIM1 timer clock enable
      TIM1EN         : Boolean := False;
      --  CPU2 SPI1 clock enable
      SPI1EN         : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPU2 USART1clocks enable
      USART1EN       : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CPU2 TIM16 timer clock enable
      TIM16EN        : Boolean := False;
      --  CPU2 TIM17 timer clock enable
      TIM17EN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2APB2ENR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      ADCEN          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  CPU2 APB3 peripheral clock enable register [dual core device only]
   type C2APB3ENR_Register is record
      --  CPU2 sub-GHz radio SPI clock enable
      SUBGHZSPIEN   : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2APB3ENR_Register use record
      SUBGHZSPIEN   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  CPU2 AHB1 peripheral clocks enable in Sleep modes register [dual core
   --  device only]
   type C2AHB1SMENR_Register is record
      --  DMA1 clock enable during CPU2 CSleep mode.
      DMA1SMEN       : Boolean := True;
      --  DMA2 clock enable during CPU2 CSleep mode.
      DMA2SMEN       : Boolean := True;
      --  DMAMUX1 clock enable during CPU2 CSleep mode.
      DMAMUX1SMEN    : Boolean := True;
      --  unspecified
      Reserved_3_11  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  CRC clock enable during CPU2 CSleep mode.
      CRCSMEN        : Boolean := True;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2AHB1SMENR_Register use record
      DMA1SMEN       at 0 range 0 .. 0;
      DMA2SMEN       at 0 range 1 .. 1;
      DMAMUX1SMEN    at 0 range 2 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      CRCSMEN        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  CPU2 AHB2 peripheral clocks enable in Sleep modes register [dual core
   --  device only]
   type C2AHB2SMENR_Register is record
      --  IO port A clock enable during CPU2 CSleep mode.
      GPIOASMEN     : Boolean := True;
      --  IO port B clock enable during CPU2 CSleep mode.
      GPIOBSMEN     : Boolean := True;
      --  IO port C clock enable during CPU2 CSleep mode.
      GPIOCSMEN     : Boolean := True;
      --  unspecified
      Reserved_3_6  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  IO port H clock enable during CPU2 CSleep mode.
      GPIOHSMEN     : Boolean := True;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2AHB2SMENR_Register use record
      GPIOASMEN     at 0 range 0 .. 0;
      GPIOBSMEN     at 0 range 1 .. 1;
      GPIOCSMEN     at 0 range 2 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      GPIOHSMEN     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CPU2 AHB3 peripheral clocks enable in Sleep mode register [dual core
   --  device only]
   type C2AHB3SMENR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  PKA accelerator clock enable during CPU2 CSleep mode.
      PKASMEN        : Boolean := True;
      --  AES accelerator clock enable during CPU2 CSleep mode.
      AESSMEN        : Boolean := True;
      --  True RNG clock enable during CPU2 CSleep and CStop mode.
      RNGSMEN        : Boolean := True;
      --  unspecified
      Reserved_19_22 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SRAM1 interface clock enable during CPU2 CSleep mode.
      SRAM1SMEN      : Boolean := True;
      --  SRAM2 memory interface clock enable during CPU2 CSleep mode.
      SRAM2SMEN      : Boolean := True;
      --  Flash interface clock enable during CPU2 CSleep mode.
      FLASHSMEN      : Boolean := True;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2AHB3SMENR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      PKASMEN        at 0 range 16 .. 16;
      AESSMEN        at 0 range 17 .. 17;
      RNGSMEN        at 0 range 18 .. 18;
      Reserved_19_22 at 0 range 19 .. 22;
      SRAM1SMEN      at 0 range 23 .. 23;
      SRAM2SMEN      at 0 range 24 .. 24;
      FLASHSMEN      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  CPU2 APB1 peripheral clocks enable in Sleep mode register 1 [dual core
   --  device only]
   type C2APB1SMENR1_Register is record
      --  TIM2 timer clock enable during CPU2 CSleep mode.
      TIM2SMEN       : Boolean := True;
      --  unspecified
      Reserved_1_9   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  RTC bus clock enable during CPU2 CSleep mode.
      RTCAPBSMEN     : Boolean := True;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  SPI2S2 clock enable during CPU2 CSleep mode.
      SPI2S2SMEN     : Boolean := True;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART2 clock enable during CPU2 CSleep mode.
      USART2SMEN     : Boolean := True;
      --  unspecified
      Reserved_18_20 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  I2C1 clock enable during CPU2 CSleep and CStop modes
      I2C1SMEN       : Boolean := True;
      --  I2C2 clock enable during CPU2 CSleep and CStop modes
      I2C2SMEN       : Boolean := True;
      --  I2C3 clock enable during CPU2 CSleep and CStop modes
      I2C3SMEN       : Boolean := True;
      --  unspecified
      Reserved_24_28 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  DAC1 clock enable during CPU2 CSleep mode.
      DAC1SMEN       : Boolean := True;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Low power timer 1 clock enable during CPU2 CSleep and CStop mode
      LPTIM1SMEN     : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2APB1SMENR1_Register use record
      TIM2SMEN       at 0 range 0 .. 0;
      Reserved_1_9   at 0 range 1 .. 9;
      RTCAPBSMEN     at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      SPI2S2SMEN     at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2SMEN     at 0 range 17 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      I2C1SMEN       at 0 range 21 .. 21;
      I2C2SMEN       at 0 range 22 .. 22;
      I2C3SMEN       at 0 range 23 .. 23;
      Reserved_24_28 at 0 range 24 .. 28;
      DAC1SMEN       at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LPTIM1SMEN     at 0 range 31 .. 31;
   end record;

   --  CPU2 APB1 peripheral clocks enable in Sleep mode register 2 [dual core
   --  device only]
   type C2APB1SMENR2_Register is record
      --  Low power UART 1 clock enable during CPU2 CSleep and CStop mode
      LPUART1SMEN   : Boolean := True;
      --  unspecified
      Reserved_1_4  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Low power timer 2 clocks enable during CPU2 CSleep and CStop modes.
      LPTIM2SMEN    : Boolean := True;
      --  Low power timer 3 clocks enable during CPU2 CSleep and CStop modes.
      LPTIM3SMEN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2APB1SMENR2_Register use record
      LPUART1SMEN   at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      LPTIM2SMEN    at 0 range 5 .. 5;
      LPTIM3SMEN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  CPU2 APB2 peripheral clocks enable in Sleep mode register [dual core
   --  device only]
   type C2APB2SMENR_Register is record
      --  unspecified
      Reserved_0_8   : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  ADC clocks enable during CPU2 Csleep and CStop modes
      ADCSMEN        : Boolean := True;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM1 timer clock enable during CPU2 CSleep mode
      TIM1SMEN       : Boolean := True;
      --  SPI1 clock enable during CPU2 CSleep mode
      SPI1SMEN       : Boolean := True;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1clock enable during CPU2 CSleep and CStop mode
      USART1SMEN     : Boolean := True;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TIM16 timer clock enable during CPU2 CSleep mode
      TIM16SMEN      : Boolean := True;
      --  TIM17 timer clock enable during CPU2 CSleep mode
      TIM17SMEN      : Boolean := True;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2APB2SMENR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      ADCSMEN        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TIM1SMEN       at 0 range 11 .. 11;
      SPI1SMEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1SMEN     at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      TIM16SMEN      at 0 range 17 .. 17;
      TIM17SMEN      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  CPU2 APB3 peripheral clock enable in Sleep mode register [dual core
   --  device only]
   type C2APB3SMENR_Register is record
      --  sub-GHz radio SPI clock enable during CPU2 CSleep and CStop modes
      SUBGHZSPISMEN : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2APB3SMENR_Register use record
      SUBGHZSPISMEN at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  Clock control register
      CR           : aliased CR_Register;
      --  Internal clock sources calibration register
      ICSCR        : aliased ICSCR_Register;
      --  Clock configuration register
      CFGR         : aliased CFGR_Register;
      --  PLL configuration register
      PLLCFGR      : aliased PLLCFGR_Register;
      --  Clock interrupt enable register
      CIER         : aliased CIER_Register;
      --  Clock interrupt flag register
      CIFR         : aliased CIFR_Register;
      --  Clock interrupt clear register
      CICR         : aliased CICR_Register;
      --  AHB1 peripheral reset register
      AHB1RSTR     : aliased AHB1RSTR_Register;
      --  AHB2 peripheral reset register
      AHB2RSTR     : aliased AHB2RSTR_Register;
      --  AHB3 peripheral reset register
      AHB3RSTR     : aliased AHB3RSTR_Register;
      --  APB1 peripheral reset register 1
      APB1RSTR1    : aliased APB1RSTR1_Register;
      --  APB1 peripheral reset register 2
      APB1RSTR2    : aliased APB1RSTR2_Register;
      --  APB2 peripheral reset register
      APB2RSTR     : aliased APB2RSTR_Register;
      --  APB3 peripheral reset register
      APB3RSTR     : aliased APB3RSTR_Register;
      --  AHB1 peripheral clock enable register
      AHB1ENR      : aliased AHB1ENR_Register;
      --  AHB2 peripheral clock enable register
      AHB2ENR      : aliased AHB2ENR_Register;
      --  AHB3 peripheral clock enable register
      AHB3ENR      : aliased AHB3ENR_Register;
      --  APB1 peripheral clock enable register 1
      APB1ENR1     : aliased APB1ENR1_Register;
      --  APB1 peripheral clock enable register 2
      APB1ENR2     : aliased APB1ENR2_Register;
      --  APB2 peripheral clock enable register
      APB2ENR      : aliased APB2ENR_Register;
      --  APB3 peripheral clock enable register
      APB3ENR      : aliased APB3ENR_Register;
      --  AHB1 peripheral clocks enable in Sleep modes register
      AHB1SMENR    : aliased AHB1SMENR_Register;
      --  AHB2 peripheral clocks enable in Sleep modes register
      AHB2SMENR    : aliased AHB2SMENR_Register;
      --  AHB3 peripheral clocks enable in Sleep and Stop modes register
      AHB3SMENR    : aliased AHB3SMENR_Register;
      --  APB1 peripheral clocks enable in Sleep mode register 1
      APB1SMENR1   : aliased APB1SMENR1_Register;
      --  APB1 peripheral clocks enable in Sleep mode register 2
      APB1SMENR2   : aliased APB1SMENR2_Register;
      --  APB2 peripheral clocks enable in Sleep mode register
      APB2SMENR    : aliased APB2SMENR_Register;
      --  APB3 peripheral clock enable in Sleep mode register
      APB3SMENR    : aliased APB3SMENR_Register;
      --  Peripherals independent clock configuration register
      CCIPR        : aliased CCIPR_Register;
      --  Backup domain control register
      BDCR         : aliased BDCR_Register;
      --  Control/status register
      CSR          : aliased CSR_Register;
      --  Extended clock recovery register
      EXTCFGR      : aliased EXTCFGR_Register;
      --  CPU2 AHB1 peripheral clock enable register
      C2AHB1ENR    : aliased C2AHB1ENR_Register;
      --  CPU2 AHB2 peripheral clock enable register
      C2AHB2ENR    : aliased C2AHB2ENR_Register;
      --  CPU2 AHB3 peripheral clock enable register [dual core device only]
      C2AHB3ENR    : aliased C2AHB3ENR_Register;
      --  CPU2 APB1 peripheral clock enable register 1 [dual core device only]
      C2APB1ENR1   : aliased C2APB1ENR1_Register;
      --  CPU2 APB1 peripheral clock enable register 2 [dual core device only]
      C2APB1ENR2   : aliased C2APB1ENR2_Register;
      --  CPU2 APB2 peripheral clock enable register [dual core device only]
      C2APB2ENR    : aliased C2APB2ENR_Register;
      --  CPU2 APB3 peripheral clock enable register [dual core device only]
      C2APB3ENR    : aliased C2APB3ENR_Register;
      --  CPU2 AHB1 peripheral clocks enable in Sleep modes register [dual core
      --  device only]
      C2AHB1SMENR  : aliased C2AHB1SMENR_Register;
      --  CPU2 AHB2 peripheral clocks enable in Sleep modes register [dual core
      --  device only]
      C2AHB2SMENR  : aliased C2AHB2SMENR_Register;
      --  CPU2 AHB3 peripheral clocks enable in Sleep mode register [dual core
      --  device only]
      C2AHB3SMENR  : aliased C2AHB3SMENR_Register;
      --  CPU2 APB1 peripheral clocks enable in Sleep mode register 1 [dual
      --  core device only]
      C2APB1SMENR1 : aliased C2APB1SMENR1_Register;
      --  CPU2 APB1 peripheral clocks enable in Sleep mode register 2 [dual
      --  core device only]
      C2APB1SMENR2 : aliased C2APB1SMENR2_Register;
      --  CPU2 APB2 peripheral clocks enable in Sleep mode register [dual core
      --  device only]
      C2APB2SMENR  : aliased C2APB2SMENR_Register;
      --  CPU2 APB3 peripheral clock enable in Sleep mode register [dual core
      --  device only]
      C2APB3SMENR  : aliased C2APB3SMENR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR           at 16#0# range 0 .. 31;
      ICSCR        at 16#4# range 0 .. 31;
      CFGR         at 16#8# range 0 .. 31;
      PLLCFGR      at 16#C# range 0 .. 31;
      CIER         at 16#18# range 0 .. 31;
      CIFR         at 16#1C# range 0 .. 31;
      CICR         at 16#20# range 0 .. 31;
      AHB1RSTR     at 16#28# range 0 .. 31;
      AHB2RSTR     at 16#2C# range 0 .. 31;
      AHB3RSTR     at 16#30# range 0 .. 31;
      APB1RSTR1    at 16#38# range 0 .. 31;
      APB1RSTR2    at 16#3C# range 0 .. 31;
      APB2RSTR     at 16#40# range 0 .. 31;
      APB3RSTR     at 16#44# range 0 .. 31;
      AHB1ENR      at 16#48# range 0 .. 31;
      AHB2ENR      at 16#4C# range 0 .. 31;
      AHB3ENR      at 16#50# range 0 .. 31;
      APB1ENR1     at 16#58# range 0 .. 31;
      APB1ENR2     at 16#5C# range 0 .. 31;
      APB2ENR      at 16#60# range 0 .. 31;
      APB3ENR      at 16#64# range 0 .. 31;
      AHB1SMENR    at 16#68# range 0 .. 31;
      AHB2SMENR    at 16#6C# range 0 .. 31;
      AHB3SMENR    at 16#70# range 0 .. 31;
      APB1SMENR1   at 16#78# range 0 .. 31;
      APB1SMENR2   at 16#7C# range 0 .. 31;
      APB2SMENR    at 16#80# range 0 .. 31;
      APB3SMENR    at 16#84# range 0 .. 31;
      CCIPR        at 16#88# range 0 .. 31;
      BDCR         at 16#90# range 0 .. 31;
      CSR          at 16#94# range 0 .. 31;
      EXTCFGR      at 16#108# range 0 .. 31;
      C2AHB1ENR    at 16#148# range 0 .. 31;
      C2AHB2ENR    at 16#14C# range 0 .. 31;
      C2AHB3ENR    at 16#150# range 0 .. 31;
      C2APB1ENR1   at 16#158# range 0 .. 31;
      C2APB1ENR2   at 16#15C# range 0 .. 31;
      C2APB2ENR    at 16#160# range 0 .. 31;
      C2APB3ENR    at 16#164# range 0 .. 31;
      C2AHB1SMENR  at 16#168# range 0 .. 31;
      C2AHB2SMENR  at 16#16C# range 0 .. 31;
      C2AHB3SMENR  at 16#170# range 0 .. 31;
      C2APB1SMENR1 at 16#178# range 0 .. 31;
      C2APB1SMENR2 at 16#17C# range 0 .. 31;
      C2APB2SMENR  at 16#180# range 0 .. 31;
      C2APB3SMENR  at 16#184# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end Interfaces.STM32.RCC;
