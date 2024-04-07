--
--  Copyright (C) 2024, AdaCore
--

--  This spec has been automatically generated from STM32U073.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.PWR is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype PWR_CR1_LPMS_Field is Interfaces.Bit_Types.UInt3;
   subtype PWR_CR1_VOS_Field is Interfaces.Bit_Types.UInt2;

   --  Power control register 1
   type PWR_CR1_Register is record
      --  Low-power mode selection These bits select the low-power mode entered
      --  when CPU enters the deepsleep mode. 1xx: Shutdown mode Note: If LPR
      --  bit is set, Stop 2 mode cannot be selected and Stop 1 mode shall be
      --  entered instead of Stop 2. Note: In Standby mode, SRAM2 can be
      --  preserved or not, depending on RRS bit configuration in PWR_CR3.
      LPMS           : PWR_CR1_LPMS_Field := 16#0#;
      --  Flash memory powered down during Stop mode. This bit determines
      --  whether the flash memory is put in power-down mode or remains in idle
      --  mode when the device enters Stop mode.
      FPD_STOP       : Boolean := True;
      --  Flash memory powered down during Low-power run mode. This bit
      --  determines whether the flash memory is put in power-down mode or
      --  remains in idle mode when the device enters Low-power sleep mode.
      FPD_LPRUN      : Boolean := False;
      --  Flash memory powered down during Low-power sleep mode. This bit
      --  determines whether the flash memory is put in power-down mode or
      --  remains in idle mode when the device enters Low-power sleep mode.
      FPD_LPSLP      : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Disable backup domain write protection In reset state, the RTC and
      --  backup registers are protected against parasitic write access. This
      --  bit must be set to enable write access to these registers.
      DBP            : Boolean := False;
      --  Voltage scaling range selection
      VOS            : PWR_CR1_VOS_Field := 16#1#;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Low-power run When this bit is set, the regulator is switched from
      --  main mode (MR) to low-power mode (LPR). Note: Stop 2 mode cannot be
      --  entered when LPR bit is set. Stop 1 is entered instead.
      LPR            : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR1_Register use record
      LPMS           at 0 range 0 .. 2;
      FPD_STOP       at 0 range 3 .. 3;
      FPD_LPRUN      at 0 range 4 .. 4;
      FPD_LPSLP      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DBP            at 0 range 8 .. 8;
      VOS            at 0 range 9 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      LPR            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype PWR_CR2_PLS_Field is Interfaces.Bit_Types.UInt3;

   --  PWR_CR2_PVME array
   type PWR_CR2_PVME_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PWR_CR2_PVME
   type PWR_CR2_PVME_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PVME as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  PVME as an array
            Arr : PWR_CR2_PVME_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PWR_CR2_PVME_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power control register 2
   type PWR_CR2_Register is record
      --  Programmable voltage detector enable Note: This bit is
      --  write-protected when the bit PVDL (PVD Lock) is set in the SYSCFG_CBR
      --  register. Note: This bit is reset only by a system reset.
      PVDE           : Boolean := False;
      --  Programmable voltage detector level selection. These bits select the
      --  voltage threshold detected by the programmable voltage detector:
      --  Note: These bits are write-protected when the bit PVDL (PVD Lock) is
      --  set in the SYSCFG_CBR register. Note: These bits are reset only by a
      --  system reset.
      PLS            : PWR_CR2_PLS_Field := 16#0#;
      --  Peripheral voltage monitoring 1 enable: V<sub>DDUSB</sub> vs. 1.21V
      PVME           : PWR_CR2_PVME_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_9   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  V<sub>DDUSB</sub> USB supply valid This bit is used to validate the
      --  V<sub>DDUSB</sub> supply for electrical and logical isolation
      --  purpose. Setting this bit is mandatory to use the USB FS peripheral.
      --  If V<sub>DDUSB</sub> is not always present in the application, the
      --  PVM can be used to determine whether this supply is ready or not.
      USV            : Boolean := False;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR2_Register use record
      PVDE           at 0 range 0 .. 0;
      PLS            at 0 range 1 .. 3;
      PVME           at 0 range 4 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      USV            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  PWR_CR3_EWUP array
   type PWR_CR3_EWUP_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for PWR_CR3_EWUP
   type PWR_CR3_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EWUP as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  EWUP as an array
            Arr : PWR_CR3_EWUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for PWR_CR3_EWUP_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Power control register 3
   type PWR_CR3_Register is record
      --  Enable Wake-up pin WKUP1 When this bit is set, the external wake-up
      --  pin WKUP1 is enabled and triggers a wake-up from Standby or Shutdown
      --  event when a rising or a falling edge occurs. The active edge is
      --  configured via the WP1 bit in the PWR_CR4 register.
      EWUP           : PWR_CR3_EWUP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Enable Wake-up pin WKUP7. When this bit is set, the external wake-up
      --  pin WKUP7 is enabled and triggers a wake-up from Standby or Shutdown
      --  event when a rising or a falling edge occurs.The active edge is
      --  configured via the WP7 bit in the PWR_CR4 register.
      EWUP7          : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SRAM2 retention in Standby mode
      RRS            : Boolean := False;
      --  Enable ULP sampling When this bit is set, the BORL, BORH and PVD are
      --  periodically sampled instead continuous monitoring to reduce power
      --  consumption. Fast supply drop between two sample/compare phases is
      --  not detected in this mode. This bit has impact only on STOP2, Standby
      --  and shutdown low power modes.
      ENULP          : Boolean := False;
      --  Apply pull-up and pull-down configuration When this bit is set, the
      --  I/O pull-up and pull-down configurations defined in the PWR_PUCRx and
      --  PWR_PDCRx registers are applied. When this bit is cleared, the
      --  PWR_PUCRx and PWR_PDCRx registers are not applied to the I/Os,
      --  instead the I/Os are in floating mode during Standby or configured
      --  according GPIO controller GPIOx_PUPDR register during RUN mode.
      APC            : Boolean := False;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Enable internal wake-up line
      EIWUL          : Boolean := True;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR3_Register use record
      EWUP           at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EWUP7          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RRS            at 0 range 8 .. 8;
      ENULP          at 0 range 9 .. 9;
      APC            at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      EIWUL          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_CR4_WP array
   type PWR_CR4_WP_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for PWR_CR4_WP
   type PWR_CR4_WP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WP as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  WP as an array
            Arr : PWR_CR4_WP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for PWR_CR4_WP_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Power control register 4
   type PWR_CR4_Register is record
      --  Wake-up pin WKUP1 polarity This bit defines the polarity used for an
      --  event detection on external wake-up pin, WKUP1
      WP             : PWR_CR4_WP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Wake-up pin WKUP7 polarity This bit defines the polarity used for an
      --  event detection on external wake-up pin, WKUP7
      WP7            : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  V<sub>BAT</sub> battery charging enable
      VBE            : Boolean := False;
      --  V<sub>BAT</sub> battery charging resistor selection
      VBRS           : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR4_Register use record
      WP             at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      WP7            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      VBE            at 0 range 8 .. 8;
      VBRS           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PWR_SR1_WUF array
   type PWR_SR1_WUF_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for PWR_SR1_WUF
   type PWR_SR1_WUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUF as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  WUF as an array
            Arr : PWR_SR1_WUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for PWR_SR1_WUF_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype PWR_SR1_STOPF_Field is Interfaces.Bit_Types.UInt3;

   --  Power status register 1
   type PWR_SR1_Register is record
      --  Read-only. Wake-up flag 1 This bit is set when a wake-up event is
      --  detected on wake-up pin, WKUP1. It is cleared by writing 1 in the
      --  CWUF1 bit of the PWR_SCR register.
      WUF            : PWR_SR1_WUF_Field;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit;
      --  Read-only. Wake-up flag 7 This bit is set when a wake-up event is
      --  detected on wake-up pin, WKUP7. It is cleared by writing 1 in the
      --  CWUF7 bit of the PWR_SCR register.
      WUF7           : Boolean;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Standby flag This bit is set by hardware when the device
      --  enters the Standby mode and is cleared by setting the CSBF bit in the
      --  PWR_SCR register, or by a power-on reset. It is not cleared by the
      --  system reset.
      SBF            : Boolean;
      --  Read-only. Stop Flags These bits are set by hardware when the device
      --  enters any stop mode and are cleared by setting the CSBF bit in the
      --  PWR_SCR register, or by a power-on reset. It is not cleared by the
      --  system reset.
      STOPF          : PWR_SR1_STOPF_Field;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3;
      --  Read-only. Wake-up flag internal This bit is set when a wake-up is
      --  detected on the internal wake-up line. It is cleared when all
      --  internal wake-up sources are cleared.
      WUFI           : Boolean;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SR1_Register use record
      WUF            at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      WUF7           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SBF            at 0 range 8 .. 8;
      STOPF          at 0 range 9 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      WUFI           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_SR2_PVMO array
   type PWR_SR2_PVMO_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_SR2_PVMO
   type PWR_SR2_PVMO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PVMO as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PVMO as an array
            Arr : PWR_SR2_PVMO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_SR2_PVMO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Power status register 2
   type PWR_SR2_Register is record
      --  unspecified
      Reserved_0_6   : Interfaces.Bit_Types.UInt7;
      --  Read-only. Flash ready flag This bit is set by hardware to indicate
      --  when the flash memory is readey to be accessed after wake-up from
      --  power-down. To place the flash memory in power-down, set either
      --  FPD_LPRUN, FPD_LPSLP or FPD_STP bits. Note : If the system boots from
      --  SRAM, the user application must wait until the FLASH_RDY bit is set,
      --  prior to jumping to flash memory.
      FLASH_RDY      : Boolean;
      --  Read-only. Low-power regulator started This bit provides the
      --  information whether the low-power regulator is ready after a power-on
      --  reset or a Standby/Shutdown. If the Standby mode is entered while
      --  REGLPS bit is still cleared, the wake-up from Standby mode time may
      --  be increased.
      REGLPS         : Boolean;
      --  Read-only. Low-power regulator flag This bit is set by hardware when
      --  the MCU is in Low-power run mode. When the MCU exits from the
      --  Low-power run mode, this bit remains at 1 until the regulator is
      --  ready in main mode. A polling on this bit must be done before
      --  increasing the product frequency. This bit is cleared by hardware
      --  when the regulator is ready.
      REGLPF         : Boolean;
      --  Read-only. Voltage scaling flag A delay is required for the internal
      --  regulator to be ready after the voltage scaling has been changed.
      --  VOSF indicates that the regulator reached the voltage level defined
      --  with VOS bits of the PWR_CR1 register.
      VOSF           : Boolean;
      --  Read-only. Programmable voltage detector output
      PVDO           : Boolean;
      --  Read-only. Peripheral voltage monitoring output: V<sub>DDUSB</sub>
      --  vs. 1.2 V Note: PVMO1 is cleared when PVM1 is disabled (PVME1 = 0).
      --  After enabling PVM1, the PVM1 output is valid after the PVM1 wake-up
      --  time.
      PVMO1          : Boolean;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit;
      --  Read-only. Peripheral voltage monitoring output: V<sub>DDA</sub> vs.
      --  1.621V Note: PVMO3 is cleared when PVM3 is disabled (PVME3 = 0).
      --  After enabling PVM3, the PVM3 output is valid after the PVM3 wake-up
      --  time.
      PVMO           : PWR_SR2_PVMO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SR2_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      FLASH_RDY      at 0 range 7 .. 7;
      REGLPS         at 0 range 8 .. 8;
      REGLPF         at 0 range 9 .. 9;
      VOSF           at 0 range 10 .. 10;
      PVDO           at 0 range 11 .. 11;
      PVMO1          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PVMO           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_SCR_CWUF array
   type PWR_SCR_CWUF_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for PWR_SCR_CWUF
   type PWR_SCR_CWUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CWUF as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  CWUF as an array
            Arr : PWR_SCR_CWUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for PWR_SCR_CWUF_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  Power status clear register
   type PWR_SCR_Register is record
      --  Write-only. Clear wake-up flag 1 Setting this bit clears the WUF1
      --  flag in the PWR_SR1 register.
      CWUF          : PWR_SCR_CWUF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_5  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Clear wake-up flag 7 Setting this bit clears the WUF7
      --  flag in the PWR_SR1 register.
      CWUF7         : Boolean := False;
      --  unspecified
      Reserved_7_7  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Clear standby flag Setting this bit clears the SBF flag
      --  in the PWR_SR1 register.
      CSBF          : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SCR_Register use record
      CWUF          at 0 range 0 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      CWUF7         at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      CSBF          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  PWR_PUCRA_PU array
   type PWR_PUCRA_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRA_PU
   type PWR_PUCRA_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRA_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRA_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port A pull-up control register
   type PWR_PUCRA_Register is record
      --  Port A pull-up bit y (y1=115 to 0) When set, this bit activates the
      --  pull-up on PA[y] when APC bit is set in PWR_CR3 register. If the
      --  corresponding PDy bit is also set, the pull-up is not activated and
      --  the pull-down is activated instead with highest priority.
      PU             : PWR_PUCRA_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRA_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRA_PD array
   type PWR_PDCRA_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRA_PD
   type PWR_PDCRA_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRA_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRA_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port A pull-down control register
   type PWR_PDCRA_Register is record
      --  Port A pull-down bit y When set, this bit activates the pull-down on
      --  PA[y] when APC bit is set in PWR_CR3 register.
      PD             : PWR_PDCRA_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRA_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRB_PU array
   type PWR_PUCRB_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRB_PU
   type PWR_PUCRB_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRB_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRB_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port B pull-up control register
   type PWR_PUCRB_Register is record
      --  Port B pull-up bit y When set, this bit activates the pull-up on
      --  PB[y] when APC bit is set in PWR_CR3 register.
      PU             : PWR_PUCRB_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRB_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRB_PD array
   type PWR_PDCRB_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRB_PD
   type PWR_PDCRB_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRB_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRB_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port B pull-down control register
   type PWR_PDCRB_Register is record
      --  Port B pull-down bit y When set, this bit activates the pull-down on
      --  PB[y] when APC bit is set in PWR_CR3 register.
      PD             : PWR_PDCRB_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRB_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRC_PU array
   type PWR_PUCRC_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRC_PU
   type PWR_PUCRC_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRC_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRC_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port C pull-up control register
   type PWR_PUCRC_Register is record
      --  Port C pull-up bit y When set, this bit activates the pull-up on
      --  PC[y] when APC bit is set in PWR_CR3 register. If the corresponding
      --  PDy bit is also set, the pull-up is not activated and the pull-down
      --  is activated instead with highest priority.
      PU             : PWR_PUCRC_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRC_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRC_PD array
   type PWR_PDCRC_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRC_PD
   type PWR_PDCRC_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRC_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRC_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port C pull-down control register
   type PWR_PDCRC_Register is record
      --  Port C pull-down bit y When set, this bit activates the pull-down on
      --  PC[y] when APC bit is set in PWR_CR3 register.
      PD             : PWR_PDCRC_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRC_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRD_PU array
   type PWR_PUCRD_PU_Field_Array is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for PWR_PUCRD_PU
   type PWR_PUCRD_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRD_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PWR_PUCRD_PU_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  PWR_PUCRD_PU array
   type PWR_PUCRD_PU_Field_Array_1 is array (8 .. 13) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for PWR_PUCRD_PU
   type PWR_PUCRD_PU_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRD_PU_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWR_PUCRD_PU_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Power Port D pull-up control register
   type PWR_PUCRD_Register is record
      --  Port D pull-up bit y When set, this bit activates the pull-up on
      --  PD[y] when APC bit is set in PWR_CR3 register. If the corresponding
      --  PDy bit is also set, the pull-up is not activated and the pull-down
      --  is activated instead with highest priority.
      PU             : PWR_PUCRD_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Port D pull-up bit y When set, this bit activates the pull-up on
      --  PD[y] when APC bit is set in PWR_CR3 register. If the corresponding
      --  PDy bit is also set, the pull-up is not activated and the pull-down
      --  is activated instead with highest priority.
      PU_1           : PWR_PUCRD_PU_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRD_Register use record
      PU             at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PU_1           at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  PWR_PDCRD_PD array
   type PWR_PDCRD_PD_Field_Array is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for PWR_PDCRD_PD
   type PWR_PDCRD_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRD_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PWR_PDCRD_PD_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  PWR_PDCRD_PD array
   type PWR_PDCRD_PD_Field_Array_1 is array (8 .. 13) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for PWR_PDCRD_PD
   type PWR_PDCRD_PD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRD_PD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWR_PDCRD_PD_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Power Port D pull-down control register
   type PWR_PDCRD_Register is record
      --  Port D pull-down bit y When set, this bit activates the pull-down on
      --  PD[y] when APC bit is set in PWR_CR3 register.
      PD             : PWR_PDCRD_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Port D pull-down bit y When set, this bit activates the pull-down on
      --  PD[y] when APC bit is set in PWR_CR3 register.
      PD_1           : PWR_PDCRD_PD_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRD_Register use record
      PD             at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PD_1           at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  PWR_PUCRE_PU array
   type PWR_PUCRE_PU_Field_Array is array (7 .. 9) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PWR_PUCRE_PU
   type PWR_PUCRE_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRE_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PWR_PUCRE_PU_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power Port E pull-up control register
   type PWR_PUCRE_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Port E pull-up bit 3 When set, this bit activates the pull-up on
      --  PE[y] when APC bit is set in PWR_CR3 register. If the corresponding
      --  PDy bit is also set, the pull-up is not activated and the pull-down
      --  is activated instead with highest priority.
      PU3            : Boolean := False;
      --  unspecified
      Reserved_4_6   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Port E pull-up bit y When set, this bit activates the pull-up on
      --  PE[y] when APC bit is set in PWR_CR3 register. If the corresponding
      --  PDy bit is also set, the pull-up is not activated and the pull-down
      --  is activated instead with highest priority.
      PU             : PWR_PUCRE_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRE_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PU3            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      PU             at 0 range 7 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PWR_PDCRE_PD array
   type PWR_PDCRE_PD_Field_Array is array (7 .. 9) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PWR_PDCRE_PD
   type PWR_PDCRE_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRE_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PWR_PDCRE_PD_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power Port E pull-down control register
   type PWR_PDCRE_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Port E pull-down bit 3 When set, this bit activates the pull-down on
      --  PE[y] when APC bit is set in PWR_CR3 register.
      PD3            : Boolean := False;
      --  unspecified
      Reserved_4_6   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Port E pull-down bit y When set, this bit activates the pull-down on
      --  PE[y] when APC bit is set in PWR_CR3 register.
      PD             : PWR_PDCRE_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRE_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PD3            at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      PD             at 0 range 7 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PWR_PUCRF_PU array
   type PWR_PUCRF_PU_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_PUCRF_PU
   type PWR_PUCRF_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRF_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_PUCRF_PU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Power Port F pull-up control register
   type PWR_PUCRF_Register is record
      --  Port F pull-up bit y When set, this bit activates the pull-up on
      --  PH[y] when APC bit is set in PWR_CR3 register. If the corresponding
      --  PDy bit is also set, the pull-up is not activated and the pull-down
      --  is activated instead with highest priority.
      PU            : PWR_PUCRF_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRF_Register use record
      PU            at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWR_PDCRF_PD array
   type PWR_PDCRF_PD_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_PDCRF_PD
   type PWR_PDCRF_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRF_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_PDCRF_PD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Power Port F pull-down control register
   type PWR_PDCRF_Register is record
      --  Port F pull-down bit y When set, this bit activates the pull-down on
      --  PH[y] when APC bit is set in PWR_CR3 register.
      PD            : PWR_PDCRF_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRF_Register use record
      PD            at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PWR register block
   type PWR_Peripheral is record
      --  Power control register 1
      PWR_CR1   : aliased PWR_CR1_Register;
      --  Power control register 2
      PWR_CR2   : aliased PWR_CR2_Register;
      --  Power control register 3
      PWR_CR3   : aliased PWR_CR3_Register;
      --  Power control register 4
      PWR_CR4   : aliased PWR_CR4_Register;
      --  Power status register 1
      PWR_SR1   : aliased PWR_SR1_Register;
      --  Power status register 2
      PWR_SR2   : aliased PWR_SR2_Register;
      --  Power status clear register
      PWR_SCR   : aliased PWR_SCR_Register;
      --  Power Port A pull-up control register
      PWR_PUCRA : aliased PWR_PUCRA_Register;
      --  Power Port A pull-down control register
      PWR_PDCRA : aliased PWR_PDCRA_Register;
      --  Power Port B pull-up control register
      PWR_PUCRB : aliased PWR_PUCRB_Register;
      --  Power Port B pull-down control register
      PWR_PDCRB : aliased PWR_PDCRB_Register;
      --  Power Port C pull-up control register
      PWR_PUCRC : aliased PWR_PUCRC_Register;
      --  Power Port C pull-down control register
      PWR_PDCRC : aliased PWR_PDCRC_Register;
      --  Power Port D pull-up control register
      PWR_PUCRD : aliased PWR_PUCRD_Register;
      --  Power Port D pull-down control register
      PWR_PDCRD : aliased PWR_PDCRD_Register;
      --  Power Port E pull-up control register
      PWR_PUCRE : aliased PWR_PUCRE_Register;
      --  Power Port E pull-down control register
      PWR_PDCRE : aliased PWR_PDCRE_Register;
      --  Power Port F pull-up control register
      PWR_PUCRF : aliased PWR_PUCRF_Register;
      --  Power Port F pull-down control register
      PWR_PDCRF : aliased PWR_PDCRF_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      PWR_CR1   at 16#0# range 0 .. 31;
      PWR_CR2   at 16#4# range 0 .. 31;
      PWR_CR3   at 16#8# range 0 .. 31;
      PWR_CR4   at 16#C# range 0 .. 31;
      PWR_SR1   at 16#10# range 0 .. 31;
      PWR_SR2   at 16#14# range 0 .. 31;
      PWR_SCR   at 16#18# range 0 .. 31;
      PWR_PUCRA at 16#20# range 0 .. 31;
      PWR_PDCRA at 16#24# range 0 .. 31;
      PWR_PUCRB at 16#28# range 0 .. 31;
      PWR_PDCRB at 16#2C# range 0 .. 31;
      PWR_PUCRC at 16#30# range 0 .. 31;
      PWR_PDCRC at 16#34# range 0 .. 31;
      PWR_PUCRD at 16#38# range 0 .. 31;
      PWR_PDCRD at 16#3C# range 0 .. 31;
      PWR_PUCRE at 16#40# range 0 .. 31;
      PWR_PDCRE at 16#44# range 0 .. 31;
      PWR_PUCRF at 16#48# range 0 .. 31;
      PWR_PDCRF at 16#4C# range 0 .. 31;
   end record;

   --  PWR register block
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

end Interfaces.STM32.PWR;
