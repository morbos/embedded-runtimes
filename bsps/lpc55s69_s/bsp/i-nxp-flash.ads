--
--  Copyright (C) 2020, AdaCore
--

--  Copyright 2016-2019 NXP
--  All rights reserved.SPDX-License-Identifier: BSD-3-Clause

--  This spec has been automatically generated from LPC55S6x.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.NXP.FLASH is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  event register
   type EVENT_Register is record
      --  Write-only. When bit is set, the controller and flash are reset.
      RST           : Boolean := False;
      --  Write-only. When bit is set, the controller wakes up from whatever
      --  low power or powerdown mode was active.
      WAKEUP        : Boolean := False;
      --  Write-only. When bit is set, a running program/erase command is
      --  aborted.
      ABORT_k       : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENT_Register use record
      RST           at 0 range 0 .. 0;
      WAKEUP        at 0 range 1 .. 1;
      ABORT_k       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STARTA_STARTA_Field is Interfaces.Bit_Types.UInt18;

   --  start (or only) address for next flash command
   type STARTA_Register is record
      --  Address / Start address for commands that take an address (range) as
      --  a parameter.
      STARTA         : STARTA_STARTA_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTA_Register use record
      STARTA         at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype STOPA_STOPA_Field is Interfaces.Bit_Types.UInt18;

   --  end address for next flash command, if command operates on address
   --  ranges
   type STOPA_Register is record
      --  Stop address for commands that take an address range as a parameter
      --  (the word specified by STOPA is included in the address range).
      STOPA          : STOPA_STOPA_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STOPA_Register use record
      STOPA          at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  data register, word 0-7; Memory data, or command parameter, or command result.

   --  data register, word 0-7; Memory data, or command parameter, or command
   --  result.
   type DATAW_Registers is array (0 .. 3) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Clear interrupt enable bits
   type INT_CLR_ENABLE_Register is record
      --  Write-only. When a CLR_ENABLE bit is written to 1, the corresponding
      --  INT_ENABLE bit is cleared.
      FAIL          : Boolean := False;
      --  Write-only. When a CLR_ENABLE bit is written to 1, the corresponding
      --  INT_ENABLE bit is cleared.
      ERR           : Boolean := False;
      --  Write-only. When a CLR_ENABLE bit is written to 1, the corresponding
      --  INT_ENABLE bit is cleared.
      DONE          : Boolean := False;
      --  Write-only. When a CLR_ENABLE bit is written to 1, the corresponding
      --  INT_ENABLE bit is cleared.
      ECC_ERR       : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_ENABLE_Register use record
      FAIL          at 0 range 0 .. 0;
      ERR           at 0 range 1 .. 1;
      DONE          at 0 range 2 .. 2;
      ECC_ERR       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Set interrupt enable bits
   type INT_SET_ENABLE_Register is record
      --  Write-only. When a SET_ENABLE bit is written to 1, the corresponding
      --  INT_ENABLE bit is set.
      FAIL          : Boolean := False;
      --  Write-only. When a SET_ENABLE bit is written to 1, the corresponding
      --  INT_ENABLE bit is set.
      ERR           : Boolean := False;
      --  Write-only. When a SET_ENABLE bit is written to 1, the corresponding
      --  INT_ENABLE bit is set.
      DONE          : Boolean := False;
      --  Write-only. When a SET_ENABLE bit is written to 1, the corresponding
      --  INT_ENABLE bit is set.
      ECC_ERR       : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_SET_ENABLE_Register use record
      FAIL          at 0 range 0 .. 0;
      ERR           at 0 range 1 .. 1;
      DONE          at 0 range 2 .. 2;
      ECC_ERR       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt status bits
   type INT_STATUS_Register is record
      --  Read-only. This status bit is set if execution of a (legal) command
      --  failed.
      FAIL          : Boolean;
      --  Read-only. This status bit is set if execution of an illegal command
      --  is detected.
      ERR           : Boolean;
      --  Read-only. This status bit is set at the end of command execution.
      DONE          : Boolean;
      --  Read-only. This status bit is set if, during a memory read operation
      --  (either a user-requested read, or a speculative read, or reads
      --  performed by a controller command), a correctable or uncorrectable
      --  error is detected by ECC decoding logic.
      ECC_ERR       : Boolean;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_STATUS_Register use record
      FAIL          at 0 range 0 .. 0;
      ERR           at 0 range 1 .. 1;
      DONE          at 0 range 2 .. 2;
      ECC_ERR       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt enable bits
   type INT_ENABLE_Register is record
      --  Read-only. If an INT_ENABLE bit is set, an interrupt request will be
      --  generated if the corresponding INT_STATUS bit is high.
      FAIL          : Boolean;
      --  Read-only. If an INT_ENABLE bit is set, an interrupt request will be
      --  generated if the corresponding INT_STATUS bit is high.
      ERR           : Boolean;
      --  Read-only. If an INT_ENABLE bit is set, an interrupt request will be
      --  generated if the corresponding INT_STATUS bit is high.
      DONE          : Boolean;
      --  Read-only. If an INT_ENABLE bit is set, an interrupt request will be
      --  generated if the corresponding INT_STATUS bit is high.
      ECC_ERR       : Boolean;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENABLE_Register use record
      FAIL          at 0 range 0 .. 0;
      ERR           at 0 range 1 .. 1;
      DONE          at 0 range 2 .. 2;
      ECC_ERR       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Clear interrupt status bits
   type INT_CLR_STATUS_Register is record
      --  Write-only. When a CLR_STATUS bit is written to 1, the corresponding
      --  INT_STATUS bit is cleared.
      FAIL          : Boolean := False;
      --  Write-only. When a CLR_STATUS bit is written to 1, the corresponding
      --  INT_STATUS bit is cleared.
      ERR           : Boolean := False;
      --  Write-only. When a CLR_STATUS bit is written to 1, the corresponding
      --  INT_STATUS bit is cleared.
      DONE          : Boolean := False;
      --  Write-only. When a CLR_STATUS bit is written to 1, the corresponding
      --  INT_STATUS bit is cleared.
      ECC_ERR       : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_STATUS_Register use record
      FAIL          at 0 range 0 .. 0;
      ERR           at 0 range 1 .. 1;
      DONE          at 0 range 2 .. 2;
      ECC_ERR       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Set interrupt status bits
   type INT_SET_STATUS_Register is record
      --  Write-only. When a SET_STATUS bit is written to 1, the corresponding
      --  INT_STATUS bit is set.
      FAIL          : Boolean := False;
      --  Write-only. When a SET_STATUS bit is written to 1, the corresponding
      --  INT_STATUS bit is set.
      ERR           : Boolean := False;
      --  Write-only. When a SET_STATUS bit is written to 1, the corresponding
      --  INT_STATUS bit is set.
      DONE          : Boolean := False;
      --  Write-only. When a SET_STATUS bit is written to 1, the corresponding
      --  INT_STATUS bit is set.
      ECC_ERR       : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_SET_STATUS_Register use record
      FAIL          at 0 range 0 .. 0;
      ERR           at 0 range 1 .. 1;
      DONE          at 0 range 2 .. 2;
      ECC_ERR       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype MODULE_ID_APERTURE_Field is Interfaces.Bit_Types.Byte;
   subtype MODULE_ID_MINOR_REV_Field is Interfaces.Bit_Types.UInt4;
   subtype MODULE_ID_MAJOR_REV_Field is Interfaces.Bit_Types.UInt4;
   subtype MODULE_ID_ID_Field is Interfaces.Bit_Types.Short;

   --  Controller+Memory module identification
   type MODULE_ID_Register is record
      --  Read-only. Aperture i.
      APERTURE  : MODULE_ID_APERTURE_Field;
      --  Read-only. Minor revision i.
      MINOR_REV : MODULE_ID_MINOR_REV_Field;
      --  Read-only. Major revision i.
      MAJOR_REV : MODULE_ID_MAJOR_REV_Field;
      --  Read-only. Identifier.
      ID        : MODULE_ID_ID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODULE_ID_Register use record
      APERTURE  at 0 range 0 .. 7;
      MINOR_REV at 0 range 8 .. 11;
      MAJOR_REV at 0 range 12 .. 15;
      ID        at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH
   type FLASH_Peripheral is record
      --  command register
      CMD            : aliased Interfaces.Bit_Types.Word;
      --  event register
      EVENT          : aliased EVENT_Register;
      --  start (or only) address for next flash command
      STARTA         : aliased STARTA_Register;
      --  end address for next flash command, if command operates on address
      --  ranges
      STOPA          : aliased STOPA_Register;
      --  data register, word 0-7; Memory data, or command parameter, or
      --  command result.
      DATAW          : aliased DATAW_Registers;
      --  Clear interrupt enable bits
      INT_CLR_ENABLE : aliased INT_CLR_ENABLE_Register;
      --  Set interrupt enable bits
      INT_SET_ENABLE : aliased INT_SET_ENABLE_Register;
      --  Interrupt status bits
      INT_STATUS     : aliased INT_STATUS_Register;
      --  Interrupt enable bits
      INT_ENABLE     : aliased INT_ENABLE_Register;
      --  Clear interrupt status bits
      INT_CLR_STATUS : aliased INT_CLR_STATUS_Register;
      --  Set interrupt status bits
      INT_SET_STATUS : aliased INT_SET_STATUS_Register;
      --  Controller+Memory module identification
      MODULE_ID      : aliased MODULE_ID_Register;
   end record
     with Volatile;

   for FLASH_Peripheral use record
      CMD            at 16#0# range 0 .. 31;
      EVENT          at 16#4# range 0 .. 31;
      STARTA         at 16#10# range 0 .. 31;
      STOPA          at 16#14# range 0 .. 31;
      DATAW          at 16#80# range 0 .. 127;
      INT_CLR_ENABLE at 16#FD8# range 0 .. 31;
      INT_SET_ENABLE at 16#FDC# range 0 .. 31;
      INT_STATUS     at 16#FE0# range 0 .. 31;
      INT_ENABLE     at 16#FE4# range 0 .. 31;
      INT_CLR_STATUS at 16#FE8# range 0 .. 31;
      INT_SET_STATUS at 16#FEC# range 0 .. 31;
      MODULE_ID      at 16#FFC# range 0 .. 31;
   end record;

   --  FLASH
   FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => System'To_Address (16#40034000#);

end Interfaces.NXP.FLASH;
