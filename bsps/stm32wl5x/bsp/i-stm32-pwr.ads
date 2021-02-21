--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM4.svd

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

   subtype CR1_LPMS_Field is Interfaces.Bit_Types.UInt3;
   subtype CR1_VOS_Field is Interfaces.Bit_Types.UInt2;

   --  Power control register 1
   type CR1_Register is record
      --  Low-power mode selection for CPU1
      LPMS            : CR1_LPMS_Field := 16#0#;
      --  sub-GHz SPI NSS source select
      SUBGHZSPINSSSEL : Boolean := False;
      --  Flash memory power down mode during LPRun for CPU1
      FPDR            : Boolean := False;
      --  Flash memory power down mode during LPSleep for CPU1
      FPDS            : Boolean := False;
      --  unspecified
      Reserved_6_7    : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Disable backup domain write protection
      DBP             : Boolean := False;
      --  Voltage scaling range selection
      VOS             : CR1_VOS_Field := 16#1#;
      --  unspecified
      Reserved_11_13  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Low-power run
      LPR             : Boolean := False;
      --  unspecified
      Reserved_15_31  : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      LPMS            at 0 range 0 .. 2;
      SUBGHZSPINSSSEL at 0 range 3 .. 3;
      FPDR            at 0 range 4 .. 4;
      FPDS            at 0 range 5 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      DBP             at 0 range 8 .. 8;
      VOS             at 0 range 9 .. 10;
      Reserved_11_13  at 0 range 11 .. 13;
      LPR             at 0 range 14 .. 14;
      Reserved_15_31  at 0 range 15 .. 31;
   end record;

   subtype CR2_PLS_Field is Interfaces.Bit_Types.UInt3;

   --  Power control register 2
   type CR2_Register is record
      --  Power voltage detector enable
      PVDE          : Boolean := False;
      --  Power voltage detector level selection.
      PLS           : CR2_PLS_Field := 16#0#;
      --  unspecified
      Reserved_4_5  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Peripheral voltage monitoring 3 enable: VDDA vs. 1.62V
      PVME3         : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      PVDE          at 0 range 0 .. 0;
      PLS           at 0 range 1 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      PVME3         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  CR3_EWUP array
   type CR3_EWUP_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for CR3_EWUP
   type CR3_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EWUP as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  EWUP as an array
            Arr : CR3_EWUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CR3_EWUP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power control register 3
   type CR3_Register is record
      --  Enable Wakeup pin WKUP1 for CPU1
      EWUP           : CR3_EWUP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_6   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Ultra-low-power enable
      EULPEN         : Boolean := False;
      --  Enable wakeup PVD for CPU1
      EWPVD          : Boolean := False;
      --  SRAM2 retention in Standby mode
      RRS            : Boolean := False;
      --  Apply pull-up and pull-down configuration from CPU1
      APC            : Boolean := False;
      --  Enable Radio BUSY Wakeup from Standby for CPU1
      EWRFBUSY       : Boolean := False;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  akeup for CPU1
      EWRFIRQ        : Boolean := False;
      --  nable CPU2 Hold interrupt for CPU1
      EC2H           : Boolean := False;
      --  Enable internal wakeup line for CPU1
      EIWUL          : Boolean := True;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register use record
      EWUP           at 0 range 0 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      EULPEN         at 0 range 7 .. 7;
      EWPVD          at 0 range 8 .. 8;
      RRS            at 0 range 9 .. 9;
      APC            at 0 range 10 .. 10;
      EWRFBUSY       at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      EWRFIRQ        at 0 range 13 .. 13;
      EC2H           at 0 range 14 .. 14;
      EIWUL          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CR4_WP array
   type CR4_WP_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for CR4_WP
   type CR4_WP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WP as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  WP as an array
            Arr : CR4_WP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CR4_WP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power control register 4
   type CR4_Register is record
      --  Wakeup pin WKUP1 polarity
      WP             : CR4_WP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  VBAT battery charging enable
      VBE            : Boolean := False;
      --  VBAT battery charging resistor selection
      VBRS           : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Wakeup Radio BUSY polarity
      WRFBUSYP       : Boolean := False;
      --  unspecified
      Reserved_12_14 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  oot CPU2 after reset or wakeup from Stop or Standby modes.
      C2BOOT         : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR4_Register use record
      WP             at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      VBE            at 0 range 8 .. 8;
      VBRS           at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WRFBUSYP       at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      C2BOOT         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SR1_WUF array
   type SR1_WUF_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for SR1_WUF
   type SR1_WUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUF as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  WUF as an array
            Arr : SR1_WUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SR1_WUF_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power status register 1
   type SR1_Register is record
      --  Read-only. Wakeup flag 1
      WUF            : SR1_WUF_Field;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5;
      --  Read-only. Wakeup PVD flag
      WPVDF          : Boolean;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2;
      --  Read-only. Radio BUSY wakeup flag
      WRFBUSYF       : Boolean;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2;
      --  Read-only. PU2 Hold interrupt flag
      C2HF           : Boolean;
      --  Read-only. Internal wakeup interrupt flag
      WUFI           : Boolean;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR1_Register use record
      WUF            at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      WPVDF          at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      WRFBUSYF       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      C2HF           at 0 range 14 .. 14;
      WUFI           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Power status register 2
   type SR2_Register is record
      --  Read-only. PU2 boot/wakeup request source information
      C2BOOTS        : Boolean;
      --  Read-only. Radio BUSY signal status
      RFBUSYS        : Boolean;
      --  Read-only. Radio BUSY masked signal status
      RFBUSYMS       : Boolean;
      --  Read-only. SMPS ready flag
      SMPSRDY        : Boolean;
      --  Read-only. LDO ready flag
      LDORDY         : Boolean;
      --  Read-only. Radio end of life flag
      RFEOLF         : Boolean;
      --  Read-only. regulator2 low power flag
      REGMRS         : Boolean;
      --  Read-only. Flash ready
      FLASHRDY       : Boolean;
      --  Read-only. regulator1 started
      REGLPS         : Boolean;
      --  Read-only. regulator1 low power flag
      REGLPF         : Boolean;
      --  Read-only. Voltage scaling flag
      VOSF           : Boolean;
      --  Read-only. Power voltage detector output
      PVDO           : Boolean;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Peripheral voltage monitoring output: VDDA vs. 1.62 V
      PVMO3          : Boolean;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR2_Register use record
      C2BOOTS        at 0 range 0 .. 0;
      RFBUSYS        at 0 range 1 .. 1;
      RFBUSYMS       at 0 range 2 .. 2;
      SMPSRDY        at 0 range 3 .. 3;
      LDORDY         at 0 range 4 .. 4;
      RFEOLF         at 0 range 5 .. 5;
      REGMRS         at 0 range 6 .. 6;
      FLASHRDY       at 0 range 7 .. 7;
      REGLPS         at 0 range 8 .. 8;
      REGLPF         at 0 range 9 .. 9;
      VOSF           at 0 range 10 .. 10;
      PVDO           at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      PVMO3          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  SCR_CWUF array
   type SCR_CWUF_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for SCR_CWUF
   type SCR_CWUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CWUF as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  CWUF as an array
            Arr : SCR_CWUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SCR_CWUF_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power status clear register
   type SCR_Register is record
      --  Write-only. Clear wakeup flag 1
      CWUF           : SCR_CWUF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Write-only. Clear wakeup PVD interrupt flag
      CWPVDF         : Boolean := False;
      --  unspecified
      Reserved_9_10  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Clear wakeup Radio BUSY flag
      CWRFBUSYF      : Boolean := False;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. lear CPU2 Hold interrupt flag
      CC2HF          : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      CWUF           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CWPVDF         at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      CWRFBUSYF      at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      CC2HF          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Power control register 5
   type CR5_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Enable Radio End Of Life detector enabled
      RFEOLEN        : Boolean := False;
      --  Enable SMPS Step Down converter SMPS mode enabled.
      SMPSEN         : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR5_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      RFEOLEN        at 0 range 14 .. 14;
      SMPSEN         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRA_PU array
   type PUCRA_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRA_PU
   type PUCRA_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PUCRA_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRA_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port A pull-up control register
   type PUCRA_Register is record
      --  PU0
      PU             : PUCRA_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRA_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRA_PD array
   type PDCRA_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRA_PD
   type PDCRA_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PDCRA_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRA_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port A pull-down control register
   type PDCRA_Register is record
      --  PD0
      PD             : PDCRA_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRA_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRB_PU array
   type PUCRB_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRB_PU
   type PUCRB_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PUCRB_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRB_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port B pull-up control register
   type PUCRB_Register is record
      --  PU0
      PU             : PUCRB_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRB_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRB_PD array
   type PDCRB_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRB_PD
   type PDCRB_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PDCRB_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRB_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port B pull-down control register
   type PDCRB_Register is record
      --  PD0
      PD             : PDCRB_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRB_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRC_PU array
   type PUCRC_PU_Field_Array is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for PUCRC_PU
   type PUCRC_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  PU as an array
            Arr : PUCRC_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PUCRC_PU_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  PUCRC_PU array
   type PUCRC_PU_Field_Array_1 is array (13 .. 15) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PUCRC_PU
   type PUCRC_PU_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  PU as an array
            Arr : PUCRC_PU_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PUCRC_PU_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power Port C pull-up control register
   type PUCRC_Register is record
      --  PU0
      PU             : PUCRC_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_12  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  PU13
      PU_1           : PUCRC_PU_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRC_Register use record
      PU             at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      PU_1           at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRC_PD array
   type PDCRC_PD_Field_Array is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for PDCRC_PD
   type PDCRC_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  PD as an array
            Arr : PDCRC_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PDCRC_PD_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  PDCRC_PD array
   type PDCRC_PD_Field_Array_1 is array (13 .. 15) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PDCRC_PD
   type PDCRC_PD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  PD as an array
            Arr : PDCRC_PD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PDCRC_PD_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power Port C pull-down control register
   type PDCRC_Register is record
      --  PD0
      PD             : PDCRC_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_12  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  PD13
      PD_1           : PDCRC_PD_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRC_Register use record
      PD             at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      PD_1           at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Power Port H pull-up control register
   type PUCRH_Register is record
      --  unspecified
      Reserved_0_2  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  pull-up
      PU3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRH_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      PU3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Power Port H pull-down control register
   type PDCRH_Register is record
      --  unspecified
      Reserved_0_2  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  pull-down
      PD3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRH_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      PD3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype C2CR1_LPMS_Field is Interfaces.Bit_Types.UInt3;

   --  Power CPU2 control register 1 [dual core device only]
   type C2CR1_Register is record
      --  Low-power mode selection for CPU2
      LPMS          : C2CR1_LPMS_Field := 16#7#;
      --  unspecified
      Reserved_3_3  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Flash memory power down mode during LPRun for CPU2
      FPDR          : Boolean := False;
      --  Flash memory power down mode during LPSleep for CPU2
      FPDS          : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2CR1_Register use record
      LPMS          at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      FPDR          at 0 range 4 .. 4;
      FPDS          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  C2CR3_EWUP array
   type C2CR3_EWUP_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for C2CR3_EWUP
   type C2CR3_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EWUP as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  EWUP as an array
            Arr : C2CR3_EWUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for C2CR3_EWUP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Power CPU2 control register 3 [dual core device only]
   type C2CR3_Register is record
      --  Enable Wakeup pin WKUP1 for CPU2
      EWUP           : C2CR3_EWUP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Enable wakeup PVD for CPU2
      EWPVD          : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Apply pull-up and pull-down configuration for CPU2
      APC            : Boolean := False;
      --  EWRFBUSY
      EWRFBUSY       : Boolean := False;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  akeup for CPU2
      EWRFIRQ        : Boolean := False;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Enable internal wakeup line for CPU2
      EIWUL          : Boolean := True;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2CR3_Register use record
      EWUP           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      EWPVD          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      APC            at 0 range 10 .. 10;
      EWRFBUSY       at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      EWRFIRQ        at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      EIWUL          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Power extended status and status clear register
   type EXTSCR_Register is record
      --  Write-only. Clear CPU1 Stop Standby flags
      C1CSSF         : Boolean := False;
      --  Write-only. lear CPU2 Stop Standby flags
      C2CSSF         : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Read-only. System Standby flag for CPU1. (no core states retained)
      C1SBF          : Boolean := False;
      --  Read-only. System Stop2 flag for CPU1. (partial core states retained)
      C1STOP2F       : Boolean := False;
      --  Read-only. System Stop0, 1 flag for CPU1. (All core states retained)
      C1STOPF        : Boolean := False;
      --  Read-only. ystem Standby flag for CPU2. (no core states retained)
      C2SBF          : Boolean := False;
      --  Read-only. ystem Stop2 flag for CPU2. (partial core states retained)
      C2STOP2F       : Boolean := False;
      --  Read-only. ystem Stop0, 1 flag for CPU2. (All core states retained)
      C2STOPF        : Boolean := False;
      --  Read-only. CPU1 deepsleep mode
      C1DS           : Boolean := False;
      --  Read-only. PU2 deepsleep mode
      C2DS           : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTSCR_Register use record
      C1CSSF         at 0 range 0 .. 0;
      C2CSSF         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      C1SBF          at 0 range 8 .. 8;
      C1STOP2F       at 0 range 9 .. 9;
      C1STOPF        at 0 range 10 .. 10;
      C2SBF          at 0 range 11 .. 11;
      C2STOP2F       at 0 range 12 .. 12;
      C2STOPF        at 0 range 13 .. 13;
      C1DS           at 0 range 14 .. 14;
      C2DS           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Power security configuration register [dual core device only]
   type SECCFGR_Register is record
      --  unspecified
      Reserved_0_14  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  wakeup on CPU2 illegal access interrupt enable
      C2EWILA        : Boolean := True;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SECCFGR_Register use record
      Reserved_0_14  at 0 range 0 .. 14;
      C2EWILA        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Power SPI3 control register
   type SUBGHZSPICR_Register is record
      --  unspecified
      Reserved_0_14  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  sub-GHz SPI NSS control
      NSS            : Boolean := True;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUBGHZSPICR_Register use record
      Reserved_0_14  at 0 range 0 .. 14;
      NSS            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RSSCMDR_RSSCMD_Field is Interfaces.Bit_Types.Byte;

   --  RSS Command register [dual core device only]
   type RSSCMDR_Register is record
      --  RSS command
      RSSCMD        : RSSCMDR_RSSCMD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSSCMDR_Register use record
      RSSCMD        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  Power control register 1
      CR1         : aliased CR1_Register;
      --  Power control register 2
      CR2         : aliased CR2_Register;
      --  Power control register 3
      CR3         : aliased CR3_Register;
      --  Power control register 4
      CR4         : aliased CR4_Register;
      --  Power status register 1
      SR1         : aliased SR1_Register;
      --  Power status register 2
      SR2         : aliased SR2_Register;
      --  Power status clear register
      SCR         : aliased SCR_Register;
      --  Power control register 5
      CR5         : aliased CR5_Register;
      --  Power Port A pull-up control register
      PUCRA       : aliased PUCRA_Register;
      --  Power Port A pull-down control register
      PDCRA       : aliased PDCRA_Register;
      --  Power Port B pull-up control register
      PUCRB       : aliased PUCRB_Register;
      --  Power Port B pull-down control register
      PDCRB       : aliased PDCRB_Register;
      --  Power Port C pull-up control register
      PUCRC       : aliased PUCRC_Register;
      --  Power Port C pull-down control register
      PDCRC       : aliased PDCRC_Register;
      --  Power Port H pull-up control register
      PUCRH       : aliased PUCRH_Register;
      --  Power Port H pull-down control register
      PDCRH       : aliased PDCRH_Register;
      --  Power CPU2 control register 1 [dual core device only]
      C2CR1       : aliased C2CR1_Register;
      --  Power CPU2 control register 3 [dual core device only]
      C2CR3       : aliased C2CR3_Register;
      --  Power extended status and status clear register
      EXTSCR      : aliased EXTSCR_Register;
      --  Power security configuration register [dual core device only]
      SECCFGR     : aliased SECCFGR_Register;
      --  Power SPI3 control register
      SUBGHZSPICR : aliased SUBGHZSPICR_Register;
      --  RSS Command register [dual core device only]
      RSSCMDR     : aliased RSSCMDR_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      CR1         at 16#0# range 0 .. 31;
      CR2         at 16#4# range 0 .. 31;
      CR3         at 16#8# range 0 .. 31;
      CR4         at 16#C# range 0 .. 31;
      SR1         at 16#10# range 0 .. 31;
      SR2         at 16#14# range 0 .. 31;
      SCR         at 16#18# range 0 .. 31;
      CR5         at 16#1C# range 0 .. 31;
      PUCRA       at 16#20# range 0 .. 31;
      PDCRA       at 16#24# range 0 .. 31;
      PUCRB       at 16#28# range 0 .. 31;
      PDCRB       at 16#2C# range 0 .. 31;
      PUCRC       at 16#30# range 0 .. 31;
      PDCRC       at 16#34# range 0 .. 31;
      PUCRH       at 16#58# range 0 .. 31;
      PDCRH       at 16#5C# range 0 .. 31;
      C2CR1       at 16#80# range 0 .. 31;
      C2CR3       at 16#84# range 0 .. 31;
      EXTSCR      at 16#88# range 0 .. 31;
      SECCFGR     at 16#8C# range 0 .. 31;
      SUBGHZSPICR at 16#90# range 0 .. 31;
      RSSCMDR     at 16#98# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

end Interfaces.STM32.PWR;
