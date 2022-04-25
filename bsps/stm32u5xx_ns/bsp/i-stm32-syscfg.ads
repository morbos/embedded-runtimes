--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.SYSCFG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  SYSCFG secure configuration register
   type SECCFGR_Register is record
      --  SYSCFG clock control security
      SYSCFGSEC     : Boolean := False;
      --  CLASSBSEC
      CLASSBSEC     : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  FPUSEC
      FPUSEC        : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SECCFGR_Register use record
      SYSCFGSEC     at 0 range 0 .. 0;
      CLASSBSEC     at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      FPUSEC        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  configuration register 1
   type CFGR1_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  I/O analog switch voltage booster enable
      BOOSTEN        : Boolean := False;
      --  GPIO analog switch control voltage selection
      ANASWVDD       : Boolean := False;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  PB6_FMP
      PB6_FMP        : Boolean := False;
      --  PB7_FMP
      PB7_FMP        : Boolean := False;
      --  PB8_FMP
      PB8_FMP        : Boolean := False;
      --  PB9_FMP
      PB9_FMP        : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      BOOSTEN        at 0 range 8 .. 8;
      ANASWVDD       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      PB6_FMP        at 0 range 16 .. 16;
      PB7_FMP        at 0 range 17 .. 17;
      PB8_FMP        at 0 range 18 .. 18;
      PB9_FMP        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FPUIMR_FPU_IE_Field is Interfaces.Bit_Types.UInt6;

   --  FPU interrupt mask register
   type FPUIMR_Register is record
      --  Floating point unit interrupts enable bits
      FPU_IE        : FPUIMR_FPU_IE_Field := 16#1F#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPUIMR_Register use record
      FPU_IE        at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  SYSCFG CPU non-secure lock register
   type CNSLCKR_Register is record
      --  VTOR_NS register lock
      LOCKNSVTOR    : Boolean := False;
      --  Non-secure MPU registers lock
      LOCKNSMPU     : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNSLCKR_Register use record
      LOCKNSVTOR    at 0 range 0 .. 0;
      LOCKNSMPU     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SYSCFG CPU secure lock register
   type CSLOCKR_Register is record
      --  LOCKSVTAIRCR
      LOCKSVTAIRCR  : Boolean := False;
      --  LOCKSMPU
      LOCKSMPU      : Boolean := False;
      --  LOCKSAU
      LOCKSAU       : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSLOCKR_Register use record
      LOCKSVTAIRCR  at 0 range 0 .. 0;
      LOCKSMPU      at 0 range 1 .. 1;
      LOCKSAU       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  configuration register 2
   type CFGR2_Register is record
      --  LOCKUP (hardfault) output enable bit
      CLL           : Boolean := False;
      --  SRAM ECC lock bit
      SPL           : Boolean := False;
      --  PVD lock enable bit
      PVDL          : Boolean := False;
      --  ECC Lock
      ECCL          : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR2_Register use record
      CLL           at 0 range 0 .. 0;
      SPL           at 0 range 1 .. 1;
      PVDL          at 0 range 2 .. 2;
      ECCL          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  memory erase status register
   type MESR_Register is record
      --  MCLR
      MCLR           : Boolean := False;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  IPMEE
      IPMEE          : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MESR_Register use record
      MCLR           at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      IPMEE          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  CCCSR_RDY array
   type CCCSR_RDY_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CCCSR_RDY
   type CCCSR_RDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDY as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RDY as an array
            Arr : CCCSR_RDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CCCSR_RDY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  compensation cell control/status register
   type CCCSR_Register is record
      --  EN1
      EN1            : Boolean := False;
      --  CS1
      CS1            : Boolean := True;
      --  EN2
      EN2            : Boolean := False;
      --  CS2
      CS2            : Boolean := True;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read-only. RDY1
      RDY            : CCCSR_RDY_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCCSR_Register use record
      EN1            at 0 range 0 .. 0;
      CS1            at 0 range 1 .. 1;
      EN2            at 0 range 2 .. 2;
      CS2            at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      RDY            at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CCVR_NCV1_Field is Interfaces.Bit_Types.UInt4;
   subtype CCVR_PCV1_Field is Interfaces.Bit_Types.UInt4;
   subtype CCVR_NCV2_Field is Interfaces.Bit_Types.UInt4;
   subtype CCVR_PCV2_Field is Interfaces.Bit_Types.UInt4;

   --  compensation cell value register
   type CCVR_Register is record
      --  Read-only. NCV1
      NCV1           : CCVR_NCV1_Field;
      --  Read-only. PCV1
      PCV1           : CCVR_PCV1_Field;
      --  Read-only. NCV2
      NCV2           : CCVR_NCV2_Field;
      --  Read-only. PCV2
      PCV2           : CCVR_PCV2_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCVR_Register use record
      NCV1           at 0 range 0 .. 3;
      PCV1           at 0 range 4 .. 7;
      NCV2           at 0 range 8 .. 11;
      PCV2           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCCR_NCC1_Field is Interfaces.Bit_Types.UInt4;
   subtype CCCR_PCC1_Field is Interfaces.Bit_Types.UInt4;
   subtype CCCR_NCC2_Field is Interfaces.Bit_Types.UInt4;
   subtype CCCR_PCC2_Field is Interfaces.Bit_Types.UInt4;

   --  compensation cell code register
   type CCCR_Register is record
      --  NCC1
      NCC1           : CCCR_NCC1_Field := 16#8#;
      --  PCC1
      PCC1           : CCCR_PCC1_Field := 16#7#;
      --  NCC2
      NCC2           : CCCR_NCC2_Field := 16#8#;
      --  PCC2
      PCC2           : CCCR_PCC2_Field := 16#7#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCCR_Register use record
      NCC1           at 0 range 0 .. 3;
      PCC1           at 0 range 4 .. 7;
      NCC2           at 0 range 8 .. 11;
      PCC2           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RSSCMDR_RSSCMD_Field is Interfaces.Bit_Types.UInt16;

   --  RSS command register
   type RSSCMDR_Register is record
      --  RSS commands
      RSSCMD         : RSSCMDR_RSSCMD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSSCMDR_Register use record
      RSSCMD         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  USB Type C and Power Delivery register
   type UCPDR_Register is record
      --  CC1ENRXFILTER
      CC1ENRXFILTER : Boolean := False;
      --  CC2ENRXFILTER
      CC2ENRXFILTER : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPDR_Register use record
      CC1ENRXFILTER at 0 range 0 .. 0;
      CC2ENRXFILTER at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System configuration controller
   type SYSCFG_Peripheral is record
      --  SYSCFG secure configuration register
      SECCFGR : aliased SECCFGR_Register;
      --  configuration register 1
      CFGR1   : aliased CFGR1_Register;
      --  FPU interrupt mask register
      FPUIMR  : aliased FPUIMR_Register;
      --  SYSCFG CPU non-secure lock register
      CNSLCKR : aliased CNSLCKR_Register;
      --  SYSCFG CPU secure lock register
      CSLOCKR : aliased CSLOCKR_Register;
      --  configuration register 2
      CFGR2   : aliased CFGR2_Register;
      --  memory erase status register
      MESR    : aliased MESR_Register;
      --  compensation cell control/status register
      CCCSR   : aliased CCCSR_Register;
      --  compensation cell value register
      CCVR    : aliased CCVR_Register;
      --  compensation cell code register
      CCCR    : aliased CCCR_Register;
      --  RSS command register
      RSSCMDR : aliased RSSCMDR_Register;
      --  USB Type C and Power Delivery register
      UCPDR   : aliased UCPDR_Register;
   end record
     with Volatile;

   for SYSCFG_Peripheral use record
      SECCFGR at 16#0# range 0 .. 31;
      CFGR1   at 16#4# range 0 .. 31;
      FPUIMR  at 16#8# range 0 .. 31;
      CNSLCKR at 16#C# range 0 .. 31;
      CSLOCKR at 16#10# range 0 .. 31;
      CFGR2   at 16#14# range 0 .. 31;
      MESR    at 16#18# range 0 .. 31;
      CCCSR   at 16#1C# range 0 .. 31;
      CCVR    at 16#20# range 0 .. 31;
      CCCR    at 16#24# range 0 .. 31;
      RSSCMDR at 16#2C# range 0 .. 31;
      UCPDR   at 16#70# range 0 .. 31;
   end record;

   --  System configuration controller
   SEC_SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SEC_SYSCFG_Base;

   --  System configuration controller
   SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_Base;

end Interfaces.STM32.SYSCFG;
