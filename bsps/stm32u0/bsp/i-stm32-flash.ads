--
--  Copyright (C) 2024, AdaCore
--

--  This spec has been automatically generated from STM32U073.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.FLASH is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype FLASH_ACR_LATENCY_Field is Interfaces.Bit_Types.UInt3;

   --  FLASH access control register
   type FLASH_ACR_Register is record
      --  Flash memory access latency The value in this bitfield represents the
      --  number of CPU wait states when accessing the flash memory. Other:
      --  Reserved A new write into the bitfield becomes effective when it
      --  returns the same value upon read.
      LATENCY        : FLASH_ACR_LATENCY_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  CPU Prefetch enable
      PRFTEN         : Boolean := False;
      --  CPU Instruction cache enable
      ICEN           : Boolean := True;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#1#;
      --  CPU Instruction cache reset This bit can be written only when the
      --  instruction cache is disabled.
      ICRST          : Boolean := False;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Main flash memory area empty This bit indicates whether the first
      --  location of the main flash memory area is erased or has a programmed
      --  value. The bit can be set and reset by software.
      EMPTY          : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Debug access software enable Software may use this bit to
      --  enable/disable the debugger read access.
      DBG_SWEN       : Boolean := True;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACR_Register use record
      LATENCY        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PRFTEN         at 0 range 8 .. 8;
      ICEN           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      ICRST          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      EMPTY          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DBG_SWEN       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  FLASH status register
   type FLASH_SR_Register is record
      --  End of operation Set by hardware when one or more flash memory
      --  operation (programming / erase) has been completed successfully. This
      --  bit is set only if the end of operation interrupts are enabled
      --  (EOPIE=1). Cleared by writing 1.
      EOP            : Boolean := False;
      --  Operation error Set by hardware when a flash memory operation
      --  (program / erase) completes unsuccessfully. This bit is set only if
      --  error interrupts are enabled (ERRIE=1). Cleared by writing 1.
      OPERR          : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Programming error Set by hardware when a double-word address to be
      --  programmed contains a value different from '0xFFFF FFFF' before
      --  programming, except if the data to write is '0x0000 0000'. Cleared by
      --  writing 1.
      PROGERR        : Boolean := False;
      --  Write protection error Set by hardware when an address to be
      --  erased/programmed belongs to a write-protected part (by WRP, PCROP or
      --  RDP Level 1) of the flash memory. Cleared by writing 1.
      WRPERR         : Boolean := False;
      --  Programming alignment error Set by hardware when the data to program
      --  cannot be contained in the same double word (64-bit) flash memory in
      --  case of standard programming, or if there is a change of page during
      --  fast programming. Cleared by writing 1.
      PGAERR         : Boolean := False;
      --  Size error Set by hardware when the size of the access is a byte or
      --  half-word during a program or a fast program sequence. Only double
      --  word programming is allowed (consequently: word access). Cleared by
      --  writing 1.
      SIZERR         : Boolean := False;
      --  Programming sequence error Set by hardware when a write access to the
      --  flash memory is performed by the code while PG or FSTPG have not been
      --  set previously. Set also by hardware when PROGERR, SIZERR, PGAERR,
      --  WRPERR, MISSERR or FASTERR is set due to a previous programming
      --  error. Cleared by writing 1.
      PGSERR         : Boolean := False;
      --  Fast programming data miss error In Fast programming mode, 16 double
      --  words (128 bytes) must be sent to flash memory successively, and the
      --  new data must be sent to the logic control before the current data is
      --  fully programmed. MISSERR is set by hardware when the new data is not
      --  present in time. Cleared by writing 1.
      MISSERR        : Boolean := False;
      --  Fast programming error Set by hardware when a fast programming
      --  sequence (activated by FSTPG) is interrupted due to an error
      --  (alignment, size, write protection or data miss). The corresponding
      --  status bit (PGAERR, SIZERR, WRPERR or MISSERR) is set at the same
      --  time. Cleared by writing 1.
      FASTERR        : Boolean := False;
      --  unspecified
      Reserved_10_13 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  PCROP read error Set by hardware when an address to be read belongs
      --  to a read protected area of the flash memory (PCROP protection). An
      --  interrupt is generated if RDERRIE is set in FLASH_CR. Cleared by
      --  writing 1.
      RDERR          : Boolean := False;
      --  Option and Engineering bits loading validity error
      OPTVERR        : Boolean := False;
      --  Read-only. Busy This flag indicates that a flash memory operation
      --  requested by FLASH control register (FLASH_CR) is in progress. This
      --  bit is set at the beginning of the flash memory operation, and
      --  cleared when the operation finishes or when an error occurs.
      BSY1           : Boolean := False;
      --  unspecified
      Reserved_17_17 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Programming or erase configuration busy. This flag is set
      --  and cleared by hardware. It is set when the first word is sent for
      --  program or when setting the STRT bit of FLASH control register
      --  (FLASH_CR) for erase. It is cleared when the flash memory program or
      --  erase operation completes or ends with an error. When set, launching
      --  any other operation through the FLASH control register (FLASH_CR) is
      --  impossible, and must be postponed (a programming or erase operation
      --  is ongoing). When cleared, the program and erase settings in the
      --  FLASH control register (FLASH_CR) can be modified.
      CFGBSY         : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SR_Register use record
      EOP            at 0 range 0 .. 0;
      OPERR          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PROGERR        at 0 range 3 .. 3;
      WRPERR         at 0 range 4 .. 4;
      PGAERR         at 0 range 5 .. 5;
      SIZERR         at 0 range 6 .. 6;
      PGSERR         at 0 range 7 .. 7;
      MISSERR        at 0 range 8 .. 8;
      FASTERR        at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      RDERR          at 0 range 14 .. 14;
      OPTVERR        at 0 range 15 .. 15;
      BSY1           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CFGBSY         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FLASH_CR_PNB_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH control register
   type FLASH_CR_Register is record
      --  Flash memory programming enable
      PG             : Boolean := False;
      --  Page erase enable
      PER            : Boolean := False;
      --  Mass erase When set, this bit triggers the mass erase, that is, all
      --  user pages.
      MER1           : Boolean := False;
      --  Page number selection These bits select the page to erase: ... Note:
      --  Values corresponding to addresses outside the main memory are not
      --  allowed.
      PNB            : FLASH_CR_PNB_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Start erase operation This bit triggers an erase operation when set.
      --  This bit is possible to set only by software and to clear only by
      --  hardware. The hardware clears it when one of BSY1 and BSY2 flags in
      --  the FLASH_SR register transits to zero.
      STRT           : Boolean := False;
      --  Start of modification of option bytes This bit triggers an options
      --  operation when set. This bit is set only by software, and is cleared
      --  when the BSY1 bit is cleared in FLASH_SR.
      OPTSTRT        : Boolean := False;
      --  Fast programming enable
      FSTPG          : Boolean := False;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  End-of-operation interrupt enable This bit enables the interrupt
      --  generation upon setting the EOP flag in the FLASH_SR register.
      EOPIE          : Boolean := False;
      --  Error interrupt enable This bit enables the interrupt generation upon
      --  setting the OPERR flag in the FLASH_SR register.
      ERRIE          : Boolean := False;
      --  PCROP read error interrupt enable This bit enables the interrupt
      --  generation upon setting the RDERR flag in the FLASH_SR register.
      RDERRIE        : Boolean := False;
      --  Option byte load launch When set, this bit triggers the load of
      --  option bytes into option registers. It is automatically cleared upon
      --  the completion of the load. The high state of the bit indicates
      --  pending option byte load. The bit cannot be cleared by software. It
      --  cannot be written as long as OPTLOCK is set.
      OBL_LAUNCH     : Boolean := False;
      --  Securable memory area protection enable This bit enables the
      --  protection on securable area, provided that a non-null securable
      --  memory area size (SEC_SIZE[4:0]) is defined in option bytes. This bit
      --  is possible to set only by software and to clear only through a
      --  system reset.
      SEC_PROT       : Boolean := False;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Options Lock This bit is set only. When set, all bits concerning user
      --  option in FLASH_CR register and so option page are locked. This bit
      --  is cleared by hardware after detecting the unlock sequence. The LOCK
      --  bit must be cleared before doing the unlock sequence for OPTLOCK bit.
      --  In case of an unsuccessful unlock operation, this bit remains set
      --  until the next reset.
      OPTLOCK        : Boolean := True;
      --  FLASH_CR Lock This bit is set only. When set, the FLASH_CR register
      --  is locked. It is cleared by hardware after detecting the unlock
      --  sequence. In case of an unsuccessful unlock operation, this bit
      --  remains set until the next system reset.
      LOCK           : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_CR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER1           at 0 range 2 .. 2;
      PNB            at 0 range 3 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      STRT           at 0 range 16 .. 16;
      OPTSTRT        at 0 range 17 .. 17;
      FSTPG          at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      EOPIE          at 0 range 24 .. 24;
      ERRIE          at 0 range 25 .. 25;
      RDERRIE        at 0 range 26 .. 26;
      OBL_LAUNCH     at 0 range 27 .. 27;
      SEC_PROT       at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      OPTLOCK        at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype FLASH_ECCR_ADDR_ECC_Field is Interfaces.Bit_Types.UInt14;

   --  FLASH ECC register
   type FLASH_ECCR_Register is record
      --  Read-only. ECC fail double-word address offset In case of ECC error
      --  or ECC correction detected, this bitfield contains double-word offset
      --  (multiple of 64 bits) to main Flash memory.
      ADDR_ECC       : FLASH_ECCR_ADDR_ECC_Field := 16#0#;
      --  unspecified
      Reserved_14_19 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Read-only. System Flash memory ECC fail This bit indicates that the
      --  ECC error correction or double ECC error detection is located in the
      --  system Flash memory.
      SYSF_ECC       : Boolean := False;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  ECC correction interrupt enable
      ECCCIE         : Boolean := False;
      --  unspecified
      Reserved_25_29 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  ECC correction Set by hardware when one ECC error has been detected
      --  and corrected. An interrupt is generated if ECCIE is set. Cleared by
      --  writing 1.
      ECCC           : Boolean := False;
      --  ECC detection Set by hardware when two ECC errors have been detected.
      --  When this bit is set, a NMI is generated. Cleared by writing 1.
      ECCD           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ECCR_Register use record
      ADDR_ECC       at 0 range 0 .. 13;
      Reserved_14_19 at 0 range 14 .. 19;
      SYSF_ECC       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ECCCIE         at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      ECCC           at 0 range 30 .. 30;
      ECCD           at 0 range 31 .. 31;
   end record;

   subtype FLASH_OPTR_RDP_Field is Interfaces.Bit_Types.Byte;
   subtype FLASH_OPTR_BORR_LEV_Field is Interfaces.Bit_Types.UInt3;
   subtype FLASH_OPTR_NRST_MODE_Field is Interfaces.Bit_Types.UInt2;

   --  FLASH option register
   type FLASH_OPTR_Register is record
      --  Read protection level Other: Level 1, memories read protection active
      RDP                      : FLASH_OPTR_RDP_Field := 16#0#;
      --  BOR reset level
      BORR_LEV                 : FLASH_OPTR_BORR_LEV_Field := 16#0#;
      --  unspecified
      Reserved_11_12           : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Reset generated when entering Stop mode
      NRST_STOP                : Boolean := False;
      --  Reset generated when entering Standby mode
      NRST_STDBY               : Boolean := False;
      --  Reset generated when entering Shutdown mode
      NRST_SHDW                : Boolean := False;
      --  Independent watchdog selection
      IWDG_SW                  : Boolean := False;
      --  Independent watchdog counter freeze in Stop mode
      IWDG_STOP                : Boolean := False;
      --  Independent watchdog counter freeze in Standby mode
      IWDG_STDBY               : Boolean := False;
      --  Window watchdog selection
      WWDG_SW                  : Boolean := False;
      --  unspecified
      Reserved_20_20           : Interfaces.Bit_Types.Bit := 16#0#;
      --  Backup domain reset
      BDRST                    : Boolean := False;
      --  SRAM parity check control enable/disable
      RAM_PARITY_CHECK         : Boolean := False;
      --  Backup SRAM erase prevention
      BKPSRAM_HW_ERASE_DISABLE : Boolean := False;
      --  BOOT0 signal source selection This option bit defines the source of
      --  the BOOT0 signal.
      NBOOT_SEL                : Boolean := False;
      --  Boot configuration Together with the BOOT0 pin or option bit NBOOT0
      --  (depending on NBOOT_SEL option bit configuration), this bit selects
      --  boot mode from the main flash memory, SRAM or the system memory.
      --  Refer to Section12.5: Boot configuration.
      NBOOT1                   : Boolean := False;
      --  NBOOT0 option bit
      NBOOT0                   : Boolean := False;
      --  NRST pin configuration
      NRST_MODE                : FLASH_OPTR_NRST_MODE_Field := 16#0#;
      --  Internal reset holder enable bit
      IRHEN                    : Boolean := False;
      --  unspecified
      Reserved_30_31           : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_OPTR_Register use record
      RDP                      at 0 range 0 .. 7;
      BORR_LEV                 at 0 range 8 .. 10;
      Reserved_11_12           at 0 range 11 .. 12;
      NRST_STOP                at 0 range 13 .. 13;
      NRST_STDBY               at 0 range 14 .. 14;
      NRST_SHDW                at 0 range 15 .. 15;
      IWDG_SW                  at 0 range 16 .. 16;
      IWDG_STOP                at 0 range 17 .. 17;
      IWDG_STDBY               at 0 range 18 .. 18;
      WWDG_SW                  at 0 range 19 .. 19;
      Reserved_20_20           at 0 range 20 .. 20;
      BDRST                    at 0 range 21 .. 21;
      RAM_PARITY_CHECK         at 0 range 22 .. 22;
      BKPSRAM_HW_ERASE_DISABLE at 0 range 23 .. 23;
      NBOOT_SEL                at 0 range 24 .. 24;
      NBOOT1                   at 0 range 25 .. 25;
      NBOOT0                   at 0 range 26 .. 26;
      NRST_MODE                at 0 range 27 .. 28;
      IRHEN                    at 0 range 29 .. 29;
      Reserved_30_31           at 0 range 30 .. 31;
   end record;

   subtype FLASH_WRP1AR_WRP1A_STRT_Field is Interfaces.Bit_Types.UInt7;
   subtype FLASH_WRP1AR_WRP1A_END_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH WRP area A address register
   type FLASH_WRP1AR_Register is record
      --  WRP area A start offset This bitfield contains the offset of the
      --  first page of the WRP area A. Note: The number of effective bits
      --  depends on the size of the flash memory in the device.
      WRP1A_STRT     : FLASH_WRP1AR_WRP1A_STRT_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  WRP area A end offset This bitfield contains the offset of the last
      --  page of the WRP area A. Note: The number of effective bits depends on
      --  the size of the flash memory in the device.
      WRP1A_END      : FLASH_WRP1AR_WRP1A_END_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP1AR_Register use record
      WRP1A_STRT     at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      WRP1A_END      at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FLASH_WRP1BR_WRP1B_STRT_Field is Interfaces.Bit_Types.UInt7;
   subtype FLASH_WRP1BR_WRP1B_END_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH WRP area B address register
   type FLASH_WRP1BR_Register is record
      --  WRP area B start offset This bitfield contains the offset of the
      --  first page of the WRP area B. Note: The number of effective bits
      --  depends on the size of the flash memory in the device.
      WRP1B_STRT     : FLASH_WRP1BR_WRP1B_STRT_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  WRP area B end offset This bitfield contains the offset of the last
      --  page of the WRP area B. Note: The number of effective bits depends on
      --  the size of the flash memory in the device.
      WRP1B_END      : FLASH_WRP1BR_WRP1B_END_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP1BR_Register use record
      WRP1B_STRT     at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      WRP1B_END      at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FLASH_SECR_HDP1_PEND_Field is Interfaces.Bit_Types.UInt7;
   subtype FLASH_SECR_HDP1EN_Field is Interfaces.Bit_Types.Byte;

   --  FLASH security register
   type FLASH_SECR_Register is record
      --  Last page of the first hide protection area
      HDP1_PEND      : FLASH_SECR_HDP1_PEND_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  used to force boot from user area If the bit is set in association
      --  with RDP level 1, the debug capabilities are disabled, except in the
      --  case of a bad OBL (mismatch).
      BOOT_LOCK      : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Hide protection area enable
      HDP1EN         : FLASH_SECR_HDP1EN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECR_Register use record
      HDP1_PEND      at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      BOOT_LOCK      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      HDP1EN         at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Mamba FLASH register block
   type FLASH_Peripheral is record
      --  FLASH access control register
      FLASH_ACR     : aliased FLASH_ACR_Register;
      --  FLASH key register
      FLASH_KEYR    : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH option key register
      FLASH_OPTKEYR : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH status register
      FLASH_SR      : aliased FLASH_SR_Register;
      --  FLASH control register
      FLASH_CR      : aliased FLASH_CR_Register;
      --  FLASH ECC register
      FLASH_ECCR    : aliased FLASH_ECCR_Register;
      --  FLASH option register
      FLASH_OPTR    : aliased FLASH_OPTR_Register;
      --  FLASH WRP area A address register
      FLASH_WRP1AR  : aliased FLASH_WRP1AR_Register;
      --  FLASH WRP area B address register
      FLASH_WRP1BR  : aliased FLASH_WRP1BR_Register;
      --  FLASH security register
      FLASH_SECR    : aliased FLASH_SECR_Register;
   end record
     with Volatile;

   for FLASH_Peripheral use record
      FLASH_ACR     at 16#0# range 0 .. 31;
      FLASH_KEYR    at 16#8# range 0 .. 31;
      FLASH_OPTKEYR at 16#C# range 0 .. 31;
      FLASH_SR      at 16#10# range 0 .. 31;
      FLASH_CR      at 16#14# range 0 .. 31;
      FLASH_ECCR    at 16#18# range 0 .. 31;
      FLASH_OPTR    at 16#20# range 0 .. 31;
      FLASH_WRP1AR  at 16#2C# range 0 .. 31;
      FLASH_WRP1BR  at 16#30# range 0 .. 31;
      FLASH_SECR    at 16#80# range 0 .. 31;
   end record;

   --  Mamba FLASH register block
   FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => FLASH_Base;

end Interfaces.STM32.FLASH;
