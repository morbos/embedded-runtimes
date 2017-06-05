--
--  Copyright (C) 2017, AdaCore
--

--  This spec has been automatically generated from STM32L4x2.svd

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

   subtype ACR_LATENCY_Field is Interfaces.Bit_Types.UInt3;
   subtype ACR_PRFTEN_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_ICEN_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_DCEN_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_ICRST_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_DCRST_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_RUN_PD_Field is Interfaces.Bit_Types.Bit;
   subtype ACR_SLEEP_PD_Field is Interfaces.Bit_Types.Bit;

   --  Access control register
   type ACR_Register is record
      --  Latency
      LATENCY        : ACR_LATENCY_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Prefetch enable
      PRFTEN         : ACR_PRFTEN_Field := 16#0#;
      --  Instruction cache enable
      ICEN           : ACR_ICEN_Field := 16#1#;
      --  Data cache enable
      DCEN           : ACR_DCEN_Field := 16#1#;
      --  Instruction cache reset
      ICRST          : ACR_ICRST_Field := 16#0#;
      --  Data cache reset
      DCRST          : ACR_DCRST_Field := 16#0#;
      --  Flash Power-down mode during Low-power run mode
      RUN_PD         : ACR_RUN_PD_Field := 16#0#;
      --  Flash Power-down mode during Low-power sleep mode
      SLEEP_PD       : ACR_SLEEP_PD_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR_Register use record
      LATENCY        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PRFTEN         at 0 range 8 .. 8;
      ICEN           at 0 range 9 .. 9;
      DCEN           at 0 range 10 .. 10;
      ICRST          at 0 range 11 .. 11;
      DCRST          at 0 range 12 .. 12;
      RUN_PD         at 0 range 13 .. 13;
      SLEEP_PD       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SR_EOP_Field is Interfaces.Bit_Types.Bit;
   subtype SR_OPERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_PROGERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_WRPERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_PGAERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SIZERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_PGSERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_MISERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_FASTERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_RDERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_OPTVERR_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BSY_Field is Interfaces.Bit_Types.Bit;

   --  Status register
   type SR_Register is record
      --  End of operation
      EOP            : SR_EOP_Field := 16#0#;
      --  Operation error
      OPERR          : SR_OPERR_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Programming error
      PROGERR        : SR_PROGERR_Field := 16#0#;
      --  Write protected error
      WRPERR         : SR_WRPERR_Field := 16#0#;
      --  Programming alignment error
      PGAERR         : SR_PGAERR_Field := 16#0#;
      --  Size error
      SIZERR         : SR_SIZERR_Field := 16#0#;
      --  Programming sequence error
      PGSERR         : SR_PGSERR_Field := 16#0#;
      --  Fast programming data miss error
      MISERR         : SR_MISERR_Field := 16#0#;
      --  Fast programming error
      FASTERR        : SR_FASTERR_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PCROP read error
      RDERR          : SR_RDERR_Field := 16#0#;
      --  Option validity error
      OPTVERR        : SR_OPTVERR_Field := 16#0#;
      --  Read-only. Busy
      BSY            : SR_BSY_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      EOP            at 0 range 0 .. 0;
      OPERR          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PROGERR        at 0 range 3 .. 3;
      WRPERR         at 0 range 4 .. 4;
      PGAERR         at 0 range 5 .. 5;
      SIZERR         at 0 range 6 .. 6;
      PGSERR         at 0 range 7 .. 7;
      MISERR         at 0 range 8 .. 8;
      FASTERR        at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      RDERR          at 0 range 14 .. 14;
      OPTVERR        at 0 range 15 .. 15;
      BSY            at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CR_PG_Field is Interfaces.Bit_Types.Bit;
   subtype CR_PER_Field is Interfaces.Bit_Types.Bit;
   subtype CR_MER1_Field is Interfaces.Bit_Types.Bit;
   subtype CR_PNB_Field is Interfaces.Bit_Types.UInt8;
   subtype CR_BKER_Field is Interfaces.Bit_Types.Bit;
   subtype CR_MER2_Field is Interfaces.Bit_Types.Bit;
   subtype CR_START_Field is Interfaces.Bit_Types.Bit;
   subtype CR_OPTSTRT_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FSTPG_Field is Interfaces.Bit_Types.Bit;
   subtype CR_EOPIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ERRIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_RDERRIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_OBL_LAUNCH_Field is Interfaces.Bit_Types.Bit;
   subtype CR_OPTLOCK_Field is Interfaces.Bit_Types.Bit;
   subtype CR_LOCK_Field is Interfaces.Bit_Types.Bit;

   --  Flash control register
   type CR_Register is record
      --  Programming
      PG             : CR_PG_Field := 16#0#;
      --  Page erase
      PER            : CR_PER_Field := 16#0#;
      --  Bank 1 Mass erase
      MER1           : CR_MER1_Field := 16#0#;
      --  Page number
      PNB            : CR_PNB_Field := 16#0#;
      --  Bank erase
      BKER           : CR_BKER_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Bank 2 Mass erase
      MER2           : CR_MER2_Field := 16#0#;
      --  Start
      START          : CR_START_Field := 16#0#;
      --  Options modification start
      OPTSTRT        : CR_OPTSTRT_Field := 16#0#;
      --  Fast programming
      FSTPG          : CR_FSTPG_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  End of operation interrupt enable
      EOPIE          : CR_EOPIE_Field := 16#0#;
      --  Error interrupt enable
      ERRIE          : CR_ERRIE_Field := 16#0#;
      --  PCROP read error interrupt enable
      RDERRIE        : CR_RDERRIE_Field := 16#0#;
      --  Force the option byte loading
      OBL_LAUNCH     : CR_OBL_LAUNCH_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Options Lock
      OPTLOCK        : CR_OPTLOCK_Field := 16#1#;
      --  FLASH_CR Lock
      LOCK           : CR_LOCK_Field := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER1           at 0 range 2 .. 2;
      PNB            at 0 range 3 .. 10;
      BKER           at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      MER2           at 0 range 15 .. 15;
      START          at 0 range 16 .. 16;
      OPTSTRT        at 0 range 17 .. 17;
      FSTPG          at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      EOPIE          at 0 range 24 .. 24;
      ERRIE          at 0 range 25 .. 25;
      RDERRIE        at 0 range 26 .. 26;
      OBL_LAUNCH     at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      OPTLOCK        at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype ECCR_ADDR_ECC_Field is Interfaces.Bit_Types.UInt19;
   subtype ECCR_BK_ECC_Field is Interfaces.Bit_Types.Bit;
   subtype ECCR_SYSF_ECC_Field is Interfaces.Bit_Types.Bit;
   subtype ECCR_ECCIE_Field is Interfaces.Bit_Types.Bit;
   subtype ECCR_ECCC_Field is Interfaces.Bit_Types.Bit;
   subtype ECCR_ECCD_Field is Interfaces.Bit_Types.Bit;

   --  Flash ECC register
   type ECCR_Register is record
      --  Read-only. ECC fail address
      ADDR_ECC       : ECCR_ADDR_ECC_Field := 16#0#;
      --  Read-only. ECC fail bank
      BK_ECC         : ECCR_BK_ECC_Field := 16#0#;
      --  Read-only. System Flash ECC fail
      SYSF_ECC       : ECCR_SYSF_ECC_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  ECC correction interrupt enable
      ECCIE          : ECCR_ECCIE_Field := 16#0#;
      --  unspecified
      Reserved_25_29 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  ECC correction
      ECCC           : ECCR_ECCC_Field := 16#0#;
      --  ECC detection
      ECCD           : ECCR_ECCD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECCR_Register use record
      ADDR_ECC       at 0 range 0 .. 18;
      BK_ECC         at 0 range 19 .. 19;
      SYSF_ECC       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ECCIE          at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      ECCC           at 0 range 30 .. 30;
      ECCD           at 0 range 31 .. 31;
   end record;

   subtype OPTR_RDP_Field is Interfaces.Bit_Types.UInt8;
   subtype OPTR_BOR_LEV_Field is Interfaces.Bit_Types.UInt3;
   subtype OPTR_nRST_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_nRST_STDBY_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_IDWG_SW_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_IWDG_STOP_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_IWDG_STDBY_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_WWDG_SW_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_BFB2_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_DUALBANK_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_nBOOT1_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_SRAM2_PE_Field is Interfaces.Bit_Types.Bit;
   subtype OPTR_SRAM2_RST_Field is Interfaces.Bit_Types.Bit;

   --  Flash option register
   type OPTR_Register is record
      --  Read protection level
      RDP            : OPTR_RDP_Field := 16#0#;
      --  BOR reset Level
      BOR_LEV        : OPTR_BOR_LEV_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  nRST_STOP
      nRST_STOP      : OPTR_nRST_STOP_Field := 16#0#;
      --  nRST_STDBY
      nRST_STDBY     : OPTR_nRST_STDBY_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Independent watchdog selection
      IDWG_SW        : OPTR_IDWG_SW_Field := 16#0#;
      --  Independent watchdog counter freeze in Stop mode
      IWDG_STOP      : OPTR_IWDG_STOP_Field := 16#0#;
      --  Independent watchdog counter freeze in Standby mode
      IWDG_STDBY     : OPTR_IWDG_STDBY_Field := 16#0#;
      --  Window watchdog selection
      WWDG_SW        : OPTR_WWDG_SW_Field := 16#0#;
      --  Dual-bank boot
      BFB2           : OPTR_BFB2_Field := 16#0#;
      --  Dual-Bank on 512 KB or 256 KB Flash memory devices
      DUALBANK       : OPTR_DUALBANK_Field := 16#0#;
      --  unspecified
      Reserved_22_22 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Boot configuration
      nBOOT1         : OPTR_nBOOT1_Field := 16#0#;
      --  SRAM2 parity check enable
      SRAM2_PE       : OPTR_SRAM2_PE_Field := 16#0#;
      --  SRAM2 Erase when system reset
      SRAM2_RST      : OPTR_SRAM2_RST_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#3C#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPTR_Register use record
      RDP            at 0 range 0 .. 7;
      BOR_LEV        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      nRST_STOP      at 0 range 12 .. 12;
      nRST_STDBY     at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      IDWG_SW        at 0 range 16 .. 16;
      IWDG_STOP      at 0 range 17 .. 17;
      IWDG_STDBY     at 0 range 18 .. 18;
      WWDG_SW        at 0 range 19 .. 19;
      BFB2           at 0 range 20 .. 20;
      DUALBANK       at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      nBOOT1         at 0 range 23 .. 23;
      SRAM2_PE       at 0 range 24 .. 24;
      SRAM2_RST      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype PCROP1SR_PCROP1_STRT_Field is Interfaces.Bit_Types.UInt16;

   --  Flash Bank 1 PCROP Start address register
   type PCROP1SR_Register is record
      --  Bank 1 PCROP area start offset
      PCROP1_STRT    : PCROP1SR_PCROP1_STRT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#FFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCROP1SR_Register use record
      PCROP1_STRT    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PCROP1ER_PCROP1_END_Field is Interfaces.Bit_Types.UInt16;
   subtype PCROP1ER_PCROP_RDP_Field is Interfaces.Bit_Types.Bit;

   --  Flash Bank 1 PCROP End address register
   type PCROP1ER_Register is record
      --  Bank 1 PCROP area end offset
      PCROP1_END     : PCROP1ER_PCROP1_END_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : Interfaces.Bit_Types.UInt15 := 16#FFF#;
      --  PCROP area preserved when RDP level decreased
      PCROP_RDP      : PCROP1ER_PCROP_RDP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCROP1ER_Register use record
      PCROP1_END     at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      PCROP_RDP      at 0 range 31 .. 31;
   end record;

   subtype WRP1AR_WRP1A_STRT_Field is Interfaces.Bit_Types.UInt8;
   subtype WRP1AR_WRP1A_END_Field is Interfaces.Bit_Types.UInt8;

   --  Flash Bank 1 WRP area A address register
   type WRP1AR_Register is record
      --  Bank 1 WRP first area tart offset
      WRP1A_STRT     : WRP1AR_WRP1A_STRT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.UInt8 := 16#FF#;
      --  Bank 1 WRP first area A end offset
      WRP1A_END      : WRP1AR_WRP1A_END_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRP1AR_Register use record
      WRP1A_STRT     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRP1A_END      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype WRP1BR_WRP1B_END_Field is Interfaces.Bit_Types.UInt8;
   subtype WRP1BR_WRP1B_STRT_Field is Interfaces.Bit_Types.UInt8;

   --  Flash Bank 1 WRP area B address register
   type WRP1BR_Register is record
      --  Bank 1 WRP second area B start offset
      WRP1B_END      : WRP1BR_WRP1B_END_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.UInt8 := 16#FF#;
      --  Bank 1 WRP second area B end offset
      WRP1B_STRT     : WRP1BR_WRP1B_STRT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRP1BR_Register use record
      WRP1B_END      at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRP1B_STRT     at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PCROP2SR_PCROP2_STRT_Field is Interfaces.Bit_Types.UInt16;

   --  Flash Bank 2 PCROP Start address register
   type PCROP2SR_Register is record
      --  Bank 2 PCROP area start offset
      PCROP2_STRT    : PCROP2SR_PCROP2_STRT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#FFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCROP2SR_Register use record
      PCROP2_STRT    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PCROP2ER_PCROP2_END_Field is Interfaces.Bit_Types.UInt16;

   --  Flash Bank 2 PCROP End address register
   type PCROP2ER_Register is record
      --  Bank 2 PCROP area end offset
      PCROP2_END     : PCROP2ER_PCROP2_END_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#FFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCROP2ER_Register use record
      PCROP2_END     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype WRP2AR_WRP2A_STRT_Field is Interfaces.Bit_Types.UInt8;
   subtype WRP2AR_WRP2A_END_Field is Interfaces.Bit_Types.UInt8;

   --  Flash Bank 2 WRP area A address register
   type WRP2AR_Register is record
      --  Bank 2 WRP first area A start offset
      WRP2A_STRT     : WRP2AR_WRP2A_STRT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.UInt8 := 16#FF#;
      --  Bank 2 WRP first area A end offset
      WRP2A_END      : WRP2AR_WRP2A_END_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRP2AR_Register use record
      WRP2A_STRT     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRP2A_END      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype WRP2BR_WRP2B_STRT_Field is Interfaces.Bit_Types.UInt8;
   subtype WRP2BR_WRP2B_END_Field is Interfaces.Bit_Types.UInt8;

   --  Flash Bank 2 WRP area B address register
   type WRP2BR_Register is record
      --  Bank 2 WRP second area B start offset
      WRP2B_STRT     : WRP2BR_WRP2B_STRT_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.UInt8 := 16#FF#;
      --  Bank 2 WRP second area B end offset
      WRP2B_END      : WRP2BR_WRP2B_END_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.UInt8 := 16#FF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRP2BR_Register use record
      WRP2B_STRT     at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WRP2B_END      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash
   type FLASH_Peripheral is record
      --  Access control register
      ACR      : aliased ACR_Register;
      --  Power down key register
      PDKEYR   : aliased Interfaces.Bit_Types.UInt32;
      --  Flash key register
      KEYR     : aliased Interfaces.Bit_Types.UInt32;
      --  Option byte key register
      OPTKEYR  : aliased Interfaces.Bit_Types.UInt32;
      --  Status register
      SR       : aliased SR_Register;
      --  Flash control register
      CR       : aliased CR_Register;
      --  Flash ECC register
      ECCR     : aliased ECCR_Register;
      --  Flash option register
      OPTR     : aliased OPTR_Register;
      --  Flash Bank 1 PCROP Start address register
      PCROP1SR : aliased PCROP1SR_Register;
      --  Flash Bank 1 PCROP End address register
      PCROP1ER : aliased PCROP1ER_Register;
      --  Flash Bank 1 WRP area A address register
      WRP1AR   : aliased WRP1AR_Register;
      --  Flash Bank 1 WRP area B address register
      WRP1BR   : aliased WRP1BR_Register;
      --  Flash Bank 2 PCROP Start address register
      PCROP2SR : aliased PCROP2SR_Register;
      --  Flash Bank 2 PCROP End address register
      PCROP2ER : aliased PCROP2ER_Register;
      --  Flash Bank 2 WRP area A address register
      WRP2AR   : aliased WRP2AR_Register;
      --  Flash Bank 2 WRP area B address register
      WRP2BR   : aliased WRP2BR_Register;
   end record
     with Volatile;

   for FLASH_Peripheral use record
      ACR      at 16#0# range 0 .. 31;
      PDKEYR   at 16#4# range 0 .. 31;
      KEYR     at 16#8# range 0 .. 31;
      OPTKEYR  at 16#C# range 0 .. 31;
      SR       at 16#10# range 0 .. 31;
      CR       at 16#14# range 0 .. 31;
      ECCR     at 16#18# range 0 .. 31;
      OPTR     at 16#20# range 0 .. 31;
      PCROP1SR at 16#24# range 0 .. 31;
      PCROP1ER at 16#28# range 0 .. 31;
      WRP1AR   at 16#2C# range 0 .. 31;
      WRP1BR   at 16#30# range 0 .. 31;
      PCROP2SR at 16#44# range 0 .. 31;
      PCROP2ER at 16#48# range 0 .. 31;
      WRP2AR   at 16#4C# range 0 .. 31;
      WRP2BR   at 16#50# range 0 .. 31;
   end record;

   --  Flash
   FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => System'To_Address (16#40022000#);

end Interfaces.STM32.Flash;
