--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L0x3.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.Flash is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Access control register
   type ACR_Register is record
      --  Latency
      LATENCY       : Boolean := False;
      --  Prefetch enable
      PRFTEN        : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Flash mode during Sleep
      SLEEP_PD      : Boolean := False;
      --  Flash mode during Run
      RUN_PD        : Boolean := False;
      --  Disable Buffer
      DESAB_BUF     : Boolean := False;
      --  Pre-read data address
      PRE_READ      : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR_Register use record
      LATENCY       at 0 range 0 .. 0;
      PRFTEN        at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      SLEEP_PD      at 0 range 3 .. 3;
      RUN_PD        at 0 range 4 .. 4;
      DESAB_BUF     at 0 range 5 .. 5;
      PRE_READ      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Program/erase control register
   type PECR_Register is record
      --  FLASH_PECR and data EEPROM lock
      PELOCK         : Boolean := True;
      --  Program memory lock
      PRGLOCK        : Boolean := True;
      --  Option bytes block lock
      OPTLOCK        : Boolean := True;
      --  Program memory selection
      PROG           : Boolean := False;
      --  Data EEPROM selection
      DATA           : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Fixed time data write for Byte, Half Word and Word programming
      FTDW           : Boolean := False;
      --  Page or Double Word erase mode
      ERASE          : Boolean := False;
      --  Half Page/Double Word programming mode
      FPRG           : Boolean := False;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Parallel bank mode
      PARALLELBANK   : Boolean := False;
      --  End of programming interrupt enable
      EOPIE          : Boolean := False;
      --  Error interrupt enable
      ERRIE          : Boolean := False;
      --  Launch the option byte loading
      OBL_LAUNCH     : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PECR_Register use record
      PELOCK         at 0 range 0 .. 0;
      PRGLOCK        at 0 range 1 .. 1;
      OPTLOCK        at 0 range 2 .. 2;
      PROG           at 0 range 3 .. 3;
      DATA           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FTDW           at 0 range 8 .. 8;
      ERASE          at 0 range 9 .. 9;
      FPRG           at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      PARALLELBANK   at 0 range 15 .. 15;
      EOPIE          at 0 range 16 .. 16;
      ERRIE          at 0 range 17 .. 17;
      OBL_LAUNCH     at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Status register
   type SR_Register is record
      --  Read-only. Write/erase operations in progress
      BSY            : Boolean := False;
      --  Read-only. End of operation
      EOP            : Boolean := False;
      --  Read-only. End of high voltage
      ENDHV          : Boolean := True;
      --  Read-only. Flash memory module ready after low power mode
      READY          : Boolean := False;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write protected error
      WRPERR         : Boolean := False;
      --  Programming alignment error
      PGAERR         : Boolean := False;
      --  Size error
      SIZERR         : Boolean := False;
      --  Option validity error
      OPTVERR        : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  RDERR
      RDERR          : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  NOTZEROERR
      NOTZEROERR     : Boolean := False;
      --  FWWERR
      FWWERR         : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      BSY            at 0 range 0 .. 0;
      EOP            at 0 range 1 .. 1;
      ENDHV          at 0 range 2 .. 2;
      READY          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      WRPERR         at 0 range 8 .. 8;
      PGAERR         at 0 range 9 .. 9;
      SIZERR         at 0 range 10 .. 10;
      OPTVERR        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      RDERR          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      NOTZEROERR     at 0 range 16 .. 16;
      FWWERR         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype OBR_RDPRT_Field is Interfaces.Bit_Types.Byte;
   subtype OBR_BOR_LEV_Field is Interfaces.Bit_Types.UInt4;

   --  Option byte register
   type OBR_Register is record
      --  Read-only. Read protection
      RDPRT          : OBR_RDPRT_Field;
      --  Read-only. Selection of protection mode of WPR bits
      SPRMOD         : Boolean;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7;
      --  Read-only. BOR_LEV
      BOR_LEV        : OBR_BOR_LEV_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OBR_Register use record
      RDPRT          at 0 range 0 .. 7;
      SPRMOD         at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      BOR_LEV        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype WRPR_WRP_Field is Interfaces.Bit_Types.Short;

   --  Write protection register
   type WRPR_Register is record
      --  Write protection
      WRP            : WRPR_WRP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRPR_Register use record
      WRP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash
   type Flash_Peripheral is record
      --  Access control register
      ACR     : aliased ACR_Register;
      --  Program/erase control register
      PECR    : aliased PECR_Register;
      --  Power down key register
      PDKEYR  : aliased Interfaces.Bit_Types.Word;
      --  Program/erase key register
      PEKEYR  : aliased Interfaces.Bit_Types.Word;
      --  Program memory key register
      PRGKEYR : aliased Interfaces.Bit_Types.Word;
      --  Option byte key register
      OPTKEYR : aliased Interfaces.Bit_Types.Word;
      --  Status register
      SR      : aliased SR_Register;
      --  Option byte register
      OBR     : aliased OBR_Register;
      --  Write protection register
      WRPR    : aliased WRPR_Register;
   end record
     with Volatile;

   for Flash_Peripheral use record
      ACR     at 16#0# range 0 .. 31;
      PECR    at 16#4# range 0 .. 31;
      PDKEYR  at 16#8# range 0 .. 31;
      PEKEYR  at 16#C# range 0 .. 31;
      PRGKEYR at 16#10# range 0 .. 31;
      OPTKEYR at 16#14# range 0 .. 31;
      SR      at 16#18# range 0 .. 31;
      OBR     at 16#1C# range 0 .. 31;
      WRPR    at 16#20# range 0 .. 31;
   end record;

   --  Flash
   Flash_Periph : aliased Flash_Peripheral
     with Import, Address => System'To_Address (16#40022000#);

end Interfaces.STM32.Flash;
