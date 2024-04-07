--
--  Copyright (C) 2024, AdaCore
--

--  This spec has been automatically generated from STM32U073.svd

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

   subtype RCC_CR_MSIRANGE_Field is Interfaces.Bit_Types.UInt4;

   --  Clock control register
   type RCC_CR_Register is record
      --  MSI clock enable This bit is set and cleared by software. Cleared by
      --  hardware to stop the MSI oscillator when entering Stop, Standby or
      --  Shutdown mode. Set by hardware to force the MSI oscillator ON when
      --  exiting Standby or Shutdown mode. Set by hardware to force the MSI
      --  oscillator ON when STOPWUCK=0 when exiting from Stop modes, or in
      --  case of a failure of the HSE oscillator Set by hardware when used
      --  directly or indirectly as system clock.
      MSION          : Boolean := True;
      --  Read-only. MSI clock ready flag This bit is set by hardware to
      --  indicate that the MSI oscillator is stable. Note: Once the MSION bit
      --  is cleared, MSIRDY goes low after 6 MSI clock cycles.
      MSIRDY         : Boolean := True;
      --  MSI clock PLL enable Set and cleared by software to enable/ disable
      --  the PLL part of the MSI clock source. MSIPLLEN must be enabled after
      --  LSE is enabled (LSEON enabled) and ready (LSERDY set by
      --  hardware).There is a hardware protection to avoid enabling MSIPLLEN
      --  if LSE is not ready. This bit is cleared by hardware when LSE is
      --  disabled (LSEON = 0) or when the Clock Security System on LSE detects
      --  a LSE failure (refer to RCC_CSR register).
      MSIPLLEN       : Boolean := False;
      --  MSI clock range selection Set by software to select the MSI clock
      --  range with MSIRANGE[3:0]. Write 0 has no effect. After a standby or a
      --  reset MSIRGSEL is at 0 and the MSI range value is provided by
      --  MSISRANGE in CSR register.
      MSIRGSEL       : Boolean := False;
      --  MSI clock ranges These bits are configured by software to choose the
      --  frequency range of MSI when MSIRGSEL is set.12 frequency ranges are
      --  available: others: not allowed (hardware write protection) Note:
      --  Warning: MSIRANGE can be modified when MSI is OFF (MSION=0) or when
      --  MSI is ready (MSIRDY=1). MSIRANGE must NOT be modified when MSI is ON
      --  and NOT ready (MSION=1 and MSIRDY=0)
      MSIRANGE       : RCC_CR_MSIRANGE_Field := 16#8#;
      --  HSI16 clock enable Set and cleared by software. Cleared by hardware
      --  to stop the HSI16 oscillator when entering Stop, Standby, or Shutdown
      --  mode. Forced by hardware to keep the HSI16 oscillator ON when it is
      --  used directly or indirectly as system clock (also when leaving Stop,
      --  Standby, or Shutdown modes, or in case of failure of the HSE
      --  oscillator used for system clock).
      HSION          : Boolean := False;
      --  HSI16 always enable for peripheral kernels. Set and cleared by
      --  software to force HSI16 ON even in Stop modes. The HSI16 can only
      --  feed USART1, USART2, CEC and I2C1 peripherals configured with HSI16
      --  as kernel clock. Keeping the HSI16 ON in Stop mode allows avoiding to
      --  slow down the communication speed because of the HSI16 startup time.
      --  This bit has no effect on HSION value.
      HSIKERON       : Boolean := False;
      --  Read-only. HSI16 clock ready flag Set by hardware to indicate that
      --  HSI16 oscillator is stable. This bit is set only when HSI16 is
      --  enabled by software by setting HSION. Note: Once the HSION bit is
      --  cleared, HSIRDY goes low after 6 HSI16 clock cycles.
      HSIRDY         : Boolean := False;
      --  Read-only. HSI16 automatic start from Stop Set and cleared by
      --  software. When the system wake-up clock is MSI, this bit is used to
      --  wake up the HSI16 is parallel of the system wake-up.
      HSIASFS        : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  HSE clock enable Set and cleared by software. Cleared by hardware to
      --  stop the HSE oscillator when entering Stop, Standby, or Shutdown
      --  mode. This bit cannot be reset if the HSE oscillator is used directly
      --  or indirectly as the system clock.
      HSEON          : Boolean := False;
      --  Read-only. HSE clock ready flag Set by hardware to indicate that the
      --  HSE oscillator is stable. Note: Once the HSEON bit is cleared, HSERDY
      --  goes low after 6 HSE clock cycles.
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
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PLL enable Set and cleared by software to enable the PLL. Cleared by
      --  hardware when entering Stop, Standby or Shutdown mode. This bit
      --  cannot be reset if the PLL clock is used as the system clock.
      PLLON          : Boolean := False;
      --  Read-only. PLL clock ready flag Set by hardware to indicate that the
      --  PLL is locked.
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CR_Register use record
      MSION          at 0 range 0 .. 0;
      MSIRDY         at 0 range 1 .. 1;
      MSIPLLEN       at 0 range 2 .. 2;
      MSIRGSEL       at 0 range 3 .. 3;
      MSIRANGE       at 0 range 4 .. 7;
      HSION          at 0 range 8 .. 8;
      HSIKERON       at 0 range 9 .. 9;
      HSIRDY         at 0 range 10 .. 10;
      HSIASFS        at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype RCC_ICSCR_MSICAL_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_ICSCR_MSITRIM_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_ICSCR_HSICAL_Field is Interfaces.Bit_Types.Byte;
   subtype RCC_ICSCR_HSITRIM_Field is Interfaces.Bit_Types.UInt7;

   --  Internal clock sources calibration register
   type RCC_ICSCR_Register is record
      --  Read-only. MSI clock calibration These bits are initialized at
      --  startup with the factory-programmed MSI calibration trim value. When
      --  MSITRIM is written, MSICAL is updated with the sum of MSITRIM and the
      --  factory trim value.
      MSICAL         : RCC_ICSCR_MSICAL_Field := 16#0#;
      --  MSI clock trimming These bits provide an additional user-programmable
      --  trimming value that is added to the MSICAL[7:0] bits. It can be
      --  programmed to adjust to variations in voltage and temperature that
      --  influence the frequency of the MSI.
      MSITRIM        : RCC_ICSCR_MSITRIM_Field := 16#40#;
      --  Read-only. HSI16 clock calibration These bits are initialized at
      --  startup with the factory-programmed HSI16 calibration trim value.
      --  When HSITRIM is written, HSICAL is updated with the sum of HSITRIM
      --  and the factory trim value.
      HSICAL         : RCC_ICSCR_HSICAL_Field := 16#0#;
      --  HSI16 clock trimming These bits provide an additional
      --  user-programmable trimming value that is added to the HSICAL[7:0]
      --  bits. It can be programmed to adjust to variations in voltage and
      --  temperature that influence the frequency of the HSI16. The default
      --  value is 64 when added to the HSICAL value, trim the HSI16 to 161MHz
      --  1 11%.
      HSITRIM        : RCC_ICSCR_HSITRIM_Field := 16#40#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ICSCR_Register use record
      MSICAL         at 0 range 0 .. 7;
      MSITRIM        at 0 range 8 .. 15;
      HSICAL         at 0 range 16 .. 23;
      HSITRIM        at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype RCC_CFGR_SW_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR_SWS_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR_HPRE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CFGR_PPRE_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_CFGR_MCO2SEL_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CFGR_MCO2PRE_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CFGR_MCOSEL_Field is Interfaces.Bit_Types.UInt4;
   subtype RCC_CFGR_MCOPRE_Field is Interfaces.Bit_Types.UInt4;

   --  Clock configuration register
   type RCC_CFGR_Register is record
      --  System clock switch This bitfield is controlled by software and
      --  hardware. The bitfield selects the clock for SYSCLK as follows:
      --  Others: Reserved The setting is forced by hardware to 000 (HSISYS
      --  selected) when the MCU exits Stop, Standby, or Shutdown mode, or when
      --  the setting is 001 (HSE selected) and HSE oscillator failure is
      --  detected.
      SW           : RCC_CFGR_SW_Field := 16#0#;
      --  Read-only. System clock switch status This bitfield is controlled by
      --  hardware to indicate the clock source used as system clock: Others:
      --  Reserved
      SWS          : RCC_CFGR_SWS_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AHB prescaler This bitfield is controlled by software. To produce
      --  HCLK clock, it sets the division factor of SYSCLK clock as follows:
      --  0xxx: 1 Caution: Depending on the device voltage range, the software
      --  has to set correctly these bits to ensure that the system frequency
      --  does not exceed the maximum allowed frequency (for more details,
      --  refer to Section14.1.4: Dynamic voltage scaling management). After a
      --  write operation to these bits and before decreasing the voltage
      --  range, this register must be read to be sure that the new value has
      --  been taken into account.
      HPRE         : RCC_CFGR_HPRE_Field := 16#0#;
      --  APB prescaler This bitfield is controlled by software. To produce
      --  PCLK clock, it sets the division factor of HCLK clock as follows:
      --  0xx: 1
      PPRE         : RCC_CFGR_PPRE_Field := 16#0#;
      --  Wake-up from Stop and CSS backup clock selection Set and cleared by
      --  software to select the system clock used when exiting Stop mode. The
      --  selected clock is also used as emergency clock for the Clock Security
      --  System on HSE. Warning: STOPWUCK must not be modified when the Clock
      --  Security System is enabled by HSECSSON in RCC_CR register and the
      --  system clock is HSE (SWS=10) or a switch on HSE is requested (SW=10).
      STOPWUCK     : Boolean := False;
      --  Microcontroller clock output 2 clock selector This bitfield is
      --  controlled by software. It sets the clock selector for MCO2 output as
      --  follows: Others: Reserved Note: This clock output may have some
      --  truncated cycles at startup or during MCO2 clock source switching.
      MCO2SEL      : RCC_CFGR_MCO2SEL_Field := 16#0#;
      --  Microcontroller clock output 2 prescaler This bitfield is controlled
      --  by software. It sets the division factor of the clock sent to the
      --  MCO2 output as follows: ... Others: reserved It is highly recommended
      --  to set this field before the MCO2 output is enabled.
      MCO2PRE      : RCC_CFGR_MCO2PRE_Field := 16#0#;
      --  Microcontroller clock output clock selector This bitfield is
      --  controlled by software. It sets the clock selector for MCO output as
      --  follows: Others: Reserved Note: This clock output may have some
      --  truncated cycles at startup or during MCO clock source switching.
      MCOSEL       : RCC_CFGR_MCOSEL_Field := 16#0#;
      --  Microcontroller clock output prescaler This bitfield is controlled by
      --  software. It sets the division factor of the clock sent to the MCO
      --  output as follows: ... Others: reserved It is highly recommended to
      --  set this field before the MCO output is enabled.
      MCOPRE       : RCC_CFGR_MCOPRE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CFGR_Register use record
      SW           at 0 range 0 .. 2;
      SWS          at 0 range 3 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      HPRE         at 0 range 8 .. 11;
      PPRE         at 0 range 12 .. 14;
      STOPWUCK     at 0 range 15 .. 15;
      MCO2SEL      at 0 range 16 .. 19;
      MCO2PRE      at 0 range 20 .. 23;
      MCOSEL       at 0 range 24 .. 27;
      MCOPRE       at 0 range 28 .. 31;
   end record;

   subtype RCC_PLLCFGR_PLLSRC_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_PLLCFGR_PLLM_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_PLLCFGR_PLLN_Field is Interfaces.Bit_Types.UInt7;
   subtype RCC_PLLCFGR_PLLP_Field is Interfaces.Bit_Types.UInt5;
   subtype RCC_PLLCFGR_PLLQ_Field is Interfaces.Bit_Types.UInt3;
   subtype RCC_PLLCFGR_PLLR_Field is Interfaces.Bit_Types.UInt3;

   --  PLL configuration register
   type RCC_PLLCFGR_Register is record
      --  PLL input clock source This bit is controlled by software to select
      --  PLL clock source, as follows: The bitfield can be written only when
      --  the PLL is disabled. When the PLL is not used, selecting 00 allows
      --  saving power.
      PLLSRC         : RCC_PLLCFGR_PLLSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Division factor M of the PLL input clock divider This bit is
      --  controlled by software to divide the PLL input clock before the
      --  actual phase-locked loop, as follows: The bitfield can be written
      --  only when the PLL is disabled. Caution: The software must set these
      --  bits so that the PLL input frequency after the /M divider is between
      --  2.66 and 161MHz.
      PLLM           : RCC_PLLCFGR_PLLM_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLL frequency multiplication factor N This bit is controlled by
      --  software to set the division factor of the f<sub>VCO</sub> feedback
      --  divider (that determines the PLL multiplication ratio) as follows:
      --  ... ... The bitfield can be written only when the PLL is disabled.
      --  Caution: The software must set these bits so that the VCO output
      --  frequency is between 96 and 3441MHz.
      PLLN           : RCC_PLLCFGR_PLLN_Field := 16#10#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  PLLPCLK clock output enable This bit is controlled by software to
      --  enable/disable the PLLPCLK clock output of the PLL: Disabling the
      --  PLLPCLK clock output, when not used, allows saving power.
      PLLPEN         : Boolean := False;
      --  PLL VCO division factor P for PLLPCLK clock output This bitfield is
      --  controlled by software. It sets the PLL VCO division factor P as
      --  follows: ... The bitfield can be written only when the PLL is
      --  disabled. Caution: The software must set this bitfield so as not to
      --  exceed 541MHz on this clock.
      PLLP           : RCC_PLLCFGR_PLLP_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PLLQCLK clock output enable This bit is controlled by software to
      --  enable/disable the PLLQCLK clock output of the PLL: Disabling the
      --  PLLQCLK clock output, when not used, allows saving power.
      PLLQEN         : Boolean := False;
      --  PLL VCO division factor Q for PLLQCLK clock output This bitfield is
      --  controlled by software. It sets the PLL VCO division factor Q as
      --  follows: The bitfield can be written only when the PLL is disabled.
      --  Caution: The software must set this bitfield so as not to exceed
      --  541MHz on this clock.
      PLLQ           : RCC_PLLCFGR_PLLQ_Field := 16#0#;
      --  PLLRCLK clock output enable This bit is controlled by software to
      --  enable/disable the PLLRCLK clock output of the PLL: This bit cannot
      --  be written when PLLRCLK output of the PLL is selected for system
      --  clock. Disabling the PLLRCLK clock output, when not used, allows
      --  saving power.
      PLLREN         : Boolean := False;
      --  PLL VCO division factor R for PLLRCLK clock output This bitfield is
      --  controlled by software. It sets the PLL VCO division factor R as
      --  follows: The bitfield can be written only when the PLL is disabled.
      --  The PLLRCLK clock can be selected as system clock. Caution: The
      --  software must set this bitfield so as not to exceed 122MHz on this
      --  clock.
      PLLR           : RCC_PLLCFGR_PLLR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLLCFGR_Register use record
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
   type RCC_CIER_Register is record
      --  LSI ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the LSI oscillator stabilization:
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the LSE oscillator stabilization:
      LSERDYIE       : Boolean := False;
      --  MSI ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the MSI oscillator stabilization.
      MSIRDYIE       : Boolean := False;
      --  HSI16 ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the HSI16 oscillator
      --  stabilization:
      HSIRDYIE       : Boolean := False;
      --  HSE ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the HSE oscillator stabilization:
      HSERDYIE       : Boolean := False;
      --  PLL ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by PLL lock:
      PLLRDYIE       : Boolean := False;
      --  unspecified
      Reserved_6_8   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LSE clock security system interrupt enable Set and cleared by
      --  software to enable/disable interrupt caused by the clock security
      --  system on LSE.
      LSECSSIE       : Boolean := False;
      --  HSI48 ready interrupt enable Set and cleared by software to
      --  enable/disable interrupt caused by the internal HSI48 oscillator.
      HSI48RDYIE     : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIER_Register use record
      LSIRDYIE       at 0 range 0 .. 0;
      LSERDYIE       at 0 range 1 .. 1;
      MSIRDYIE       at 0 range 2 .. 2;
      HSIRDYIE       at 0 range 3 .. 3;
      HSERDYIE       at 0 range 4 .. 4;
      PLLRDYIE       at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      LSECSSIE       at 0 range 9 .. 9;
      HSI48RDYIE     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Clock interrupt flag register
   type RCC_CIFR_Register is record
      --  Read-only. LSI ready interrupt flag Set by hardware when the LSI
      --  clock becomes stable and LSIRDYDIE is set. Cleared by software
      --  setting the LSIRDYC bit.
      LSIRDYF        : Boolean;
      --  Read-only. LSE ready interrupt flag Set by hardware when the LSE
      --  clock becomes stable and LSERDYDIE is set. Cleared by software
      --  setting the LSERDYC bit.
      LSERDYF        : Boolean;
      --  Read-only. MSI ready interrupt flag Set by hardware when the MSI
      --  clock becomes stable and MSIRDYDIE is set. Cleared by software
      --  setting the MSIRDYC bit.
      MSIRDYF        : Boolean;
      --  Read-only. HSI16 ready interrupt flag Set by hardware when the HSI16
      --  clock becomes stable and HSIRDYIE is set in a response to setting the
      --  HSION (refer to Clock control register (RCC_CR)). When HSION is not
      --  set but the HSI16 oscillator is enabled by the peripheral through a
      --  clock request, this bit is not set and no interrupt is generated.
      --  Cleared by software setting the HSIRDYC bit.
      HSIRDYF        : Boolean;
      --  Read-only. HSE ready interrupt flag Set by hardware when the HSE
      --  clock becomes stable and HSERDYIE is set. Cleared by software setting
      --  the HSERDYC bit.
      HSERDYF        : Boolean;
      --  Read-only. PLL ready interrupt flag Set by hardware when the PLL
      --  locks and PLLRDYIE is set. Cleared by software setting the PLLRDYC
      --  bit.
      PLLRDYF        : Boolean;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. HSE clock security system interrupt flag Set by hardware
      --  when a failure is detected in the HSE oscillator. Cleared by software
      --  setting the CSSC bit.
      CSSF           : Boolean;
      --  Read-only. LSE clock security system interrupt flag Set by hardware
      --  when a failure is detected in the LSE oscillator. Cleared by software
      --  by setting the LSECSSC bit.
      LSECSSF        : Boolean;
      --  Read-only. HSI48 ready interrupt flag Set by hardware when the HSI48
      --  clock becomes stable and HSI48RDYIE is set in a response to setting
      --  the HSI48ON (refer to RCC clock recovery RC register (RCC_CRRCR)).
      --  Cleared by software setting the HSI48RDYC bit.
      HSI48RDYF      : Boolean;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CIFR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      MSIRDYF        at 0 range 2 .. 2;
      HSIRDYF        at 0 range 3 .. 3;
      HSERDYF        at 0 range 4 .. 4;
      PLLRDYF        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CSSF           at 0 range 8 .. 8;
      LSECSSF        at 0 range 9 .. 9;
      HSI48RDYF      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Clock interrupt clear register
   type RCC_CICR_Register is record
      --  Write-only. LSI ready interrupt clear This bit is set by software to
      --  clear the LSIRDYF flag.
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE ready interrupt clear This bit is set by software to
      --  clear the LSERDYF flag.
      LSERDYC        : Boolean := False;
      --  Write-only. MSI ready interrupt clear This bit is set by software to
      --  clear the MSIRDYF flag.
      MSIRDYC        : Boolean := False;
      --  Write-only. HSI16 ready interrupt clear This bit is set software to
      --  clear the HSIRDYF flag.
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE ready interrupt clear This bit is set by software to
      --  clear the HSERDYF flag.
      HSERDYC        : Boolean := False;
      --  Write-only. PLL ready interrupt clear This bit is set by software to
      --  clear the PLLRDYF flag.
      PLLRDYC        : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Clock security system interrupt clear This bit is set by
      --  software to clear the HSECSSF flag.
      CSSC           : Boolean := False;
      --  Write-only. LSE Clock security system interrupt clear This bit is set
      --  by software to clear the LSECSSF flag.
      LSECSSC        : Boolean := False;
      --  Write-only. HSI48 oscillator ready interrupt clear This bit is set by
      --  software to clear the HSI48RDYF flag.
      HSI48RDYC      : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CICR_Register use record
      LSIRDYC        at 0 range 0 .. 0;
      LSERDYC        at 0 range 1 .. 1;
      MSIRDYC        at 0 range 2 .. 2;
      HSIRDYC        at 0 range 3 .. 3;
      HSERDYC        at 0 range 4 .. 4;
      PLLRDYC        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CSSC           at 0 range 8 .. 8;
      LSECSSC        at 0 range 9 .. 9;
      HSI48RDYC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  AHB peripheral reset register
   type RCC_AHBRSTR_Register is record
      --  DMA1 and DMAMUX reset Set and cleared by software.
      DMA1RST        : Boolean := False;
      --  DMA2 and DMAMUX reset Set and cleared by software.
      DMA2RST        : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Flash memory interface reset Set and cleared by software. This bit
      --  can only be set when the flash memory is in power down mode.
      FLASHRST       : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CRC reset Set and cleared by software.
      CRCRST         : Boolean := False;
      --  unspecified
      Reserved_13_17 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Random number generator reset Set and cleared by software.
      RNGRST         : Boolean := False;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Touch sensing controller reset Set and cleared by software.
      TSCRST         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHBRSTR_Register use record
      DMA1RST        at 0 range 0 .. 0;
      DMA2RST        at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      FLASHRST       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_17 at 0 range 13 .. 17;
      RNGRST         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      TSCRST         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  I/O port reset register
   type RCC_IOPRSTR_Register is record
      --  I/O port A reset This bit is set and cleared by software.
      GPIOARST      : Boolean := False;
      --  I/O port B reset This bit is set and cleared by software.
      GPIOBRST      : Boolean := False;
      --  I/O port C reset This bit is set and cleared by software.
      GPIOCRST      : Boolean := False;
      --  I/O port D reset This bit is set and cleared by software.
      GPIODRST      : Boolean := False;
      --  I/O port E reset This bit is set and cleared by software.
      GPIOERST      : Boolean := False;
      --  I/O port F reset This bit is set and cleared by software.
      GPIOFRST      : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IOPRSTR_Register use record
      GPIOARST      at 0 range 0 .. 0;
      GPIOBRST      at 0 range 1 .. 1;
      GPIOCRST      at 0 range 2 .. 2;
      GPIODRST      at 0 range 3 .. 3;
      GPIOERST      at 0 range 4 .. 4;
      GPIOFRST      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  APB peripheral reset register 1
   type RCC_APBRSTR1_Register is record
      --  TIM2 timer reset Set and cleared by software.
      TIM2RST        : Boolean := False;
      --  TIM3 timer reset Set and cleared by software.
      TIM3RST        : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TIM6 timer reset Set and cleared by software.
      TIM6RST        : Boolean := False;
      --  TIM7 timer reset Set and cleared by software.
      TIM7RST        : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LPUART2 reset Set and cleared by software.
      LPUART2RST     : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LCD reset<sup>(1)</sup> Set and cleared by software.
      LCDRST         : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPUART3 reset<sup>(1)</sup> Set and cleared by software.
      LPUART3RST     : Boolean := False;
      --  USB reset<sup>(1)</sup> Set and cleared by software.
      USBRST         : Boolean := False;
      --  SPI2 reset Set and cleared by software.
      SPI2RST        : Boolean := False;
      --  SPI3 reset<sup>(1)</sup> Set and cleared by software.
      SPI3RST        : Boolean := False;
      --  CRS reset<sup>(1)</sup> Set and cleared by software.
      CRSRST         : Boolean := False;
      --  USART2 reset Set and cleared by software.
      USART2RST      : Boolean := False;
      --  USART3 reset Set and cleared by software.
      USART3RST      : Boolean := False;
      --  USART4 reset Set and cleared by software.
      USART4RST      : Boolean := False;
      --  LPUART1 reset Set and cleared by software.
      LPUART1RST     : Boolean := False;
      --  I2C1 reset Set and cleared by software.
      I2C1RST        : Boolean := False;
      --  I2C2 reset Set and cleared by software.
      I2C2RST        : Boolean := False;
      --  I2C3 reset Set and cleared by software.
      I2C3RST        : Boolean := False;
      --  OPAMP reset Set and cleared by software.
      OPAMPRST       : Boolean := False;
      --  I2C4 reset<sup>(1)</sup> Set and cleared by software.
      I2C4RST        : Boolean := False;
      --  LPTIM3 reset Set and cleared by software.
      LPTIM3RST      : Boolean := False;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Power interface reset Set and cleared by software.
      PWRRST         : Boolean := False;
      --  DAC1 interface reset Set and cleared by software.
      DAC1RST        : Boolean := False;
      --  Low Power Timer 2 reset Set and cleared by software.
      LPTIM2RST      : Boolean := False;
      --  Low Power Timer 1 reset Set and cleared by software.
      LPTIM1RST      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBRSTR1_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LPUART2RST     at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LCDRST         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      LPUART3RST     at 0 range 12 .. 12;
      USBRST         at 0 range 13 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      SPI3RST        at 0 range 15 .. 15;
      CRSRST         at 0 range 16 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      USART4RST      at 0 range 19 .. 19;
      LPUART1RST     at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      I2C3RST        at 0 range 23 .. 23;
      OPAMPRST       at 0 range 24 .. 24;
      I2C4RST        at 0 range 25 .. 25;
      LPTIM3RST      at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PWRRST         at 0 range 28 .. 28;
      DAC1RST        at 0 range 29 .. 29;
      LPTIM2RST      at 0 range 30 .. 30;
      LPTIM1RST      at 0 range 31 .. 31;
   end record;

   --  APB peripheral reset register 2
   type RCC_APBRSTR2_Register is record
      --  SYSCFG, COMP and VREFBUF reset Set and cleared by software.
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_1_10  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  TIM1 timer reset Set and cleared by software.
      TIM1RST        : Boolean := False;
      --  SPI1 reset Set and cleared by software.
      SPI1RST        : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 reset Set and cleared by software.
      USART1RST      : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM15 timer reset Set and cleared by software.
      TIM15RST       : Boolean := False;
      --  TIM16 timer reset Set and cleared by software.
      TIM16RST       : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADC reset Set and cleared by software.
      ADCRST         : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBRSTR2_Register use record
      SYSCFGRST      at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1RST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15RST       at 0 range 16 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      ADCRST         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  AHB peripheral clock enable register
   type RCC_AHBENR_Register is record
      --  DMA1 and DMAMUX clock enable Set and cleared by software. DMAMUX is
      --  enabled as long as at least one DMA peripheral is enabled.
      DMA1EN         : Boolean := False;
      --  DMA2 and DMAMUX clock enable Set and cleared by software. DMAMUX is
      --  enabled as long as at least one DMA peripheral is enabled.
      DMA2EN         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Flash memory interface clock enable Set and cleared by software. This
      --  bit can only be cleared when the flash memory is in power down mode.
      FLASHEN        : Boolean := True;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CRC clock enable Set and cleared by software.
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_13_17 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Random number generator clock enable Set and cleared by software.
      RNGEN          : Boolean := False;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Touch sensing controller clock enable Set and cleared by software.
      TSCEN          : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHBENR_Register use record
      DMA1EN         at 0 range 0 .. 0;
      DMA2EN         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      FLASHEN        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_17 at 0 range 13 .. 17;
      RNGEN          at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      TSCEN          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  I/O port clock enable register
   type RCC_IOPENR_Register is record
      --  I/O port A clock enable This bit is set and cleared by software.
      GPIOAEN       : Boolean := False;
      --  I/O port B clock enable This bit is set and cleared by software.
      GPIOBEN       : Boolean := False;
      --  I/O port C clock enable This bit is set and cleared by software.
      GPIOCEN       : Boolean := False;
      --  I/O port D clock enable This bit is set and cleared by software.
      GPIODEN       : Boolean := False;
      --  I/O port E clock enable<sup>(1)</sup> This bit is set and cleared by
      --  software.
      GPIOEEN       : Boolean := False;
      --  I/O port F clock enable This bit is set and cleared by software.
      GPIOFEN       : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IOPENR_Register use record
      GPIOAEN       at 0 range 0 .. 0;
      GPIOBEN       at 0 range 1 .. 1;
      GPIOCEN       at 0 range 2 .. 2;
      GPIODEN       at 0 range 3 .. 3;
      GPIOEEN       at 0 range 4 .. 4;
      GPIOFEN       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Debug configuration register
   type RCC_DBGCFGR_Register is record
      --  Debug support clock enable Set and cleared by software.
      DBGEN         : Boolean := False;
      --  Debug support reset Set and cleared by software.
      DBGRST        : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DBGCFGR_Register use record
      DBGEN         at 0 range 0 .. 0;
      DBGRST        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  APB peripheral clock enable register 1
   type RCC_APBENR1_Register is record
      --  TIM2 timer clock enable Set and cleared by software.
      TIM2EN         : Boolean := False;
      --  TIM3 timer clock enable Set and cleared by software.
      TIM3EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TIM6 timer clock enable Set and cleared by software.
      TIM6EN         : Boolean := False;
      --  TIM7 timer clock enable Set and cleared by software.
      TIM7EN         : Boolean := False;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LPUART2 clock enable Set and cleared by software.
      LPUART2EN      : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LCD clock enable<sup>(1)</sup> Set and cleared by software.
      LCDEN          : Boolean := False;
      --  RTC APB clock enable Set and cleared by software.
      RTCAPBEN       : Boolean := False;
      --  WWDG clock enable Set by software to enable the window watchdog
      --  clock. Cleared by hardware system reset This bit can also be set by
      --  hardware if the WWDG_SW option bit is 0.
      WWDGEN         : Boolean := False;
      --  LPUART3 clock enable Set and cleared by software.
      LPUART3EN      : Boolean := False;
      --  USB clock enable<sup>(1)</sup> Set and cleared by software.
      USBEN          : Boolean := False;
      --  SPI2 clock enable Set and cleared by software.
      SPI2EN         : Boolean := False;
      --  SPI3 clock enable<sup>(1)</sup> Set and cleared by software.
      SPI3EN         : Boolean := False;
      --  CRS clock enable<sup>(1)</sup> Set and cleared by software.
      CRSEN          : Boolean := False;
      --  USART2 clock enable Set and cleared by software.
      USART2EN       : Boolean := False;
      --  USART3 clock enable Set and cleared by software.
      USART3EN       : Boolean := False;
      --  USART4 clock enable Set and cleared by software.
      USART4EN       : Boolean := False;
      --  LPUART1 clock enable Set and cleared by software.
      LPUART1EN      : Boolean := False;
      --  I2C1 clock enable Set and cleared by software.
      I2C1EN         : Boolean := False;
      --  I2C2 clock enable Set and cleared by software.
      I2C2EN         : Boolean := False;
      --  I2C3 clock enable Set and cleared by software.
      I2C3EN         : Boolean := False;
      --  OPAMP clock enable Set and cleared by software.
      OPAMPEN        : Boolean := False;
      --  I2C4EN clock enable<sup>(1)</sup> Set and cleared by software.
      I2C4EN         : Boolean := False;
      --  LPTIM3 clock enable Set and cleared by software.
      LPTIM3EN       : Boolean := False;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Power interface clock enable Set and cleared by software.
      PWREN          : Boolean := False;
      --  DAC1 interface clock enable Set and cleared by software.
      DAC1EN         : Boolean := False;
      --  LPTIM2 clock enable Set and cleared by software.
      LPTIM2EN       : Boolean := False;
      --  LPTIM1 clock enable Set and cleared by software.
      LPTIM1EN       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBENR1_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LPUART2EN      at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LCDEN          at 0 range 9 .. 9;
      RTCAPBEN       at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      LPUART3EN      at 0 range 12 .. 12;
      USBEN          at 0 range 13 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      CRSEN          at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      USART4EN       at 0 range 19 .. 19;
      LPUART1EN      at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      I2C3EN         at 0 range 23 .. 23;
      OPAMPEN        at 0 range 24 .. 24;
      I2C4EN         at 0 range 25 .. 25;
      LPTIM3EN       at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PWREN          at 0 range 28 .. 28;
      DAC1EN         at 0 range 29 .. 29;
      LPTIM2EN       at 0 range 30 .. 30;
      LPTIM1EN       at 0 range 31 .. 31;
   end record;

   --  APB peripheral clock enable register 2
   type RCC_APBENR2_Register is record
      --  SYSCFG, COMP and VREFBUF clock enable Set and cleared by software.
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_1_10  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  TIM1 timer clock enable Set and cleared by software.
      TIM1EN         : Boolean := False;
      --  SPI1 clock enable Set and cleared by software.
      SPI1EN         : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 clock enable Set and cleared by software.
      USART1EN       : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TIM15 timer clock enable Set and cleared by software.
      TIM15EN        : Boolean := False;
      --  TIM16 timer clock enable Set and cleared by software.
      TIM16EN        : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADC clock enable Set and cleared by software.
      ADCEN          : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBENR2_Register use record
      SYSCFGEN       at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15EN        at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      ADCEN          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  AHB peripheral clock enable in Sleep/Stop mode register
   type RCC_AHBSMENR_Register is record
      --  DMA1 and DMAMUX clock enable during Sleep mode Set and cleared by
      --  software. Clock to DMAMUX during Sleep mode is enabled as long as the
      --  clock in Sleep mode is enabled to at least one DMA peripheral.
      DMA1SMEN       : Boolean := True;
      --  DMA2 and DMAMUX clock enable during Sleep mode Set and cleared by
      --  software. Clock to DMAMUX during Sleep mode is enabled as long as the
      --  clock in Sleep mode is enabled to at least one DMA peripheral.
      DMA2SMEN       : Boolean := True;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Flash memory interface clock enable during Sleep mode Set and cleared
      --  by software. This bit can be activated only when the flash memory is
      --  in power down mode.
      FLASHSMEN      : Boolean := True;
      --  SRAM clock enable during Sleep mode Set and cleared by software.
      SRAMSMEN       : Boolean := True;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CRC clock enable during Sleep mode Set and cleared by software.
      CRCSMEN        : Boolean := True;
      --  unspecified
      Reserved_13_17 : Interfaces.Bit_Types.UInt5 := 16#8#;
      --  RNG clock enable during Sleep and Stop mode Set and cleared by
      --  software.
      RNGSMEN        : Boolean := True;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  TSC clock enable during Sleep and Stop mode Set and cleared by
      --  software.
      TSCSMEN        : Boolean := True;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_AHBSMENR_Register use record
      DMA1SMEN       at 0 range 0 .. 0;
      DMA2SMEN       at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      FLASHSMEN      at 0 range 8 .. 8;
      SRAMSMEN       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CRCSMEN        at 0 range 12 .. 12;
      Reserved_13_17 at 0 range 13 .. 17;
      RNGSMEN        at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      TSCSMEN        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  I/O port in Sleep mode clock enable register
   type RCC_IOPSMENR_Register is record
      --  I/O port A clock enable during Sleep mode Set and cleared by
      --  software.
      GPIOASMEN     : Boolean := True;
      --  I/O port B clock enable during Sleep mode Set and cleared by
      --  software.
      GPIOBSMEN     : Boolean := True;
      --  I/O port C clock enable during Sleep mode Set and cleared by
      --  software.
      GPIOCSMEN     : Boolean := True;
      --  I/O port D clock enable during Sleep mode<sup>(1)</sup> Set and
      --  cleared by software.
      GPIODSMEN     : Boolean := True;
      --  I/O port E clock enable during Sleep mode Set and cleared by
      --  software.
      GPIOESMEN     : Boolean := True;
      --  I/O port F clock enable during Sleep mode Set and cleared by
      --  software.
      GPIOFSMEN     : Boolean := True;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IOPSMENR_Register use record
      GPIOASMEN     at 0 range 0 .. 0;
      GPIOBSMEN     at 0 range 1 .. 1;
      GPIOCSMEN     at 0 range 2 .. 2;
      GPIODSMEN     at 0 range 3 .. 3;
      GPIOESMEN     at 0 range 4 .. 4;
      GPIOFSMEN     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  APB peripheral clock enable in Sleep/Stop mode register 1
   type RCC_APBSMENR1_Register is record
      --  TIM2 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM2SMEN       : Boolean := True;
      --  TIM3 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM3SMEN       : Boolean := True;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  TIM6 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM6SMEN       : Boolean := True;
      --  TIM7 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM7SMEN       : Boolean := True;
      --  unspecified
      Reserved_6_6   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LPUART2 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      LPUART2SMEN    : Boolean := False;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  LCD clock enable during Sleep mode<sup>(1)</sup> Set and cleared by
      --  software.
      LCDSMEN        : Boolean := False;
      --  RTC APB clock enable during Sleep mode Set and cleared by software.
      RTCAPBSMEN     : Boolean := True;
      --  WWDG clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      WWDGSMEN       : Boolean := True;
      --  LPUART3 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      LPUART3SMEN    : Boolean := False;
      --  USB clock enable during Sleep mode<sup>(1)</sup> Set and cleared by
      --  software.
      USBSMEN        : Boolean := False;
      --  SPI2 clock enable during Sleep mode Set and cleared by software.
      SPI2SMEN       : Boolean := True;
      --  SPI3 clock enable during Sleep mode<sup>(1)</sup> Set and cleared by
      --  software.
      SPI3SMEN       : Boolean := False;
      --  CRS clock enable during Sleep and Stop modes<sup>(1)</sup> Set and
      --  cleared by software.
      CRSSMEN        : Boolean := False;
      --  USART2 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      USART2SMEN     : Boolean := True;
      --  USART3 clock enable during Sleep mode Set and cleared by software.
      USART3SMEN     : Boolean := True;
      --  USART4 clock enable during Sleep mode Set and cleared by software.
      USART4SMEN     : Boolean := True;
      --  LPUART1 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      LPUART1SMEN    : Boolean := True;
      --  I2C1 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      I2C1SMEN       : Boolean := True;
      --  I2C2 clock enable during Sleep mode Set and cleared by software.
      I2C2SMEN       : Boolean := True;
      --  I2C3 clock enable during Sleep mode Set and cleared by software.
      I2C3SMEN       : Boolean := False;
      --  OPAMP clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      OPAMPSMEN      : Boolean := True;
      --  I2C4 clock enable during Sleep mode<sup>(1)</sup> Set and cleared by
      --  software.
      I2C4SMEN       : Boolean := True;
      --  Low power timer 3 clock enable during Sleep mode Set and cleared by
      --  software.
      LPTIM3SMEN     : Boolean := True;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#1#;
      --  Power interface clock enable during Sleep mode Set and cleared by
      --  software.
      PWRSMEN        : Boolean := True;
      --  DAC1 interface clock enable during Sleep and Stop modes Set and
      --  cleared by software.
      DAC1SMEN       : Boolean := True;
      --  Low Power Timer 2 clock enable during Sleep and Stop modes Set and
      --  cleared by software.
      LPTIM2SMEN     : Boolean := True;
      --  Low Power Timer 1 clock enable during Sleep and Stop modes Set and
      --  cleared by software.
      LPTIM1SMEN     : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBSMENR1_Register use record
      TIM2SMEN       at 0 range 0 .. 0;
      TIM3SMEN       at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TIM6SMEN       at 0 range 4 .. 4;
      TIM7SMEN       at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LPUART2SMEN    at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LCDSMEN        at 0 range 9 .. 9;
      RTCAPBSMEN     at 0 range 10 .. 10;
      WWDGSMEN       at 0 range 11 .. 11;
      LPUART3SMEN    at 0 range 12 .. 12;
      USBSMEN        at 0 range 13 .. 13;
      SPI2SMEN       at 0 range 14 .. 14;
      SPI3SMEN       at 0 range 15 .. 15;
      CRSSMEN        at 0 range 16 .. 16;
      USART2SMEN     at 0 range 17 .. 17;
      USART3SMEN     at 0 range 18 .. 18;
      USART4SMEN     at 0 range 19 .. 19;
      LPUART1SMEN    at 0 range 20 .. 20;
      I2C1SMEN       at 0 range 21 .. 21;
      I2C2SMEN       at 0 range 22 .. 22;
      I2C3SMEN       at 0 range 23 .. 23;
      OPAMPSMEN      at 0 range 24 .. 24;
      I2C4SMEN       at 0 range 25 .. 25;
      LPTIM3SMEN     at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PWRSMEN        at 0 range 28 .. 28;
      DAC1SMEN       at 0 range 29 .. 29;
      LPTIM2SMEN     at 0 range 30 .. 30;
      LPTIM1SMEN     at 0 range 31 .. 31;
   end record;

   --  APB peripheral clock enable in Sleep/Stop mode register 2
   type RCC_APBSMENR2_Register is record
      --  SYSCFG, COMP and VREFBUF clock enable during Sleep and Stop modes Set
      --  and cleared by software.
      SYSCFGSMEN     : Boolean := True;
      --  unspecified
      Reserved_1_10  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  TIM1 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM1SMEN       : Boolean := True;
      --  SPI1 clock enable during Sleep mode Set and cleared by software.
      SPI1SMEN       : Boolean := True;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  USART1 clock enable during Sleep and Stop modes Set and cleared by
      --  software.
      USART1SMEN     : Boolean := True;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#1#;
      --  TIM15 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM15SMEN      : Boolean := True;
      --  TIM16 timer clock enable during Sleep mode Set and cleared by
      --  software.
      TIM16SMEN      : Boolean := True;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#1#;
      --  ADC clock enable during Sleep mode Set and cleared by software.
      ADCSMEN        : Boolean := True;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBSMENR2_Register use record
      SYSCFGSMEN     at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1SMEN       at 0 range 11 .. 11;
      SPI1SMEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1SMEN     at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15SMEN      at 0 range 16 .. 16;
      TIM16SMEN      at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      ADCSMEN        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_CCIPR_USART1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_USART2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_LPUART3SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_LPUART2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_LPUART1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_I2C1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_I2C3SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_LPTIM1SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_LPTIM2SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_LPTIM3SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_CLK48SEL_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_CCIPR_ADCSEL_Field is Interfaces.Bit_Types.UInt2;

   --  Peripherals independent clock configuration register
   type RCC_CCIPR_Register is record
      --  USART1 clock source selection This bitfield is controlled by software
      --  to select USART1 clock source as follows:
      USART1SEL      : RCC_CCIPR_USART1SEL_Field := 16#0#;
      --  USART2 clock source selection This bitfield is controlled by software
      --  to select USART2 clock source as follows:
      USART2SEL      : RCC_CCIPR_USART2SEL_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  LPUART3 clock source selection<sup>(1)</sup> This bitfield is
      --  controlled by software to select LPUART3 clock source as follows:
      LPUART3SEL     : RCC_CCIPR_LPUART3SEL_Field := 16#0#;
      --  LPUART2 clock source selection This bitfield is controlled by
      --  software to select LPUART2 clock source as follows:
      LPUART2SEL     : RCC_CCIPR_LPUART2SEL_Field := 16#0#;
      --  LPUART1 clock source selection This bitfield is controlled by
      --  software to select LPUART1 clock source as follows:
      LPUART1SEL     : RCC_CCIPR_LPUART1SEL_Field := 16#0#;
      --  I2C1 clock source selection This bitfield is controlled by software
      --  to select I2C1 clock source as follows:
      I2C1SEL        : RCC_CCIPR_I2C1SEL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  I2C3 clock source selection This bitfield is controlled by software
      --  to select I2C3 clock source as follows:
      I2C3SEL        : RCC_CCIPR_I2C3SEL_Field := 16#0#;
      --  LPTIM1 clock source selection This bitfield is controlled by software
      --  to select LPTIM1 clock source as follows:
      LPTIM1SEL      : RCC_CCIPR_LPTIM1SEL_Field := 16#0#;
      --  LPTIM2 clock source selection This bitfield is controlled by software
      --  to select LPTIM2 clock source as follows:
      LPTIM2SEL      : RCC_CCIPR_LPTIM2SEL_Field := 16#0#;
      --  LPTIM3 clock source selection This bitfield is controlled by software
      --  to select LPTIM3 clock source as follows:
      LPTIM3SEL      : RCC_CCIPR_LPTIM3SEL_Field := 16#0#;
      --  TIM1 clock source selection This bit is set and cleared by software.
      --  It selects TIM1 clock source as follows:
      TIM1SEL        : Boolean := False;
      --  TIM15 clock source selection This bit is set and cleared by software.
      --  It selects TIM15 clock source as follows:
      TIM15SEL       : Boolean := False;
      --  481MHz clock source selection This bitfield is controlled by software
      --  to select the 481MHz clock source used by the USB FS and the RNG:
      CLK48SEL       : RCC_CCIPR_CLK48SEL_Field := 16#0#;
      --  ADCs clock source selection This bitfield is controlled by software
      --  to select the clock source for ADC:
      ADCSEL         : RCC_CCIPR_ADCSEL_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCIPR_Register use record
      USART1SEL      at 0 range 0 .. 1;
      USART2SEL      at 0 range 2 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      LPUART3SEL     at 0 range 6 .. 7;
      LPUART2SEL     at 0 range 8 .. 9;
      LPUART1SEL     at 0 range 10 .. 11;
      I2C1SEL        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      I2C3SEL        at 0 range 16 .. 17;
      LPTIM1SEL      at 0 range 18 .. 19;
      LPTIM2SEL      at 0 range 20 .. 21;
      LPTIM3SEL      at 0 range 22 .. 23;
      TIM1SEL        at 0 range 24 .. 24;
      TIM15SEL       at 0 range 25 .. 25;
      CLK48SEL       at 0 range 26 .. 27;
      ADCSEL         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_BDCR_LSEDRV_Field is Interfaces.Bit_Types.UInt2;
   subtype RCC_BDCR_RTCSEL_Field is Interfaces.Bit_Types.UInt2;

   --  RTC domain control register
   type RCC_BDCR_Register is record
      --  LSE oscillator enable Set and cleared by software to enable LSE
      --  oscillator:
      LSEON          : Boolean := False;
      --  Read-only. LSE oscillator ready Set and cleared by hardware to
      --  indicate when the external 321kHz oscillator is ready (stable): After
      --  the LSEON bit is cleared, LSERDY goes low after 6 external low-speed
      --  oscillator clock cycles.
      LSERDY         : Boolean := False;
      --  LSE oscillator bypass Set and cleared by software to bypass the LSE
      --  oscillator (in debug mode). This bit can be written only when the
      --  external 321kHz oscillator is disabled (LSEON=0 and LSERDY=0).
      LSEBYP         : Boolean := False;
      --  LSE oscillator drive capability Set by software to select the LSE
      --  oscillator drive capability as follows: Applicable when the LSE
      --  oscillator is in Xtal mode, as opposed to bypass mode.
      LSEDRV         : RCC_BDCR_LSEDRV_Field := 16#0#;
      --  CSS on LSE enable Set by software to enable the clock security system
      --  on LSE (321kHz) oscillator as follows: LSECSSON must be enabled after
      --  the LSE oscillator is enabled (LSEON bit enabled) and ready (LSERDY
      --  flag set by hardware), and after the RTCSEL bit is selected. Once
      --  enabled, this bit cannot be disabled, except after a LSE failure
      --  detection (LSECSSD =1). In that case the software must disable the
      --  LSECSSON bit.
      LSECSSON       : Boolean := False;
      --  Read-only. CSS on LSE failure Detection Set by hardware to indicate
      --  when a failure is detected by the clock security system on the
      --  external 321kHz oscillator (LSE):
      LSECSSD        : Boolean := False;
      --  LSE clock enable for system usage This bit must be set by software to
      --  enable the LSE clock for a system usage.
      LSESYSEN       : Boolean := False;
      --  RTC clock source selection Set by software to select the clock source
      --  for the RTC as follows: Once the RTC clock source is selected, it
      --  cannot be changed anymore unless the RTC domain is reset, or unless a
      --  failure is detected on LSE (LSECSSD is set). The BDRST bit can be
      --  used to reset this bitfield to 00.
      RTCSEL         : RCC_BDCR_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. LSE clock ready for system usage This flag is set by
      --  hardware to indicate that the LSE clock is ready for being used by
      --  the system (see LSESYSEN bit). This flag is set when LSE clock is
      --  ready (LSEON1=11 and LSERDY1=11) and two LSE clock cycles after that
      --  LSESYSEN is set. Cleared by hardware to indicate that the LSE clock
      --  is not ready to be used by the system.
      LSESYSRDY      : Boolean := False;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  RTC clock enable Set and cleared by software. The bit enables clock
      --  to RTC and TAMP.
      RTCEN          : Boolean := False;
      --  RTC domain software reset Set and cleared by software to reset the
      --  RTC domain:
      BDRST          : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Low-speed clock output (LSCO) enable Set and cleared by software.
      LSCOEN         : Boolean := False;
      --  Low-speed clock output selection Set and cleared by software to
      --  select the low-speed output clock:
      LSCOSEL        : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
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
      Reserved_12_14 at 0 range 12 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      LSCOEN         at 0 range 24 .. 24;
      LSCOSEL        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype RCC_CSR_MSISRANGE_Field is Interfaces.Bit_Types.UInt4;

   --  Control/status register
   type RCC_CSR_Register is record
      --  LSI oscillator enable Set and cleared by software to enable/disable
      --  the LSI oscillator:
      LSION          : Boolean := False;
      --  Read-only. LSI oscillator ready Set and cleared by hardware to
      --  indicate when the LSI oscillator is ready (stable): After the LSION
      --  bit is cleared, LSIRDY goes low after 3 LSI oscillator clock cycles.
      --  This bit can be set even if LSION = 0 if the LSI is requested by the
      --  Clock Security System on LSE, by the Independent Watchdog or by the
      --  RTC.
      LSIRDY         : Boolean := False;
      --  Internal low-speed oscillator pre-divided by 128 Set and reset by
      --  hardware to indicate when the low-speed internal RC oscillator has to
      --  be divided by 128. The software has to switch off the LSI before
      --  changing this bit.
      LSIPREDIV      : Boolean := False;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  MSI range after Standby mode Set by software to chose the MSI
      --  frequency at startup. This range is used after exiting Standby mode
      --  until MSIRGSEL is set. After a pad or a power-on reset, the range is
      --  always 41MHz. MSISRANGE[3:0] can be written only when MSIRGSEL1=11.
      --  Others: Reserved Note: Changing the MSISRANGE[3:0] does not change
      --  the current MSI frequency.
      MSISRANGE      : RCC_CSR_MSISRANGE_Field := 16#0#;
      --  unspecified
      Reserved_12_22 : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  Remove reset flags Set by software to clear the reset flags.
      RMVF           : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Option byte loader reset flag Set by hardware when a reset
      --  from the Option byte loading occurs. Cleared by setting the RMVF bit.
      OBLRSTF        : Boolean := False;
      --  Read-only. Pin reset flag Set by hardware when a reset from the NRST
      --  pin occurs. Cleared by setting the RMVF bit.
      PINRSTF        : Boolean := False;
      --  Read-only. BOR or POR/PDR flag Set by hardware when a BOR or POR/PDR
      --  occurs. Cleared by setting the RMVF bit.
      PWRRSTF        : Boolean := False;
      --  Read-only. Software reset flag Set by hardware when a software reset
      --  occurs. Cleared by setting the RMVF bit.
      SFTRSTF        : Boolean := False;
      --  Read-only. Independent window watchdog reset flag Set by hardware
      --  when an independent watchdog reset domain occurs. Cleared by setting
      --  the RMVF bit.
      IWDGRSTF       : Boolean := False;
      --  Read-only. Window watchdog reset flag Set by hardware when a window
      --  watchdog reset occurs. Cleared by setting the RMVF bit.
      WWDGRSTF       : Boolean := False;
      --  Read-only. Low-power reset flag Set by hardware when a reset occurs
      --  due to illegal Stop, Standby, or Shutdown mode entry. Cleared by
      --  setting the RMVF bit. This operates only if nRST_STOP, nRST_STDBY or
      --  nRST_SHDW option bits are cleared.
      LPWRRSTF       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CSR_Register use record
      LSION          at 0 range 0 .. 0;
      LSIRDY         at 0 range 1 .. 1;
      LSIPREDIV      at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      MSISRANGE      at 0 range 8 .. 11;
      Reserved_12_22 at 0 range 12 .. 22;
      RMVF           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      OBLRSTF        at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      PWRRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRRSTF       at 0 range 31 .. 31;
   end record;

   subtype RCC_CRRCR_HSI48CAL_Field is Interfaces.Bit_Types.UInt9;

   --  RCC clock recovery RC register
   type RCC_CRRCR_Register is record
      --  HSI48 RC oscillator enable<sup>(1)</sup>
      HSI48ON        : Boolean := False;
      --  Read-only. HSI48 clock ready flag<sup>(1)</sup> The flag is set when
      --  the HSI48 clock is ready for use.
      HSI48RDY       : Boolean := False;
      --  unspecified
      Reserved_2_6   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Read-only. HSI48 clock calibration These bits are initialized at
      --  startup with the factory-programmed HSI48 calibration trim value.
      HSI48CAL       : RCC_CRRCR_HSI48CAL_Field := 16#110#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CRRCR_Register use record
      HSI48ON        at 0 range 0 .. 0;
      HSI48RDY       at 0 range 1 .. 1;
      Reserved_2_6   at 0 range 2 .. 6;
      HSI48CAL       at 0 range 7 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RCC address block description
   type RCC_Peripheral is record
      --  Clock control register
      RCC_CR        : aliased RCC_CR_Register;
      --  Internal clock sources calibration register
      RCC_ICSCR     : aliased RCC_ICSCR_Register;
      --  Clock configuration register
      RCC_CFGR      : aliased RCC_CFGR_Register;
      --  PLL configuration register
      RCC_PLLCFGR   : aliased RCC_PLLCFGR_Register;
      --  Clock interrupt enable register
      RCC_CIER      : aliased RCC_CIER_Register;
      --  Clock interrupt flag register
      RCC_CIFR      : aliased RCC_CIFR_Register;
      --  Clock interrupt clear register
      RCC_CICR      : aliased RCC_CICR_Register;
      --  AHB peripheral reset register
      RCC_AHBRSTR   : aliased RCC_AHBRSTR_Register;
      --  I/O port reset register
      RCC_IOPRSTR   : aliased RCC_IOPRSTR_Register;
      --  APB peripheral reset register 1
      RCC_APBRSTR1  : aliased RCC_APBRSTR1_Register;
      --  APB peripheral reset register 2
      RCC_APBRSTR2  : aliased RCC_APBRSTR2_Register;
      --  AHB peripheral clock enable register
      RCC_AHBENR    : aliased RCC_AHBENR_Register;
      --  I/O port clock enable register
      RCC_IOPENR    : aliased RCC_IOPENR_Register;
      --  Debug configuration register
      RCC_DBGCFGR   : aliased RCC_DBGCFGR_Register;
      --  APB peripheral clock enable register 1
      RCC_APBENR1   : aliased RCC_APBENR1_Register;
      --  APB peripheral clock enable register 2
      RCC_APBENR2   : aliased RCC_APBENR2_Register;
      --  AHB peripheral clock enable in Sleep/Stop mode register
      RCC_AHBSMENR  : aliased RCC_AHBSMENR_Register;
      --  I/O port in Sleep mode clock enable register
      RCC_IOPSMENR  : aliased RCC_IOPSMENR_Register;
      --  APB peripheral clock enable in Sleep/Stop mode register 1
      RCC_APBSMENR1 : aliased RCC_APBSMENR1_Register;
      --  APB peripheral clock enable in Sleep/Stop mode register 2
      RCC_APBSMENR2 : aliased RCC_APBSMENR2_Register;
      --  Peripherals independent clock configuration register
      RCC_CCIPR     : aliased RCC_CCIPR_Register;
      --  RTC domain control register
      RCC_BDCR      : aliased RCC_BDCR_Register;
      --  Control/status register
      RCC_CSR       : aliased RCC_CSR_Register;
      --  RCC clock recovery RC register
      RCC_CRRCR     : aliased RCC_CRRCR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      RCC_CR        at 16#0# range 0 .. 31;
      RCC_ICSCR     at 16#4# range 0 .. 31;
      RCC_CFGR      at 16#8# range 0 .. 31;
      RCC_PLLCFGR   at 16#C# range 0 .. 31;
      RCC_CIER      at 16#18# range 0 .. 31;
      RCC_CIFR      at 16#1C# range 0 .. 31;
      RCC_CICR      at 16#20# range 0 .. 31;
      RCC_AHBRSTR   at 16#28# range 0 .. 31;
      RCC_IOPRSTR   at 16#2C# range 0 .. 31;
      RCC_APBRSTR1  at 16#38# range 0 .. 31;
      RCC_APBRSTR2  at 16#40# range 0 .. 31;
      RCC_AHBENR    at 16#48# range 0 .. 31;
      RCC_IOPENR    at 16#4C# range 0 .. 31;
      RCC_DBGCFGR   at 16#50# range 0 .. 31;
      RCC_APBENR1   at 16#58# range 0 .. 31;
      RCC_APBENR2   at 16#60# range 0 .. 31;
      RCC_AHBSMENR  at 16#68# range 0 .. 31;
      RCC_IOPSMENR  at 16#6C# range 0 .. 31;
      RCC_APBSMENR1 at 16#78# range 0 .. 31;
      RCC_APBSMENR2 at 16#80# range 0 .. 31;
      RCC_CCIPR     at 16#88# range 0 .. 31;
      RCC_BDCR      at 16#90# range 0 .. 31;
      RCC_CSR       at 16#94# range 0 .. 31;
      RCC_CRRCR     at 16#98# range 0 .. 31;
   end record;

   --  RCC address block description
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end Interfaces.STM32.RCC;
