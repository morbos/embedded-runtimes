--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L0x3.svd

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

   subtype CR_RTCPRE_Field is Interfaces.Bit_Types.UInt2;

   --  Clock control register
   type CR_Register is record
      --  16 MHz high-speed internal clock enable
      HSI16ON        : Boolean := False;
      --  Read-only. High-speed internal clock enable bit for some IP kernels
      HSI16KERON     : Boolean := False;
      --  Internal high-speed clock ready flag
      HSI16RDYF      : Boolean := False;
      --  HSI16DIVEN
      HSI16DIVEN     : Boolean := False;
      --  Read-only. HSI16DIVF
      HSI16DIVF      : Boolean := False;
      --  16 MHz high-speed internal clock output enable
      HSI16OUTEN     : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  MSI clock enable bit
      MSION          : Boolean := True;
      --  Read-only. MSI clock ready flag
      MSIRDY         : Boolean := True;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  HSE clock enable bit
      HSEON          : Boolean := False;
      --  Read-only. HSE clock ready flag
      HSERDY         : Boolean := False;
      --  HSE clock bypass bit
      HSEBYP         : Boolean := False;
      --  Clock security system on HSE enable bit
      CSSLSEON       : Boolean := False;
      --  TC/LCD prescaler
      RTCPRE         : CR_RTCPRE_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PLL enable bit
      PLLON          : Boolean := False;
      --  Read-only. PLL clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      HSI16ON        at 0 range 0 .. 0;
      HSI16KERON     at 0 range 1 .. 1;
      HSI16RDYF      at 0 range 2 .. 2;
      HSI16DIVEN     at 0 range 3 .. 3;
      HSI16DIVF      at 0 range 4 .. 4;
      HSI16OUTEN     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MSION          at 0 range 8 .. 8;
      MSIRDY         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSLSEON       at 0 range 19 .. 19;
      RTCPRE         at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ICSCR_HSI16CAL_Field is Interfaces.Bit_Types.Byte;
   subtype ICSCR_HSI16TRIM_Field is Interfaces.Bit_Types.UInt5;
   subtype ICSCR_MSIRANGE_Field is Interfaces.Bit_Types.UInt3;
   subtype ICSCR_MSICAL_Field is Interfaces.Bit_Types.Byte;
   subtype ICSCR_MSITRIM_Field is Interfaces.Bit_Types.Byte;

   --  Internal clock sources calibration register
   type ICSCR_Register is record
      --  Read-only. nternal high speed clock calibration
      HSI16CAL  : ICSCR_HSI16CAL_Field := 16#0#;
      --  High speed internal clock trimming
      HSI16TRIM : ICSCR_HSI16TRIM_Field := 16#10#;
      --  MSI clock ranges
      MSIRANGE  : ICSCR_MSIRANGE_Field := 16#5#;
      --  Read-only. MSI clock calibration
      MSICAL    : ICSCR_MSICAL_Field := 16#0#;
      --  MSI clock trimming
      MSITRIM   : ICSCR_MSITRIM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSCR_Register use record
      HSI16CAL  at 0 range 0 .. 7;
      HSI16TRIM at 0 range 8 .. 12;
      MSIRANGE  at 0 range 13 .. 15;
      MSICAL    at 0 range 16 .. 23;
      MSITRIM   at 0 range 24 .. 31;
   end record;

   subtype CRRCR_HSI48CAL_Field is Interfaces.Bit_Types.Byte;

   --  Clock recovery RC register
   type CRRCR_Register is record
      --  48MHz HSI clock enable bit
      HSI48ON        : Boolean := False;
      --  Read-only. 48MHz HSI clock ready flag
      HSI48RDY       : Boolean := False;
      --  48 MHz HSI clock divided by 6 output enable
      HSI48DIV6EN    : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Read-only. 48 MHz HSI clock calibration
      HSI48CAL       : CRRCR_HSI48CAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRRCR_Register use record
      HSI48ON        at 0 range 0 .. 0;
      HSI48RDY       at 0 range 1 .. 1;
      HSI48DIV6EN    at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      HSI48CAL       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
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
   subtype CFGR_MCOSEL_Field is Interfaces.Bit_Types.UInt4;
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
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Wake-up from stop clock selection
      STOPWUCK       : Boolean := False;
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
      Reserved_14_14 at 0 range 14 .. 14;
      STOPWUCK       at 0 range 15 .. 15;
      PLLSRC         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PLLMUL         at 0 range 18 .. 21;
      PLLDIV         at 0 range 22 .. 23;
      MCOSEL         at 0 range 24 .. 27;
      MCOPRE         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Clock interrupt enable register
   type CIER_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYIE      : Boolean;
      --  Read-only. LSE ready interrupt flag
      LSERDYIE      : Boolean;
      --  Read-only. HSI16 ready interrupt flag
      HSI16RDYIE    : Boolean;
      --  Read-only. HSE ready interrupt flag
      HSERDYIE      : Boolean;
      --  Read-only. PLL ready interrupt flag
      PLLRDYIE      : Boolean;
      --  Read-only. MSI ready interrupt flag
      MSIRDYIE      : Boolean;
      --  Read-only. HSI48 ready interrupt flag
      HSI48RDYIE    : Boolean;
      --  Read-only. LSE CSS interrupt flag
      CSSLSE        : Boolean;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIER_Register use record
      LSIRDYIE      at 0 range 0 .. 0;
      LSERDYIE      at 0 range 1 .. 1;
      HSI16RDYIE    at 0 range 2 .. 2;
      HSERDYIE      at 0 range 3 .. 3;
      PLLRDYIE      at 0 range 4 .. 4;
      MSIRDYIE      at 0 range 5 .. 5;
      HSI48RDYIE    at 0 range 6 .. 6;
      CSSLSE        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Clock interrupt flag register
   type CIFR_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYF       : Boolean;
      --  Read-only. LSE ready interrupt flag
      LSERDYF       : Boolean;
      --  Read-only. HSI16 ready interrupt flag
      HSI16RDYF     : Boolean;
      --  Read-only. HSE ready interrupt flag
      HSERDYF       : Boolean;
      --  Read-only. PLL ready interrupt flag
      PLLRDYF       : Boolean;
      --  Read-only. MSI ready interrupt flag
      MSIRDYF       : Boolean;
      --  Read-only. HSI48 ready interrupt flag
      HSI48RDYF     : Boolean;
      --  Read-only. LSE Clock Security System Interrupt flag
      CSSLSEF       : Boolean;
      --  Read-only. Clock Security System Interrupt flag
      CSSHSEF       : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIFR_Register use record
      LSIRDYF       at 0 range 0 .. 0;
      LSERDYF       at 0 range 1 .. 1;
      HSI16RDYF     at 0 range 2 .. 2;
      HSERDYF       at 0 range 3 .. 3;
      PLLRDYF       at 0 range 4 .. 4;
      MSIRDYF       at 0 range 5 .. 5;
      HSI48RDYF     at 0 range 6 .. 6;
      CSSLSEF       at 0 range 7 .. 7;
      CSSHSEF       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Clock interrupt clear register
   type CICR_Register is record
      --  Read-only. LSI ready Interrupt clear
      LSIRDYC       : Boolean;
      --  Read-only. LSE ready Interrupt clear
      LSERDYC       : Boolean;
      --  Read-only. HSI16 ready Interrupt clear
      HSI16RDYC     : Boolean;
      --  Read-only. HSE ready Interrupt clear
      HSERDYC       : Boolean;
      --  Read-only. PLL ready Interrupt clear
      PLLRDYC       : Boolean;
      --  Read-only. MSI ready Interrupt clear
      MSIRDYC       : Boolean;
      --  Read-only. HSI48 ready Interrupt clear
      HSI48RDYC     : Boolean;
      --  Read-only. LSE Clock Security System Interrupt clear
      CSSLSEC       : Boolean;
      --  Read-only. Clock Security System Interrupt clear
      CSSHSEC       : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CICR_Register use record
      LSIRDYC       at 0 range 0 .. 0;
      LSERDYC       at 0 range 1 .. 1;
      HSI16RDYC     at 0 range 2 .. 2;
      HSERDYC       at 0 range 3 .. 3;
      PLLRDYC       at 0 range 4 .. 4;
      MSIRDYC       at 0 range 5 .. 5;
      HSI48RDYC     at 0 range 6 .. 6;
      CSSLSEC       at 0 range 7 .. 7;
      CSSHSEC       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  GPIO reset register
   type IOPRSTR_Register is record
      --  I/O port A reset
      IOPARST       : Boolean := False;
      --  I/O port B reset
      IOPBRST       : Boolean := False;
      --  I/O port A reset
      IOPCRST       : Boolean := False;
      --  I/O port D reset
      IOPDRST       : Boolean := False;
      --  I/O port E reset
      IOPERST       : Boolean := False;
      --  unspecified
      Reserved_5_6  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  I/O port H reset
      IOPHRST       : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOPRSTR_Register use record
      IOPARST       at 0 range 0 .. 0;
      IOPBRST       at 0 range 1 .. 1;
      IOPCRST       at 0 range 2 .. 2;
      IOPDRST       at 0 range 3 .. 3;
      IOPERST       at 0 range 4 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      IOPHRST       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AHB peripheral reset register
   type AHBRSTR_Register is record
      --  DMA reset
      DMARST         : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Memory interface reset
      MIFRST         : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Test integration module reset
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Touch Sensing reset
      TOUCHRST       : Boolean := False;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Random Number Generator module reset
      RNGRST         : Boolean := False;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Crypto module reset
      CRYPRST        : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBRSTR_Register use record
      DMARST         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MIFRST         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TOUCHRST       at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      RNGRST         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      CRYPRST        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  APB2 peripheral reset register
   type APB2RSTR_Register is record
      --  System configuration controller reset
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM21 timer reset
      TIM21RST       : Boolean := False;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TIM22 timer reset
      TM12RST        : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  ADC interface reset
      ADCRST         : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI 1 reset
      SPI1RST        : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 reset
      USART1RST      : Boolean := False;
      --  unspecified
      Reserved_15_21 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  DBG reset
      DBGRST         : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      SYSCFGRST      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM21RST       at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      TM12RST        at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      ADCRST         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_21 at 0 range 15 .. 21;
      DBGRST         at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  APB1 peripheral reset register
   type APB1RSTR_Register is record
      --  Timer2 reset
      TIM2RST        : Boolean := False;
      --  Timer3 reset
      TIM3RST        : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Timer 6 reset
      TIM6RST        : Boolean := False;
      --  Timer 7 reset
      TIM7RST        : Boolean := False;
      --  unspecified
      Reserved_6_10  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Window watchdog reset
      WWDRST         : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI2 reset
      SPI2RST        : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  UART2 reset
      LPUART12RST    : Boolean := False;
      --  LPUART1 reset
      LPUART1RST     : Boolean := False;
      --  USART4 reset
      USART4RST      : Boolean := False;
      --  USART5 reset
      USART5RST      : Boolean := False;
      --  I2C1 reset
      I2C1RST        : Boolean := False;
      --  I2C2 reset
      I2C2RST        : Boolean := False;
      --  USB reset
      USBRST         : Boolean := False;
      --  unspecified
      Reserved_24_26 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Clock recovery system reset
      CRSRST         : Boolean := False;
      --  Power interface reset
      PWRRST         : Boolean := False;
      --  DAC interface reset
      DACRST         : Boolean := False;
      --  I2C3 reset
      I2C3RST        : Boolean := False;
      --  Low power timer reset
      LPTIM1RST      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDRST         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      LPUART12RST    at 0 range 17 .. 17;
      LPUART1RST     at 0 range 18 .. 18;
      USART4RST      at 0 range 19 .. 19;
      USART5RST      at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      USBRST         at 0 range 23 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      CRSRST         at 0 range 27 .. 27;
      PWRRST         at 0 range 28 .. 28;
      DACRST         at 0 range 29 .. 29;
      I2C3RST        at 0 range 30 .. 30;
      LPTIM1RST      at 0 range 31 .. 31;
   end record;

   --  GPIO clock enable register
   type IOPENR_Register is record
      --  IO port A clock enable bit
      IOPAEN        : Boolean := False;
      --  IO port B clock enable bit
      IOPBEN        : Boolean := False;
      --  IO port A clock enable bit
      IOPCEN        : Boolean := False;
      --  I/O port D clock enable bit
      IOPDEN        : Boolean := False;
      --  I/O port E clock enable bit
      IOPEEN        : Boolean := False;
      --  unspecified
      Reserved_5_6  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  I/O port H clock enable bit
      IOPHEN        : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOPENR_Register use record
      IOPAEN        at 0 range 0 .. 0;
      IOPBEN        at 0 range 1 .. 1;
      IOPCEN        at 0 range 2 .. 2;
      IOPDEN        at 0 range 3 .. 3;
      IOPEEN        at 0 range 4 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      IOPHEN        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AHB peripheral clock enable register
   type AHBENR_Register is record
      --  DMA clock enable bit
      DMAEN          : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  NVM interface clock enable bit
      MIFEN          : Boolean := True;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CRC clock enable bit
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Touch Sensing clock enable bit
      TOUCHEN        : Boolean := False;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Random Number Generator clock enable bit
      RNGEN          : Boolean := False;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Crypto clock enable bit
      CRYPEN         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBENR_Register use record
      DMAEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MIFEN          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TOUCHEN        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      RNGEN          at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      CRYPEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  APB2 peripheral clock enable register
   type APB2ENR_Register is record
      --  System configuration controller clock enable bit
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM21 timer clock enable bit
      TIM21EN        : Boolean := False;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TIM22 timer clock enable bit
      TIM22EN        : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  MiFaRe Firewall clock enable bit
      MIFIEN         : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  ADC clock enable bit
      ADCEN          : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI1 clock enable bit
      SPI1EN         : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 clock enable bit
      USART1EN       : Boolean := False;
      --  unspecified
      Reserved_15_21 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  DBG clock enable bit
      DBGEN          : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      SYSCFGEN       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM21EN        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      TIM22EN        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MIFIEN         at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      ADCEN          at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_21 at 0 range 15 .. 21;
      DBGEN          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  APB1 peripheral clock enable register
   type APB1ENR_Register is record
      --  Timer2 clock enable bit
      TIM2EN         : Boolean := False;
      --  Timer3 clock enable bit
      TIM3EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Timer 6 clock enable bit
      TIM6EN         : Boolean := False;
      --  Timer 7 clock enable bit
      TIM7EN         : Boolean := False;
      --  unspecified
      Reserved_6_10  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Window watchdog clock enable bit
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI2 clock enable bit
      SPI2EN         : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  UART2 clock enable bit
      USART2EN       : Boolean := False;
      --  LPUART1 clock enable bit
      LPUART1EN      : Boolean := False;
      --  USART4 clock enable bit
      USART4EN       : Boolean := False;
      --  USART5 clock enable bit
      USART5EN       : Boolean := False;
      --  I2C1 clock enable bit
      I2C1EN         : Boolean := False;
      --  I2C2 clock enable bit
      I2C2EN         : Boolean := False;
      --  USB clock enable bit
      USBEN          : Boolean := False;
      --  unspecified
      Reserved_24_26 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Clock recovery system clock enable bit
      CRSEN          : Boolean := False;
      --  Power interface clock enable bit
      PWREN          : Boolean := False;
      --  DAC interface clock enable bit
      DACEN          : Boolean := False;
      --  I2C3 clock enable bit
      I2C3EN         : Boolean := False;
      --  Low power timer clock enable bit
      LPTIM1EN       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2EN       at 0 range 17 .. 17;
      LPUART1EN      at 0 range 18 .. 18;
      USART4EN       at 0 range 19 .. 19;
      USART5EN       at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      USBEN          at 0 range 23 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      CRSEN          at 0 range 27 .. 27;
      PWREN          at 0 range 28 .. 28;
      DACEN          at 0 range 29 .. 29;
      I2C3EN         at 0 range 30 .. 30;
      LPTIM1EN       at 0 range 31 .. 31;
   end record;

   --  GPIO clock enable in sleep mode register
   type IOPSMEN_Register is record
      --  IOPASMEN
      IOPASMEN      : Boolean := True;
      --  IOPBSMEN
      IOPBSMEN      : Boolean := True;
      --  IOPCSMEN
      IOPCSMEN      : Boolean := True;
      --  IOPDSMEN
      IOPDSMEN      : Boolean := True;
      --  Port E clock enable during Sleep mode bit
      IOPESMEN      : Boolean := False;
      --  unspecified
      Reserved_5_6  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  IOPHSMEN
      IOPHSMEN      : Boolean := True;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOPSMEN_Register use record
      IOPASMEN      at 0 range 0 .. 0;
      IOPBSMEN      at 0 range 1 .. 1;
      IOPCSMEN      at 0 range 2 .. 2;
      IOPDSMEN      at 0 range 3 .. 3;
      IOPESMEN      at 0 range 4 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      IOPHSMEN      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AHB peripheral clock enable in sleep mode register
   type AHBSMENR_Register is record
      --  DMA clock enable during sleep mode bit
      DMASMEN        : Boolean := True;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  NVM interface clock enable during sleep mode bit
      MIFSMEN        : Boolean := True;
      --  SRAM interface clock enable during sleep mode bit
      SRAMSMEN       : Boolean := True;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CRC clock enable during sleep mode bit
      CRCSMEN        : Boolean := True;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Touch Sensing clock enable during sleep mode bit
      TOUCHSMEN      : Boolean := True;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Random Number Generator clock enable during sleep mode bit
      RNGSMEN        : Boolean := True;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Crypto clock enable during sleep mode bit
      CRYPSMEN       : Boolean := True;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBSMENR_Register use record
      DMASMEN        at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      MIFSMEN        at 0 range 8 .. 8;
      SRAMSMEN       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CRCSMEN        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TOUCHSMEN      at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      RNGSMEN        at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      CRYPSMEN       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  APB2 peripheral clock enable in sleep mode register
   type APB2SMENR_Register is record
      --  System configuration controller clock enable during sleep mode bit
      SYSCFGSMEN     : Boolean := True;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM21 timer clock enable during sleep mode bit
      TIM21SMEN      : Boolean := True;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TIM22 timer clock enable during sleep mode bit
      TIM22SMEN      : Boolean := True;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  ADC clock enable during sleep mode bit
      ADCSMEN        : Boolean := True;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI1 clock enable during sleep mode bit
      SPI1SMEN       : Boolean := True;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 clock enable during sleep mode bit
      USART1SMEN     : Boolean := True;
      --  unspecified
      Reserved_15_21 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  DBG clock enable during sleep mode bit
      DBGSMEN        : Boolean := True;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2SMENR_Register use record
      SYSCFGSMEN     at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM21SMEN      at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      TIM22SMEN      at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      ADCSMEN        at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SPI1SMEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1SMEN     at 0 range 14 .. 14;
      Reserved_15_21 at 0 range 15 .. 21;
      DBGSMEN        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  APB1 peripheral clock enable in sleep mode register
   type APB1SMENR_Register is record
      --  Timer2 clock enable during sleep mode bit
      TIM2SMEN       : Boolean := True;
      --  Timer3 clock enable during Sleep mode bit
      TIM3SMEN       : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Timer 6 clock enable during sleep mode bit
      TIM6SMEN       : Boolean := True;
      --  Timer 7 clock enable during Sleep mode bit
      TIM7SMEN       : Boolean := False;
      --  unspecified
      Reserved_6_10  : Interfaces.Bit_Types.UInt5 := 16#8#;
      --  Window watchdog clock enable during sleep mode bit
      WWDGSMEN       : Boolean := True;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI2 clock enable during sleep mode bit
      SPI2SMEN       : Boolean := True;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  UART2 clock enable during sleep mode bit
      USART2SMEN     : Boolean := True;
      --  LPUART1 clock enable during sleep mode bit
      LPUART1SMEN    : Boolean := True;
      --  USART4 clock enable during Sleep mode bit
      USART4SMEN     : Boolean := False;
      --  USART5 clock enable during Sleep mode bit
      USART5SMEN     : Boolean := False;
      --  I2C1 clock enable during sleep mode bit
      I2C1SMEN       : Boolean := True;
      --  I2C2 clock enable during sleep mode bit
      I2C2SMEN       : Boolean := True;
      --  USB clock enable during sleep mode bit
      USBSMEN        : Boolean := True;
      --  unspecified
      Reserved_24_26 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Clock recovery system clock enable during sleep mode bit
      CRSSMEN        : Boolean := True;
      --  Power interface clock enable during sleep mode bit
      PWRSMEN        : Boolean := True;
      --  DAC interface clock enable during sleep mode bit
      DACSMEN        : Boolean := True;
      --  2C3 clock enable during Sleep mode bit
      I2C3SMEN       : Boolean := False;
      --  Low power timer clock enable during sleep mode bit
      LPTIM1SMEN     : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1SMENR_Register use record
      TIM2SMEN       at 0 range 0 .. 0;
      TIM3SMEN       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TIM6SMEN       at 0 range 4 .. 4;
      TIM7SMEN       at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDGSMEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2SMEN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2SMEN     at 0 range 17 .. 17;
      LPUART1SMEN    at 0 range 18 .. 18;
      USART4SMEN     at 0 range 19 .. 19;
      USART5SMEN     at 0 range 20 .. 20;
      I2C1SMEN       at 0 range 21 .. 21;
      I2C2SMEN       at 0 range 22 .. 22;
      USBSMEN        at 0 range 23 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      CRSSMEN        at 0 range 27 .. 27;
      PWRSMEN        at 0 range 28 .. 28;
      DACSMEN        at 0 range 29 .. 29;
      I2C3SMEN       at 0 range 30 .. 30;
      LPTIM1SMEN     at 0 range 31 .. 31;
   end record;

   --  CCIPR_USART1SEL array
   type CCIPR_USART1SEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_USART1SEL
   type CCIPR_USART1SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USART1SEL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  USART1SEL as an array
            Arr : CCIPR_USART1SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_USART1SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCIPR_USART2SEL array
   type CCIPR_USART2SEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_USART2SEL
   type CCIPR_USART2SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USART2SEL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  USART2SEL as an array
            Arr : CCIPR_USART2SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_USART2SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCIPR_LPUART1SEL array
   type CCIPR_LPUART1SEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_LPUART1SEL
   type CCIPR_LPUART1SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LPUART1SEL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  LPUART1SEL as an array
            Arr : CCIPR_LPUART1SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_LPUART1SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCIPR_I2C1SEL array
   type CCIPR_I2C1SEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_I2C1SEL
   type CCIPR_I2C1SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C1SEL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  I2C1SEL as an array
            Arr : CCIPR_I2C1SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_I2C1SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CCIPR_I2C3SEL_Field is Interfaces.Bit_Types.UInt2;

   --  CCIPR_LPTIM1SEL array
   type CCIPR_LPTIM1SEL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CCIPR_LPTIM1SEL
   type CCIPR_LPTIM1SEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LPTIM1SEL as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  LPTIM1SEL as an array
            Arr : CCIPR_LPTIM1SEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCIPR_LPTIM1SEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Clock configuration register
   type CCIPR_Register is record
      --  USART1SEL0
      USART1SEL      : CCIPR_USART1SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  USART2SEL0
      USART2SEL      : CCIPR_USART2SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_9   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  LPUART1SEL0
      LPUART1SEL     : CCIPR_LPUART1SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  I2C1SEL0
      I2C1SEL        : CCIPR_I2C1SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  I2C3 clock source selection bits
      I2C3SEL        : CCIPR_I2C3SEL_Field := 16#0#;
      --  LPTIM1SEL0
      LPTIM1SEL      : CCIPR_LPTIM1SEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_25 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  48 MHz HSI48 clock source selection bit
      HSI48MSEL      : Boolean := False;
      --  unspecified
      Reserved_27_31 : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCIPR_Register use record
      USART1SEL      at 0 range 0 .. 1;
      USART2SEL      at 0 range 2 .. 3;
      Reserved_4_9   at 0 range 4 .. 9;
      LPUART1SEL     at 0 range 10 .. 11;
      I2C1SEL        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      I2C3SEL        at 0 range 16 .. 17;
      LPTIM1SEL      at 0 range 18 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      HSI48MSEL      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype CSR_LSEDRV_Field is Interfaces.Bit_Types.UInt2;
   subtype CSR_RTCSEL_Field is Interfaces.Bit_Types.UInt2;

   --  Control and status register
   type CSR_Register is record
      --  Internal low-speed oscillator enable
      LSION          : Boolean := False;
      --  Internal low-speed oscillator ready bit
      LSIRDY         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  External low-speed oscillator enable bit
      LSEON          : Boolean := False;
      --  Read-only. External low-speed oscillator ready bit
      LSERDY         : Boolean := False;
      --  External low-speed oscillator bypass bit
      LSEBYP         : Boolean := False;
      --  LSEDRV
      LSEDRV         : CSR_LSEDRV_Field := 16#0#;
      --  CSSLSEON
      CSSLSEON       : Boolean := False;
      --  CSS on LSE failure detection flag
      CSSLSED        : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  RTC and LCD clock source selection bits
      RTCSEL         : CSR_RTCSEL_Field := 16#0#;
      --  RTC clock enable bit
      RTCEN          : Boolean := False;
      --  RTC software reset bit
      RTCRST         : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Remove reset flag
      RMVF           : Boolean := False;
      --  OBLRSTF
      OBLRSTF        : Boolean := False;
      --  PIN reset flag
      PINRSTF        : Boolean := True;
      --  POR/PDR reset flag
      PORRSTF        : Boolean := True;
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
      LSEDRV         at 0 range 11 .. 12;
      CSSLSEON       at 0 range 13 .. 13;
      CSSLSED        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RTCSEL         at 0 range 16 .. 17;
      RTCEN          at 0 range 18 .. 18;
      RTCRST         at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      RMVF           at 0 range 24 .. 24;
      OBLRSTF        at 0 range 25 .. 25;
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
      --  Clock recovery RC register
      CRRCR     : aliased CRRCR_Register;
      --  Clock configuration register
      CFGR      : aliased CFGR_Register;
      --  Clock interrupt enable register
      CIER      : aliased CIER_Register;
      --  Clock interrupt flag register
      CIFR      : aliased CIFR_Register;
      --  Clock interrupt clear register
      CICR      : aliased CICR_Register;
      --  GPIO reset register
      IOPRSTR   : aliased IOPRSTR_Register;
      --  AHB peripheral reset register
      AHBRSTR   : aliased AHBRSTR_Register;
      --  APB2 peripheral reset register
      APB2RSTR  : aliased APB2RSTR_Register;
      --  APB1 peripheral reset register
      APB1RSTR  : aliased APB1RSTR_Register;
      --  GPIO clock enable register
      IOPENR    : aliased IOPENR_Register;
      --  AHB peripheral clock enable register
      AHBENR    : aliased AHBENR_Register;
      --  APB2 peripheral clock enable register
      APB2ENR   : aliased APB2ENR_Register;
      --  APB1 peripheral clock enable register
      APB1ENR   : aliased APB1ENR_Register;
      --  GPIO clock enable in sleep mode register
      IOPSMEN   : aliased IOPSMEN_Register;
      --  AHB peripheral clock enable in sleep mode register
      AHBSMENR  : aliased AHBSMENR_Register;
      --  APB2 peripheral clock enable in sleep mode register
      APB2SMENR : aliased APB2SMENR_Register;
      --  APB1 peripheral clock enable in sleep mode register
      APB1SMENR : aliased APB1SMENR_Register;
      --  Clock configuration register
      CCIPR     : aliased CCIPR_Register;
      --  Control and status register
      CSR       : aliased CSR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      ICSCR     at 16#4# range 0 .. 31;
      CRRCR     at 16#8# range 0 .. 31;
      CFGR      at 16#C# range 0 .. 31;
      CIER      at 16#10# range 0 .. 31;
      CIFR      at 16#14# range 0 .. 31;
      CICR      at 16#18# range 0 .. 31;
      IOPRSTR   at 16#1C# range 0 .. 31;
      AHBRSTR   at 16#20# range 0 .. 31;
      APB2RSTR  at 16#24# range 0 .. 31;
      APB1RSTR  at 16#28# range 0 .. 31;
      IOPENR    at 16#2C# range 0 .. 31;
      AHBENR    at 16#30# range 0 .. 31;
      APB2ENR   at 16#34# range 0 .. 31;
      APB1ENR   at 16#38# range 0 .. 31;
      IOPSMEN   at 16#3C# range 0 .. 31;
      AHBSMENR  at 16#40# range 0 .. 31;
      APB2SMENR at 16#44# range 0 .. 31;
      APB1SMENR at 16#48# range 0 .. 31;
      CCIPR     at 16#4C# range 0 .. 31;
      CSR       at 16#50# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => System'To_Address (16#40021000#);

end Interfaces.STM32.RCC;
