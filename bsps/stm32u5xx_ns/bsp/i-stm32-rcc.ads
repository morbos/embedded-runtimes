--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

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

   --  RCC clock control register
   type RCC_CR_Register is record
      --  MSIS clock enable Set and cleared by software. Cleared by hardware to
      --  stop the MSIS oscillator when entering Stop, Standby or Shutdown
      --  mode. Set by hardware to force the MSIS oscillator ON when exiting
      --  Standby or Shutdown mode. Set by hardware to force the MSIS
      --  oscillator ON when STOPWUCK = 0 when exiting Stop modes or in case of
      --  a failure of the HSE oscillator. Set by hardware when used directly
      --  or indirectly as system clock.
      MSISON         : Boolean := True;
      --  MSI enable for some peripheral kernels Set and cleared by software to
      --  force MSI ON even in Stop modes. Keeping the MSI ON in Stop mode
      --  allows the communication speed not to be reduced by the MSI startup
      --  time. This bit has no effect on MSISON and MSIKON values (see
      --  autonomous mode for more details). The MSIKERON must be configured at
      --  0 before entering Stop 3 mode.
      MSIKERON       : Boolean := False;
      --  Read-only. MSIS clock ready flag Set by hardware to indicate that the
      --  MSIS oscillator is stable. This bit is set only when MSIS is enabled
      --  by software by setting MSISON. Note: Once the MSISON bit is cleared,
      --  MSISRDY goes low after six MSIS clock cycles.
      MSISRDY        : Boolean := True;
      --  MSI clock PLL-mode enable Set and cleared by software to
      --  enable/disable the PLL part of the MSI clock source. MSIPLLEN must be
      --  enabled after LSE is enabled (LSEON enabled) and ready (LSERDY set by
      --  hardware). A hardware protection prevents from enabling MSIPLLEN if
      --  LSE is not ready. This bit is cleared by hardware when LSE is
      --  disabled (LSEON = 0) or when the CSS on LSE detects a LSE failure
      --  (see RCC_CSR).
      MSIPLLEN       : Boolean := False;
      --  MSIK clock enable Set and cleared by software. Cleared by hardware to
      --  stop the MSIK when entering Stop, Standby or Shutdown mode. Set by
      --  hardware to force the MSIK oscillator ON when exiting Standby or
      --  Shutdown mode. Set by hardware to force the MSIK oscillator ON when
      --  STOPWUCK = 0 or STOPKERWUCK = 0 when exiting Stop modes or in case
      --  of a failure of the HSE oscillator.
      MSIKON         : Boolean := True;
      --  Read-only. MSIK clock ready flag Set by hardware to indicate that the
      --  MSIK is stable. This bit is set only when MSI kernel oscillator is
      --  enabled by software by setting MSIKON. Note: Once the MSIKON bit is
      --  cleared, MSIKRDY goes low after six MSIK oscillator clock cycles.
      MSIKRDY        : Boolean := True;
      --  MSI clock with PLL mode selection Set and cleared by software to
      --  select which MSI output clock uses the PLL mode. This bit can be
      --  written only when the MSI PLL mode is disabled (MSIPLLEN = 0). Note:
      --  If the MSI kernel clock output uses the same oscillator source than
      --  the MSI system clock output, then the PLL mode is applied to the both
      --  clocks outputs.
      MSIPLLSEL      : Boolean := False;
      --  MSI PLL mode fast startup Set and reset by software to enable/disable
      --  the fast PLL mode start-up of the MSI clock source. This bit is used
      --  only if PLL mode is selected (MSIPLLEN = 1). The fast start-up
      --  feature is not active the first time the PLL mode is selected. The
      --  fast start-up is active when the MSI in PLL mode returns from switch
      --  off.
      MSIPLLFAST     : Boolean := False;
      --  HSI16 clock enable Set and cleared by software. Cleared by hardware
      --  to stop the HSI16 oscillator when entering Stop, Standby or Shutdown
      --  mode. Set by hardware to force the HSI16 oscillator ON when STOPWUCK
      --  = 1 when leaving Stop modes, or in case of failure of the HSE crystal
      --  oscillator. This bit is set by hardware if the HSI16 is used directly
      --  or indirectly as system clock.
      HSION          : Boolean := False;
      --  HSI16 enable for some peripheral kernels Set and cleared by software
      --  to force HSI16 ON even in Stop modes. Keeping the HSI16 ON in Stop
      --  mode allows the communication speed not to be reduced by the HSI16
      --  startup time. This bit has no effect on HSION value. Refer to for
      --  more details. The HSIKERON must be configured at 0 before entering
      --  Stop 3 mode.
      HSIKERON       : Boolean := False;
      --  Read-only. HSI16 clock ready flag Set by hardware to indicate that
      --  HSI16 oscillator is stable. This bit is set only when HSI16 is
      --  enabled by software by setting HSION. Note: Once the HSION bit is
      --  cleared, HSIRDY goes low after six HSI16 clock cycles.
      HSIRDY         : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  HSI48 clock enable Set and cleared by software. Cleared by hardware
      --  to stop the HSI48 when entering in Stop, Standby or Shutdown modes.
      HSI48ON        : Boolean := False;
      --  Read-only. HSI48 clock ready flag Set by hardware to indicate that
      --  HSI48 oscillator is stable. This bit is set only when HSI48 is
      --  enabled by software by setting HSI48ON.
      HSI48RDY       : Boolean := False;
      --  SHSI clock enable Set and cleared by software. Cleared by hardware to
      --  stop the SHSI when entering in Stop, Standby or Shutdown modes.
      SHSION         : Boolean := False;
      --  Read-only. SHSI clock ready flag Set by hardware to indicate that the
      --  SHSI oscillator is stable. This bit is set only when SHSI is enabled
      --  by software by setting SHSION. Note: Once the SHSION bit is cleared,
      --  SHSIRDY goes low after six SHSI clock cycles.
      SHSIRDY        : Boolean := False;
      --  HSE clock enable Set and cleared by software. Cleared by hardware to
      --  stop the HSE oscillator when entering Stop, Standby or Shutdown mode.
      --  This bit cannot be reset if the HSE oscillator is used directly or
      --  indirectly as the system clock.
      HSEON          : Boolean := False;
      --  Read-only. HSE clock ready flag Set by hardware to indicate that the
      --  HSE oscillator is stable. Note: Once the HSEON bit is cleared, HSERDY
      --  goes low after six HSE clock cycles.
      HSERDY         : Boolean := False;
      --  HSE crystal oscillator bypass Set and cleared by software to bypass
      --  the oscillator with an external clock. The external clock must be
      --  enabled with the HSEON bit set, to be used by the device. The HSEBYP
      --  bit can be written only if the HSE oscillator is disabled.
      HSEBYP         : Boolean := False;
      --  Clock security system enable Set by software to enable the clock
      --  security system. When CSSON is set, the clock detector is enabled by
      --  hardware when the HSE oscillator is ready, and disabled by hardware
      --  if a HSE clock failure is detected. This bit is set only and is
      --  cleared by reset.
      CSSON          : Boolean := False;
      --  HSE external clock bypass mode Set and reset by software to select
      --  the external clock mode in bypass mode. External clock mode must be
      --  configured with HSEON bit to be used by the device. This bit can be
      --  written only if the HSE oscillator is disabled. This bit is active
      --  only if the HSE bypass mode is enabled.
      HSEEXT         : Boolean := False;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  PLL1 enable Set and cleared by software to enable the main PLL.
      --  Cleared by hardware when entering Stop, Standby or Shutdown mode.
      --  This bit cannot be reset if the PLL1 clock is used as the system
      --  clock.
      PLL1ON         : Boolean := False;
      --  Read-only. PLL1 clock ready flag Set by hardware to indicate that the
      --  PLL1 is locked.
      PLL1RDY        : Boolean := False;
      --  PLL2 enable Set and cleared by software to enable PLL2. Cleared by
      --  hardware when entering Stop, Standby or Shutdown mode.
      PLL2ON         : Boolean := False;
      --  Read-only. PLL2 clock ready flag Set by hardware to indicate that the
      --  PLL2 is locked.
      PLL2RDY        : Boolean := False;
      --  PLL3 enable Set and cleared by software to enable PLL3. Cleared by
      --  hardware when entering Stop, Standby or Shutdown mode.
      PLL3ON         : Boolean := False;
      --  Read-only. PLL3 clock ready flag Set by hardware to indicate that the
      --  PLL3 is locked.
      PLL3RDY        : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CR_Register use record
      MSISON         at 0 range 0 .. 0;
      MSIKERON       at 0 range 1 .. 1;
      MSISRDY        at 0 range 2 .. 2;
      MSIPLLEN       at 0 range 3 .. 3;
      MSIKON         at 0 range 4 .. 4;
      MSIKRDY        at 0 range 5 .. 5;
      MSIPLLSEL      at 0 range 6 .. 6;
      MSIPLLFAST     at 0 range 7 .. 7;
      HSION          at 0 range 8 .. 8;
      HSIKERON       at 0 range 9 .. 9;
      HSIRDY         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      HSI48ON        at 0 range 12 .. 12;
      HSI48RDY       at 0 range 13 .. 13;
      SHSION         at 0 range 14 .. 14;
      SHSIRDY        at 0 range 15 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      HSEEXT         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PLL1ON         at 0 range 24 .. 24;
      PLL1RDY        at 0 range 25 .. 25;
      PLL2ON         at 0 range 26 .. 26;
      PLL2RDY        at 0 range 27 .. 27;
      PLL3ON         at 0 range 28 .. 28;
      PLL3RDY        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_ICSCR1_MSICAL3_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_ICSCR1_MSICAL2_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_ICSCR1_MSICAL1_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_ICSCR1_MSICAL0_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_ICSCR1_MSIKRANGE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_ICSCR1_MSISRANGE_Field is Interfaces.Bit_Types.UInt4;

   --  RCC internal clock sources calibration register 1
   type RCC_ICSCR1_Register is record
      --  Read-only. MSIRC3 clock calibration for MSI ranges 12 to 15 These
      --  bits are initialized at startup with the factory-programmed MSIRC3
      --  calibration trim value for ranges 12 to 15. When MSITRIM3 is written,
      --  MSICAL3 is updated with the sum of MSITRIM3[4:0] and the factory
      --  calibration trim value MSIRC2[4:0]. There is no hardware protection
      --  to limit a potential overflow due to the addition of MSITRIM bitfield
      --  and factory program bitfield for this calibration value. Control must
      --  be managed by software at user level.
      MSICAL3        : RCC_ICSCR1_MSICAL3_Field := 16#0#;
      --  Read-only. MSIRC2 clock calibration for MSI ranges 8 to 11 These bits
      --  are initialized at startup with the factory-programmed MSIRC2
      --  calibration trim value for ranges 8 to 11. When MSITRIM2 is written,
      --  MSICAL2 is updated with the sum of MSITRIM2[4:0] and the factory
      --  calibration trim value MSIRC2[4:0]. There is no hardware protection
      --  to limit a potential overflow due to the addition of MSITRIM bitfield
      --  and factory program bitfield for this calibration value. Control must
      --  be managed by software at user level.
      MSICAL2        : RCC_ICSCR1_MSICAL2_Field := 16#0#;
      --  Read-only. MSIRC1 clock calibration for MSI ranges 4 to 7 These bits
      --  are initialized at startup with the factory-programmed MSIRC1
      --  calibration trim value for ranges 4 to 7. When MSITRIM1 is written,
      --  MSICAL1 is updated with the sum of MSITRIM1[4:0] and the factory
      --  calibration trim value MSIRC1[4:0]. There is no hardware protection
      --  to limit a potential overflow due to the addition of MSITRIM bitfield
      --  and factory program bitfield for this calibration value. Control must
      --  be managed by software at user level.
      MSICAL1        : RCC_ICSCR1_MSICAL1_Field := 16#0#;
      --  Read-only. MSIRC0 clock calibration for MSI ranges 0 to 3 These bits
      --  are initialized at startup with the factory-programmed MSIRC0
      --  calibration trim value for ranges 0 to 3. When MSITRIM0 is written,
      --  MSICAL0 is updated with the sum of MSITRIM0[4:0] and the
      --  factory-programmed calibration trim value MSIRC0[4:0].
      MSICAL0        : RCC_ICSCR1_MSICAL0_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  MSI bias mode selection Set by software to select the MSI bias mode.
      --  By default, the MSI bias is in continuous mode in order to maintain
      --  the output clocks accuracy. Setting this bit reduces the MSI
      --  consumption under range 4 but decrease its accuracy.
      MSIBIAS        : Boolean := False;
      --  MSI clock range selection Set by software to select the MSIS and MSIK
      --  clocks range with MSISRANGE[3:0] and MSIKRANGE[3:0]. Write 0 has no
      --  effect. After exiting Standby or Shutdown mode, or after a reset,
      --  this bit is at 0 and the MSIS and MSIK ranges are provided by
      --  MSISSRANGE[3:0] and MSIKSRANGE[3:0] in RCC_CSR.
      MSIRGSEL       : Boolean := False;
      --  MSIK clock ranges These bits are configured by software to choose the
      --  frequency range of MSIK oscillator when MSIRGSEL is set. 16 frequency
      --  ranges are available: Note: MSIKRANGE can be modified when MSIK is
      --  OFF (MSISON = 0) or when MSIK is ready (MSIKRDY = 1). MSIKRANGE
      --  must NOT be modified when MSIK is ON and NOT ready (MSIKON = 1 and
      --  MSIKRDY = 0) MSIKRANGE is kept when the device wakes up from Stop
      --  mode, except when the MSIK range is above 24 MHz. In this case
      --  MSIKRANGE is changed by hardware into Range 2 (24 MHz).
      MSIKRANGE      : RCC_ICSCR1_MSIKRANGE_Field := 16#4#;
      --  MSIS clock ranges These bits are configured by software to choose the
      --  frequency range of MSIS oscillator when MSIRGSEL is set. 16 frequency
      --  ranges are available: Note: MSISRANGE can be modified when MSIS is
      --  OFF (MSISON = 0) or when MSIS is ready (MSISRDY = 1). MSISRANGE
      --  must NOT be modified when MSIS is ON and NOT ready (MSISON = 1 and
      --  MSISRDY = 0) MSISRANGE is kept when the device wakes up from Stop
      --  mode, except when the MSIS range is above 24 MHz. In this case
      --  MSISRANGE is changed by hardware into Range 2 (24 MHz).
      MSISRANGE      : RCC_ICSCR1_MSISRANGE_Field := 16#4#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ICSCR1_Register use record
      MSICAL3        at 0 range 0 .. 4;
      MSICAL2        at 0 range 5 .. 9;
      MSICAL1        at 0 range 10 .. 14;
      MSICAL0        at 0 range 15 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      MSIBIAS        at 0 range 22 .. 22;
      MSIRGSEL       at 0 range 23 .. 23;
      MSIKRANGE      at 0 range 24 .. 27;
      MSISRANGE      at 0 range 28 .. 31;
   end record;

   subtype RCC_ICSCR2_MSITRIM3_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_ICSCR2_MSITRIM2_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_ICSCR2_MSITRIM1_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_ICSCR2_MSITRIM0_Field is Interfaces.Bit_Types.UInt5;

   --  RCC internal clock sources calibration register 2
   type RCC_ICSCR2_Register is record
      --  MSI clock trimming for ranges 12 to 15 These bits provide an
      --  additional user-programmable trimming value that is added to the
      --  factory-programmed calibration trim value MSIRC3[4:0] bits. It can be
      --  programmed to adjust to voltage and temperature variations that
      --  influence the frequency of the MSI.
      MSITRIM3       : RCC_ICSCR2_MSITRIM3_Field := 16#10#;
      --  MSI clock trimming for ranges 8 to 11 These bits provide an
      --  additional user-programmable trimming value that is added to the
      --  factory-programmed calibration trim value MSIRC2[4:0] bits. It can be
      --  programmed to adjust to voltage and temperature variations that
      --  influence the frequency of the MSI.
      MSITRIM2       : RCC_ICSCR2_MSITRIM2_Field := 16#10#;
      --  MSI clock trimming for ranges 4 to 7 These bits provide an additional
      --  user-programmable trimming value that is added to the
      --  factory-programmed calibration trim value MSIRC1[4:0] bits. It can be
      --  programmed to adjust to voltage and temperature variations that
      --  influence the frequency of the MSI.
      MSITRIM1       : RCC_ICSCR2_MSITRIM1_Field := 16#10#;
      --  MSI clock trimming for ranges 0 to 3 These bits provide an additional
      --  user-programmable trimming value that is added to the
      --  factory-programmed calibration trim value MSIRC0[4:0] bits. It can be
      --  programmed to adjust to voltage and temperature variations that
      --  influence the frequency of the MSI.
      MSITRIM0       : RCC_ICSCR2_MSITRIM0_Field := 16#10#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ICSCR2_Register use record
      MSITRIM3       at 0 range 0 .. 4;
      MSITRIM2       at 0 range 5 .. 9;
      MSITRIM1       at 0 range 10 .. 14;
      MSITRIM0       at 0 range 15 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype RCC_ICSCR3_HSICAL_Field is Interfaces.Bit_Types.UInt12;
   subtype RCC_ICSCR3_HSITRIM_Field is Interfaces.Bit_Types.UInt5;

   --  RCC internal clock sources calibration register 3
   type RCC_ICSCR3_Register is record
      --  Read-only. HSI clock calibration These bits are initialized at
      --  startup with the factory-programmed HSI calibration trim value. When
      --  HSITRIM is written, HSICAL is updated with the sum of HSITRIM and the
      --  factory trim value.
      HSICAL         : RCC_ICSCR3_HSICAL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  HSI clock trimming These bits provide an additional user-programmable
      --  trimming value that is added to the HSICAL[11:0] bits. It can be
      --  programmed to adjust to voltage and temperature variations that
      --  influence the frequency of the HSI.
      HSITRIM        : RCC_ICSCR3_HSITRIM_Field := 16#10#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ICSCR3_Register use record
      HSICAL         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HSITRIM        at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_CRRCR_HSI48CAL_Field is Interfaces.Bit_Types.UInt9;

   --  RCC clock recovery RC register
   type RCC_CRRCR_Register is record
      --  Read-only. HSI48 clock calibration These bits are initialized at
      --  startup with the factory-programmed HSI48 calibration trim value.
      HSI48CAL      : RCC_CRRCR_HSI48CAL_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CRRCR_Register use record
      HSI48CAL      at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RCC_CFGR1_SW_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CFGR1_SWS_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CFGR1_MCOSEL_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CFGR1_MCOPRE_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration register 1
   type RCC_CFGR1_Register is record
      --  system clock switch Set and cleared by software to select system
      --  clock source (SYSCLK). Configured by hardware to force MSIS
      --  oscillator selection when exiting Standby or Shutdown mode.
      --  Configured by hardware to force MSIS or HSI16 oscillator selection
      --  when exiting Stop mode or in case of HSE oscillator failure,
      --  depending on STOPWUCK value.
      SW             : RCC_CFGR1_SW_Field := 16#0#;
      --  Read-only. system clock switch status Set and cleared by hardware to
      --  indicate which clock source is used as system clock.
      SWS            : RCC_CFGR1_SWS_Field := 16#0#;
      --  wakeup from Stop and CSS backup clock selection Set and cleared by
      --  software to select the system clock used when exiting Stop mode. The
      --  selected clock is also used as emergency clock for the clock security
      --  system on HSE. Warning: STOPWUCK must not be modified when the CSS is
      --  enabled by HSECSSON bit in RCC_CR and the system clock is HSE (SWS =
      --  10) or a switch on HSE is requested (SW = 10).
      STOPWUCK       : Boolean := False;
      --  wakeup from Stop kernel clock automatic enable selection Set and
      --  cleared by software to enable automatically another oscillator when
      --  exiting Stop mode. This oscillator can be used as independent kernel
      --  clock by peripherals.
      STOPKERWUCK    : Boolean := False;
      --  unspecified
      Reserved_6_23  : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  microcontroller clock output Set and cleared by software. Others:
      --  reserved Note: This clock output may have some truncated cycles at
      --  startup or during MCO clock source switching.
      MCOSEL         : RCC_CFGR1_MCOSEL_Field := 16#0#;
      --  microcontroller clock output prescaler Set and cleared by software.
      --  It is highly recommended to change this prescaler before MCO output
      --  is enabled. Others: not allowed
      MCOPRE         : RCC_CFGR1_MCOPRE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR1_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      STOPWUCK       at 0 range 4 .. 4;
      STOPKERWUCK    at 0 range 5 .. 5;
      Reserved_6_23  at 0 range 6 .. 23;
      MCOSEL         at 0 range 24 .. 27;
      MCOPRE         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_CFGR2_HPRE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CFGR2_PPRE1_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR2_PPRE2_Field is Interfaces.Bit_Types.UInt3;

   --  RCC_CFGR2_AHB2DIS array
   type RCC_CFGR2_AHB2DIS_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RCC_CFGR2_AHB2DIS
   type RCC_CFGR2_AHB2DIS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AHB2DIS as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  AHB2DIS as an array
            Arr : RCC_CFGR2_AHB2DIS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RCC_CFGR2_AHB2DIS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RCC clock configuration register 2
   type RCC_CFGR2_Register is record
      --  AHB prescaler Set and cleared by software to control the division
      --  factor of the AHB clock (HCLK). Depending on the device voltage
      --  range, the software must set these bits correctly to ensure that the
      --  system frequency does not exceed the maximum allowed frequency (for
      --  more details, refer to ). After a write operation to these bits and
      --  before decreasing the voltage range, this register must be read to be
      --  sure that the new value is taken into account. 0xxx: SYSCLK not
      --  divided
      HPRE           : RCC_CFGR2_HPRE_Field := 16#0#;
      --  APB1 prescaler Set and cleared by software to control the division
      --  factor of the APB1 clock (PCLK1). 0xx: HCLK not divided
      PPRE1          : RCC_CFGR2_PPRE1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  APB2 prescaler Set and cleared by software to control the division
      --  factor of the APB2 clock (PCLK2). 0xx: HCLK not divided
      PPRE2          : RCC_CFGR2_PPRE2_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  AHB1 clock disable This bit can be set in order to further reduce
      --  power consumption, when none of the AHB1 peripherals (except those
      --  listed hereafter) are used and when their clocks are disabled in
      --  RCC_AHB1ENR. When this bit is set, all the AHB1 peripherals clocks
      --  are off, except for FLASH, BKPSRAM, ICACHE, DCACHE1 and SRAM1.
      AHB1DIS        : Boolean := False;
      --  AHB2_1 clock disable This bit can be set in order to further reduce
      --  power consumption, when none of the AHB2 peripherals from
      --  RCC_AHB2ENR1 (except SRAM2 and SRAM3) are used and when their clocks
      --  are disabled in RCC_AHB2ENR1. When this bit is set, all the AHB2
      --  peripherals clocks from RCC_AHB2ENR1 are off, except for SRAM2 and
      --  SRAM3.
      AHB2DIS        : RCC_CFGR2_AHB2DIS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  APB1 clock disable This bit can be set in order to further reduce
      --  power consumption, when none of the APB1 peripherals (except IWDG)
      --  are used and when their clocks are disabled in RCC_APB1ENR. When this
      --  bit is set, all the APB1 peripherals clocks are off, except for IWDG.
      APB1DIS        : Boolean := False;
      --  APB2 clock disable This bit can be set in order to further reduce
      --  power consumption, when none of the APB2 peripherals are used and
      --  when their clocks are disabled in RCC_APB2ENR. When this bit is set,
      --  all the APB2 peripherals clocks are off.
      APB2DIS        : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR2_Register use record
      HPRE           at 0 range 0 .. 3;
      PPRE1          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PPRE2          at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      AHB1DIS        at 0 range 16 .. 16;
      AHB2DIS        at 0 range 17 .. 18;
      APB1DIS        at 0 range 19 .. 19;
      APB2DIS        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_CFGR3_PPRE3_Field is Interfaces.Bit_Types.UInt3;

   --  RCC clock configuration register 3
   type RCC_CFGR3_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  APB3 prescaler Set and cleared by software to control the division
      --  factor of the APB3 clock (PCLK3). 0xx: HCLK not divided
      PPRE3          : RCC_CFGR3_PPRE3_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  AHB3 clock disable This bit can be set in order to further reduce
      --  power consumption, when none of the AHB3 peripherals (except SRAM4)
      --  are used and when their clocks are disabled in RCC_AHB3ENR. When this
      --  bit is set, all the AHB3 peripherals clocks are off, except for
      --  SRAM4.
      AHB3DIS        : Boolean := False;
      --  APB3 clock disable This bit can be set in order to further reduce
      --  power consumption, when none of the APB3 peripherals from RCC_APB3ENR
      --  are used and when their clocks are disabled in RCC_APB3ENR. When this
      --  bit is set, all the APB3 peripherals clocks are off.
      APB3DIS        : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR3_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PPRE3          at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      AHB3DIS        at 0 range 16 .. 16;
      APB3DIS        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RCC_PLL1CFGR_PLL1SRC_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_PLL1CFGR_PLL1RGE_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_PLL1CFGR_PLL1M_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_PLL1CFGR_PLL1MBOOST_Field is Interfaces.Bit_Types.UInt4;

   --  RCC PLL1 configuration register
   type RCC_PLL1CFGR_Register is record
      --  PLL1 entry clock source Set and cleared by software to select PLL1
      --  clock source. These bits can be written only when the PLL1 is
      --  disabled. In order to save power, when no PLL1 is used, the value of
      --  PLL1SRC must be 0.
      PLL1SRC        : RCC_PLL1CFGR_PLL1SRC_Field := 16#0#;
      --  PLL1 input frequency range Set and reset by software to select the
      --  proper reference frequency range used for PLL1. This bit must be
      --  written before enabling the PLL1. 00-01-10: PLL1 input (ref1_ck)
      --  clock range frequency between 4 and 8 MHz
      PLL1RGE        : RCC_PLL1CFGR_PLL1RGE_Field := 16#0#;
      --  PLL1 fractional latch enable Set and reset by software to latch the
      --  content of PLL1FRACN into the Î£Î modulator. In order to latch
      --  the PLL1FRACN value into the Î£Î modulator, PLL1FRACEN must be
      --  set to 0, then set to 1: the transition 0 to 1 transfers the
      --  content of PLL1FRACN into the modulator (see for details).
      PLL1FRACEN     : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Prescaler for PLL1 Set and cleared by software to configure the
      --  prescaler of the PLL1. The VCO1 input frequency is PLL1 input clock
      --  frequency/PLL1M. This bit can be written only when the PLL1 is
      --  disabled (PLL1ON = 0 and PLL1RDY = 0). ...
      PLL1M          : RCC_PLL1CFGR_PLL1M_Field := 16#0#;
      --  Prescaler for EPOD booster input clock Set and cleared by software to
      --  configure the prescaler of the PLL1, used for the EPOD booster. The
      --  EPOD booster input frequency is PLL1 input clock
      --  frequency/PLL1MBOOST. This bit can be written only when the PLL1 is
      --  disabled (PLL1ON = 0 and PLL1RDY = 0) and EPOD Boost mode is disabled
      --  (see ). others: reserved
      PLL1MBOOST     : RCC_PLL1CFGR_PLL1MBOOST_Field := 16#0#;
      --  PLL1 DIVP divider output enable Set and reset by software to enable
      --  the pll1_p_ck output of the PLL1. To save power, PLL1PEN and PLL1P
      --  bits must be set to 0 when the pll1_p_ck is not used. This bit can be
      --  written only when the PLL1 is disabled (PLL1ON = 0 and PLL1RDY = 0).
      PLL1PEN        : Boolean := False;
      --  PLL1 DIVQ divider output enable Set and reset by software to enable
      --  the pll1_q_ck output of the PLL1. To save power, PLL1QEN and PLL1Q
      --  bits must be set to 0 when the pll1_q_ck is not used. This bit can be
      --  written only when the PLL1 is disabled (PLL1ON = 0 and PLL1RDY = 0).
      PLL1QEN        : Boolean := False;
      --  PLL1 DIVR divider output enable Set and reset by software to enable
      --  the pll1_r_ck output of the PLL1. To save power, PLL1RENPLL2REN and
      --  PLL1R bits must be set to 0 when the pll1_r_ck is not used. This bit
      --  can be written only when the PLL1 is disabled (PLL1ON = 0 and PLL1RDY
      --  = 0).
      PLL1REN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL1CFGR_Register use record
      PLL1SRC        at 0 range 0 .. 1;
      PLL1RGE        at 0 range 2 .. 3;
      PLL1FRACEN     at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL1M          at 0 range 8 .. 11;
      PLL1MBOOST     at 0 range 12 .. 15;
      PLL1PEN        at 0 range 16 .. 16;
      PLL1QEN        at 0 range 17 .. 17;
      PLL1REN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype RCC_PLL2CFGR_PLL2SRC_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_PLL2CFGR_PLL2RGE_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_PLL2CFGR_PLL2M_Field is Interfaces.Bit_Types.UInt4;

   --  RCC PLL2 configuration register
   type RCC_PLL2CFGR_Register is record
      --  PLL2 entry clock source Set and cleared by software to select PLL2
      --  clock source. These bits can be written only when the PLL2 is
      --  disabled. In order to save power, when no PLL2 is used, the value of
      --  PLL2SRC must be 0.
      PLL2SRC        : RCC_PLL2CFGR_PLL2SRC_Field := 16#0#;
      --  PLL2 input frequency range Set and reset by software to select the
      --  proper reference frequency range used for PLL2. This bit must be
      --  written before enabling the PLL2. 00-01-10: PLL2 input (ref2_ck)
      --  clock range frequency between 4 and 8 MHz
      PLL2RGE        : RCC_PLL2CFGR_PLL2RGE_Field := 16#0#;
      --  PLL2 fractional latch enable Set and reset by software to latch the
      --  content of PLL2FRACN into the Î£Î modulator. In order to latch
      --  the PLL2FRACN value into the Î£Î modulator, PLL2FRACEN must be
      --  set to 0, then set to 1: the transition 0 to 1 transfers the
      --  content of PLL2FRACN into the modulator (see for details).
      PLL2FRACEN     : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Prescaler for PLL2 Set and cleared by software to configure the
      --  prescaler of the PLL2. The VCO2 input frequency is PLL2 input clock
      --  frequency/PLL2M. This bit can be written only when the PLL2 is
      --  disabled (PLL2ON = 0 and PLL2RDY = 0). ...
      PLL2M          : RCC_PLL2CFGR_PLL2M_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL2 DIVP divider output enable Set and reset by software to enable
      --  the pll2_p_ck output of the PLL2. To save power, PLL2PEN and PLL2P
      --  bits must be set to 0 when the pll2_p_ck is not used. This bit can be
      --  written only when the PLL2 is disabled (PLL2ON = 0 and PLL2RDY = 0).
      PLL2PEN        : Boolean := False;
      --  PLL2 DIVQ divider output enable Set and reset by software to enable
      --  the pll2_q_ck output of the PLL2. To save power, PLL2QEN and PLL2Q
      --  bits must be set to 0 when the pll2_q_ck is not used. This bit can be
      --  written only when the PLL2 is disabled (PLL2ON = 0 and PLL2RDY = 0.
      PLL2QEN        : Boolean := False;
      --  PLL2 DIVR divider output enable Set and reset by software to enable
      --  the pll2_r_ck output of the PLL2. To save power, PLL2REN and PLL2R
      --  bits must be set to 0 when the pll2_r_ck is not used. This bit can be
      --  written only when the PLL2 is disabled (PLL2ON = 0 and PLL2RDY = 0).
      PLL2REN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR_Register use record
      PLL2SRC        at 0 range 0 .. 1;
      PLL2RGE        at 0 range 2 .. 3;
      PLL2FRACEN     at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL2M          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PLL2PEN        at 0 range 16 .. 16;
      PLL2QEN        at 0 range 17 .. 17;
      PLL2REN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype RCC_PLL3CFGR_PLL3SRC_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_PLL3CFGR_PLL3RGE_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_PLL3CFGR_PLL3M_Field is Interfaces.Bit_Types.UInt4;

   --  RCC PLL3 configuration register
   type RCC_PLL3CFGR_Register is record
      --  PLL3 entry clock source Set and cleared by software to select PLL3
      --  clock source. These bits can be written only when the PLL3 is
      --  disabled. In order to save power, when no PLL3 is used, the value of
      --  PLL3SRC must be 00.
      PLL3SRC        : RCC_PLL3CFGR_PLL3SRC_Field := 16#0#;
      --  PLL3 input frequency range Set and reset by software to select the
      --  proper reference frequency range used for PLL3. This bit must be
      --  written before enabling the PLL3. 00-01-10: PLL3 input (ref3_ck)
      --  clock range frequency between 4 and 8 MHz
      PLL3RGE        : RCC_PLL3CFGR_PLL3RGE_Field := 16#0#;
      --  PLL3 fractional latch enable Set and reset by software to latch the
      --  content of PLL3FRACN into the Î£Î modulator. In order to latch
      --  the PLL3FRACN value into the Î£Î modulator, PLL3FRACEN must be
      --  set to 0, then set to 1: the transition 0 to 1 transfers the
      --  content of PLL3FRACN into the modulator (see for details).
      PLL3FRACEN     : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Prescaler for PLL3 Set and cleared by software to configure the
      --  prescaler of the PLL3. The VCO3 input frequency is PLL3 input clock
      --  frequency/PLL3M. This bit can be written only when the PLL3 is
      --  disabled (PLL3ON = 0 and PLL3RDY = 0). ...
      PLL3M          : RCC_PLL3CFGR_PLL3M_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL3 DIVP divider output enable Set and reset by software to enable
      --  the pll3_p_ck output of the PLL3. To save power, PLL3PEN and PLL3P
      --  bits must be set to 0 when the pll3_p_ck is not used. This bit can be
      --  written only when the PLL3 is disabled (PLL3ON = 0 and PLL3RDY = 0).
      PLL3PEN        : Boolean := False;
      --  PLL3 DIVQ divider output enable Set and reset by software to enable
      --  the pll3_q_ck output of the PLL3. To save power, PLL3QEN and PLL3Q
      --  bits must be set to 0 when the pll3_q_ck is not used. This bit can be
      --  written only when the PLL3 is disabled (PLL3ON = 0 and PLL3RDY = 0).
      PLL3QEN        : Boolean := False;
      --  PLL3 DIVR divider output enable Set and reset by software to enable
      --  the pll3_r_ck output of the PLL3. To save power, PLL3REN and PLL3R
      --  bits must be set to 0 when the pll3_r_ck is not used. This bit can be
      --  written only when the PLL3 is disabled (PLL3ON = 0 and PLL3RDY = 0).
      PLL3REN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR_Register use record
      PLL3SRC        at 0 range 0 .. 1;
      PLL3RGE        at 0 range 2 .. 3;
      PLL3FRACEN     at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      PLL3M          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      PLL3PEN        at 0 range 16 .. 16;
      PLL3QEN        at 0 range 17 .. 17;
      PLL3REN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype RCC_PLL1DIVR_PLL1N_Field is Interfaces.Bit_Types.UInt9;
   subtype RCC_PLL1DIVR_PLL1P_Field is Interfaces.Bit_Types.UInt7;
   subtype RCC_PLL1DIVR_PLL1Q_Field is Interfaces.Bit_Types.UInt7;
   subtype RCC_PLL1DIVR_PLL1R_Field is Interfaces.Bit_Types.UInt7;

   --  RCC PLL1 dividers register
   type RCC_PLL1DIVR_Register is record
      --  Multiplication factor for PLL1 VCO Set and reset by software to
      --  control the multiplication factor of the VCO. These bits can be
      --  written only when the PLL is disabled (PLL1ON = 0 and PLL1RDY = 0).
      --  ... ... Others: reserved VCO output frequency = Fref1_ck x PLL1N,
      --  when fractional value 0 has been loaded into PLL1FRACN, with: PLL1N
      --  between 4 and 512 input frequency Fref1_ck between 4 and 16 MHz
      PLL1N          : RCC_PLL1DIVR_PLL1N_Field := 16#80#;
      --  PLL1 DIVP division factor Set and reset by software to control the
      --  frequency of the pll1_p_ck clock. These bits can be written only when
      --  the PLL1 is disabled (PLL1ON = 0 and PLL1RDY = 0). Note that odd
      --  division factors are not allowed. ...
      PLL1P          : RCC_PLL1DIVR_PLL1P_Field := 16#1#;
      --  PLL1 DIVQ division factor Set and reset by software to control the
      --  frequency of the pll1_q_ck clock. These bits can be written only when
      --  the PLL1 is disabled (PLL1ON = 0 and PLL1RDY = 0). ...
      PLL1Q          : RCC_PLL1DIVR_PLL1Q_Field := 16#1#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLL1 DIVR division factor Set and reset by software to control the
      --  frequency of the pll1_r_ck clock. These bits can be written only when
      --  the PLL1 is disabled (PLL1ON = 0 and PLL1RDY = 0). ...
      PLL1R          : RCC_PLL1DIVR_PLL1R_Field := 16#1#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL1DIVR_Register use record
      PLL1N          at 0 range 0 .. 8;
      PLL1P          at 0 range 9 .. 15;
      PLL1Q          at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PLL1R          at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL1FRACR_PLL1FRACN_Field is Interfaces.Bit_Types.UInt13;

   --  RCC PLL1 fractional divider register
   type RCC_PLL1FRACR_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Fractional part of the multiplication factor for PLL1 VCO Set and
      --  reset by software to control the fractional part of the
      --  multiplication factor of the VCO. These bits can be written at any
      --  time, allowing dynamic fine-tuning of the PLL1 VCO. VCO output
      --  frequency = Fref1_ck x (PLL1N + (PLL1FRACN / 213)), with: PLL1N must
      --  be between 4 and 512. PLL1FRACN can be between 0 and 213- 1. The
      --  input frequency Fref1_ck must be between 4 and 16 MHz. To change the
      --  FRACN value on-the-fly even if the PLL is enabled, the application
      --  must proceed as follows: Set the bit PLL1FRACEN to 0. Write the new
      --  fractional value into PLL1FRACN. Set the bit PLL1FRACEN to 1.
      PLL1FRACN      : RCC_PLL1FRACR_PLL1FRACN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL1FRACR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PLL1FRACN      at 0 range 3 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RCC_PLL2DIVR_PLL2N_Field is Interfaces.Bit_Types.UInt9;
   subtype RCC_PLL2DIVR_PLL2P_Field is Interfaces.Bit_Types.UInt7;
   subtype RCC_PLL2DIVR_PLL2Q_Field is Interfaces.Bit_Types.UInt7;
   subtype RCC_PLL2DIVR_PLL2R_Field is Interfaces.Bit_Types.UInt7;

   --  RCC PLL2 dividers configuration register
   type RCC_PLL2DIVR_Register is record
      --  Multiplication factor for PLL2 VCO Set and reset by software to
      --  control the multiplication factor of the VCO. These bits can be
      --  written only when the PLL is disabled (PLL2ON = 0 and PLL2RDY = 0).
      --  ... ... Others: reserved VCO output frequency = Fref2_ck x PLL2N,
      --  when fractional value 0 has been loaded into PLL2FRACN, with: PLL2N
      --  between 4 and 512 input frequency Fref2_ck between 1MHz and 16MHz
      PLL2N          : RCC_PLL2DIVR_PLL2N_Field := 16#80#;
      --  PLL2 DIVP division factor Set and reset by software to control the
      --  frequency of the pll2_p_ck clock. These bits can be written only when
      --  the PLL2 is disabled (PLL2ON = 0 and PLL2RDY = 0). ...
      PLL2P          : RCC_PLL2DIVR_PLL2P_Field := 16#1#;
      --  PLL2 DIVQ division factor Set and reset by software to control the
      --  frequency of the pll2_q_ck clock. These bits can be written only when
      --  the PLL2 is disabled (PLL2ON = 0 and PLL2RDY = 0). ...
      PLL2Q          : RCC_PLL2DIVR_PLL2Q_Field := 16#1#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLL2 DIVR division factor Set and reset by software to control the
      --  frequency of the pll2_r_ck clock. These bits can be written only when
      --  the PLL2 is disabled (PLL2ON = 0 and PLL2RDY = 0). ...
      PLL2R          : RCC_PLL2DIVR_PLL2R_Field := 16#1#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2DIVR_Register use record
      PLL2N          at 0 range 0 .. 8;
      PLL2P          at 0 range 9 .. 15;
      PLL2Q          at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PLL2R          at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL2FRACR_PLL2FRACN_Field is Interfaces.Bit_Types.UInt13;

   --  RCC PLL2 fractional divider register
   type RCC_PLL2FRACR_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Fractional part of the multiplication factor for PLL2 VCO Set and
      --  reset by software to control the fractional part of the
      --  multiplication factor of the VCO. These bits can be written at any
      --  time, allowing dynamic fine-tuning of the PLL2 VCO. VCO output
      --  frequency = Fref2_ck x (PLL2N + (PLL2FRACN / 213)), with PLL2N must
      --  be between 4 and 512. PLL2FRACN can be between 0 and 213 - 1. The
      --  input frequency Fref2_ck must be between 4 and 16 MHz. In order to
      --  change the FRACN value on-the-fly even if the PLL is enabled, the
      --  application must proceed as follows: Set the bit PLL2FRACEN to 0.
      --  Write the new fractional value into PLL2FRACN. Set the bit PLL2FRACEN
      --  to 1.
      PLL2FRACN      : RCC_PLL2FRACR_PLL2FRACN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2FRACR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PLL2FRACN      at 0 range 3 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RCC_PLL3DIVR_PLL3N_Field is Interfaces.Bit_Types.UInt9;
   subtype RCC_PLL3DIVR_PLL3P_Field is Interfaces.Bit_Types.UInt7;
   subtype RCC_PLL3DIVR_PLL3Q_Field is Interfaces.Bit_Types.UInt7;
   subtype RCC_PLL3DIVR_PLL3R_Field is Interfaces.Bit_Types.UInt7;

   --  RCC PLL3 dividers configuration register
   type RCC_PLL3DIVR_Register is record
      --  Multiplication factor for PLL3 VCO Set and reset by software to
      --  control the multiplication factor of the VCO. These bits can be
      --  written only when the PLL is disabled (PLL3ON = 0 and PLL3RDY = 0).
      --  ... ... Others: reserved VCO output frequency = Fref3_ck x PLL3N,
      --  when fractional value 0 has been loaded into PLL3FRACN, with: PLL3N
      --  between 4 and 512 input frequency Fref3_ck between 4 and 16MHz
      PLL3N          : RCC_PLL3DIVR_PLL3N_Field := 16#80#;
      --  PLL3 DIVP division factor Set and reset by software to control the
      --  frequency of the pll3_p_ck clock. These bits can be written only when
      --  the PLL3 is disabled (PLL3ON = 0 and PLL3RDY = 0). ...
      PLL3P          : RCC_PLL3DIVR_PLL3P_Field := 16#1#;
      --  PLL3 DIVQ division factor Set and reset by software to control the
      --  frequency of the pll3_q_ck clock. These bits can be written only when
      --  the PLL3 is disabled (PLL3ON = 0 and PLL3RDY = 0). ...
      PLL3Q          : RCC_PLL3DIVR_PLL3Q_Field := 16#1#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLL3 DIVR division factor Set and reset by software to control the
      --  frequency of the pll3_r_ck clock. These bits can be written only when
      --  the PLL3 is disabled (PLL3ON = 0 and PLL3RDY = 0). ...
      PLL3R          : RCC_PLL3DIVR_PLL3R_Field := 16#1#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3DIVR_Register use record
      PLL3N          at 0 range 0 .. 8;
      PLL3P          at 0 range 9 .. 15;
      PLL3Q          at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PLL3R          at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_PLL3FRACR_PLL3FRACN_Field is Interfaces.Bit_Types.UInt13;

   --  RCC PLL3 fractional divider register
   type RCC_PLL3FRACR_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Fractional part of the multiplication factor for PLL3 VCO Set and
      --  reset by software to control the fractional part of the
      --  multiplication factor of the VCO. These bits can be written at any
      --  time, allowing dynamic fine-tuning of the PLL3 VCO. VCO output
      --  frequency = Fref3_ck x (PLL3N + (PLL3FRACN / 213)), with: PLL3N must
      --  be between 4 and 512. PLL3FRACN can be between 0 and 213 - 1. The
      --  input frequency Fref3_ck must be between 4 and 16 MHz. In order to
      --  change the FRACN value on-the-fly even if the PLL is enabled, the
      --  application must proceed as follows: Set the bit PLL3FRACEN to 0.
      --  Write the new fractional value into PLL3FRACN. Set the bit PLL3FRACEN
      --  to 1.
      PLL3FRACN      : RCC_PLL3FRACR_PLL3FRACN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3FRACR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PLL3FRACN      at 0 range 3 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RCC clock interrupt enable register
   type RCC_CIER_Register is record
      --  LSI ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the LSI oscillator stabilization.
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the LSE oscillator stabilization.
      LSERDYIE       : Boolean := False;
      --  MSIS ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the MSIS oscillator stabilization.
      MSISRDYIE      : Boolean := False;
      --  HSI16 ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the HSI16 oscillator
      --  stabilization.
      HSIRDYIE       : Boolean := False;
      --  HSE ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the HSE oscillator stabilization.
      HSERDYIE       : Boolean := False;
      --  HSI48 ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the HSI48 oscillator
      --  stabilization.
      HSI48RDYIE     : Boolean := False;
      --  PLL ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by PLL1 lock.
      PLL1RDYIE      : Boolean := False;
      --  PLL2 ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by PLL2 lock.
      PLL2RDYIE      : Boolean := False;
      --  PLL3 ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by PLL3 lock.
      PLL3RDYIE      : Boolean := False;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  MSIK ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the MSIK oscillator stabilization.
      MSIKRDYIE      : Boolean := False;
      --  SHSI ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the SHSI oscillator stabilization.
      SHSIRDYIE      : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIER_Register use record
      LSIRDYIE       at 0 range 0 .. 0;
      LSERDYIE       at 0 range 1 .. 1;
      MSISRDYIE      at 0 range 2 .. 2;
      HSIRDYIE       at 0 range 3 .. 3;
      HSERDYIE       at 0 range 4 .. 4;
      HSI48RDYIE     at 0 range 5 .. 5;
      PLL1RDYIE      at 0 range 6 .. 6;
      PLL2RDYIE      at 0 range 7 .. 7;
      PLL3RDYIE      at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      MSIKRDYIE      at 0 range 11 .. 11;
      SHSIRDYIE      at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC clock interrupt flag register
   type RCC_CIFR_Register is record
      --  Read-only. LSI ready interrupt flag Set by hardware when the LSI
      --  clock becomes stable and LSIRDYIE is set. Cleared by software setting
      --  the LSIRDYC bit.
      LSIRDYF        : Boolean;
      --  Read-only. LSE ready interrupt flag Set by hardware when the LSE
      --  clock becomes stable and LSERDYIE is set. Cleared by software setting
      --  the LSERDYC bit.
      LSERDYF        : Boolean;
      --  Read-only. MSIS ready interrupt flag Set by hardware when the MSIS
      --  clock becomes stable and MSISRDYIE is set. Cleared by software
      --  setting the MSISRDYC bit.
      MSISRDYF       : Boolean;
      --  Read-only. HSI16 ready interrupt flag Set by hardware when the HSI16
      --  clock becomes stable and HSIRDYIE is set in a response to setting the
      --  HSION (see RCC_CR). When HSION is not set but the HSI16 oscillator is
      --  enabled by the peripheral through a clock request, this bit is not
      --  set and no interrupt is generated. Cleared by software setting the
      --  HSIRDYC bit.
      HSIRDYF        : Boolean;
      --  Read-only. HSE ready interrupt flag Set by hardware when the HSE
      --  clock becomes stable and HSERDYIE is set. Cleared by software setting
      --  the HSERDYC bit.
      HSERDYF        : Boolean;
      --  Read-only. HSI48 ready interrupt flag Set by hardware when the HSI48
      --  clock becomes stable and HSI48RDYIE is set. Cleared by software
      --  setting the HSI48RDYC bit.
      HSI48RDYF      : Boolean;
      --  Read-only. PLL1 ready interrupt flag Set by hardware when the PLL1
      --  locks and PLL1RDYIE is set. Cleared by software setting the PLL1RDYC
      --  bit.
      PLL1RDYF       : Boolean;
      --  Read-only. PLL2 ready interrupt flag Set by hardware when the PLL2
      --  locks and PLL2RDYIE is set. Cleared by software setting the PLL2RDYC
      --  bit.
      PLL2RDYF       : Boolean;
      --  Read-only. PLL3 ready interrupt flag Set by hardware when the PLL3
      --  locks and PLL3RDYIE is set. Cleared by software setting the PLL3RDYC
      --  bit.
      PLL3RDYF       : Boolean;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit;
      --  Read-only. Clock security system interrupt flag Set by hardware when
      --  a failure is detected in the HSE oscillator. Cleared by software
      --  setting the CSSC bit.
      CSSF           : Boolean;
      --  Read-only. MSIK ready interrupt flag Set by hardware when the MSIK
      --  clock becomes stable and MSIKRDYIE is set. Cleared by software
      --  setting the MSIKRDYC bit.
      MSIKRDYF       : Boolean;
      --  Read-only. SHSI ready interrupt flag Set by hardware when the SHSI
      --  clock becomes stable and SHSIRDYIE is set. Cleared by software
      --  setting the SHSIRDYC bit.
      SHSIRDYF       : Boolean;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIFR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      MSISRDYF       at 0 range 2 .. 2;
      HSIRDYF        at 0 range 3 .. 3;
      HSERDYF        at 0 range 4 .. 4;
      HSI48RDYF      at 0 range 5 .. 5;
      PLL1RDYF       at 0 range 6 .. 6;
      PLL2RDYF       at 0 range 7 .. 7;
      PLL3RDYF       at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CSSF           at 0 range 10 .. 10;
      MSIKRDYF       at 0 range 11 .. 11;
      SHSIRDYF       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC clock interrupt clear register
   type RCC_CICR_Register is record
      --  Write-only. LSI ready interrupt clear Writing this bit to 1 clears
      --  the LSIRDYF flag. Writing 0 has no effect.
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear Writing this bit to 1 clears
      --  the LSERDYF flag. Writing 0 has no effect.
      LSERDYC        : Boolean := False;
      --  Write-only. MSIS ready interrupt clear Writing this bit to 1 clears
      --  the MSISRDYF flag. Writing 0 has no effect.
      MSISRDYC       : Boolean := False;
      --  Write-only. HSI16 ready interrupt clear Writing this bit to 1 clears
      --  the HSIRDYF flag. Writing 0 has no effect.
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear Writing this bit to 1 clears
      --  the HSERDYF flag. Writing 0 has no effect.
      HSERDYC        : Boolean := False;
      --  Write-only. HSI48 ready interrupt clear Writing this bit to 1 clears
      --  the HSI48RDYF flag. Writing 0 has no effect.
      HSI48RDYC      : Boolean := False;
      --  Write-only. PLL1 ready interrupt clear Writing this bit to 1 clears
      --  the PLL1RDYF flag. Writing 0 has no effect.
      PLL1RDYC       : Boolean := False;
      --  Write-only. PLL2 ready interrupt clear Writing this bit to 1 clears
      --  the PLL2RDYF flag. Writing 0 has no effect.
      PLL2RDYC       : Boolean := False;
      --  Write-only. PLL3 ready interrupt clear Writing this bit to 1 clears
      --  the PLL3RDYF flag. Writing 0 has no effect.
      PLL3RDYC       : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Clock security system interrupt clear Writing this bit to
      --  1 clears the CSSF flag. Writing 0 has no effect.
      CSSC           : Boolean := False;
      --  Write-only. MSIK oscillator ready interrupt clear Writing this bit to
      --  1 clears the MSIKRDYF flag. Writing 0 has no effect.
      MSIKRDYC       : Boolean := False;
      --  Write-only. SHSI oscillator ready interrupt clear Writing this bit to
      --  1 clears the SHSIRDYF flag. Writing 0 has no effect.
      SHSIRDYC       : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CICR_Register use record
      LSIRDYC        at 0 range 0 .. 0;
      LSERDYC        at 0 range 1 .. 1;
      MSISRDYC       at 0 range 2 .. 2;
      HSIRDYC        at 0 range 3 .. 3;
      HSERDYC        at 0 range 4 .. 4;
      HSI48RDYC      at 0 range 5 .. 5;
      PLL1RDYC       at 0 range 6 .. 6;
      PLL2RDYC       at 0 range 7 .. 7;
      PLL3RDYC       at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CSSC           at 0 range 10 .. 10;
      MSIKRDYC       at 0 range 11 .. 11;
      SHSIRDYC       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC AHB1 peripheral reset register
   type RCC_AHB1RSTR_Register is record
      --  GPDMA1 reset Set and cleared by software.
      GPDMA1RST      : Boolean := False;
      --  CORDIC reset Set and cleared by software.
      CORDICRST      : Boolean := False;
      --  FMAC reset Set and cleared by software.
      FMACRST        : Boolean := False;
      --  MDF1 reset Set and cleared by software.
      MDF1RST        : Boolean := False;
      --  unspecified
      Reserved_4_11  : Interfaces.Bit_Types.Byte := 16#0#;
      --  CRC reset Set and cleared by software.
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  TSC reset Set and cleared by software.
      TSCRST         : Boolean := False;
      --  RAMCFG reset Set and cleared by software.
      RAMCFGRST      : Boolean := False;
      --  DMA2D reset Set and cleared by software.
      DMA2DRST       : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1RSTR_Register use record
      GPDMA1RST      at 0 range 0 .. 0;
      CORDICRST      at 0 range 1 .. 1;
      FMACRST        at 0 range 2 .. 2;
      MDF1RST        at 0 range 3 .. 3;
      Reserved_4_11  at 0 range 4 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSCRST         at 0 range 16 .. 16;
      RAMCFGRST      at 0 range 17 .. 17;
      DMA2DRST       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC AHB2 peripheral reset register 1
   type RCC_AHB2RSTR1_Register is record
      --  IO port A reset Set and cleared by software.
      GPIOARST       : Boolean := False;
      --  IO port B reset Set and cleared by software.
      GPIOBRST       : Boolean := False;
      --  IO port C reset Set and cleared by software.
      GPIOCRST       : Boolean := False;
      --  IO port D reset Set and cleared by software.
      GPIODRST       : Boolean := False;
      --  IO port E reset Set and cleared by software.
      GPIOERST       : Boolean := False;
      --  IO port F reset Set and cleared by software.
      GPIOFRST       : Boolean := False;
      --  IO port G reset Set and cleared by software.
      GPIOGRST       : Boolean := False;
      --  IO port H reset Set and cleared by software.
      GPIOHRST       : Boolean := False;
      --  IO port I reset Set and cleared by software.
      GPIOIRST       : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  ADC1 reset Set and cleared by software.
      ADC1RST        : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DCMI and PSSI reset Set and cleared by software.
      DCMI_PSSIRST   : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  OTG_FS reset Set and cleared by software.
      OTGRST         : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  AES hardware accelerator reset Set and cleared by software.
      AESRST         : Boolean := False;
      --  Hash reset Set and cleared by software.
      HASHRST        : Boolean := False;
      --  Random number generator reset Set and cleared by software.
      RNGRST         : Boolean := False;
      --  PKA reset Set and cleared by software.
      PKARST         : Boolean := False;
      --  SAES hardware accelerator reset Set and cleared by software.
      SAESRST        : Boolean := False;
      --  OCTOSPIM reset Set and cleared by software.
      OCTOSPIMRST    : Boolean := False;
      --  unspecified
      Reserved_22_22 : Interfaces.Bit_Types.Bit := 16#0#;
      --  OTFDEC1 reset Set and cleared by software.
      OTFDEC1RST     : Boolean := False;
      --  OTFDEC2 reset Set and cleared by software.
      OTFDEC2RST     : Boolean := False;
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SDMMC1 reset Set and cleared by software.
      SDMMC1RST      : Boolean := False;
      --  SDMMC2 reset Set and cleared by software.
      SDMMC2RST      : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2RSTR1_Register use record
      GPIOARST       at 0 range 0 .. 0;
      GPIOBRST       at 0 range 1 .. 1;
      GPIOCRST       at 0 range 2 .. 2;
      GPIODRST       at 0 range 3 .. 3;
      GPIOERST       at 0 range 4 .. 4;
      GPIOFRST       at 0 range 5 .. 5;
      GPIOGRST       at 0 range 6 .. 6;
      GPIOHRST       at 0 range 7 .. 7;
      GPIOIRST       at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ADC1RST        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DCMI_PSSIRST   at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      OTGRST         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      AESRST         at 0 range 16 .. 16;
      HASHRST        at 0 range 17 .. 17;
      RNGRST         at 0 range 18 .. 18;
      PKARST         at 0 range 19 .. 19;
      SAESRST        at 0 range 20 .. 20;
      OCTOSPIMRST    at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      OTFDEC1RST     at 0 range 23 .. 23;
      OTFDEC2RST     at 0 range 24 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      SDMMC1RST      at 0 range 27 .. 27;
      SDMMC2RST      at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  RCC AHB2 peripheral reset register 2
   type RCC_AHB2RSTR2_Register is record
      --  Flexible memory controller reset Set and cleared by software.
      FSMCRST       : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  OCTOSPI1 reset Set and cleared by software.
      OCTOSPI1RST   : Boolean := False;
      --  unspecified
      Reserved_5_7  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  OCTOSPI2 reset Set and cleared by software.
      OCTOSPI2RST   : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2RSTR2_Register use record
      FSMCRST       at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      OCTOSPI1RST   at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      OCTOSPI2RST   at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RCC AHB3 peripheral reset register
   type RCC_AHB3RSTR_Register is record
      --  LPGPIO1 reset Set and cleared by software.
      LPGPIO1RST     : Boolean := False;
      --  unspecified
      Reserved_1_4   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  ADC4 reset Set and cleared by software.
      ADC4RST        : Boolean := False;
      --  DAC1 reset Set and cleared by software.
      DAC1RST        : Boolean := False;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPDMA1 reset Set and cleared by software.
      LPDMA1RST      : Boolean := False;
      --  ADF1 reset Set and cleared by software.
      ADF1RST        : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3RSTR_Register use record
      LPGPIO1RST     at 0 range 0 .. 0;
      Reserved_1_4   at 0 range 1 .. 4;
      ADC4RST        at 0 range 5 .. 5;
      DAC1RST        at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      LPDMA1RST      at 0 range 9 .. 9;
      ADF1RST        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RCC APB1 peripheral reset register 1
   type RCC_APB1RSTR1_Register is record
      --  TIM2 reset Set and cleared by software.
      TIM2RST        : Boolean := False;
      --  TIM3 reset Set and cleared by software.
      TIM3RST        : Boolean := False;
      --  TIM4 reset Set and cleared by software.
      TIM4RST        : Boolean := False;
      --  TIM5 reset Set and cleared by software.
      TIM5RST        : Boolean := False;
      --  TIM6 reset Set and cleared by software.
      TIM6RST        : Boolean := False;
      --  TIM7 reset Set and cleared by software.
      TIM7RST        : Boolean := False;
      --  unspecified
      Reserved_6_13  : Interfaces.Bit_Types.Byte := 16#0#;
      --  SPI2 reset Set and cleared by software.
      SPI2RST        : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART2 reset Set and cleared by software.
      USART2RST      : Boolean := False;
      --  USART3 reset Set and cleared by software.
      USART3RST      : Boolean := False;
      --  UART4 reset Set and cleared by software.
      UART4RST       : Boolean := False;
      --  UART5 reset Set and cleared by software.
      UART5RST       : Boolean := False;
      --  I2C1 reset Set and cleared by software.
      I2C1RST        : Boolean := False;
      --  I2C2 reset Set and cleared by software.
      I2C2RST        : Boolean := False;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CRS reset Set and cleared by software.
      CRSRST         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1RSTR1_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      TIM5RST        at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      Reserved_6_13  at 0 range 6 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      UART4RST       at 0 range 19 .. 19;
      UART5RST       at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CRSRST         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  RCC APB1 peripheral reset register 2
   type RCC_APB1RSTR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C4 reset Set and cleared by software
      I2C4RST        : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPTIM2 reset Set and cleared by software.
      LPTIM2RST      : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  FDCAN1 reset Set and cleared by software.
      FDCAN1RST      : Boolean := False;
      --  unspecified
      Reserved_10_22 : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  UCPD1 reset Set and cleared by software.
      UCPD1RST       : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1RSTR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      I2C4RST        at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      LPTIM2RST      at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      FDCAN1RST      at 0 range 9 .. 9;
      Reserved_10_22 at 0 range 10 .. 22;
      UCPD1RST       at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RCC APB2 peripheral reset register
   type RCC_APB2RSTR_Register is record
      --  unspecified
      Reserved_0_10  : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  TIM1 reset Set and cleared by software.
      TIM1RST        : Boolean := False;
      --  SPI1 reset Set and cleared by software.
      SPI1RST        : Boolean := False;
      --  TIM8 reset Set and cleared by software.
      TIM8RST        : Boolean := False;
      --  USART1 reset Set and cleared by software.
      USART1RST      : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM15 reset Set and cleared by software.
      TIM15RST       : Boolean := False;
      --  TIM16 reset Set and cleared by software.
      TIM16RST       : Boolean := False;
      --  TIM17 reset Set and cleared by software.
      TIM17RST       : Boolean := False;
      --  unspecified
      Reserved_19_20 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SAI1 reset Set and cleared by software.
      SAI1RST        : Boolean := False;
      --  SAI2 reset Set and cleared by software.
      SAI2RST        : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2RSTR_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      TIM1RST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      TIM8RST        at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15RST       at 0 range 16 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      TIM17RST       at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      SAI1RST        at 0 range 21 .. 21;
      SAI2RST        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB3 peripheral reset register
   type RCC_APB3RSTR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SYSCFG reset Set and cleared by software.
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  SPI3 reset Set and cleared by software.
      SPI3RST        : Boolean := False;
      --  LPUART1 reset Set and cleared by software.
      LPUART1RST     : Boolean := False;
      --  I2C3 reset Set and cleared by software.
      I2C3RST        : Boolean := False;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPTIM1 reset Set and cleared by software.
      LPTIM1RST      : Boolean := False;
      --  LPTIM3 reset Set and cleared by software.
      LPTIM3RST      : Boolean := False;
      --  LPTIM4 reset Set and cleared by software.
      LPTIM4RST      : Boolean := False;
      --  OPAMP reset Set and cleared by software.
      OPAMPRST       : Boolean := False;
      --  COMP reset Set and cleared by software.
      COMPRST        : Boolean := False;
      --  unspecified
      Reserved_16_19 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  VREFBUF reset Set and cleared by software.
      VREFRST        : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3RSTR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGRST      at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      SPI3RST        at 0 range 5 .. 5;
      LPUART1RST     at 0 range 6 .. 6;
      I2C3RST        at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      LPTIM1RST      at 0 range 11 .. 11;
      LPTIM3RST      at 0 range 12 .. 12;
      LPTIM4RST      at 0 range 13 .. 13;
      OPAMPRST       at 0 range 14 .. 14;
      COMPRST        at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      VREFRST        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RCC AHB1 peripheral clock enable register
   type RCC_AHB1ENR_Register is record
      --  GPDMA1 clock enable Set and cleared by software.
      GPDMA1EN       : Boolean := False;
      --  CORDIC clock enable Set and cleared by software.
      CORDICEN       : Boolean := False;
      --  FMAC clock enable Set and reset by software.
      FMACEN         : Boolean := False;
      --  MDF1 clock enable Set and reset by software.
      MDF1EN         : Boolean := False;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  FLASH clock enable Set and cleared by software. This bit can be
      --  disabled only when the Flash memory is in power down mode.
      FLASHEN        : Boolean := True;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CRC clock enable Set and cleared by software.
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Touch sensing controller clock enable Set and cleared by software.
      TSCEN          : Boolean := False;
      --  RAMCFG clock enable Set and cleared by software.
      RAMCFGEN       : Boolean := False;
      --  DMA2D clock enable Set and cleared by software.
      DMA2DEN        : Boolean := False;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  GTZC1 clock enable Set and reset by software.
      GTZC1EN        : Boolean := False;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  BKPSRAM clock enable Set and reset by software.
      BKPSRAMEN      : Boolean := True;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DCACHE1 clock enable Set and reset by software. Note: DCACHE1 clock
      --  must be enabled when external memories are accessed through OCTOSPI1,
      --  OCTOSPI2 or FSMC, even if the DCACHE1 is bypassed.
      DCACHE1EN      : Boolean := True;
      --  SRAM1 clock enable Set and reset by software.
      SRAM1EN        : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1ENR_Register use record
      GPDMA1EN       at 0 range 0 .. 0;
      CORDICEN       at 0 range 1 .. 1;
      FMACEN         at 0 range 2 .. 2;
      MDF1EN         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FLASHEN        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSCEN          at 0 range 16 .. 16;
      RAMCFGEN       at 0 range 17 .. 17;
      DMA2DEN        at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      GTZC1EN        at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      BKPSRAMEN      at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DCACHE1EN      at 0 range 30 .. 30;
      SRAM1EN        at 0 range 31 .. 31;
   end record;

   --  RCC AHB2 peripheral clock enable register 1
   type RCC_AHB2ENR1_Register is record
      --  IO port A clock enable Set and cleared by software.
      GPIOAEN        : Boolean := False;
      --  IO port B clock enable Set and cleared by software.
      GPIOBEN        : Boolean := False;
      --  IO port C clock enable Set and cleared by software.
      GPIOCEN        : Boolean := False;
      --  IO port D clock enable Set and cleared by software.
      GPIODEN        : Boolean := False;
      --  IO port E clock enable Set and cleared by software.
      GPIOEEN        : Boolean := False;
      --  IO port F clock enable Set and cleared by software.
      GPIOFEN        : Boolean := False;
      --  IO port G clock enable Set and cleared by software.
      GPIOGEN        : Boolean := False;
      --  IO port H clock enable Set and cleared by software.
      GPIOHEN        : Boolean := False;
      --  IO port I clock enable Set and cleared by software.
      GPIOIEN        : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  ADC1 clock enable Set and cleared by software.
      ADC1EN         : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DCMI and PSSI clock enable Set and cleared by software.
      DCMI_PSSIEN    : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  OTG_FS clock enable Set and cleared by software.
      OTGEN          : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  AES clock enable Set and cleared by software.
      AESEN          : Boolean := False;
      --  HASH clock enable Set and cleared by software
      HASHEN         : Boolean := False;
      --  RNG clock enable Set and cleared by software.
      RNGEN          : Boolean := False;
      --  PKA clock enable Set and cleared by software.
      PKAEN          : Boolean := False;
      --  SAES clock enable Set and cleared by software.
      SAESEN         : Boolean := False;
      --  OCTOSPIM clock enable Set and cleared by software.
      OCTOSPIMEN     : Boolean := False;
      --  unspecified
      Reserved_22_22 : Interfaces.Bit_Types.Bit := 16#0#;
      --  OTFDEC1 clock enable Set and cleared by software.
      OTFDEC1EN      : Boolean := False;
      --  OTFDEC2 clock enable Set and cleared by software.
      OTFDEC2EN      : Boolean := False;
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SDMMC1 clock enable Set and cleared by software.
      SDMMC1EN       : Boolean := False;
      --  SDMMC2 clock enable Set and cleared by software.
      SDMMC2EN       : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SRAM2 clock enable Set and reset by software.
      SRAM2EN        : Boolean := True;
      --  SRAM3 clock enable Set and reset by software.
      SRAM3EN        : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2ENR1_Register use record
      GPIOAEN        at 0 range 0 .. 0;
      GPIOBEN        at 0 range 1 .. 1;
      GPIOCEN        at 0 range 2 .. 2;
      GPIODEN        at 0 range 3 .. 3;
      GPIOEEN        at 0 range 4 .. 4;
      GPIOFEN        at 0 range 5 .. 5;
      GPIOGEN        at 0 range 6 .. 6;
      GPIOHEN        at 0 range 7 .. 7;
      GPIOIEN        at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ADC1EN         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DCMI_PSSIEN    at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      OTGEN          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      AESEN          at 0 range 16 .. 16;
      HASHEN         at 0 range 17 .. 17;
      RNGEN          at 0 range 18 .. 18;
      PKAEN          at 0 range 19 .. 19;
      SAESEN         at 0 range 20 .. 20;
      OCTOSPIMEN     at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      OTFDEC1EN      at 0 range 23 .. 23;
      OTFDEC2EN      at 0 range 24 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      SDMMC1EN       at 0 range 27 .. 27;
      SDMMC2EN       at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SRAM2EN        at 0 range 30 .. 30;
      SRAM3EN        at 0 range 31 .. 31;
   end record;

   --  RCC AHB2 peripheral clock enable register 2
   type RCC_AHB2ENR2_Register is record
      --  FSMC clock enable Set and cleared by software.
      FSMCEN        : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  OCTOSPI1 clock enable Set and cleared by software.
      OCTOSPI1EN    : Boolean := False;
      --  unspecified
      Reserved_5_7  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  OCTOSPI2 clock enable Set and cleared by software.
      OCTOSPI2EN    : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2ENR2_Register use record
      FSMCEN        at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      OCTOSPI1EN    at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      OCTOSPI2EN    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RCC AHB3 peripheral clock enable register
   type RCC_AHB3ENR_Register is record
      --  LPGPIO1 enable Set and cleared by software.
      LPGPIO1EN      : Boolean := False;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  PWR clock enable Set and cleared by software.
      PWREN          : Boolean := False;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADC4 clock enable Set and cleared by software.
      ADC4EN         : Boolean := False;
      --  DAC1 clock enable Set and cleared by software.
      DAC1EN         : Boolean := False;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPDMA1 clock enable Set and cleared by software.
      LPDMA1EN       : Boolean := False;
      --  ADF1 clock enable Set and cleared by software.
      ADF1EN         : Boolean := False;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  GTZC2 clock enable Set and cleared by software.
      GTZC2EN        : Boolean := False;
      --  unspecified
      Reserved_13_30 : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  SRAM4 clock enable Set and reset by software.
      SRAM4EN        : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3ENR_Register use record
      LPGPIO1EN      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      PWREN          at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      ADC4EN         at 0 range 5 .. 5;
      DAC1EN         at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      LPDMA1EN       at 0 range 9 .. 9;
      ADF1EN         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      GTZC2EN        at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      SRAM4EN        at 0 range 31 .. 31;
   end record;

   --  RCC APB1 peripheral clock enable register 1
   type RCC_APB1ENR1_Register is record
      --  TIM2 clock enable Set and cleared by software.
      TIM2EN         : Boolean := False;
      --  TIM3 clock enable Set and cleared by software.
      TIM3EN         : Boolean := False;
      --  TIM4 clock enable Set and cleared by software.
      TIM4EN         : Boolean := False;
      --  TIM5 clock enable Set and cleared by software.
      TIM5EN         : Boolean := False;
      --  TIM6 clock enable Set and cleared by software.
      TIM6EN         : Boolean := False;
      --  TIM7 clock enable Set and cleared by software.
      TIM7EN         : Boolean := False;
      --  unspecified
      Reserved_6_10  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  WWDG clock enable Set by software to enable the window watchdog
      --  clock. Reset by hardware system reset. This bit can also be set by
      --  hardware if the WWDG_SW option bit is reset.
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SPI2 clock enable Set and cleared by software.
      SPI2EN         : Boolean := False;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  USART2 clock enable Set and cleared by software.
      USART2EN       : Boolean := False;
      --  USART3 clock enable Set and cleared by software.
      USART3EN       : Boolean := False;
      --  UART4 clock enable Set and cleared by software.
      UART4EN        : Boolean := False;
      --  UART5 clock enable Set and cleared by software.
      UART5EN        : Boolean := False;
      --  I2C1 clock enable Set and cleared by software.
      I2C1EN         : Boolean := False;
      --  I2C2 clock enable Set and cleared by software.
      I2C2EN         : Boolean := False;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CRS clock enable Set and cleared by software.
      CRSEN          : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1ENR1_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      UART4EN        at 0 range 19 .. 19;
      UART5EN        at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CRSEN          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  RCC APB1 peripheral clock enable register 2
   type RCC_APB1ENR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C4 clock enable Set and cleared by software
      I2C4EN         : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPTIM2 clock enable Set and cleared by software.
      LPTIM2EN       : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  FDCAN1 clock enable Set and cleared by software.
      FDCAN1EN       : Boolean := False;
      --  unspecified
      Reserved_10_22 : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  UCPD1 clock enable Set and cleared by software.
      UCPD1EN        : Boolean := False;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1ENR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      I2C4EN         at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      LPTIM2EN       at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      FDCAN1EN       at 0 range 9 .. 9;
      Reserved_10_22 at 0 range 10 .. 22;
      UCPD1EN        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RCC APB2 peripheral clock enable register
   type RCC_APB2ENR_Register is record
      --  unspecified
      Reserved_0_10  : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  TIM1 clock enable Set and cleared by software.
      TIM1EN         : Boolean := False;
      --  SPI1 clock enable Set and cleared by software.
      SPI1EN         : Boolean := False;
      --  TIM8 clock enable Set and cleared by software.
      TIM8EN         : Boolean := False;
      --  USART1clock enable Set and cleared by software.
      USART1EN       : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM15 clock enable Set and cleared by software.
      TIM15EN        : Boolean := False;
      --  TIM16 clock enable Set and cleared by software.
      TIM16EN        : Boolean := False;
      --  TIM17 clock enable Set and cleared by software.
      TIM17EN        : Boolean := False;
      --  unspecified
      Reserved_19_20 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SAI1 clock enable Set and cleared by software.
      SAI1EN         : Boolean := False;
      --  SAI2 clock enable Set and cleared by software.
      SAI2EN         : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2ENR_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      TIM8EN         at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15EN        at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      SAI1EN         at 0 range 21 .. 21;
      SAI2EN         at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB3 peripheral clock enable register
   type RCC_APB3ENR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SYSCFG clock enable Set and cleared by software.
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  SPI3 clock enable Set and cleared by software.
      SPI3EN         : Boolean := False;
      --  LPUART1 clock enable Set and cleared by software.
      LPUART1EN      : Boolean := False;
      --  I2C3 clock enable Set and cleared by software.
      I2C3EN         : Boolean := False;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPTIM1 clock enable Set and cleared by software.
      LPTIM1EN       : Boolean := False;
      --  LPTIM3 clock enable Set and cleared by software.
      LPTIM3EN       : Boolean := False;
      --  LPTIM4 clock enable Set and cleared by software.
      LPTIM4EN       : Boolean := False;
      --  OPAMP clock enable Set and cleared by software.
      OPAMPEN        : Boolean := False;
      --  COMP clock enable Set and cleared by software.
      COMPEN         : Boolean := False;
      --  unspecified
      Reserved_16_19 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  VREFBUF clock enable Set and cleared by software.
      VREFEN         : Boolean := False;
      --  RTC and TAMP APB clock enable Set and cleared by software.
      RTCAPBEN       : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3ENR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGEN       at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      SPI3EN         at 0 range 5 .. 5;
      LPUART1EN      at 0 range 6 .. 6;
      I2C3EN         at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      LPTIM1EN       at 0 range 11 .. 11;
      LPTIM3EN       at 0 range 12 .. 12;
      LPTIM4EN       at 0 range 13 .. 13;
      OPAMPEN        at 0 range 14 .. 14;
      COMPEN         at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      VREFEN         at 0 range 20 .. 20;
      RTCAPBEN       at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  RCC AHB1 peripheral clocks enable in Sleep and Stop modes register	
   type RCC_AHB1SMENR_Register is record
      --  GPDMA1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      GPDMA1SMEN     : Boolean := True;
      --  CORDIC clocks enable during Sleep and Stop modes Set and cleared by
      --  software during Sleep mode.
      CORDICSMEN     : Boolean := True;
      --  FMAC clocks enable during Sleep and Stop modes. Set and cleared by
      --  software.
      FMACSMEN       : Boolean := True;
      --  MDF1 clocks enable during Sleep and Stop modes. Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      MDF1SMEN       : Boolean := True;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  FLASH clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      FLASHSMEN      : Boolean := True;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  CRC clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      CRCSMEN        : Boolean := True;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  TSC clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TSCSMEN        : Boolean := True;
      --  RAMCFG clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      RAMCFGSMEN     : Boolean := True;
      --  DMA2D clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      DMA2DSMEN      : Boolean := True;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#1F#;
      --  GTZC1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      GTZC1SMEN      : Boolean := True;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  BKPSRAM clocks enable during Sleep and Stop modes Set and cleared by
      --  software
      BKPSRAMSMEN    : Boolean := True;
      --  ICACHE clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      ICACHESMEN     : Boolean := True;
      --  DCACHE1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      DCACHE1SMEN    : Boolean := True;
      --  SRAM1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      SRAM1SMEN      : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB1SMENR_Register use record
      GPDMA1SMEN     at 0 range 0 .. 0;
      CORDICSMEN     at 0 range 1 .. 1;
      FMACSMEN       at 0 range 2 .. 2;
      MDF1SMEN       at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FLASHSMEN      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCSMEN        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSCSMEN        at 0 range 16 .. 16;
      RAMCFGSMEN     at 0 range 17 .. 17;
      DMA2DSMEN      at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      GTZC1SMEN      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      BKPSRAMSMEN    at 0 range 28 .. 28;
      ICACHESMEN     at 0 range 29 .. 29;
      DCACHE1SMEN    at 0 range 30 .. 30;
      SRAM1SMEN      at 0 range 31 .. 31;
   end record;

   --  RCC AHB2 peripheral clocks enable in Sleep and	Stop modes register 1
   type RCC_AHB2SMENR1_Register is record
      --  IO port A clocks enable during Sleep and Stop modes Set and cleared
      --  by software.
      GPIOASMEN      : Boolean := True;
      --  IO port B clocks enable during Sleep and Stop modes Set and cleared
      --  by software.
      GPIOBSMEN      : Boolean := True;
      --  IO port C clocks enable during Sleep and Stop modes Set and cleared
      --  by software.
      GPIOCSMEN      : Boolean := True;
      --  IO port D clocks enable during Sleep and Stop modes Set and cleared
      --  by software.
      GPIODSMEN      : Boolean := True;
      --  IO port E clocks enable during Sleep and Stop modes Set and cleared
      --  by software.
      GPIOESMEN      : Boolean := True;
      --  IO port F clocks enable during Sleep and Stop modes Set and cleared
      --  by software.
      GPIOFSMEN      : Boolean := True;
      --  IO port G clocks enable during Sleep and Stop modes Set and cleared
      --  by software.
      GPIOGSMEN      : Boolean := True;
      --  IO port H clocks enable during Sleep and Stop modes Set and cleared
      --  by software.
      GPIOHSMEN      : Boolean := True;
      --  IO port I clocks enable during Sleep and Stop modes Set and cleared
      --  by software.
      GPIOISMEN      : Boolean := True;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#1#;
      --  ADC1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      ADC1SMEN       : Boolean := True;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#1#;
      --  DCMI and PSSI clocks enable during Sleep and Stop modes Set and
      --  cleared by software.
      DCMI_PSSISMEN  : Boolean := True;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#1#;
      --  OTG_FS clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      OTGSMEN        : Boolean := True;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#1#;
      --  AES clock enable during Sleep and Stop modes Set and cleared by
      --  software
      AESSMEN        : Boolean := True;
      --  HASH clock enable during Sleep and Stop modes Set and cleared by
      --  software
      HASHSMEN       : Boolean := True;
      --  Random number generator (RNG) clocks enable during Sleep and Stop
      --  modes Set and cleared by software.
      RNGSMEN        : Boolean := True;
      --  PKA clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      PKASMEN        : Boolean := True;
      --  SAES accelerator clocks enable during Sleep and Stop modes Set and
      --  cleared by software.
      SAESSMEN       : Boolean := True;
      --  OCTOSPIM clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      OCTOSPIMSMEN   : Boolean := True;
      --  unspecified
      Reserved_22_22 : Interfaces.Bit_Types.Bit := 16#1#;
      --  OTFDEC1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      OTFDEC1SMEN    : Boolean := True;
      --  OTFDEC2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      OTFDEC2SMEN    : Boolean := True;
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  SDMMC1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      SDMMC1SMEN     : Boolean := True;
      --  SDMMC2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      SDMMC2SMEN     : Boolean := True;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#1#;
      --  SRAM2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      SRAM2SMEN      : Boolean := True;
      --  SRAM3 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      SRAM3SMEN      : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2SMENR1_Register use record
      GPIOASMEN      at 0 range 0 .. 0;
      GPIOBSMEN      at 0 range 1 .. 1;
      GPIOCSMEN      at 0 range 2 .. 2;
      GPIODSMEN      at 0 range 3 .. 3;
      GPIOESMEN      at 0 range 4 .. 4;
      GPIOFSMEN      at 0 range 5 .. 5;
      GPIOGSMEN      at 0 range 6 .. 6;
      GPIOHSMEN      at 0 range 7 .. 7;
      GPIOISMEN      at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ADC1SMEN       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DCMI_PSSISMEN  at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      OTGSMEN        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      AESSMEN        at 0 range 16 .. 16;
      HASHSMEN       at 0 range 17 .. 17;
      RNGSMEN        at 0 range 18 .. 18;
      PKASMEN        at 0 range 19 .. 19;
      SAESSMEN       at 0 range 20 .. 20;
      OCTOSPIMSMEN   at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      OTFDEC1SMEN    at 0 range 23 .. 23;
      OTFDEC2SMEN    at 0 range 24 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      SDMMC1SMEN     at 0 range 27 .. 27;
      SDMMC2SMEN     at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SRAM2SMEN      at 0 range 30 .. 30;
      SRAM3SMEN      at 0 range 31 .. 31;
   end record;

   --  RCC AHB2 peripheral clocks enable in Sleep and	Stop modes register 2
   type RCC_AHB2SMENR2_Register is record
      --  FSMC clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      FSMCSMEN      : Boolean := True;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  OCTOSPI1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      OCTOSPI1SMEN  : Boolean := True;
      --  unspecified
      Reserved_5_7  : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  OCTOSPI2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      OCTOSPI2SMEN  : Boolean := True;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#7FFFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB2SMENR2_Register use record
      FSMCSMEN      at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      OCTOSPI1SMEN  at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      OCTOSPI2SMEN  at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RCC AHB3 peripheral clocks enable in Sleep and Stop modes register	
   type RCC_AHB3SMENR_Register is record
      --  LPGPIO1 enable during Sleep and Stop modes Set and cleared by
      --  software.
      LPGPIO1SMEN    : Boolean := True;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#1#;
      --  PWR clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      PWRSMEN        : Boolean := True;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  ADC4 clock enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      ADC4SMEN       : Boolean := True;
      --  DAC1 clock enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      DAC1SMEN       : Boolean := True;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  LPDMA1 clock enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPDMA1SMEN     : Boolean := True;
      --  ADF1 clock enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      ADF1SMEN       : Boolean := True;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#1#;
      --  GTZC2 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      GTZC2SMEN      : Boolean := True;
      --  unspecified
      Reserved_13_30 : Interfaces.Bit_Types.UInt18 := 16#3FFFF#;
      --  SRAM4 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      SRAM4SMEN      : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHB3SMENR_Register use record
      LPGPIO1SMEN    at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      PWRSMEN        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      ADC4SMEN       at 0 range 5 .. 5;
      DAC1SMEN       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      LPDMA1SMEN     at 0 range 9 .. 9;
      ADF1SMEN       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      GTZC2SMEN      at 0 range 12 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      SRAM4SMEN      at 0 range 31 .. 31;
   end record;

   --  RCC APB1 peripheral clocks enable in Sleep and Stop modes	register 1
   type RCC_APB1SMENR1_Register is record
      --  TIM2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM2SMEN       : Boolean := True;
      --  TIM3 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM3SMEN       : Boolean := True;
      --  TIM4 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM4SMEN       : Boolean := True;
      --  TIM5 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM5SMEN       : Boolean := True;
      --  TIM6 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM6SMEN       : Boolean := True;
      --  TIM7 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM7SMEN       : Boolean := True;
      --  unspecified
      Reserved_6_10  : Interfaces.Bit_Types.UInt5 := 16#1F#;
      --  Window watchdog clocks enable during Sleep and Stop modes Set and
      --  cleared by software. This bit is forced to 1 by hardware when the
      --  hardware WWDG option is activated.
      WWDGSMEN       : Boolean := True;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  SPI2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      SPI2SMEN       : Boolean := True;
      --  unspecified
      Reserved_15_16 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  USART2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      USART2SMEN     : Boolean := True;
      --  USART3 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      USART3SMEN     : Boolean := True;
      --  UART4 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      UART4SMEN      : Boolean := True;
      --  UART5 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      UART5SMEN      : Boolean := True;
      --  I2C1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      I2C1SMEN       : Boolean := True;
      --  I2C2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      I2C2SMEN       : Boolean := True;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#1#;
      --  CRS clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      CRSSMEN        : Boolean := True;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#7F#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1SMENR1_Register use record
      TIM2SMEN       at 0 range 0 .. 0;
      TIM3SMEN       at 0 range 1 .. 1;
      TIM4SMEN       at 0 range 2 .. 2;
      TIM5SMEN       at 0 range 3 .. 3;
      TIM6SMEN       at 0 range 4 .. 4;
      TIM7SMEN       at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDGSMEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2SMEN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2SMEN     at 0 range 17 .. 17;
      USART3SMEN     at 0 range 18 .. 18;
      UART4SMEN      at 0 range 19 .. 19;
      UART5SMEN      at 0 range 20 .. 20;
      I2C1SMEN       at 0 range 21 .. 21;
      I2C2SMEN       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CRSSMEN        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  RCC APB1 peripheral clocks enable in Sleep and	Stop modes register 2
   type RCC_APB1SMENR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#1#;
      --  I2C4 clocks enable during Sleep and Stop modes Set and cleared by
      --  software Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      I2C4SMEN       : Boolean := True;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  LPTIM2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPTIM2SMEN     : Boolean := True;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  FDCAN1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      FDCAN1SMEN     : Boolean := True;
      --  unspecified
      Reserved_10_22 : Interfaces.Bit_Types.UInt13 := 16#1FFF#;
      --  UCPD1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      UCPD1SMEN      : Boolean := True;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1SMENR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      I2C4SMEN       at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      LPTIM2SMEN     at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      FDCAN1SMEN     at 0 range 9 .. 9;
      Reserved_10_22 at 0 range 10 .. 22;
      UCPD1SMEN      at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RCC APB2 peripheral clocks enable in Sleep and Stop modes register	
   type RCC_APB2SMENR_Register is record
      --  unspecified
      Reserved_0_10  : Interfaces.Bit_Types.UInt11 := 16#7FF#;
      --  TIM1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM1SMEN       : Boolean := True;
      --  SPI1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      SPI1SMEN       : Boolean := True;
      --  TIM8 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM8SMEN       : Boolean := True;
      --  USART1clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      USART1SMEN     : Boolean := True;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#1#;
      --  TIM15 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM15SMEN      : Boolean := True;
      --  TIM16 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM16SMEN      : Boolean := True;
      --  TIM17 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      TIM17SMEN      : Boolean := True;
      --  unspecified
      Reserved_19_20 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  SAI1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      SAI1SMEN       : Boolean := True;
      --  SAI2 clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      SAI2SMEN       : Boolean := True;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#1FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2SMENR_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      TIM1SMEN       at 0 range 11 .. 11;
      SPI1SMEN       at 0 range 12 .. 12;
      TIM8SMEN       at 0 range 13 .. 13;
      USART1SMEN     at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15SMEN      at 0 range 16 .. 16;
      TIM16SMEN      at 0 range 17 .. 17;
      TIM17SMEN      at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      SAI1SMEN       at 0 range 21 .. 21;
      SAI2SMEN       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC APB3 peripheral clock enable in Sleep and Stop modes register	
   type RCC_APB3SMENR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#1#;
      --  SYSCFG clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      SYSCFGSMEN     : Boolean := True;
      --  unspecified
      Reserved_2_4   : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  SPI3 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      SPI3SMEN       : Boolean := True;
      --  LPUART1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPUART1SMEN    : Boolean := True;
      --  I2C3 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      I2C3SMEN       : Boolean := True;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#7#;
      --  LPTIM1 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPTIM1SMEN     : Boolean := True;
      --  LPTIM3 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPTIM3SMEN     : Boolean := True;
      --  LPTIM4 clocks enable during Sleep and Stop modes Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPTIM4SMEN     : Boolean := True;
      --  OPAMP clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      OPAMPSMEN      : Boolean := True;
      --  COMP clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      COMPSMEN       : Boolean := True;
      --  unspecified
      Reserved_16_19 : Interfaces.Bit_Types.UInt4 := 16#F#;
      --  VREFBUF clocks enable during Sleep and Stop modes Set and cleared by
      --  software.
      VREFSMEN       : Boolean := True;
      --  RTC and TAMP APB clock enable during Sleep and Stop modes Set and
      --  cleared by software. Note: This bit must be set to allow the
      --  peripheral to wake up from Stop modes.
      RTCAPBSMEN     : Boolean := True;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#3FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3SMENR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SYSCFGSMEN     at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      SPI3SMEN       at 0 range 5 .. 5;
      LPUART1SMEN    at 0 range 6 .. 6;
      I2C3SMEN       at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      LPTIM1SMEN     at 0 range 11 .. 11;
      LPTIM3SMEN     at 0 range 12 .. 12;
      LPTIM4SMEN     at 0 range 13 .. 13;
      OPAMPSMEN      at 0 range 14 .. 14;
      COMPSMEN       at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      VREFSMEN       at 0 range 20 .. 20;
      RTCAPBSMEN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  RCC SmartRun domain peripheral autonomous mode register	
   type RCC_SRDAMR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  SPI3 autonomous mode enable in Stop 0,1, 2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      SPI3AMEN       : Boolean := False;
      --  LPUART1 autonomous mode enable in Stop 0,1, 2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPUART1AMEN    : Boolean := False;
      --  I2C3 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      I2C3AMEN       : Boolean := False;
      --  unspecified
      Reserved_8_10  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPTIM1 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPTIM1AMEN     : Boolean := False;
      --  LPTIM3 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPTIM3AMEN     : Boolean := False;
      --  LPTIM4 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPTIM4AMEN     : Boolean := False;
      --  OPAMP autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software.
      OPAMPAMEN      : Boolean := False;
      --  COMP autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software.
      COMPAMEN       : Boolean := False;
      --  unspecified
      Reserved_16_19 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  VREFBUF autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software.
      VREFAMEN       : Boolean := False;
      --  RTC and TAMP autonomous mode enable in Stop 0,1,2 mode Set and
      --  cleared by software. Note: This bit must be set to allow the
      --  peripheral to wake up from Stop modes.
      RTCAPBAMEN     : Boolean := False;
      --  unspecified
      Reserved_22_24 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  ADC4 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      ADC4AMEN       : Boolean := False;
      --  LPGPIO1 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software.
      LPGPIO1AMEN    : Boolean := False;
      --  DAC1 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      DAC1AMEN       : Boolean := False;
      --  LPDMA1 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      LPDMA1AMEN     : Boolean := False;
      --  ADF1 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software. Note: This bit must be set to allow the peripheral to wake
      --  up from Stop modes.
      ADF1AMEN       : Boolean := False;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SRAM4 autonomous mode enable in Stop 0,1,2 mode Set and cleared by
      --  software.
      SRAM4AMEN      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SRDAMR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      SPI3AMEN       at 0 range 5 .. 5;
      LPUART1AMEN    at 0 range 6 .. 6;
      I2C3AMEN       at 0 range 7 .. 7;
      Reserved_8_10  at 0 range 8 .. 10;
      LPTIM1AMEN     at 0 range 11 .. 11;
      LPTIM3AMEN     at 0 range 12 .. 12;
      LPTIM4AMEN     at 0 range 13 .. 13;
      OPAMPAMEN      at 0 range 14 .. 14;
      COMPAMEN       at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      VREFAMEN       at 0 range 20 .. 20;
      RTCAPBAMEN     at 0 range 21 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      ADC4AMEN       at 0 range 25 .. 25;
      LPGPIO1AMEN    at 0 range 26 .. 26;
      DAC1AMEN       at 0 range 27 .. 27;
      LPDMA1AMEN     at 0 range 28 .. 28;
      ADF1AMEN       at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SRAM4AMEN      at 0 range 31 .. 31;
   end record;

   subtype RCC_CCIPR1_USART1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_USART2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_USART3SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_UART4SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_UART5SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_I2C1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_I2C2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_I2C4SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_SPI2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_LPTIM2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_SPI1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_SYSTICKSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_FDCAN1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_ICLKSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR1_TIMICSEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC peripherals independent clock configuration register 1	
   type RCC_CCIPR1_Register is record
      --  USART1 kernel clock source selection This bits are used to select the
      --  USART1 kernel clock source. Note: The USART1 is functional in Stop 0
      --  and Stop 1 mode only when the kernel clock is HSI16 or LSE.
      USART1SEL      : RCC_CCIPR1_USART1SEL_Field := 16#0#;
      --  USART2 kernel clock source selection This bits are used to select the
      --  USART2 kernel clock source. Note: The USART2 is functional in Stop 0
      --  and Stop 1 mode only when the kernel clock is HSI16 or LSE.
      USART2SEL      : RCC_CCIPR1_USART2SEL_Field := 16#0#;
      --  USART3 kernel clock source selection This bits are used to select the
      --  USART3 kernel clock source. Note: The USART3 is functional in Stop 0
      --  and Stop 1 mode only when the kernel clock is HSI16 or LSE.
      USART3SEL      : RCC_CCIPR1_USART3SEL_Field := 16#0#;
      --  UART4 kernel clock source selection This bits are used to select the
      --  UART4 kernel clock source. Note: The UART4 is functional in Stop 0
      --  and Stop 1 mode only when the kernel clock is HSI16 or LSE.
      UART4SEL       : RCC_CCIPR1_UART4SEL_Field := 16#0#;
      --  UART5 kernel clock source selection These bits are used to select the
      --  UART5 kernel clock source. Note: The UART5 is functional in Stop 0
      --  and Stop 1 mode only when the kernel clock is HSI16 or LSE.
      UART5SEL       : RCC_CCIPR1_UART5SEL_Field := 16#0#;
      --  I2C1 kernel clock source selection These bits are used to select the
      --  I2C1 kernel clock source. Note: The I2C1 is functional in Stop 0 and
      --  Stop 1 mode only when the kernel clock is HSI16 or MSIK.
      I2C1SEL        : RCC_CCIPR1_I2C1SEL_Field := 16#0#;
      --  I2C2 kernel clock source selection These bits are used to select the
      --  I2C2 kernel clock source. Note: The I2C2 is functional in Stop 0 and
      --  Stop 1 mode only when the kernel clock is HSI16 or MSIK.
      I2C2SEL        : RCC_CCIPR1_I2C2SEL_Field := 16#0#;
      --  I2C4 kernel clock source selection These bits are used to select the
      --  I2C4 kernel clock source. Note: The I2C4 is functional in Stop 0 and
      --  Stop 1 mode only when the kernel clock is HSI16 or MSIK.
      I2C4SEL        : RCC_CCIPR1_I2C4SEL_Field := 16#0#;
      --  SPI2 kernel clock source selection These bits are used to select the
      --  SPI2 kernel clock source. Note: The SPI2 is functional in Stop 0 and
      --  Stop 1 mode only when the kernel clock is HSI16 or MSIK.
      SPI2SEL        : RCC_CCIPR1_SPI2SEL_Field := 16#0#;
      --  Low-power timer 2 kernel clock source selection These bits are used
      --  to select the LPTIM2 kernel clock source. Note: The LPTIM2 is
      --  functional in Stop 0 and Stop 1 mode only when the kernel clock is
      --  LSI, LSE or HSI16 if HSIKERON = 1.
      LPTIM2SEL      : RCC_CCIPR1_LPTIM2SEL_Field := 16#0#;
      --  SPI1 kernel clock source selection These bits are used to select the
      --  SPI1 kernel clock source. Note: The SPI1 is functional in Stop 0 and
      --  Stop 1 mode only when the kernel clock is HSI16 or MSIK.
      SPI1SEL        : RCC_CCIPR1_SPI1SEL_Field := 16#0#;
      --  SysTick clock source selection These bits are used to select the
      --  SysTick clock source. Note: When LSE or LSI is selected, the AHB
      --  frequency must be at least four times higher than the LSI or LSE
      --  frequency. In addition, a jitter up to one HCLK cycle is introduced,
      --  due to the LSE or LSI sampling with HCLK in the SysTick circuitry.
      SYSTICKSEL     : RCC_CCIPR1_SYSTICKSEL_Field := 16#0#;
      --  FDCAN1 kernel clock source selection These bits are used to select
      --  the FDCAN1 kernel clock source.
      FDCAN1SEL      : RCC_CCIPR1_FDCAN1SEL_Field := 16#0#;
      --  intermediate clock source selection These bits are used to select the
      --  clock source used by OTG_FS and SDMMC.
      ICLKSEL        : RCC_CCIPR1_ICLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clocks sources for TIM16,TIM17 and LPTIM2 internal input capture When
      --  the TIMICSEL2 bit is set, the TIM16, TIM17 and LPTIM2 internal input
      --  capture can be connected either to HSI/256, MSI/4 or MSI/1024.
      --  Depending on TIMICSEL[1:0] value, MSI is either MSIK or MSIS. When
      --  TIMICSEL2 is cleared, the HSI, MSIK and MSIS clock sources cannot be
      --  selected as TIM16, TIM17 or LPTIM2 internal input capture. 0xx: HSI,
      --  MSIK and MSIS dividers disabled Note: The clock division must be
      --  disabled (TIMICSEL configured to 0xx) before selecting or changing a
      --  clock sources division.
      TIMICSEL       : RCC_CCIPR1_TIMICSEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR1_Register use record
      USART1SEL      at 0 range 0 .. 1;
      USART2SEL      at 0 range 2 .. 3;
      USART3SEL      at 0 range 4 .. 5;
      UART4SEL       at 0 range 6 .. 7;
      UART5SEL       at 0 range 8 .. 9;
      I2C1SEL        at 0 range 10 .. 11;
      I2C2SEL        at 0 range 12 .. 13;
      I2C4SEL        at 0 range 14 .. 15;
      SPI2SEL        at 0 range 16 .. 17;
      LPTIM2SEL      at 0 range 18 .. 19;
      SPI1SEL        at 0 range 20 .. 21;
      SYSTICKSEL     at 0 range 22 .. 23;
      FDCAN1SEL      at 0 range 24 .. 25;
      ICLKSEL        at 0 range 26 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      TIMICSEL       at 0 range 29 .. 31;
   end record;

   subtype RCC_CCIPR2_MDF1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR2_SAI1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR2_SAI2SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR2_RNGSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR2_OCTOSPISEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC peripherals independent clock configuration register 2	
   type RCC_CCIPR2_Register is record
      --  MDF1 kernel clock source selection These bits are used to select the
      --  MDF1 kernel clock source. others: reserved
      MDF1SEL        : RCC_CCIPR2_MDF1SEL_Field := 16#0#;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SAI1 kernel clock source selection These bits are used to select the
      --  SAI1 kernel clock source. others: reserved Note: If the selected
      --  clock is the external clock and this clock is stopped, a switch to
      --  another clock is impossible.
      SAI1SEL        : RCC_CCIPR2_SAI1SEL_Field := 16#0#;
      --  SAI2 kernel clock source selection These bits are used to select the
      --  SAI2 kernel clock source. others: reserved Note: If the selected
      --  clock is the external clock and this clock is stopped, a switch to
      --  another clock is impossible.
      SAI2SEL        : RCC_CCIPR2_SAI2SEL_Field := 16#0#;
      --  SAES kernel clock source selection This bit is used to select the
      --  SAES kernel clock source.
      SAESSEL        : Boolean := False;
      --  RNGSEL kernel clock source selection These bits are used to select
      --  the RNG kernel clock source.
      RNGSEL         : RCC_CCIPR2_RNGSEL_Field := 16#0#;
      --  SDMMC1 and SDMMC2 kernel clock source selection This bit is used to
      --  select the SDMMC kernel clock source. It is recommended to change
      --  this bit only after reset and before enabling the SDMMC.
      SDMMCSEL       : Boolean := False;
      --  unspecified
      Reserved_15_19 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  OCTOSPI1 and OCTOSPI2 kernel clock source selection These bits are
      --  used to select the OCTOSPI1 and OCTOSPI2 kernel clock source.
      OCTOSPISEL     : RCC_CCIPR2_OCTOSPISEL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR2_Register use record
      MDF1SEL        at 0 range 0 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      SAI1SEL        at 0 range 5 .. 7;
      SAI2SEL        at 0 range 8 .. 10;
      SAESSEL        at 0 range 11 .. 11;
      RNGSEL         at 0 range 12 .. 13;
      SDMMCSEL       at 0 range 14 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      OCTOSPISEL     at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype RCC_CCIPR3_LPUART1SEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR3_SPI3SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR3_I2C3SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR3_LPTIM34SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR3_LPTIM1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR3_ADCDACSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CCIPR3_ADF1SEL_Field is Interfaces.Bit_Types.UInt3;

   --  RCC peripherals independent clock configuration register 3	
   type RCC_CCIPR3_Register is record
      --  LPUART1 kernel clock source selection These bits are used to select
      --  the LPUART1 kernel clock source. others: reserved Note: The LPUART1
      --  is functional in Stop 0, Stop 1 and Stop 2 modes only when the kernel
      --  clock is HSI16, LSE or MSIK.
      LPUART1SEL     : RCC_CCIPR3_LPUART1SEL_Field := 16#0#;
      --  SPI3 kernel clock source selection These bits are used to select the
      --  SPI3 kernel clock source. Note: The SPI3 is functional in Stop 0,
      --  Stop 1 and Stop 2 modes only when the kernel clock is HSI16 or MSIK.
      SPI3SEL        : RCC_CCIPR3_SPI3SEL_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  I2C3 kernel clock source selection These bits are used to select the
      --  I2C3 kernel clock source. Note: The I2C3 is functional in Stop 0,
      --  Stop 1 and Stop 2 modes only when the kernel clock is HSI16 or MSIK.
      I2C3SEL        : RCC_CCIPR3_I2C3SEL_Field := 16#0#;
      --  LPTIM3 and LPTIM4 kernel clock source selection These bits are used
      --  to select the LPTIM3 and LPTIM4 kernel clock source. Note: The LPTIM3
      --  and LPTIM4 are functional in Stop 0, Stop 1 and Stop 2 modes only
      --  when the kernel clock is LSI, LSE, HSI16 with HSIKERON = 1 or MSIK
      --  with MSIKERON = 1.
      LPTIM34SEL     : RCC_CCIPR3_LPTIM34SEL_Field := 16#0#;
      --  LPTIM1 kernel clock source selection These bits are used to select
      --  the LPTIM1 kernel clock source. Note: The LPTIM1 is functional in
      --  Stop 0, Stop 1 and Stop 2 modes only when the kernel clock is LSI,
      --  LSE, HSI16 with HSIKERON = 1 or MSIK with MSIKERON = 1.
      LPTIM1SEL      : RCC_CCIPR3_LPTIM1SEL_Field := 16#0#;
      --  ADC1, ADC4 and DAC1 kernel clock source selection These bits are used
      --  to select the ADC1, ADC4 and DAC1 kernel clock source. others:
      --  reserved Note: The ADC1, ADC4 and DAC1 are functional in Stop 0, Stop
      --  1 and Stop 2 modes only when the kernel clock is HSI16 or MSIK (only
      --  ADC4 and DAC1 are functional in Stop 2 mode).
      ADCDACSEL      : RCC_CCIPR3_ADCDACSEL_Field := 16#0#;
      --  DAC1 sample and hold clock source selection This bit is used to
      --  select the DAC1 sample and hold clock source.
      DAC1SEL        : Boolean := False;
      --  ADF1 kernel clock source selection These bits are used to select the
      --  ADF1 kernel clock source. others: reserved Note: The ADF1 is
      --  functional in Stop 0, Stop 1 and Stop 2 modes only when the kernel
      --  clock is AUDIOCLK or MSIK.
      ADF1SEL        : RCC_CCIPR3_ADF1SEL_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR3_Register use record
      LPUART1SEL     at 0 range 0 .. 2;
      SPI3SEL        at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      I2C3SEL        at 0 range 6 .. 7;
      LPTIM34SEL     at 0 range 8 .. 9;
      LPTIM1SEL      at 0 range 10 .. 11;
      ADCDACSEL      at 0 range 12 .. 14;
      DAC1SEL        at 0 range 15 .. 15;
      ADF1SEL        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype RCC_BDCR_LSEDRV_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_BDCR_RTCSEL_Field is Interfaces.Bit_Types.UInt2;

   --  RCC Backup domain control register
   type RCC_BDCR_Register is record
      --  LSE oscillator enable Set and cleared by software.
      LSEON          : Boolean := False;
      --  Read-only. LSE oscillator ready Set and cleared by hardware to
      --  indicate when the external 32 kHz oscillator is stable. After the
      --  LSEON bit is cleared, LSERDY goes low after six external low-speed
      --  oscillator clock cycles.
      LSERDY         : Boolean := False;
      --  LSE oscillator bypass Set and cleared by software to bypass
      --  oscillator in debug mode. This bit can be written only when the
      --  external 32 kHz oscillator is disabled (LSEON = 0 and LSERDY = 0).
      LSEBYP         : Boolean := False;
      --  LSE oscillator drive capability Set by software to modulate the drive
      --  capability of the LSE oscillator. This field can be written only when
      --  the external 32 kHz oscillator is disabled (LSEON = 0 and LSERDY =
      --  0). Note: The oscillator is in 'Xtal mode when it is not in
      --  bypass mode.
      LSEDRV         : RCC_BDCR_LSEDRV_Field := 16#0#;
      --  CSS on LSE enable Set by software to enable the CSS on LSE. LSECSSON
      --  must be enabled after the LSE oscillator is enabled (LSEON bit
      --  enabled) and ready (LSERDY flag set by hardware), and after the
      --  RTCSEL bit is selected. Once enabled, this bit cannot be disabled,
      --  except after a LSE failure detection (LSECSSD = 1). In that case,
      --  the software must disable the LSECSSON bit.
      LSECSSON       : Boolean := False;
      --  Read-only. CSS on LSE failure Detection Set by hardware to indicate
      --  when a failure is detected by the CCS on the external 32 kHz
      --  oscillator (LSE).
      LSECSSD        : Boolean := False;
      --  LSE system clock (LSESYS) enable Set by software to enable always the
      --  LSE system clock generated by RCC. This clock can be used by any
      --  peripheral when its source clock is the LSE or at system level in
      --  case of one of the LSCOSEL, MCO, MSI PLL mode or CSS on LSE is
      --  needed. The LSESYS clock can be generated even if LSESYSEN= 0 if the
      --  LSE clock is requested by the CSS on LSE, by a peripheral or any
      --  other source clock using LSE.
      LSESYSEN       : Boolean := False;
      --  RTC and TAMP clock source selection Set by software to select the
      --  clock source for the RTC and TAMP . Once the RTC and TAMP clock
      --  source has been selected, it cannot be changed anymore unless the
      --  Backup domain is reset, or unless a failure is detected on LSE
      --  (LSECSSD is set). The BDRST bit can be used to reset them.
      RTCSEL         : RCC_BDCR_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. LSE system clock (LSESYS) ready Set and cleared by
      --  hardware to indicate when the LSE system clock is stable.When the
      --  LSESYSEN bit is set, the LSESYSRDY flag is set after two LSE clock
      --  cycles. The LSE clock must be already enabled and stable (LSEON and
      --  LSERDY are set). When the LSEON bit is cleared, LSERDY goes low after
      --  six external low-speed oscillator clock cycles.
      LSESYSRDY      : Boolean := False;
      --  LSE clock glitch filter enable Set and cleared by hardware to enable
      --  the LSE glitch filter. This bit can be written only when the LSE is
      --  disabled (LSEON = 0 and LSERDY = 0)
      LSEGFON        : Boolean := False;
      --  unspecified
      Reserved_13_14 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  RTC and TAMP clock enable Set and cleared by software.
      RTCEN          : Boolean := False;
      --  Backup domain software reset Set and cleared by software.
      BDRST          : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Low-speed clock output (LSCO) enable Set and cleared by software.
      LSCOEN         : Boolean := False;
      --  Low-speed clock output selection Set and cleared by software.
      LSCOSEL        : Boolean := False;
      --  LSI oscillator enable Set and cleared by software.
      LSION          : Boolean := False;
      --  LSI oscillator ready Set and cleared by hardware to indicate when the
      --  LSI oscillator is stable. After the LSION bit is cleared, LSIRDY goes
      --  low after three internal low-speed oscillator clock cycles. This bit
      --  is set when the LSI is used by IWDG or RTC, even if LSION = 0.
      LSIRDY         : Boolean := False;
      --  Low-speed clock divider configuration Set and cleared by software to
      --  enable the LSI division. This bit can be written only when the LSI is
      --  disabled (LSION = 0 and LSIRDY = 0). If the LSI was previously
      --  enabled, it is necessary to wait for at least 60 Î¼s after clearing
      --  LSION bit (synchronization time for LSI to be really disabled),
      --  before writing LSIPREDIV. The LSIPREDIV cannot be changed if the LSI
      --  is used by the IWDG or by the RTC.
      LSIPREDIV      : Boolean := False;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BDCR_Register use record
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
      LSEGFON        at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      LSCOEN         at 0 range 24 .. 24;
      LSCOSEL        at 0 range 25 .. 25;
      LSION          at 0 range 26 .. 26;
      LSIRDY         at 0 range 27 .. 27;
      LSIPREDIV      at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RCC_CSR_MSIKSRANGE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CSR_MSISSRANGE_Field is Interfaces.Bit_Types.UInt4;

   --  RCC control/status register
   type RCC_CSR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  MSIK range after Standby mode Set by software to chose the MSIK
      --  frequency at startup. This range is used after exiting Standby mode
      --  until MSIRGSEL is set. After a NRST pin or a power-on reset or when
      --  exiting Shutdown mode, the range is always 4 MHz. MSIKSRANGE can be
      --  written only when MSIRGSEL = 1. others: reserved Note: Changing the
      --  MSIKSRANGE does not change the current MSIK frequency.
      MSIKSRANGE     : RCC_CSR_MSIKSRANGE_Field := 16#4#;
      --  MSIS range after Standby mode Set by software to chose the MSIS
      --  frequency at startup. This range is used after exiting Standby mode
      --  until MSIRGSEL is set. After a NRST pin or a power-on reset or when
      --  exiting Shutdown mode, the range is always 4 MHz. MSISSRANGE can be
      --  written only when MSIRGSEL = 1. others: reserved Note: Changing the
      --  MSISSRANGE does not change the current MSIS frequency.
      MSISSRANGE     : RCC_CSR_MSISSRANGE_Field := 16#4#;
      --  unspecified
      Reserved_16_22 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Remove reset flag Set by software to clear the reset flags.
      RMVF           : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Option byte loader reset flag Set by hardware when a reset
      --  from the option byte loading occurs. Cleared by writing to the RMVF
      --  bit.
      OBLRSTF        : Boolean := False;
      --  Read-only. NRST pin reset flag Set by hardware when a reset from the
      --  NRST pin occurs. Cleared by writing to the RMVF bit.
      PINRSTF        : Boolean := True;
      --  Read-only. BOR flag Set by hardware when a BOR occurs. Cleared by
      --  writing to the RMVF bit.
      BORRSTF        : Boolean := True;
      --  Read-only. Software reset flag Set by hardware when a software reset
      --  occurs. Cleared by writing to the RMVF bit.
      SFTRSTF        : Boolean := False;
      --  Read-only. Independent watchdog reset flag Set by hardware when an
      --  independent watchdog reset domain occurs. Cleared by writing to the
      --  RMVF bit.
      IWDGRSTF       : Boolean := False;
      --  Read-only. Window watchdog reset flag Set by hardware when a window
      --  watchdog reset occurs. Cleared by writing to the RMVF bit.
      WWDGRSTF       : Boolean := False;
      --  Read-only. Low-power reset flag Set by hardware when a reset occurs
      --  due to Stop, Standby or Shutdown mode entry, whereas the
      --  corresponding nRST_STOP, nRST_STBY or nRST_SHDW option bit is
      --  cleared. Cleared by writing to the RMVF bit.
      LPWRRSTF       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CSR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MSIKSRANGE     at 0 range 8 .. 11;
      MSISSRANGE     at 0 range 12 .. 15;
      Reserved_16_22 at 0 range 16 .. 22;
      RMVF           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      OBLRSTF        at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      BORRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRRSTF       at 0 range 31 .. 31;
   end record;

   --  RCC secure configuration register
   type RCC_SECCFGR_Register is record
      --  HSI clock configuration and status bits security Set and reset by
      --  software.
      HSISEC         : Boolean := False;
      --  HSE clock configuration bits, status bits and HSE_CSS security Set
      --  and reset by software.
      HSESEC         : Boolean := False;
      --  MSI clock configuration and status bits security Set and reset by
      --  software.
      MSISEC         : Boolean := False;
      --  LSI clock configuration and status bits security Set and reset by
      --  software.
      LSISEC         : Boolean := False;
      --  LSE clock configuration and status bits security Set and reset by
      --  software.
      LSESEC         : Boolean := False;
      --  SYSCLK clock selection, STOPWUCK bit, clock output on MCO
      --  configuration security Set and reset by software.
      SYSCLKSEC      : Boolean := False;
      --  AHBx/APBx prescaler configuration bits security Set and reset by
      --  software.
      PRESCSEC       : Boolean := False;
      --  PLL1 clock configuration and status bits security Set and reset by
      --  software.
      PLL1SEC        : Boolean := False;
      --  PLL2 clock configuration and status bits security Set and reset by
      --  software.
      PLL2SEC        : Boolean := False;
      --  PLL3 clock configuration and status bits security Set and reset by
      --  software.
      PLL3SEC        : Boolean := False;
      --  intermediate clock source selection security Set and reset by
      --  software.
      ICLKSEC        : Boolean := False;
      --  HSI48 clock configuration and status bits security Set and reset by
      --  software.
      HSI48SEC       : Boolean := False;
      --  Remove reset flag security Set and reset by software.
      RMVFSEC        : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SECCFGR_Register use record
      HSISEC         at 0 range 0 .. 0;
      HSESEC         at 0 range 1 .. 1;
      MSISEC         at 0 range 2 .. 2;
      LSISEC         at 0 range 3 .. 3;
      LSESEC         at 0 range 4 .. 4;
      SYSCLKSEC      at 0 range 5 .. 5;
      PRESCSEC       at 0 range 6 .. 6;
      PLL1SEC        at 0 range 7 .. 7;
      PLL2SEC        at 0 range 8 .. 8;
      PLL3SEC        at 0 range 9 .. 9;
      ICLKSEC        at 0 range 10 .. 10;
      HSI48SEC       at 0 range 11 .. 11;
      RMVFSEC        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC privilege configuration register
   type RCC_PRIVCFGR_Register is record
      --  RCC secure functions privilege configuration Set and reset by
      --  software. This bit can be written only by a secure privileged access.
      SPRIV         : Boolean := False;
      --  RCC non-secure functions privilege configuration Set and reset by
      --  software. This bit can be written only by privileged access, secure
      --  or non-secure.
      NSPRIV        : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGR_Register use record
      SPRIV         at 0 range 0 .. 0;
      NSPRIV        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  RCC clock control register
      RCC_CR         : aliased RCC_CR_Register;
      --  RCC internal clock sources calibration register 1
      RCC_ICSCR1     : aliased RCC_ICSCR1_Register;
      --  RCC internal clock sources calibration register 2
      RCC_ICSCR2     : aliased RCC_ICSCR2_Register;
      --  RCC internal clock sources calibration register 3
      RCC_ICSCR3     : aliased RCC_ICSCR3_Register;
      --  RCC clock recovery RC register
      RCC_CRRCR      : aliased RCC_CRRCR_Register;
      --  RCC clock configuration register 1
      RCC_CFGR1      : aliased RCC_CFGR1_Register;
      --  RCC clock configuration register 2
      RCC_CFGR2      : aliased RCC_CFGR2_Register;
      --  RCC clock configuration register 3
      RCC_CFGR3      : aliased RCC_CFGR3_Register;
      --  RCC PLL1 configuration register
      RCC_PLL1CFGR   : aliased RCC_PLL1CFGR_Register;
      --  RCC PLL2 configuration register
      RCC_PLL2CFGR   : aliased RCC_PLL2CFGR_Register;
      --  RCC PLL3 configuration register
      RCC_PLL3CFGR   : aliased RCC_PLL3CFGR_Register;
      --  RCC PLL1 dividers register
      RCC_PLL1DIVR   : aliased RCC_PLL1DIVR_Register;
      --  RCC PLL1 fractional divider register
      RCC_PLL1FRACR  : aliased RCC_PLL1FRACR_Register;
      --  RCC PLL2 dividers configuration register
      RCC_PLL2DIVR   : aliased RCC_PLL2DIVR_Register;
      --  RCC PLL2 fractional divider register
      RCC_PLL2FRACR  : aliased RCC_PLL2FRACR_Register;
      --  RCC PLL3 dividers configuration register
      RCC_PLL3DIVR   : aliased RCC_PLL3DIVR_Register;
      --  RCC PLL3 fractional divider register
      RCC_PLL3FRACR  : aliased RCC_PLL3FRACR_Register;
      --  RCC clock interrupt enable register
      RCC_CIER       : aliased RCC_CIER_Register;
      --  RCC clock interrupt flag register
      RCC_CIFR       : aliased RCC_CIFR_Register;
      --  RCC clock interrupt clear register
      RCC_CICR       : aliased RCC_CICR_Register;
      --  RCC AHB1 peripheral reset register
      RCC_AHB1RSTR   : aliased RCC_AHB1RSTR_Register;
      --  RCC AHB2 peripheral reset register 1
      RCC_AHB2RSTR1  : aliased RCC_AHB2RSTR1_Register;
      --  RCC AHB2 peripheral reset register 2
      RCC_AHB2RSTR2  : aliased RCC_AHB2RSTR2_Register;
      --  RCC AHB3 peripheral reset register
      RCC_AHB3RSTR   : aliased RCC_AHB3RSTR_Register;
      --  RCC APB1 peripheral reset register 1
      RCC_APB1RSTR1  : aliased RCC_APB1RSTR1_Register;
      --  RCC APB1 peripheral reset register 2
      RCC_APB1RSTR2  : aliased RCC_APB1RSTR2_Register;
      --  RCC APB2 peripheral reset register
      RCC_APB2RSTR   : aliased RCC_APB2RSTR_Register;
      --  RCC APB3 peripheral reset register
      RCC_APB3RSTR   : aliased RCC_APB3RSTR_Register;
      --  RCC AHB1 peripheral clock enable register
      RCC_AHB1ENR    : aliased RCC_AHB1ENR_Register;
      --  RCC AHB2 peripheral clock enable register 1
      RCC_AHB2ENR1   : aliased RCC_AHB2ENR1_Register;
      --  RCC AHB2 peripheral clock enable register 2
      RCC_AHB2ENR2   : aliased RCC_AHB2ENR2_Register;
      --  RCC AHB3 peripheral clock enable register
      RCC_AHB3ENR    : aliased RCC_AHB3ENR_Register;
      --  RCC APB1 peripheral clock enable register 1
      RCC_APB1ENR1   : aliased RCC_APB1ENR1_Register;
      --  RCC APB1 peripheral clock enable register 2
      RCC_APB1ENR2   : aliased RCC_APB1ENR2_Register;
      --  RCC APB2 peripheral clock enable register
      RCC_APB2ENR    : aliased RCC_APB2ENR_Register;
      --  RCC APB3 peripheral clock enable register
      RCC_APB3ENR    : aliased RCC_APB3ENR_Register;
      --  RCC AHB1 peripheral clocks enable in Sleep and Stop modes register	
      RCC_AHB1SMENR  : aliased RCC_AHB1SMENR_Register;
      --  RCC AHB2 peripheral clocks enable in Sleep and	Stop modes register 1
      RCC_AHB2SMENR1 : aliased RCC_AHB2SMENR1_Register;
      --  RCC AHB2 peripheral clocks enable in Sleep and	Stop modes register 2
      RCC_AHB2SMENR2 : aliased RCC_AHB2SMENR2_Register;
      --  RCC AHB3 peripheral clocks enable in Sleep and Stop modes register	
      RCC_AHB3SMENR  : aliased RCC_AHB3SMENR_Register;
      --  RCC APB1 peripheral clocks enable in Sleep and Stop modes	register 1
      RCC_APB1SMENR1 : aliased RCC_APB1SMENR1_Register;
      --  RCC APB1 peripheral clocks enable in Sleep and	Stop modes register 2
      RCC_APB1SMENR2 : aliased RCC_APB1SMENR2_Register;
      --  RCC APB2 peripheral clocks enable in Sleep and Stop modes register	
      RCC_APB2SMENR  : aliased RCC_APB2SMENR_Register;
      --  RCC APB3 peripheral clock enable in Sleep and Stop modes register	
      RCC_APB3SMENR  : aliased RCC_APB3SMENR_Register;
      --  RCC SmartRun domain peripheral autonomous mode register	
      RCC_SRDAMR     : aliased RCC_SRDAMR_Register;
      --  RCC peripherals independent clock configuration register 1	
      RCC_CCIPR1     : aliased RCC_CCIPR1_Register;
      --  RCC peripherals independent clock configuration register 2	
      RCC_CCIPR2     : aliased RCC_CCIPR2_Register;
      --  RCC peripherals independent clock configuration register 3	
      RCC_CCIPR3     : aliased RCC_CCIPR3_Register;
      --  RCC Backup domain control register
      RCC_BDCR       : aliased RCC_BDCR_Register;
      --  RCC control/status register
      RCC_CSR        : aliased RCC_CSR_Register;
      --  RCC secure configuration register
      RCC_SECCFGR    : aliased RCC_SECCFGR_Register;
      --  RCC privilege configuration register
      RCC_PRIVCFGR   : aliased RCC_PRIVCFGR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      RCC_CR         at 16#0# range 0 .. 31;
      RCC_ICSCR1     at 16#8# range 0 .. 31;
      RCC_ICSCR2     at 16#C# range 0 .. 31;
      RCC_ICSCR3     at 16#10# range 0 .. 31;
      RCC_CRRCR      at 16#14# range 0 .. 31;
      RCC_CFGR1      at 16#1C# range 0 .. 31;
      RCC_CFGR2      at 16#20# range 0 .. 31;
      RCC_CFGR3      at 16#24# range 0 .. 31;
      RCC_PLL1CFGR   at 16#28# range 0 .. 31;
      RCC_PLL2CFGR   at 16#2C# range 0 .. 31;
      RCC_PLL3CFGR   at 16#30# range 0 .. 31;
      RCC_PLL1DIVR   at 16#34# range 0 .. 31;
      RCC_PLL1FRACR  at 16#38# range 0 .. 31;
      RCC_PLL2DIVR   at 16#3C# range 0 .. 31;
      RCC_PLL2FRACR  at 16#40# range 0 .. 31;
      RCC_PLL3DIVR   at 16#44# range 0 .. 31;
      RCC_PLL3FRACR  at 16#48# range 0 .. 31;
      RCC_CIER       at 16#50# range 0 .. 31;
      RCC_CIFR       at 16#54# range 0 .. 31;
      RCC_CICR       at 16#58# range 0 .. 31;
      RCC_AHB1RSTR   at 16#60# range 0 .. 31;
      RCC_AHB2RSTR1  at 16#64# range 0 .. 31;
      RCC_AHB2RSTR2  at 16#68# range 0 .. 31;
      RCC_AHB3RSTR   at 16#6C# range 0 .. 31;
      RCC_APB1RSTR1  at 16#74# range 0 .. 31;
      RCC_APB1RSTR2  at 16#78# range 0 .. 31;
      RCC_APB2RSTR   at 16#7C# range 0 .. 31;
      RCC_APB3RSTR   at 16#80# range 0 .. 31;
      RCC_AHB1ENR    at 16#88# range 0 .. 31;
      RCC_AHB2ENR1   at 16#8C# range 0 .. 31;
      RCC_AHB2ENR2   at 16#90# range 0 .. 31;
      RCC_AHB3ENR    at 16#94# range 0 .. 31;
      RCC_APB1ENR1   at 16#9C# range 0 .. 31;
      RCC_APB1ENR2   at 16#A0# range 0 .. 31;
      RCC_APB2ENR    at 16#A4# range 0 .. 31;
      RCC_APB3ENR    at 16#A8# range 0 .. 31;
      RCC_AHB1SMENR  at 16#B0# range 0 .. 31;
      RCC_AHB2SMENR1 at 16#B4# range 0 .. 31;
      RCC_AHB2SMENR2 at 16#B8# range 0 .. 31;
      RCC_AHB3SMENR  at 16#BC# range 0 .. 31;
      RCC_APB1SMENR1 at 16#C4# range 0 .. 31;
      RCC_APB1SMENR2 at 16#C8# range 0 .. 31;
      RCC_APB2SMENR  at 16#CC# range 0 .. 31;
      RCC_APB3SMENR  at 16#D0# range 0 .. 31;
      RCC_SRDAMR     at 16#D8# range 0 .. 31;
      RCC_CCIPR1     at 16#E0# range 0 .. 31;
      RCC_CCIPR2     at 16#E4# range 0 .. 31;
      RCC_CCIPR3     at 16#E8# range 0 .. 31;
      RCC_BDCR       at 16#F0# range 0 .. 31;
      RCC_CSR        at 16#F4# range 0 .. 31;
      RCC_SECCFGR    at 16#110# range 0 .. 31;
      RCC_PRIVCFGR   at 16#114# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

   --  Reset and clock control
   SEC_RCC_Periph : aliased RCC_Peripheral
     with Import, Address => SEC_RCC_Base;

end Interfaces.STM32.RCC;
