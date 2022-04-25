--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.DCACHE is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype DCACHE_CR_CACHECMD_Field is Interfaces.Bit_Types.UInt3;

   --  DCACHE control register
   type DCACHE_CR_Register is record
      --  EN
      EN             : Boolean := False;
      --  Write-only. CACHEINV
      CACHEINV       : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  CACHECMD
      CACHECMD       : DCACHE_CR_CACHECMD_Field := 16#0#;
      --  Write-only. STARTCMD
      STARTCMD       : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  RHITMEN
      RHITMEN        : Boolean := False;
      --  RMISSMEN
      RMISSMEN       : Boolean := False;
      --  RHITMRST
      RHITMRST       : Boolean := False;
      --  RMISSMRST
      RMISSMRST      : Boolean := False;
      --  WHITMEN
      WHITMEN        : Boolean := False;
      --  WMISSMEN
      WMISSMEN       : Boolean := False;
      --  WHITMRST
      WHITMRST       : Boolean := False;
      --  WMISSMRST
      WMISSMRST      : Boolean := False;
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  HBURST
      HBURST         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_CR_Register use record
      EN             at 0 range 0 .. 0;
      CACHEINV       at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      CACHECMD       at 0 range 8 .. 10;
      STARTCMD       at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      RHITMEN        at 0 range 16 .. 16;
      RMISSMEN       at 0 range 17 .. 17;
      RHITMRST       at 0 range 18 .. 18;
      RMISSMRST      at 0 range 19 .. 19;
      WHITMEN        at 0 range 20 .. 20;
      WMISSMEN       at 0 range 21 .. 21;
      WHITMRST       at 0 range 22 .. 22;
      WMISSMRST      at 0 range 23 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      HBURST         at 0 range 31 .. 31;
   end record;

   --  DCACHE status register
   type DCACHE_SR_Register is record
      --  Read-only. BUSYF
      BUSYF         : Boolean;
      --  Read-only. BSYENDF
      BSYENDF       : Boolean;
      --  Read-only. ERRF
      ERRF          : Boolean;
      --  Read-only. BUSYCMDF
      BUSYCMDF      : Boolean;
      --  Read-only. CMDENDF
      CMDENDF       : Boolean;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_SR_Register use record
      BUSYF         at 0 range 0 .. 0;
      BSYENDF       at 0 range 1 .. 1;
      ERRF          at 0 range 2 .. 2;
      BUSYCMDF      at 0 range 3 .. 3;
      CMDENDF       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DCACHE interrupt enable register
   type DCACHE_IER_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  BSYENDIE
      BSYENDIE      : Boolean := False;
      --  ERRIE
      ERRIE         : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  CMDENDIE
      CMDENDIE      : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      BSYENDIE      at 0 range 1 .. 1;
      ERRIE         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CMDENDIE      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DCACHE flag clear register
   type DCACHE_FCR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. CBSYENDF
      CBSYENDF      : Boolean := False;
      --  Write-only. CERRF
      CERRF         : Boolean := False;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. CCMDENDF
      CCMDENDF      : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_FCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CBSYENDF      at 0 range 1 .. 1;
      CERRF         at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCMDENDF      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DCACHE_RMMONR_MRISSMON_Field is Interfaces.Bit_Types.UInt16;

   --  DCACHE read-miss monitor register
   type DCACHE_RMMONR_Register is record
      --  Read-only. RMISSMON
      MRISSMON       : DCACHE_RMMONR_MRISSMON_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_RMMONR_Register use record
      MRISSMON       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DCACHE_WMMONR_WMISSMON_Field is Interfaces.Bit_Types.UInt16;

   --  write-miss monitor register
   type DCACHE_WMMONR_Register is record
      --  Read-only. WMISSMON
      WMISSMON       : DCACHE_WMMONR_WMISSMON_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_WMMONR_Register use record
      WMISSMON       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DCACHE
   type DCACHE_Peripheral is record
      --  DCACHE control register
      DCACHE_CR         : aliased DCACHE_CR_Register;
      --  DCACHE status register
      DCACHE_SR         : aliased DCACHE_SR_Register;
      --  DCACHE interrupt enable register
      DCACHE_IER        : aliased DCACHE_IER_Register;
      --  DCACHE flag clear register
      DCACHE_FCR        : aliased DCACHE_FCR_Register;
      --  DCACHE read-hit monitor register
      DCACHE_RHMONR     : aliased Interfaces.Bit_Types.UInt32;
      --  DCACHE read-miss monitor register
      DCACHE_RMMONR     : aliased DCACHE_RMMONR_Register;
      --  write-hit monitor register
      DCACHE_WHMONR     : aliased Interfaces.Bit_Types.UInt32;
      --  write-miss monitor register
      DCACHE_WMMONR     : aliased DCACHE_WMMONR_Register;
      --  command range start address register
      DCACHE_CMDRSADDRR : aliased Interfaces.Bit_Types.UInt32;
      --  command range start address register
      DCACHE_CMDREADDRR : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for DCACHE_Peripheral use record
      DCACHE_CR         at 16#0# range 0 .. 31;
      DCACHE_SR         at 16#4# range 0 .. 31;
      DCACHE_IER        at 16#8# range 0 .. 31;
      DCACHE_FCR        at 16#C# range 0 .. 31;
      DCACHE_RHMONR     at 16#10# range 0 .. 31;
      DCACHE_RMMONR     at 16#14# range 0 .. 31;
      DCACHE_WHMONR     at 16#20# range 0 .. 31;
      DCACHE_WMMONR     at 16#24# range 0 .. 31;
      DCACHE_CMDRSADDRR at 16#28# range 0 .. 31;
      DCACHE_CMDREADDRR at 16#2C# range 0 .. 31;
   end record;

   --  DCACHE
   DCACHE_Periph : aliased DCACHE_Peripheral
     with Import, Address => DCACHE_Base;

   --  DCACHE
   SEC_DCACHE_Periph : aliased DCACHE_Peripheral
     with Import, Address => SEC_DCACHE_Base;

end Interfaces.STM32.DCACHE;
