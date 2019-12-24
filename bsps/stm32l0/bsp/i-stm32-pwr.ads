--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L0x3.svd

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

   subtype CR_PLS_Field is Interfaces.Bit_Types.UInt3;
   subtype CR_VOS_Field is Interfaces.Bit_Types.UInt2;

   --  power control register
   type CR_Register is record
      --  Low-power deep sleep
      LPDS           : Boolean := False;
      --  Power down deepsleep
      PDDS           : Boolean := False;
      --  Clear wakeup flag
      CWUF           : Boolean := False;
      --  Clear standby flag
      CSBF           : Boolean := False;
      --  Power voltage detector enable
      PVDE           : Boolean := False;
      --  PVD level selection
      PLS            : CR_PLS_Field := 16#0#;
      --  Disable backup domain write protection
      DBP            : Boolean := False;
      --  Ultra-low-power mode
      ULP            : Boolean := False;
      --  Fast wakeup
      FWU            : Boolean := False;
      --  Voltage scaling range selection
      VOS            : CR_VOS_Field := 16#2#;
      --  Deep sleep mode with Flash memory kept off
      DS_EE_KOFF     : Boolean := False;
      --  Low power run mode
      LPRUN          : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      LPDS           at 0 range 0 .. 0;
      PDDS           at 0 range 1 .. 1;
      CWUF           at 0 range 2 .. 2;
      CSBF           at 0 range 3 .. 3;
      PVDE           at 0 range 4 .. 4;
      PLS            at 0 range 5 .. 7;
      DBP            at 0 range 8 .. 8;
      ULP            at 0 range 9 .. 9;
      FWU            at 0 range 10 .. 10;
      VOS            at 0 range 11 .. 12;
      DS_EE_KOFF     at 0 range 13 .. 13;
      LPRUN          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  power control/status register
   type CSR_Register is record
      --  Read-only. Wakeup flag
      WUF            : Boolean := False;
      --  Read-only. Standby flag
      SBF            : Boolean := False;
      --  Read-only. PVD output
      PVDO           : Boolean := False;
      --  Read-only. Backup regulator ready
      BRR            : Boolean := False;
      --  Read-only. Voltage Scaling select flag
      VOSF           : Boolean := False;
      --  Read-only. Regulator LP flag
      REGLPF         : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Enable WKUP pin
      EWUP           : Boolean := False;
      --  Backup regulator enable
      BRE            : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      WUF            at 0 range 0 .. 0;
      SBF            at 0 range 1 .. 1;
      PVDO           at 0 range 2 .. 2;
      BRR            at 0 range 3 .. 3;
      VOSF           at 0 range 4 .. 4;
      REGLPF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EWUP           at 0 range 8 .. 8;
      BRE            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  power control register
      CR  : aliased CR_Register;
      --  power control/status register
      CSR : aliased CSR_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      CSR at 16#4# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => System'To_Address (16#40007000#);

end Interfaces.STM32.PWR;
