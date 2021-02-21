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

package Interfaces.NXP.GPIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ---------------------------
   -- B cluster's Registers --
   ---------------------------

   --  Byte pin registers for all port GPIO pins
   type B_B_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B_B_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B_B_Registers is array (0 .. 31) of B_B_Register
     with Volatile;

   --  no description available
   type B_Cluster is record
      --  Byte pin registers for all port GPIO pins
      B : aliased B_B_Registers;
   end record
     with Volatile, Size => 256;

   for B_Cluster use record
      B at 0 range 0 .. 255;
   end record;

   --  no description available
   type B_Clusters is array (0 .. 1) of B_Cluster;

   ---------------------------
   -- W cluster's Registers --
   ---------------------------

   --  Word pin registers for all port GPIO pins

   --  Word pin registers for all port GPIO pins
   type W_W_Registers is array (0 .. 31) of Interfaces.Bit_Types.Word
     with Volatile;

   --  no description available
   type W_Cluster is record
      --  Word pin registers for all port GPIO pins
      W : aliased W_W_Registers;
   end record
     with Volatile, Size => 1024;

   for W_Cluster use record
      W at 0 range 0 .. 1023;
   end record;

   --  no description available
   type W_Clusters is array (0 .. 1) of W_Cluster;

   --  Direction registers for all port GPIO pins

   --  Direction registers for all port GPIO pins
   type DIR_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Mask register for all port GPIO pins

   --  Mask register for all port GPIO pins
   type MASK_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Port pin register for all port GPIO pins

   --  Port pin register for all port GPIO pins
   type PIN_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Masked port register for all port GPIO pins

   --  Masked port register for all port GPIO pins
   type MPIN_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Write: Set register for port. Read: output bits for port

   --  Write: Set register for port. Read: output bits for port
   type SET_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Clear port for all port GPIO pins

   --  Clear port for all port GPIO pins
   type CLR_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Toggle port for all port GPIO pins

   --  Toggle port for all port GPIO pins
   type NOT_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Set pin direction bits for port

   --  Set pin direction bits for port
   type DIRSET_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Clear pin direction bits for port

   --  Clear pin direction bits for port
   type DIRCLR_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Toggle pin direction bits for port

   --  Toggle pin direction bits for port
   type DIRNOT_Registers is array (0 .. 1) of Interfaces.Bit_Types.Word
     with Volatile;

   --  Byte pin registers for all port GPIO pins
   type B0_0_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_0_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_1_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_1_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_2_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_2_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_3_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_3_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_4_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_4_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_5_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_5_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_6_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_6_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_7_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_7_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_8_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_8_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_9_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_9_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_10_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_10_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_11_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_11_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_12_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_12_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_13_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_13_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_14_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_14_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_15_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_15_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_16_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_16_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_17_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_17_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_18_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_18_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_19_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_19_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_20_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_20_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_21_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_21_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_22_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_22_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_23_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_23_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_24_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_24_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_25_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_25_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_26_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_26_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_27_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_27_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_28_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_28_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_29_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_29_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_30_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_30_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers for all port GPIO pins
   type B0_31_Register is record
      --  Read: state of the pin PIOm_n, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. One register for each port pin. Supported pins depends on
      --  the specific device and package. Write: loads the pin's output bit.
      --  One register for each port pin. Supported pins depends on the
      --  specific device and package.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B0_31_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose I/O (GPIO)
   type GPIO_Peripheral is record
      --  no description available
      B      : aliased B_Clusters;
      --  no description available
      W      : aliased W_Clusters;
      --  Direction registers for all port GPIO pins
      DIR    : aliased DIR_Registers;
      --  Mask register for all port GPIO pins
      MASK   : aliased MASK_Registers;
      --  Port pin register for all port GPIO pins
      PIN    : aliased PIN_Registers;
      --  Masked port register for all port GPIO pins
      MPIN   : aliased MPIN_Registers;
      --  Write: Set register for port. Read: output bits for port
      SET    : aliased SET_Registers;
      --  Clear port for all port GPIO pins
      CLR    : aliased CLR_Registers;
      --  Toggle port for all port GPIO pins
      NOT_k  : aliased NOT_Registers;
      --  Set pin direction bits for port
      DIRSET : aliased DIRSET_Registers;
      --  Clear pin direction bits for port
      DIRCLR : aliased DIRCLR_Registers;
      --  Toggle pin direction bits for port
      DIRNOT : aliased DIRNOT_Registers;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      B      at 16#0# range 0 .. 511;
      W      at 16#1000# range 0 .. 2047;
      DIR    at 16#2000# range 0 .. 63;
      MASK   at 16#2080# range 0 .. 63;
      PIN    at 16#2100# range 0 .. 63;
      MPIN   at 16#2180# range 0 .. 63;
      SET    at 16#2200# range 0 .. 63;
      CLR    at 16#2280# range 0 .. 63;
      NOT_k  at 16#2300# range 0 .. 63;
      DIRSET at 16#2380# range 0 .. 63;
      DIRCLR at 16#2400# range 0 .. 63;
      DIRNOT at 16#2480# range 0 .. 63;
   end record;

   --  General Purpose I/O (GPIO)
   GPIO_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#4008C000#);

   --  General Purpose I/O (GPIO)
   type SECGPIO_Peripheral is record
      --  Byte pin registers for all port GPIO pins
      B0_0    : aliased B0_0_Register;
      --  Byte pin registers for all port GPIO pins
      B0_1    : aliased B0_1_Register;
      --  Byte pin registers for all port GPIO pins
      B0_2    : aliased B0_2_Register;
      --  Byte pin registers for all port GPIO pins
      B0_3    : aliased B0_3_Register;
      --  Byte pin registers for all port GPIO pins
      B0_4    : aliased B0_4_Register;
      --  Byte pin registers for all port GPIO pins
      B0_5    : aliased B0_5_Register;
      --  Byte pin registers for all port GPIO pins
      B0_6    : aliased B0_6_Register;
      --  Byte pin registers for all port GPIO pins
      B0_7    : aliased B0_7_Register;
      --  Byte pin registers for all port GPIO pins
      B0_8    : aliased B0_8_Register;
      --  Byte pin registers for all port GPIO pins
      B0_9    : aliased B0_9_Register;
      --  Byte pin registers for all port GPIO pins
      B0_10   : aliased B0_10_Register;
      --  Byte pin registers for all port GPIO pins
      B0_11   : aliased B0_11_Register;
      --  Byte pin registers for all port GPIO pins
      B0_12   : aliased B0_12_Register;
      --  Byte pin registers for all port GPIO pins
      B0_13   : aliased B0_13_Register;
      --  Byte pin registers for all port GPIO pins
      B0_14   : aliased B0_14_Register;
      --  Byte pin registers for all port GPIO pins
      B0_15   : aliased B0_15_Register;
      --  Byte pin registers for all port GPIO pins
      B0_16   : aliased B0_16_Register;
      --  Byte pin registers for all port GPIO pins
      B0_17   : aliased B0_17_Register;
      --  Byte pin registers for all port GPIO pins
      B0_18   : aliased B0_18_Register;
      --  Byte pin registers for all port GPIO pins
      B0_19   : aliased B0_19_Register;
      --  Byte pin registers for all port GPIO pins
      B0_20   : aliased B0_20_Register;
      --  Byte pin registers for all port GPIO pins
      B0_21   : aliased B0_21_Register;
      --  Byte pin registers for all port GPIO pins
      B0_22   : aliased B0_22_Register;
      --  Byte pin registers for all port GPIO pins
      B0_23   : aliased B0_23_Register;
      --  Byte pin registers for all port GPIO pins
      B0_24   : aliased B0_24_Register;
      --  Byte pin registers for all port GPIO pins
      B0_25   : aliased B0_25_Register;
      --  Byte pin registers for all port GPIO pins
      B0_26   : aliased B0_26_Register;
      --  Byte pin registers for all port GPIO pins
      B0_27   : aliased B0_27_Register;
      --  Byte pin registers for all port GPIO pins
      B0_28   : aliased B0_28_Register;
      --  Byte pin registers for all port GPIO pins
      B0_29   : aliased B0_29_Register;
      --  Byte pin registers for all port GPIO pins
      B0_30   : aliased B0_30_Register;
      --  Byte pin registers for all port GPIO pins
      B0_31   : aliased B0_31_Register;
      --  Word pin registers for all port GPIO pins
      W0_0    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_1    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_2    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_3    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_4    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_5    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_6    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_7    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_8    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_9    : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_10   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_11   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_12   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_13   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_14   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_15   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_16   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_17   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_18   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_19   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_20   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_21   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_22   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_23   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_24   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_25   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_26   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_27   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_28   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_29   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_30   : aliased Interfaces.Bit_Types.Word;
      --  Word pin registers for all port GPIO pins
      W0_31   : aliased Interfaces.Bit_Types.Word;
      --  Direction registers for all port GPIO pins
      DIR0    : aliased Interfaces.Bit_Types.Word;
      --  Mask register for all port GPIO pins
      MASK0   : aliased Interfaces.Bit_Types.Word;
      --  Port pin register for all port GPIO pins
      PIN0    : aliased Interfaces.Bit_Types.Word;
      --  Masked port register for all port GPIO pins
      MPIN0   : aliased Interfaces.Bit_Types.Word;
      --  Write: Set register for port. Read: output bits for port
      SET0    : aliased Interfaces.Bit_Types.Word;
      --  Clear port for all port GPIO pins
      CLR0    : aliased Interfaces.Bit_Types.Word;
      --  Toggle port for all port GPIO pins
      NOT0    : aliased Interfaces.Bit_Types.Word;
      --  Set pin direction bits for port
      DIRSET0 : aliased Interfaces.Bit_Types.Word;
      --  Clear pin direction bits for port
      DIRCLR0 : aliased Interfaces.Bit_Types.Word;
      --  Toggle pin direction bits for port
      DIRNOT0 : aliased Interfaces.Bit_Types.Word;
   end record
     with Volatile;

   for SECGPIO_Peripheral use record
      B0_0    at 16#0# range 0 .. 7;
      B0_1    at 16#1# range 0 .. 7;
      B0_2    at 16#2# range 0 .. 7;
      B0_3    at 16#3# range 0 .. 7;
      B0_4    at 16#4# range 0 .. 7;
      B0_5    at 16#5# range 0 .. 7;
      B0_6    at 16#6# range 0 .. 7;
      B0_7    at 16#7# range 0 .. 7;
      B0_8    at 16#8# range 0 .. 7;
      B0_9    at 16#9# range 0 .. 7;
      B0_10   at 16#A# range 0 .. 7;
      B0_11   at 16#B# range 0 .. 7;
      B0_12   at 16#C# range 0 .. 7;
      B0_13   at 16#D# range 0 .. 7;
      B0_14   at 16#E# range 0 .. 7;
      B0_15   at 16#F# range 0 .. 7;
      B0_16   at 16#10# range 0 .. 7;
      B0_17   at 16#11# range 0 .. 7;
      B0_18   at 16#12# range 0 .. 7;
      B0_19   at 16#13# range 0 .. 7;
      B0_20   at 16#14# range 0 .. 7;
      B0_21   at 16#15# range 0 .. 7;
      B0_22   at 16#16# range 0 .. 7;
      B0_23   at 16#17# range 0 .. 7;
      B0_24   at 16#18# range 0 .. 7;
      B0_25   at 16#19# range 0 .. 7;
      B0_26   at 16#1A# range 0 .. 7;
      B0_27   at 16#1B# range 0 .. 7;
      B0_28   at 16#1C# range 0 .. 7;
      B0_29   at 16#1D# range 0 .. 7;
      B0_30   at 16#1E# range 0 .. 7;
      B0_31   at 16#1F# range 0 .. 7;
      W0_0    at 16#1000# range 0 .. 31;
      W0_1    at 16#1004# range 0 .. 31;
      W0_2    at 16#1008# range 0 .. 31;
      W0_3    at 16#100C# range 0 .. 31;
      W0_4    at 16#1010# range 0 .. 31;
      W0_5    at 16#1014# range 0 .. 31;
      W0_6    at 16#1018# range 0 .. 31;
      W0_7    at 16#101C# range 0 .. 31;
      W0_8    at 16#1020# range 0 .. 31;
      W0_9    at 16#1024# range 0 .. 31;
      W0_10   at 16#1028# range 0 .. 31;
      W0_11   at 16#102C# range 0 .. 31;
      W0_12   at 16#1030# range 0 .. 31;
      W0_13   at 16#1034# range 0 .. 31;
      W0_14   at 16#1038# range 0 .. 31;
      W0_15   at 16#103C# range 0 .. 31;
      W0_16   at 16#1040# range 0 .. 31;
      W0_17   at 16#1044# range 0 .. 31;
      W0_18   at 16#1048# range 0 .. 31;
      W0_19   at 16#104C# range 0 .. 31;
      W0_20   at 16#1050# range 0 .. 31;
      W0_21   at 16#1054# range 0 .. 31;
      W0_22   at 16#1058# range 0 .. 31;
      W0_23   at 16#105C# range 0 .. 31;
      W0_24   at 16#1060# range 0 .. 31;
      W0_25   at 16#1064# range 0 .. 31;
      W0_26   at 16#1068# range 0 .. 31;
      W0_27   at 16#106C# range 0 .. 31;
      W0_28   at 16#1070# range 0 .. 31;
      W0_29   at 16#1074# range 0 .. 31;
      W0_30   at 16#1078# range 0 .. 31;
      W0_31   at 16#107C# range 0 .. 31;
      DIR0    at 16#2000# range 0 .. 31;
      MASK0   at 16#2080# range 0 .. 31;
      PIN0    at 16#2100# range 0 .. 31;
      MPIN0   at 16#2180# range 0 .. 31;
      SET0    at 16#2200# range 0 .. 31;
      CLR0    at 16#2280# range 0 .. 31;
      NOT0    at 16#2300# range 0 .. 31;
      DIRSET0 at 16#2380# range 0 .. 31;
      DIRCLR0 at 16#2400# range 0 .. 31;
      DIRNOT0 at 16#2480# range 0 .. 31;
   end record;

   --  General Purpose I/O (GPIO)
   SECGPIO_Periph : aliased SECGPIO_Peripheral
     with Import, Address => System'To_Address (16#400A8000#);

end Interfaces.NXP.GPIO;
