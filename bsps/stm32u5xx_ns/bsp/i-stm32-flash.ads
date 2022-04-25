--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

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

   subtype FLASH_ACR_LATENCY_Field is Interfaces.Bit_Types.UInt4;

   --  FLASH_ACR_PDREQ array
   type FLASH_ACR_PDREQ_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FLASH_ACR_PDREQ
   type FLASH_ACR_PDREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PDREQ as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PDREQ as an array
            Arr : FLASH_ACR_PDREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FLASH_ACR_PDREQ_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FLASH access control register
   type FLASH_ACR_Register is record
      --  Latency These bits represent the ratio between the HCLK (AHB clock)
      --  period and the Flash memory access time. ...
      LATENCY        : FLASH_ACR_LATENCY_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Prefetch enable This bit enables the prefetch buffer in the embedded
      --  Flash memory.
      PRFTEN         : Boolean := False;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Low-power read mode This bit puts the Flash memory in low-power read
      --  mode.
      LPM            : Boolean := False;
      --  Bank 1 power-down mode request This bit is write-protected with
      --  FLASH_PDKEY1R. This bit requests bank 1 to enter power-down mode.
      --  When bank 1 enters power-down mode, this bit is cleared by hardware
      --  and the PDKEY1R is locked.
      PDREQ          : FLASH_ACR_PDREQ_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Flash memory power-down mode during Sleep mode This bit determines
      --  whether the Flash memory is in power-down mode or Idle mode when the
      --  device is in Sleep mode. The Flash must not be put in power-down
      --  while a program or an erase operation is on-going.
      SLEEP_PD       : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACR_Register use record
      LATENCY        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PRFTEN         at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      LPM            at 0 range 11 .. 11;
      PDREQ          at 0 range 12 .. 13;
      SLEEP_PD       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  FLASH_NSSR_PD array
   type FLASH_NSSR_PD_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FLASH_NSSR_PD
   type FLASH_NSSR_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PD as an array
            Arr : FLASH_NSSR_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FLASH_NSSR_PD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FLASH non-secure status register
   type FLASH_NSSR_Register is record
      --  Non-secure end of operation
      EOP            : Boolean := False;
      --  Non-secure operation error
      OPERR          : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Non-secure programming error This bit is set by hardware when a
      --  non-secure quad-word address to be programmed contains a value
      --  different from all 1 before programming, except if the data to write
      --  is all 0. This bit is cleared by writing 1.
      PROGERR        : Boolean := False;
      --  Non-secure write protection error This bit is set by hardware when an
      --  non-secure address to be erased/programmed belongs to a
      --  write-protected part (by WRP, HDP or RDP level 1) of the Flash
      --  memory. This bit is cleared by writing 1. Refer to for full
      --  conditions of error flag setting.
      WRPERR         : Boolean := False;
      --  Non-secure programming alignment error This bit is set by hardware
      --  when the first word to be programmed is not aligned with a quad-word
      --  address, or the second, third or forth word does not belong to the
      --  same quad-word address. This bit is cleared by writing 1.
      PGAERR         : Boolean := False;
      --  Non-secure size error This bit is set by hardware when the size of
      --  the access is a byte or half-word during a non-secure program
      --  sequence. Only quad-word programming is allowed by means of
      --  successive word accesses. This bit is cleared by writing 1.
      SIZERR         : Boolean := False;
      --  Non-secure programming sequence error This bit is set by hardware
      --  when programming sequence is not correct. It is cleared by writing 1.
      --  Refer to for full conditions of error flag setting.
      PGSERR         : Boolean := False;
      --  unspecified
      Reserved_8_12  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Option write error This bit is set by hardware when the options bytes
      --  are written with an invalid configuration. It is cleared by writing
      --  1. Refer to for full conditions of error flag setting.
      OPTWERR        : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. Non-secure busy This indicates that a Flash memory secure
      --  or non-secure operation is in progress. This bit is set at the
      --  beginning of a Flash operation and reset when the operation finishes
      --  or when an error occurs.
      BSY            : Boolean := False;
      --  Read-only. Non-secure wait data to write This bit indicates that the
      --  Flash memory write buffer has been written by a secure or non-secure
      --  operation. It is set when the first data is stored in the buffer and
      --  cleared when the write is performed in the Flash memory.
      WDW            : Boolean := False;
      --  Read-only. OEM1 lock This bit indicates that the OEM1 RDP key read
      --  during the OBL is not virgin. When set, the OEM1 RDP lock mechanism
      --  is active.
      OEM1LOCK       : Boolean := False;
      --  Read-only. OEM2 lock This bit indicates that the OEM2 RDP key read
      --  during the OBL is not virgin. When set, the OEM2 RDP lock mechanism
      --  is active.
      OEM2LOCK       : Boolean := False;
      --  Read-only. Bank 1 in power-down mode This bit indicates that the
      --  Flash memory bank 1 is in power-down state. It is reset when bank 1
      --  is in normal mode or being awaken.
      PD             : FLASH_NSSR_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_NSSR_Register use record
      EOP            at 0 range 0 .. 0;
      OPERR          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PROGERR        at 0 range 3 .. 3;
      WRPERR         at 0 range 4 .. 4;
      PGAERR         at 0 range 5 .. 5;
      SIZERR         at 0 range 6 .. 6;
      PGSERR         at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      OPTWERR        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BSY            at 0 range 16 .. 16;
      WDW            at 0 range 17 .. 17;
      OEM1LOCK       at 0 range 18 .. 18;
      OEM2LOCK       at 0 range 19 .. 19;
      PD             at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  FLASH secure status register
   type FLASH_SECSR_Register is record
      --  Secure end of operation This bit is set by hardware when one or more
      --  Flash memory secure operation (program/erase) has been completed
      --  successfully. This bit is set only if the secure end of operation
      --  interrupts are enabled (EOPIE = 1 in FLASH_SECCR). This bit is
      --  cleared by writing 1.
      EOP            : Boolean := False;
      --  Secure operation error This bit is set by hardware when a Flash
      --  memory secure operation (program/erase) completes unsuccessfully.
      --  This bit is set only if secure error interrupts are enabled (SECERRIE
      --  = 1). This bit is cleared by writing 1.
      OPERR          : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Secure programming error This bit is set by hardware when a secure
      --  quad-word address to be programmed contains a value different from
      --  all 1 before programming, except if the data to write is all 0. This
      --  bit is cleared by writing 1.
      PROGERR        : Boolean := False;
      --  Secure write protection error This bit is set by hardware when an
      --  secure address to be erased/programmed belongs to a write-protected
      --  part (by WRP, PCROP, HDP or RDP level 1) of the Flash memory.This bit
      --  is cleared by writing 1. Refer to for full conditions of error flag
      --  setting.
      WRPERR         : Boolean := False;
      --  Secure programming alignment error This bit is set by hardware when
      --  the first word to be programmed is not aligned with a quad-word
      --  address, or the second, third or forth word does not belong to the
      --  same quad-word address.This bit is cleared by writing 1.
      PGAERR         : Boolean := False;
      --  Secure size error This bit is set by hardware when the size of the
      --  access is a byte or half-word during a secure program sequence. Only
      --  quad-word programming is allowed by means of successive word
      --  accesses.This bit is cleared by writing 1.
      SIZERR         : Boolean := False;
      --  Secure programming sequence error This bit is set by hardware when
      --  programming sequence is not correct. It is cleared by writing 1.
      --  Refer to for full conditions of error flag setting.
      PGSERR         : Boolean := False;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Read-only. Secure busy This bit indicates that a Flash memory secure
      --  or non-secure operation is in progress. This is set on the beginning
      --  of a Flash operation and reset when the operation finishes or when an
      --  error occurs.
      BSY            : Boolean := False;
      --  Read-only. Secure wait data to write This bit indicates that the
      --  Flash memory write buffer has been written by a secure or non-secure
      --  operation. It is set when the first data is stored in the buffer and
      --  cleared when the write is performed in the Flash memory.
      WDW            : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECSR_Register use record
      EOP            at 0 range 0 .. 0;
      OPERR          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PROGERR        at 0 range 3 .. 3;
      WRPERR         at 0 range 4 .. 4;
      PGAERR         at 0 range 5 .. 5;
      SIZERR         at 0 range 6 .. 6;
      PGSERR         at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      BSY            at 0 range 16 .. 16;
      WDW            at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype FLASH_NSCR_PNB_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH non-secure control register
   type FLASH_NSCR_Register is record
      --  Non-secure programming
      PG             : Boolean := False;
      --  Non-secure page erase
      PER            : Boolean := False;
      --  Non-secure bank 1 mass erase This bit triggers the bank 1 non-secure
      --  mass erase (all bank 1 user pages) when set.
      MER1           : Boolean := False;
      --  Non-secure page number selection These bits select the page to erase.
      --  ...
      PNB            : FLASH_NSCR_PNB_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Non-secure bank selection for page erase
      BKER           : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Non-secure burst write programming mode When set, this bit selects
      --  the burst write programming mode.
      BWR            : Boolean := False;
      --  Non-secure bank 2 mass erase This bit triggers the bank 2 non-secure
      --  mass erase (all bank 2 user pages) when set.
      MER2           : Boolean := False;
      --  Non-secure start This bit triggers a non-secure erase operation when
      --  set. If MER1, MER2 and PER bits are reset and the STRT bit is set,
      --  the PGSERR bit in FLASH_NSSR is set (this condition is forbidden).
      --  This bit is set only by software and is cleared when the BSY bit is
      --  cleared in FLASH_NSSR.
      STRT           : Boolean := False;
      --  Options modification start This bit triggers an options operation
      --  when set. It can not be written if OPTLOCK bit is set. This bit is
      --  set only by software, and is cleared when the BSY bit is cleared in
      --  FLASH_NSSR.
      OPTSTRT        : Boolean := False;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Non-secure end of operation interrupt enable This bit enables the
      --  interrupt generation when the EOP bit in the FLASH_NSSR is set to 1.
      EOPIE          : Boolean := False;
      --  Non-secure error interrupt enable This bit enables the interrupt
      --  generation when the OPERR bit in the FLASH_NSSR is set to 1.
      ERRIE          : Boolean := False;
      --  unspecified
      Reserved_26_26 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Force the option byte loading When set to 1, this bit forces the
      --  option byte reloading. This bit is cleared only when the option byte
      --  loading is complete. It cannot be written if OPTLOCK is set.
      OBL_LAUNCH     : Boolean := False;
      --  unspecified
      Reserved_28_29 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Option lock This bit is set only. When set, all bits concerning user
      --  options in FLASH_NSCR register are locked. This bit is cleared by
      --  hardware after detecting the unlock sequence. The LOCK bit in the
      --  FLASH_NSCR must be cleared before doing the unlock sequence for
      --  OPTLOCK bit. In case of an unsuccessful unlock operation, this bit
      --  remains set until the next reset.
      OPTLOCK        : Boolean := True;
      --  Non-secure lock This bit is set only. When set, the FLASH_NSCR
      --  register is locked. It is cleared by hardware after detecting the
      --  unlock sequence in FLASH_NSKEYR register. In case of an unsuccessful
      --  unlock operation, this bit remains set until the next system reset.
      LOCK           : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_NSCR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER1           at 0 range 2 .. 2;
      PNB            at 0 range 3 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      BKER           at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      BWR            at 0 range 14 .. 14;
      MER2           at 0 range 15 .. 15;
      STRT           at 0 range 16 .. 16;
      OPTSTRT        at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      EOPIE          at 0 range 24 .. 24;
      ERRIE          at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      OBL_LAUNCH     at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      OPTLOCK        at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype FLASH_SECCR_PNB_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH secure control register
   type FLASH_SECCR_Register is record
      --  Secure programming
      PG             : Boolean := False;
      --  Secure page erase
      PER            : Boolean := False;
      --  Secure bank 1 mass erase This bit triggers the bank 1 secure mass
      --  erase (all bank 1 user pages) when set.
      MER1           : Boolean := False;
      --  Secure page number selection These bits select the page to erase: ...
      PNB            : FLASH_SECCR_PNB_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Secure bank selection for page erase
      BKER           : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Secure burst write programming mode When set, this bit selects the
      --  burst write programming mode.
      BWR            : Boolean := False;
      --  Secure bank 2 mass erase This bit triggers the bank 2 secure mass
      --  erase (all bank 2 user pages) when set.
      MER2           : Boolean := False;
      --  Secure start This bit triggers a secure erase operation when set. If
      --  MER1, MER2 and PER bits are reset and the STRT bit is set, the PGSERR
      --  in the FLASH_SECSR is set (this condition is forbidden). This bit is
      --  set only by software and is cleared when the BSY bit is cleared in
      --  FLASH_SECSR.
      STRT           : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Secure End of operation interrupt enable This bit enables the
      --  interrupt generation when the EOP bit in the FLASH_SECSR is set to 1.
      EOPIE          : Boolean := False;
      --  Secure error interrupt enable
      ERRIE          : Boolean := False;
      --  Secure PCROP read error interrupt enable
      RDERRIE        : Boolean := False;
      --  unspecified
      Reserved_27_28 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Flash memory security state invert This bit inverts the Flash memory
      --  security state.
      INV            : Boolean := False;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Secure lock This bit is set only. When set, the FLASH_SECCR register
      --  is locked. It is cleared by hardware after detecting the unlock
      --  sequence in FLASH_SECKEYR register. In case of an unsuccessful unlock
      --  operation, this bit remains set until the next system reset.
      LOCK           : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECCR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER1           at 0 range 2 .. 2;
      PNB            at 0 range 3 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      BKER           at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      BWR            at 0 range 14 .. 14;
      MER2           at 0 range 15 .. 15;
      STRT           at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      EOPIE          at 0 range 24 .. 24;
      ERRIE          at 0 range 25 .. 25;
      RDERRIE        at 0 range 26 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      INV            at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype FLASH_ECCR_ADDR_ECC_Field is Interfaces.Bit_Types.UInt20;

   --  FLASH ECC register
   type FLASH_ECCR_Register is record
      --  Read-only. ECC fail address
      ADDR_ECC       : FLASH_ECCR_ADDR_ECC_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. ECC fail bank
      BK_ECC         : Boolean := False;
      --  Read-only. System Flash memory ECC fail This bit indicates that the
      --  ECC error correction or double ECC error detection is located in the
      --  system Flash memory.
      SYSF_ECC       : Boolean := False;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  ECC correction interrupt enable This bit enables the interrupt
      --  generation when the ECCC bit in the FLASH_ECCR register is set.
      ECCIE          : Boolean := False;
      --  unspecified
      Reserved_25_29 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  ECC correction This bit is set by hardware when one ECC error has
      --  been detected and corrected (only if ECCC and ECCD were previously
      --  cleared). An interrupt is generated if ECCIE is set. This bit is
      --  cleared by writing 1.
      ECCC           : Boolean := False;
      --  ECC detection This bit is set by hardware when two ECC errors have
      --  been detected (only if ECCC and ECCD were previously cleared). When
      --  this bit is set, a NMI is generated. This bit is cleared by writing
      --  1.
      ECCD           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ECCR_Register use record
      ADDR_ECC       at 0 range 0 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BK_ECC         at 0 range 21 .. 21;
      SYSF_ECC       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      ECCIE          at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      ECCC           at 0 range 30 .. 30;
      ECCD           at 0 range 31 .. 31;
   end record;

   subtype FLASH_OPSR_ADDR_OP_Field is Interfaces.Bit_Types.UInt20;
   subtype FLASH_OPSR_CODE_OP_Field is Interfaces.Bit_Types.UInt3;

   --  FLASH operation status register
   type FLASH_OPSR_Register is record
      --  Read-only. Interrupted operation address This field indicates which
      --  address in the Flash memory was accessed when reset occurred. The
      --  address is given by bank from address 0x0 0000 to 0xF FFF0.
      ADDR_OP        : FLASH_OPSR_ADDR_OP_Field;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit;
      --  Read-only. Interrupted operation bank This bit indicates which Flash
      --  memory bank was accessed when reset occurred
      BK_OP          : Boolean;
      --  Read-only. Operation in system Flash memory interrupted This bit
      --  indicates that the reset occurred during an operation in the system
      --  Flash memory.
      SYSF_OP        : Boolean;
      --  unspecified
      Reserved_23_28 : Interfaces.Bit_Types.UInt6;
      --  Read-only. Flash memory operation code This field indicates which
      --  Flash memory operation has been interrupted by a system reset:
      CODE_OP        : FLASH_OPSR_CODE_OP_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_OPSR_Register use record
      ADDR_OP        at 0 range 0 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      BK_OP          at 0 range 21 .. 21;
      SYSF_OP        at 0 range 22 .. 22;
      Reserved_23_28 at 0 range 23 .. 28;
      CODE_OP        at 0 range 29 .. 31;
   end record;

   subtype FLASH_OPTR_RDP_Field is Interfaces.Bit_Types.Byte;
   subtype FLASH_OPTR_BOR_LEV_Field is Interfaces.Bit_Types.UInt3;

   --  FLASH option register
   type FLASH_OPTR_Register is record
      --  Readout protection level Others: Level 1 (memories readout protection
      --  active) Note: Refer to for more details.
      RDP            : FLASH_OPTR_RDP_Field := 16#0#;
      --  BOR reset level These bits contain the VDD supply level threshold
      --  that activates/releases the reset.
      BOR_LEV        : FLASH_OPTR_BOR_LEV_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Reset generation in Stop mode
      nRST_STOP      : Boolean := False;
      --  Reset generation in Standby mode
      nRST_STDBY     : Boolean := False;
      --  Reset generation in Shutdown mode
      nRST_SHDW      : Boolean := False;
      --  SRAM1, SRAM3 and SRAM4 erase upon system reset
      SRAM1345_RST   : Boolean := False;
      --  Independent watchdog selection
      IWDG_SW        : Boolean := False;
      --  Independent watchdog counter freeze in Stop mode
      IWDG_STOP      : Boolean := False;
      --  Independent watchdog counter freeze in Standby mode
      IWDG_STDBY     : Boolean := False;
      --  Window watchdog selection
      WWDG_SW        : Boolean := False;
      --  Swap banks
      SWAP_BANK      : Boolean := False;
      --  Dual-bank on 1-Mbyte and 512-Kbyte Flash memory devices
      DUALBANK       : Boolean := False;
      --  Backup RAM ECC detection and correction enable
      BKPRAM_ECC     : Boolean := False;
      --  SRAM3 ECC detection and correction enable
      SRAM3_ECC      : Boolean := False;
      --  SRAM2 ECC detection and correction enable
      SRAM2_ECC      : Boolean := False;
      --  SRAM2 erase when system reset
      SRAM2_RST      : Boolean := False;
      --  Software BOOT0
      nSWBOOT0       : Boolean := False;
      --  nBOOT0 option bit
      nBOOT0         : Boolean := False;
      --  PA15 pull-up enable
      PA15_PUPEN     : Boolean := False;
      --  High-speed IO at low VDD voltage configuration bit This bit can be
      --  set only with VDD below 2.5V
      IO_VDD_HSLV    : Boolean := False;
      --  High-speed IO at low VDDIO2 voltage configuration bit This bit can be
      --  set only with VDDIO2 below 2.5 V.
      IO_VDDIO2_HSLV : Boolean := False;
      --  Global TrustZone security enable
      TZEN           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_OPTR_Register use record
      RDP            at 0 range 0 .. 7;
      BOR_LEV        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      nRST_STOP      at 0 range 12 .. 12;
      nRST_STDBY     at 0 range 13 .. 13;
      nRST_SHDW      at 0 range 14 .. 14;
      SRAM1345_RST   at 0 range 15 .. 15;
      IWDG_SW        at 0 range 16 .. 16;
      IWDG_STOP      at 0 range 17 .. 17;
      IWDG_STDBY     at 0 range 18 .. 18;
      WWDG_SW        at 0 range 19 .. 19;
      SWAP_BANK      at 0 range 20 .. 20;
      DUALBANK       at 0 range 21 .. 21;
      BKPRAM_ECC     at 0 range 22 .. 22;
      SRAM3_ECC      at 0 range 23 .. 23;
      SRAM2_ECC      at 0 range 24 .. 24;
      SRAM2_RST      at 0 range 25 .. 25;
      nSWBOOT0       at 0 range 26 .. 26;
      nBOOT0         at 0 range 27 .. 27;
      PA15_PUPEN     at 0 range 28 .. 28;
      IO_VDD_HSLV    at 0 range 29 .. 29;
      IO_VDDIO2_HSLV at 0 range 30 .. 30;
      TZEN           at 0 range 31 .. 31;
   end record;

   subtype FLASH_NSBOOTADD0R_NSBOOTADD0_Field is Interfaces.Bit_Types.UInt25;

   --  FLASH non-secure boot address 0 register	
   type FLASH_NSBOOTADD0R_Register is record
      --  unspecified
      Reserved_0_6 : Interfaces.Bit_Types.UInt7 := 16#F#;
      --  Non-secure boot base address 0 The non-secure boot memory address can
      --  be programmed to any address in the valid address range with a
      --  granularity of 128 bytes. These bits correspond to address [31:7].
      --  The NSBOOTADD0 option bytes are selected following the BOOT0 pin or
      --  nSWBOOT0 state. Examples: NSBOOTADD0[24:0] = 0x0100000: Boot from
      --  non-secure Flash memory (0x0800 0000) NSBOOTADD0[24:0] = 0x017F200:
      --  Boot from system memory bootloader (0x0BF9 0000) NSBOOTADD0[24:0] =
      --  0x0400000: Boot from non-secure SRAM1 on S-Bus (0x2000 0000)
      NSBOOTADD0   : FLASH_NSBOOTADD0R_NSBOOTADD0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_NSBOOTADD0R_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      NSBOOTADD0   at 0 range 7 .. 31;
   end record;

   subtype FLASH_NSBOOTADD1R_NSBOOTADD1_Field is Interfaces.Bit_Types.UInt25;

   --  FLASH non-secure boot address 1 register	
   type FLASH_NSBOOTADD1R_Register is record
      --  unspecified
      Reserved_0_6 : Interfaces.Bit_Types.UInt7 := 16#F#;
      --  Non-secure boot address 1 The non-secure boot memory address can be
      --  programmed to any address in the valid address range with a
      --  granularity of 128 bytes. These bits correspond to address [31:7].
      --  The NSBOOTADD0 option bytes are selected following the BOOT0 pin or
      --  nSWBOOT0 state. Examples: NSBOOTADD1[24:0] = 0x0100000: Boot from
      --  non-secure Flash memory (0x0800 0000) NSBOOTADD1[24:0] = 0x017F200:
      --  Boot from system memory bootloader (0x0BF9 0000) NSBOOTADD1[24:0] =
      --  0x0400000: Boot from non-secure SRAM1 on S-Bus (0x2000 0000)
      NSBOOTADD1   : FLASH_NSBOOTADD1R_NSBOOTADD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_NSBOOTADD1R_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      NSBOOTADD1   at 0 range 7 .. 31;
   end record;

   subtype FLASH_SECBOOTADD0R_SECBOOTADD0_Field is Interfaces.Bit_Types.UInt25;

   --  FLASH secure boot address 0 register
   type FLASH_SECBOOTADD0R_Register is record
      --  Boot lock When set, the boot is always forced to base address value
      --  programmed in SECBOOTADD0[24:0] option bytes whatever the boot
      --  selection option. When set, this bit can only be cleared by an RDP at
      --  level 0.
      BOOT_LOCK    : Boolean := False;
      --  unspecified
      Reserved_1_6 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Secure boot base address 0 The secure boot memory address can be
      --  programmed to any address in the valid address range with a
      --  granularity of 128 bytes. This bits correspond to address [31:7] The
      --  SECBOOTADD0 option bytes are selected following the BOOT0 pin or
      --  nSWBOOT0 state. Examples: SECBOOTADD0[24:0] = 0x018 0000: Boot from
      --  secure Flash memory (0x0C00 0000) SECBOOTADD0[24:0] = 0x01F F000:
      --  Boot from RSS (0x0FF8 0000) SECBOOTADD0[24:0] = 0x060 0000: Boot from
      --  secure SRAM1 on S-Bus (0x3000 0000)
      SECBOOTADD0  : FLASH_SECBOOTADD0R_SECBOOTADD0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECBOOTADD0R_Register use record
      BOOT_LOCK    at 0 range 0 .. 0;
      Reserved_1_6 at 0 range 1 .. 6;
      SECBOOTADD0  at 0 range 7 .. 31;
   end record;

   subtype FLASH_SECWM1R1_SECWM1_PSTRT_Field is Interfaces.Bit_Types.UInt7;
   subtype FLASH_SECWM1R1_SECWM1_PEND_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH secure watermark1 register 1
   type FLASH_SECWM1R1_Register is record
      --  Start page of first secure area This field contains the first page of
      --  the secure area in bank 1.
      SECWM1_PSTRT   : FLASH_SECWM1R1_SECWM1_PSTRT_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#1FE#;
      --  End page of first secure area This field contains the last page of
      --  the secure area in bank 1.
      SECWM1_PEND    : FLASH_SECWM1R1_SECWM1_PEND_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#1FE#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECWM1R1_Register use record
      SECWM1_PSTRT   at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SECWM1_PEND    at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FLASH_SECWM1R2_HDP1_PEND_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH secure watermark1 register 2
   type FLASH_SECWM1R2_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#FFFF#;
      --  End page of first hide protection area This field contains the last
      --  page of the HDP area in bank 1.
      HDP1_PEND      : FLASH_SECWM1R2_HDP1_PEND_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : Interfaces.Bit_Types.Byte := 16#1E#;
      --  Hide protection first area enable
      HDP1EN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECWM1R2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      HDP1_PEND      at 0 range 16 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      HDP1EN         at 0 range 31 .. 31;
   end record;

   subtype FLASH_WRP1AR_WRP1A_PSTRT_Field is Interfaces.Bit_Types.UInt7;
   subtype FLASH_WRP1AR_WRP1A_PEND_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH WRP1 area A address register
   type FLASH_WRP1AR_Register is record
      --  bank 1 WPR first area A start page This field contains the first page
      --  of the first WPR area for bank 1.
      WRP1A_PSTRT    : FLASH_WRP1AR_WRP1A_PSTRT_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#1FE#;
      --  Bank 1 WPR first area A end page This field contains the last page of
      --  the first WPR area in bank 1.
      WRP1A_PEND     : FLASH_WRP1AR_WRP1A_PEND_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : Interfaces.Bit_Types.Byte := 16#1E#;
      --  Bank 1 WPR first area A unlock
      UNLOCK         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP1AR_Register use record
      WRP1A_PSTRT    at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      WRP1A_PEND     at 0 range 16 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      UNLOCK         at 0 range 31 .. 31;
   end record;

   subtype FLASH_WRP1BR_WRP1B_PSTRT_Field is Interfaces.Bit_Types.UInt7;
   subtype FLASH_WRP1BR_WRP1B_PEND_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH WRP1 area B address register
   type FLASH_WRP1BR_Register is record
      --  Bank 1 WRP second area B start page This field contains the first
      --  page of the second WRP area for bank 1.
      WRP1B_PSTRT    : FLASH_WRP1BR_WRP1B_PSTRT_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#1FE#;
      --  Bank 1 WRP second area B end page This field contains the last page
      --  of the second WRP area in bank 1.
      WRP1B_PEND     : FLASH_WRP1BR_WRP1B_PEND_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : Interfaces.Bit_Types.Byte := 16#1E#;
      --  Bank 1 WPR second area B unlock
      UNLOCK         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP1BR_Register use record
      WRP1B_PSTRT    at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      WRP1B_PEND     at 0 range 16 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      UNLOCK         at 0 range 31 .. 31;
   end record;

   subtype FLASH_SECWM2R1_SECWM2_PSTRT_Field is Interfaces.Bit_Types.UInt7;
   subtype FLASH_SECWM2R1_SECWM2_PEND_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH secure watermark2 register 1
   type FLASH_SECWM2R1_Register is record
      --  Start page of second secure area This field contains the first page
      --  of the secure area in bank 2.
      SECWM2_PSTRT   : FLASH_SECWM2R1_SECWM2_PSTRT_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#1FE#;
      --  End page of second secure area This field contains the last page of
      --  the secure area in bank 2.
      SECWM2_PEND    : FLASH_SECWM2R1_SECWM2_PEND_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#1FE#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECWM2R1_Register use record
      SECWM2_PSTRT   at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SECWM2_PEND    at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FLASH_SECWM2R2_HDP2_PEND_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH secure watermark2 register 2
   type FLASH_SECWM2R2_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#FFFF#;
      --  End page of hide protection second area HDP2_PEND contains the last
      --  page of the HDP area in bank 2.
      HDP2_PEND      : FLASH_SECWM2R2_HDP2_PEND_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : Interfaces.Bit_Types.Byte := 16#1E#;
      --  Hide protection second area enable
      HDP2EN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECWM2R2_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      HDP2_PEND      at 0 range 16 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      HDP2EN         at 0 range 31 .. 31;
   end record;

   subtype FLASH_WRP2AR_WRP2A_PSTRT_Field is Interfaces.Bit_Types.UInt7;
   subtype FLASH_WRP2AR_WRP2A_PEND_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH WPR2 area A address register
   type FLASH_WRP2AR_Register is record
      --  Bank 2 WPR first area A start page This field contains the first page
      --  of the first WRP area for bank 2.
      WRP2A_PSTRT    : FLASH_WRP2AR_WRP2A_PSTRT_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#1FE#;
      --  Bank 2 WPR first area A end page This field contains the last page of
      --  the first WRP area in bank 2.
      WRP2A_PEND     : FLASH_WRP2AR_WRP2A_PEND_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : Interfaces.Bit_Types.Byte := 16#1E#;
      --  Bank 2 WPR first area A unlock
      UNLOCK         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP2AR_Register use record
      WRP2A_PSTRT    at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      WRP2A_PEND     at 0 range 16 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      UNLOCK         at 0 range 31 .. 31;
   end record;

   subtype FLASH_WRP2BR_WRP2B_PSTRT_Field is Interfaces.Bit_Types.UInt7;
   subtype FLASH_WRP2BR_WRP2B_PEND_Field is Interfaces.Bit_Types.UInt7;

   --  FLASH WPR2 area B address register
   type FLASH_WRP2BR_Register is record
      --  Bank 2 WPR second area B start page This field contains the first
      --  page of the second WRP area for bank 2.
      WRP2B_PSTRT    : FLASH_WRP2BR_WRP2B_PSTRT_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#1FE#;
      --  Bank 2 WPR second area B end page This field contains the last page
      --  of the second WRP area in bank 2.
      WRP2B_PEND     : FLASH_WRP2BR_WRP2B_PEND_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : Interfaces.Bit_Types.Byte := 16#1E#;
      --  Bank 2 WPR second area B unlock
      UNLOCK         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_WRP2BR_Register use record
      WRP2B_PSTRT    at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      WRP2B_PEND     at 0 range 16 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      UNLOCK         at 0 range 31 .. 31;
   end record;

   --  FLASH_SEC1BBR_SEC1BB array
   type FLASH_SEC1BBR_SEC1BB_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  FLASH secure block based bank 1 register 1
   type FLASH_SEC1BBR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC1BB as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SEC1BB as an array
            Arr : FLASH_SEC1BBR_SEC1BB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SEC1BBR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  FLASH_SEC2BBR_SEC2BB array
   type FLASH_SEC2BBR_SEC2BB_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  FLASH secure block based bank 2 register 1
   type FLASH_SEC2BBR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC2BB as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SEC2BB as an array
            Arr : FLASH_SEC2BBR_SEC2BB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SEC2BBR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  FLASH secure HDP control register
   type FLASH_SECHDPCR_Register is record
      --  HDP1 area access disable When set, this bit is only cleared by a
      --  system reset.
      HDP1_ACCDIS   : Boolean := False;
      --  HDP2 area access disable When set, this bit is only cleared by a
      --  system reset.
      HDP2_ACCDIS   : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_SECHDPCR_Register use record
      HDP1_ACCDIS   at 0 range 0 .. 0;
      HDP2_ACCDIS   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  FLASH privilege configuration register
   type FLASH_PRIVCFGR_Register is record
      --  Privileged protection for secure registers This bit can be accessed
      --  only when TrustZone is enabled (TZEN = 1). This bit can be read by
      --  both privileged or unprivileged, secure and non-secure access. The
      --  SPRIV bit can be written only by a secure privileged access. A
      --  non-secure write access on SPRIV bit is ignored. A secure
      --  unprivileged write access on SPRIV bit is ignored.
      SPRIV         : Boolean := False;
      --  Privileged protection for non-secure registers This bit can be read
      --  by both privileged or unprivileged, secure and non-secure access. The
      --  NSPRIV bit can be written by a secure or non-secure privileged
      --  access. A secure or non-secure unprivileged write access on NSPRIV
      --  bit is ignored.
      NSPRIV        : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PRIVCFGR_Register use record
      SPRIV         at 0 range 0 .. 0;
      NSPRIV        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  FLASH_PRIV1BBR_PRIV1BB array
   type FLASH_PRIV1BBR_PRIV1BB_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  FLASH privilege block based bank 1 register 1
   type FLASH_PRIV1BBR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV1BB as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PRIV1BB as an array
            Arr : FLASH_PRIV1BBR_PRIV1BB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PRIV1BBR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  FLASH_PRIV2BBR_PRIV2BB array
   type FLASH_PRIV2BBR_PRIV2BB_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  FLASH privilege block based bank 2 register 1
   type FLASH_PRIV2BBR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV2BB as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PRIV2BB as an array
            Arr : FLASH_PRIV2BBR_PRIV2BB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_PRIV2BBR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash
   type Flash_Peripheral is record
      --  FLASH access control register
      FLASH_ACR          : aliased FLASH_ACR_Register;
      --  FLASH non-secure key register
      FLASH_NSKEYR       : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH secure key register
      FLASH_SECKEYR      : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH option key register
      FLASH_OPTKEYR      : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH bank 1 power-down key register
      FLASH_PDKEY1R      : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH bank 2 power-down key register
      FLASH_PDKEY2R      : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH non-secure status register
      FLASH_NSSR         : aliased FLASH_NSSR_Register;
      --  FLASH secure status register
      FLASH_SECSR        : aliased FLASH_SECSR_Register;
      --  FLASH non-secure control register
      FLASH_NSCR         : aliased FLASH_NSCR_Register;
      --  FLASH secure control register
      FLASH_SECCR        : aliased FLASH_SECCR_Register;
      --  FLASH ECC register
      FLASH_ECCR         : aliased FLASH_ECCR_Register;
      --  FLASH operation status register
      FLASH_OPSR         : aliased FLASH_OPSR_Register;
      --  FLASH option register
      FLASH_OPTR         : aliased FLASH_OPTR_Register;
      --  FLASH non-secure boot address 0 register	
      FLASH_NSBOOTADD0R  : aliased FLASH_NSBOOTADD0R_Register;
      --  FLASH non-secure boot address 1 register	
      FLASH_NSBOOTADD1R  : aliased FLASH_NSBOOTADD1R_Register;
      --  FLASH secure boot address 0 register
      FLASH_SECBOOTADD0R : aliased FLASH_SECBOOTADD0R_Register;
      --  FLASH secure watermark1 register 1
      FLASH_SECWM1R1     : aliased FLASH_SECWM1R1_Register;
      --  FLASH secure watermark1 register 2
      FLASH_SECWM1R2     : aliased FLASH_SECWM1R2_Register;
      --  FLASH WRP1 area A address register
      FLASH_WRP1AR       : aliased FLASH_WRP1AR_Register;
      --  FLASH WRP1 area B address register
      FLASH_WRP1BR       : aliased FLASH_WRP1BR_Register;
      --  FLASH secure watermark2 register 1
      FLASH_SECWM2R1     : aliased FLASH_SECWM2R1_Register;
      --  FLASH secure watermark2 register 2
      FLASH_SECWM2R2     : aliased FLASH_SECWM2R2_Register;
      --  FLASH WPR2 area A address register
      FLASH_WRP2AR       : aliased FLASH_WRP2AR_Register;
      --  FLASH WPR2 area B address register
      FLASH_WRP2BR       : aliased FLASH_WRP2BR_Register;
      --  FLASH OEM1 key register 1
      FLASH_OEM1KEYR1    : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH OEM1 key register 2
      FLASH_OEM1KEYR2    : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH OEM2 key register 1
      FLASH_OEM2KEYR1    : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH OEM2 key register 2
      FLASH_OEM2KEYR2    : aliased Interfaces.Bit_Types.UInt32;
      --  FLASH secure block based bank 1 register 1
      FLASH_SEC1BBR1     : aliased FLASH_SEC1BBR_Register;
      --  FLASH secure block based bank 1 register 2
      FLASH_SEC1BBR2     : aliased FLASH_SEC1BBR_Register;
      --  FLASH secure block based bank 1 register 3
      FLASH_SEC1BBR3     : aliased FLASH_SEC1BBR_Register;
      --  FLASH secure block based bank 1 register 4
      FLASH_SEC1BBR4     : aliased FLASH_SEC1BBR_Register;
      --  FLASH secure block based bank 2 register 1
      FLASH_SEC2BBR1     : aliased FLASH_SEC2BBR_Register;
      --  FLASH secure block based bank 2 register 2
      FLASH_SEC2BBR2     : aliased FLASH_SEC2BBR_Register;
      --  FLASH secure block based bank 2 register 3
      FLASH_SEC2BBR3     : aliased FLASH_SEC2BBR_Register;
      --  FLASH secure block based bank 2 register 4
      FLASH_SEC2BBR4     : aliased FLASH_SEC2BBR_Register;
      --  FLASH secure HDP control register
      FLASH_SECHDPCR     : aliased FLASH_SECHDPCR_Register;
      --  FLASH privilege configuration register
      FLASH_PRIVCFGR     : aliased FLASH_PRIVCFGR_Register;
      --  FLASH privilege block based bank 1 register 1
      FLASH_PRIV1BBR1    : aliased FLASH_PRIV1BBR_Register;
      --  FLASH privilege block based bank 1 register 2
      FLASH_PRIV1BBR2    : aliased FLASH_PRIV1BBR_Register;
      --  FLASH privilege block based bank 1 register 3
      FLASH_PRIV1BBR3    : aliased FLASH_PRIV1BBR_Register;
      --  FLASH privilege block based bank 1 register 4
      FLASH_PRIV1BBR4    : aliased FLASH_PRIV1BBR_Register;
      --  FLASH privilege block based bank 2 register 1
      FLASH_PRIV2BBR1    : aliased FLASH_PRIV2BBR_Register;
      --  FLASH privilege block based bank 2 register 2
      FLASH_PRIV2BBR2    : aliased FLASH_PRIV2BBR_Register;
      --  FLASH privilege block based bank 2 register 3
      FLASH_PRIV2BBR3    : aliased FLASH_PRIV2BBR_Register;
      --  FLASH privilege block based bank 2 register 4
      FLASH_PRIV2BBR4    : aliased FLASH_PRIV2BBR_Register;
   end record
     with Volatile;

   for Flash_Peripheral use record
      FLASH_ACR          at 16#0# range 0 .. 31;
      FLASH_NSKEYR       at 16#8# range 0 .. 31;
      FLASH_SECKEYR      at 16#C# range 0 .. 31;
      FLASH_OPTKEYR      at 16#10# range 0 .. 31;
      FLASH_PDKEY1R      at 16#18# range 0 .. 31;
      FLASH_PDKEY2R      at 16#1C# range 0 .. 31;
      FLASH_NSSR         at 16#20# range 0 .. 31;
      FLASH_SECSR        at 16#24# range 0 .. 31;
      FLASH_NSCR         at 16#28# range 0 .. 31;
      FLASH_SECCR        at 16#2C# range 0 .. 31;
      FLASH_ECCR         at 16#30# range 0 .. 31;
      FLASH_OPSR         at 16#34# range 0 .. 31;
      FLASH_OPTR         at 16#40# range 0 .. 31;
      FLASH_NSBOOTADD0R  at 16#44# range 0 .. 31;
      FLASH_NSBOOTADD1R  at 16#48# range 0 .. 31;
      FLASH_SECBOOTADD0R at 16#4C# range 0 .. 31;
      FLASH_SECWM1R1     at 16#50# range 0 .. 31;
      FLASH_SECWM1R2     at 16#54# range 0 .. 31;
      FLASH_WRP1AR       at 16#58# range 0 .. 31;
      FLASH_WRP1BR       at 16#5C# range 0 .. 31;
      FLASH_SECWM2R1     at 16#60# range 0 .. 31;
      FLASH_SECWM2R2     at 16#64# range 0 .. 31;
      FLASH_WRP2AR       at 16#68# range 0 .. 31;
      FLASH_WRP2BR       at 16#6C# range 0 .. 31;
      FLASH_OEM1KEYR1    at 16#70# range 0 .. 31;
      FLASH_OEM1KEYR2    at 16#74# range 0 .. 31;
      FLASH_OEM2KEYR1    at 16#78# range 0 .. 31;
      FLASH_OEM2KEYR2    at 16#7C# range 0 .. 31;
      FLASH_SEC1BBR1     at 16#80# range 0 .. 31;
      FLASH_SEC1BBR2     at 16#84# range 0 .. 31;
      FLASH_SEC1BBR3     at 16#88# range 0 .. 31;
      FLASH_SEC1BBR4     at 16#8C# range 0 .. 31;
      FLASH_SEC2BBR1     at 16#A0# range 0 .. 31;
      FLASH_SEC2BBR2     at 16#A4# range 0 .. 31;
      FLASH_SEC2BBR3     at 16#A8# range 0 .. 31;
      FLASH_SEC2BBR4     at 16#AC# range 0 .. 31;
      FLASH_SECHDPCR     at 16#C0# range 0 .. 31;
      FLASH_PRIVCFGR     at 16#C4# range 0 .. 31;
      FLASH_PRIV1BBR1    at 16#D0# range 0 .. 31;
      FLASH_PRIV1BBR2    at 16#D4# range 0 .. 31;
      FLASH_PRIV1BBR3    at 16#D8# range 0 .. 31;
      FLASH_PRIV1BBR4    at 16#DC# range 0 .. 31;
      FLASH_PRIV2BBR1    at 16#F0# range 0 .. 31;
      FLASH_PRIV2BBR2    at 16#F4# range 0 .. 31;
      FLASH_PRIV2BBR3    at 16#F8# range 0 .. 31;
      FLASH_PRIV2BBR4    at 16#FC# range 0 .. 31;
   end record;

   --  Flash
   FLASH_Periph : aliased Flash_Peripheral
     with Import, Address => FLASH_Base;

   --  Flash
   SEC_FLASH_Periph : aliased Flash_Peripheral
     with Import, Address => SEC_FLASH_Base;

end Interfaces.STM32.Flash;
