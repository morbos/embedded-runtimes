--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L151.svd

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
      LPSDSR         : Boolean := False;
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
      --  Ultralow power mode
      ULP            : Boolean := False;
      --  Fast wakeup
      FWU            : Boolean := False;
      --  Voltage scaling range selection
      VOS            : CR_VOS_Field := 16#2#;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Low power run mode
      LPRUN          : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      LPSDSR         at 0 range 0 .. 0;
      PDDS           at 0 range 1 .. 1;
      CWUF           at 0 range 2 .. 2;
      CSBF           at 0 range 3 .. 3;
      PVDE           at 0 range 4 .. 4;
      PLS            at 0 range 5 .. 7;
      DBP            at 0 range 8 .. 8;
      ULP            at 0 range 9 .. 9;
      FWU            at 0 range 10 .. 10;
      VOS            at 0 range 11 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      LPRUN          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  CSR_EWUP array
   type CSR_EWUP_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for CSR_EWUP
   type CSR_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EWUP as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  EWUP as an array
            Arr : CSR_EWUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CSR_EWUP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  power control/status register
   type CSR_Register is record
      --  Read-only. Wakeup flag
      WUF            : Boolean := False;
      --  Read-only. Standby flag
      SBF            : Boolean := False;
      --  Read-only. PVD output
      PVDO           : Boolean := False;
      --  Read-only. Internal voltage reference (VREFINT) ready flag
      VREFINTRDYF    : Boolean := True;
      --  Read-only. Voltage Scaling select flag
      VOSF           : Boolean := False;
      --  Read-only. Regulator LP flag
      REGLPF         : Boolean := False;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Enable WKUP pin 1
      EWUP           : CSR_EWUP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      WUF            at 0 range 0 .. 0;
      SBF            at 0 range 1 .. 1;
      PVDO           at 0 range 2 .. 2;
      VREFINTRDYF    at 0 range 3 .. 3;
      VOSF           at 0 range 4 .. 4;
      REGLPF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EWUP           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
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
