--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.ICache is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  ICACHE control register
   type ICACHE_CR_Register is record
      --  EN
      EN             : Boolean := False;
      --  Write-only. CACHEINV
      CACHEINV       : Boolean := False;
      --  WAYSEL
      WAYSEL         : Boolean := True;
      --  unspecified
      Reserved_3_15  : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  HITMEN
      HITMEN         : Boolean := False;
      --  MISSMEN
      MISSMEN        : Boolean := False;
      --  HITMRST
      HITMRST        : Boolean := False;
      --  MISSMRST
      MISSMRST       : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_CR_Register use record
      EN             at 0 range 0 .. 0;
      CACHEINV       at 0 range 1 .. 1;
      WAYSEL         at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      HITMEN         at 0 range 16 .. 16;
      MISSMEN        at 0 range 17 .. 17;
      HITMRST        at 0 range 18 .. 18;
      MISSMRST       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  ICACHE status register
   type ICACHE_SR_Register is record
      --  Read-only. BUSYF
      BUSYF         : Boolean;
      --  Read-only. BSYENDF
      BSYENDF       : Boolean;
      --  Read-only. ERRF
      ERRF          : Boolean;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_SR_Register use record
      BUSYF         at 0 range 0 .. 0;
      BSYENDF       at 0 range 1 .. 1;
      ERRF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  ICACHE interrupt enable register
   type ICACHE_IER_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  BSYENDIE
      BSYENDIE      : Boolean := False;
      --  ERRIE
      ERRIE         : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      BSYENDIE      at 0 range 1 .. 1;
      ERRIE         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  ICACHE flag clear register
   type ICACHE_FCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. CBSYENDF
      CBSYENDF      : Boolean := False;
      --  Write-only. CERRF
      CERRF         : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_FCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CBSYENDF      at 0 range 1 .. 1;
      CERRF         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ICACHE_MMONR_MISSMON_Field is Interfaces.Bit_Types.UInt16;

   --  ICACHE miss monitor register
   type ICACHE_MMONR_Register is record
      --  Read-only. MISSMON
      MISSMON        : ICACHE_MMONR_MISSMON_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_MMONR_Register use record
      MISSMON        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ICACHE_CRR_BASEADDR_Field is Interfaces.Bit_Types.Byte;
   subtype ICACHE_CRR_RSIZE_Field is Interfaces.Bit_Types.UInt3;
   subtype ICACHE_CRR_REMAPADDR_Field is Interfaces.Bit_Types.UInt11;

   --  ICACHE region configuration register
   type ICACHE_CRR_Register is record
      --  BASEADDR
      BASEADDR       : ICACHE_CRR_BASEADDR_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  RSIZE
      RSIZE          : ICACHE_CRR_RSIZE_Field := 16#1#;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  REN
      REN            : Boolean := False;
      --  REMAPADDR
      REMAPADDR      : ICACHE_CRR_REMAPADDR_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  MSTSEL
      MSTSEL         : Boolean := False;
      --  unspecified
      Reserved_29_30 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  HBURST
      HBURST         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_CRR_Register use record
      BASEADDR       at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      RSIZE          at 0 range 9 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      REN            at 0 range 15 .. 15;
      REMAPADDR      at 0 range 16 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      MSTSEL         at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      HBURST         at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ICache
   type ICache_Peripheral is record
      --  ICACHE control register
      ICACHE_CR    : aliased ICACHE_CR_Register;
      --  ICACHE status register
      ICACHE_SR    : aliased ICACHE_SR_Register;
      --  ICACHE interrupt enable register
      ICACHE_IER   : aliased ICACHE_IER_Register;
      --  ICACHE flag clear register
      ICACHE_FCR   : aliased ICACHE_FCR_Register;
      --  ICACHE hit monitor register
      ICACHE_HMONR : aliased Interfaces.Bit_Types.UInt32;
      --  ICACHE miss monitor register
      ICACHE_MMONR : aliased ICACHE_MMONR_Register;
      --  ICACHE region configuration register
      ICACHE_CRR0  : aliased ICACHE_CRR_Register;
      --  ICACHE region configuration register
      ICACHE_CRR1  : aliased ICACHE_CRR_Register;
      --  ICACHE region configuration register
      ICACHE_CRR2  : aliased ICACHE_CRR_Register;
      --  ICACHE region configuration register
      ICACHE_CRR3  : aliased ICACHE_CRR_Register;
   end record
     with Volatile;

   for ICache_Peripheral use record
      ICACHE_CR    at 16#0# range 0 .. 31;
      ICACHE_SR    at 16#4# range 0 .. 31;
      ICACHE_IER   at 16#8# range 0 .. 31;
      ICACHE_FCR   at 16#C# range 0 .. 31;
      ICACHE_HMONR at 16#10# range 0 .. 31;
      ICACHE_MMONR at 16#14# range 0 .. 31;
      ICACHE_CRR0  at 16#20# range 0 .. 31;
      ICACHE_CRR1  at 16#24# range 0 .. 31;
      ICACHE_CRR2  at 16#28# range 0 .. 31;
      ICACHE_CRR3  at 16#2C# range 0 .. 31;
   end record;

   --  ICache
   ICache_Periph : aliased ICache_Peripheral
     with Import, Address => ICache_Base;

   --  ICache
   SEC_ICache_Periph : aliased ICache_Peripheral
     with Import, Address => SEC_ICache_Base;

end Interfaces.STM32.ICache;
