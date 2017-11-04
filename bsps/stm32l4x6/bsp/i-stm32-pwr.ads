--
--  Copyright (C) 2017, AdaCore
--

--  This spec has been automatically generated from STM32L4x2.svd

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
   subtype CR1_DBP_Field is Interfaces.Bit_Types.Bit;
   subtype CR1_VOS_Field is Interfaces.Bit_Types.UInt2;
   subtype CR1_LPR_Field is Interfaces.Bit_Types.Bit;

   --  Power control register 1
   type CR1_Register is record
      --  Low-power mode selection
      LPMS           : CR1_LPMS_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Disable backup domain write protection
      DBP            : CR1_DBP_Field := 16#0#;
      --  Voltage scaling range selection
      VOS            : CR1_VOS_Field := 16#1#;
      --  unspecified
      Reserved_11_13 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Low-power run
      LPR            : CR1_LPR_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      LPMS           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DBP            at 0 range 8 .. 8;
      VOS            at 0 range 9 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      LPR            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype CR2_PVDE_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_PLS_Field is Interfaces.Bit_Types.UInt3;
   --  CR2_PVME array element
   subtype CR2_PVME_Element is Interfaces.Bit_Types.Bit;

   --  CR2_PVME array
   type CR2_PVME_Field_Array is array (1 .. 4) of CR2_PVME_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for CR2_PVME
   type CR2_PVME_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PVME as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  PVME as an array
            Arr : CR2_PVME_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CR2_PVME_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype CR2_IOSV_Field is Interfaces.Bit_Types.Bit;
   subtype CR2_USV_Field is Interfaces.Bit_Types.Bit;

   --  Power control register 2
   type CR2_Register is record
      --  Power voltage detector enable
      PVDE           : CR2_PVDE_Field := 16#0#;
      --  Power voltage detector level selection
      PLS            : CR2_PLS_Field := 16#0#;
      --  Peripheral voltage monitoring 1 enable: VDDUSB vs. 1.2V
      PVME           : CR2_PVME_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit := 16#0#;
      --  VDDIO2 Independent I/Os supply valid
      IOSV           : CR2_IOSV_Field := 16#0#;
      --  VDDUSB USB supply valid
      USV            : CR2_USV_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      PVDE           at 0 range 0 .. 0;
      PLS            at 0 range 1 .. 3;
      PVME           at 0 range 4 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      IOSV           at 0 range 9 .. 9;
      USV            at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  CR3_EWUP array element
   subtype CR3_EWUP_Element is Interfaces.Bit_Types.Bit;

   --  CR3_EWUP array
   type CR3_EWUP_Field_Array is array (1 .. 5) of CR3_EWUP_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for CR3_EWUP
   type CR3_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EWUP as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  EWUP as an array
            Arr : CR3_EWUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CR3_EWUP_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype CR3_RRS_Field is Interfaces.Bit_Types.Bit;
   subtype CR3_APC_Field is Interfaces.Bit_Types.Bit;
   subtype CR3_EWF_Field is Interfaces.Bit_Types.Bit;

   --  Power control register 3
   type CR3_Register is record
      --  Enable Wakeup pin WKUP1
      EWUP           : CR3_EWUP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  SRAM2 retention in Standby mode
      RRS            : CR3_RRS_Field := 16#0#;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Apply pull-up and pull-down configuration
      APC            : CR3_APC_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Enable internal wakeup line
      EWF            : CR3_EWF_Field := 16#1#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register use record
      EWUP           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RRS            at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      APC            at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      EWF            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CR4_WP array element
   subtype CR4_WP_Element is Interfaces.Bit_Types.Bit;

   --  CR4_WP array
   type CR4_WP_Field_Array is array (1 .. 5) of CR4_WP_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for CR4_WP
   type CR4_WP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WP as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  WP as an array
            Arr : CR4_WP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CR4_WP_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype CR4_VBE_Field is Interfaces.Bit_Types.Bit;
   subtype CR4_VBRS_Field is Interfaces.Bit_Types.Bit;

   --  Power control register 4
   type CR4_Register is record
      --  Wakeup pin WKUP1 polarity
      WP             : CR4_WP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  VBAT battery charging enable
      VBE            : CR4_VBE_Field := 16#0#;
      --  VBAT battery charging resistor selection
      VBRS           : CR4_VBRS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR4_Register use record
      WP             at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VBE            at 0 range 8 .. 8;
      VBRS           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SR1_CWUF array element
   subtype SR1_CWUF_Element is Interfaces.Bit_Types.Bit;

   --  SR1_CWUF array
   type SR1_CWUF_Field_Array is array (1 .. 5) of SR1_CWUF_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for SR1_CWUF
   type SR1_CWUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CWUF as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  CWUF as an array
            Arr : SR1_CWUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for SR1_CWUF_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype SR1_CSBF_Field is Interfaces.Bit_Types.Bit;
   subtype SR1_WUFI_Field is Interfaces.Bit_Types.Bit;

   --  Power status register 1
   type SR1_Register is record
      --  Read-only. Wakeup flag 1
      CWUF           : SR1_CWUF_Field;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. Standby flag
      CSBF           : SR1_CSBF_Field;
      --  unspecified
      Reserved_9_14  : Interfaces.Bit_Types.UInt6;
      --  Read-only. Wakeup flag internal
      WUFI           : SR1_WUFI_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR1_Register use record
      CWUF           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CSBF           at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      WUFI           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SR2_REGLPS_Field is Interfaces.Bit_Types.Bit;
   subtype SR2_REGLPF_Field is Interfaces.Bit_Types.Bit;
   subtype SR2_VOSF_Field is Interfaces.Bit_Types.Bit;
   subtype SR2_PVDO_Field is Interfaces.Bit_Types.Bit;
   --  SR2_PVMO array element
   subtype SR2_PVMO_Element is Interfaces.Bit_Types.Bit;

   --  SR2_PVMO array
   type SR2_PVMO_Field_Array is array (1 .. 4) of SR2_PVMO_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SR2_PVMO
   type SR2_PVMO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PVMO as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  PVMO as an array
            Arr : SR2_PVMO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SR2_PVMO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Power status register 2
   type SR2_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte;
      --  Read-only. Low-power regulator started
      REGLPS         : SR2_REGLPS_Field;
      --  Read-only. Low-power regulator flag
      REGLPF         : SR2_REGLPF_Field;
      --  Read-only. Voltage scaling flag
      VOSF           : SR2_VOSF_Field;
      --  Read-only. Power voltage detector output
      PVDO           : SR2_PVDO_Field;
      --  Read-only. Peripheral voltage monitoring output: VDDUSB vs. 1.2 V
      PVMO           : SR2_PVMO_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR2_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      REGLPS         at 0 range 8 .. 8;
      REGLPF         at 0 range 9 .. 9;
      VOSF           at 0 range 10 .. 10;
      PVDO           at 0 range 11 .. 11;
      PVMO           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SCR_WUF array element
   subtype SCR_WUF_Element is Interfaces.Bit_Types.Bit;

   --  SCR_WUF array
   type SCR_WUF_Field_Array is array (1 .. 5) of SCR_WUF_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for SCR_WUF
   type SCR_WUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUF as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  WUF as an array
            Arr : SCR_WUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for SCR_WUF_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype SCR_SBF_Field is Interfaces.Bit_Types.Bit;

   --  Power status clear register
   type SCR_Register is record
      --  Write-only. Clear wakeup flag 1
      WUF           : SCR_WUF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_7  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Clear standby flag
      SBF           : SCR_SBF_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      WUF           at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      SBF           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  PUCRA_PU array element
   subtype PUCRA_PU_Element is Interfaces.Bit_Types.Bit;

   --  PUCRA_PU array
   type PUCRA_PU_Field_Array is array (0 .. 15) of PUCRA_PU_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRA_PU
   type PUCRA_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.Short;
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
      --  Port A pull-up bit y (y=0..15)
      PU             : PUCRA_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRA_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRA_PD array element
   subtype PDCRA_PD_Element is Interfaces.Bit_Types.Bit;

   --  PDCRA_PD array
   type PDCRA_PD_Field_Array is array (0 .. 15) of PDCRA_PD_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRA_PD
   type PDCRA_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.Short;
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
      --  Port A pull-down bit y (y=0..15)
      PD             : PDCRA_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRA_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRB_PU array element
   subtype PUCRB_PU_Element is Interfaces.Bit_Types.Bit;

   --  PUCRB_PU array
   type PUCRB_PU_Field_Array is array (0 .. 15) of PUCRB_PU_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRB_PU
   type PUCRB_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.Short;
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
      --  Port B pull-up bit y (y=0..15)
      PU             : PUCRB_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRB_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRB_PD array element
   subtype PDCRB_PD_Element is Interfaces.Bit_Types.Bit;

   --  PDCRB_PD array
   type PDCRB_PD_Field_Array is array (0 .. 15) of PDCRB_PD_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRB_PD
   type PDCRB_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.Short;
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
      --  Port B pull-down bit y (y=0..15)
      PD             : PDCRB_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRB_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRC_PU array element
   subtype PUCRC_PU_Element is Interfaces.Bit_Types.Bit;

   --  PUCRC_PU array
   type PUCRC_PU_Field_Array is array (0 .. 15) of PUCRC_PU_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRC_PU
   type PUCRC_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PU as an array
            Arr : PUCRC_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRC_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port C pull-up control register
   type PUCRC_Register is record
      --  Port C pull-up bit y (y=0..15)
      PU             : PUCRC_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRC_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRC_PD array element
   subtype PDCRC_PD_Element is Interfaces.Bit_Types.Bit;

   --  PDCRC_PD array
   type PDCRC_PD_Field_Array is array (0 .. 15) of PDCRC_PD_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRC_PD
   type PDCRC_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PD as an array
            Arr : PDCRC_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRC_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port C pull-down control register
   type PDCRC_Register is record
      --  Port C pull-down bit y (y=0..15)
      PD             : PDCRC_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRC_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRD_PU array element
   subtype PUCRD_PU_Element is Interfaces.Bit_Types.Bit;

   --  PUCRD_PU array
   type PUCRD_PU_Field_Array is array (0 .. 15) of PUCRD_PU_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRD_PU
   type PUCRD_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PU as an array
            Arr : PUCRD_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRD_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port D pull-up control register
   type PUCRD_Register is record
      --  Port D pull-up bit y (y=0..15)
      PU             : PUCRD_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRD_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRD_PD array element
   subtype PDCRD_PD_Element is Interfaces.Bit_Types.Bit;

   --  PDCRD_PD array
   type PDCRD_PD_Field_Array is array (0 .. 15) of PDCRD_PD_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRD_PD
   type PDCRD_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PD as an array
            Arr : PDCRD_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRD_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port D pull-down control register
   type PDCRD_Register is record
      --  Port D pull-down bit y (y=0..15)
      PD             : PDCRD_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRD_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRE_PU array element
   subtype PUCRE_PU_Element is Interfaces.Bit_Types.Bit;

   --  PUCRE_PU array
   type PUCRE_PU_Field_Array is array (0 .. 15) of PUCRE_PU_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRE_PU
   type PUCRE_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PU as an array
            Arr : PUCRE_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRE_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port E pull-up control register
   type PUCRE_Register is record
      --  Port E pull-up bit y (y=0..15)
      PU             : PUCRE_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRE_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRE_PD array element
   subtype PDCRE_PD_Element is Interfaces.Bit_Types.Bit;

   --  PDCRE_PD array
   type PDCRE_PD_Field_Array is array (0 .. 15) of PDCRE_PD_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRE_PD
   type PDCRE_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PD as an array
            Arr : PDCRE_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRE_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port E pull-down control register
   type PDCRE_Register is record
      --  Port E pull-down bit y (y=0..15)
      PD             : PDCRE_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRE_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRF_PU array element
   subtype PUCRF_PU_Element is Interfaces.Bit_Types.Bit;

   --  PUCRF_PU array
   type PUCRF_PU_Field_Array is array (0 .. 15) of PUCRF_PU_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRF_PU
   type PUCRF_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PU as an array
            Arr : PUCRF_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRF_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port F pull-up control register
   type PUCRF_Register is record
      --  Port F pull-up bit y (y=0..15)
      PU             : PUCRF_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRF_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRF_PD array element
   subtype PDCRF_PD_Element is Interfaces.Bit_Types.Bit;

   --  PDCRF_PD array
   type PDCRF_PD_Field_Array is array (0 .. 15) of PDCRF_PD_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRF_PD
   type PDCRF_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PD as an array
            Arr : PDCRF_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRF_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port F pull-down control register
   type PDCRF_Register is record
      --  Port F pull-down bit y (y=0..15)
      PD             : PDCRF_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRF_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRG_PU array element
   subtype PUCRG_PU_Element is Interfaces.Bit_Types.Bit;

   --  PUCRG_PU array
   type PUCRG_PU_Field_Array is array (0 .. 15) of PUCRG_PU_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PUCRG_PU
   type PUCRG_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PU as an array
            Arr : PUCRG_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUCRG_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port G pull-up control register
   type PUCRG_Register is record
      --  Port G pull-up bit y (y=0..15)
      PU             : PUCRG_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRG_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDCRG_PD array element
   subtype PDCRG_PD_Element is Interfaces.Bit_Types.Bit;

   --  PDCRG_PD array
   type PDCRG_PD_Field_Array is array (0 .. 15) of PDCRG_PD_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for PDCRG_PD
   type PDCRG_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  PD as an array
            Arr : PDCRG_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PDCRG_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Power Port G pull-down control register
   type PDCRG_Register is record
      --  Port G pull-down bit y (y=0..15)
      PD             : PDCRG_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRG_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUCRH_PU array element
   subtype PUCRH_PU_Element is Interfaces.Bit_Types.Bit;

   --  PUCRH_PU array
   type PUCRH_PU_Field_Array is array (0 .. 1) of PUCRH_PU_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PUCRH_PU
   type PUCRH_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PU as an array
            Arr : PUCRH_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PUCRH_PU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Power Port H pull-up control register
   type PUCRH_Register is record
      --  Port H pull-up bit y (y=0..1)
      PU            : PUCRH_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUCRH_Register use record
      PU            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PDCRH_PD array element
   subtype PDCRH_PD_Element is Interfaces.Bit_Types.Bit;

   --  PDCRH_PD array
   type PDCRH_PD_Field_Array is array (0 .. 1) of PDCRH_PD_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PDCRH_PD
   type PDCRH_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  PD as an array
            Arr : PDCRH_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PDCRH_PD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Power Port H pull-down control register
   type PDCRH_Register is record
      --  Port H pull-down bit y (y=0..1)
      PD            : PDCRH_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCRH_Register use record
      PD            at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  Power control register 1
      CR1   : aliased CR1_Register;
      --  Power control register 2
      CR2   : aliased CR2_Register;
      --  Power control register 3
      CR3   : aliased CR3_Register;
      --  Power control register 4
      CR4   : aliased CR4_Register;
      --  Power status register 1
      SR1   : aliased SR1_Register;
      --  Power status register 2
      SR2   : aliased SR2_Register;
      --  Power status clear register
      SCR   : aliased SCR_Register;
      --  Power Port A pull-up control register
      PUCRA : aliased PUCRA_Register;
      --  Power Port A pull-down control register
      PDCRA : aliased PDCRA_Register;
      --  Power Port B pull-up control register
      PUCRB : aliased PUCRB_Register;
      --  Power Port B pull-down control register
      PDCRB : aliased PDCRB_Register;
      --  Power Port C pull-up control register
      PUCRC : aliased PUCRC_Register;
      --  Power Port C pull-down control register
      PDCRC : aliased PDCRC_Register;
      --  Power Port D pull-up control register
      PUCRD : aliased PUCRD_Register;
      --  Power Port D pull-down control register
      PDCRD : aliased PDCRD_Register;
      --  Power Port E pull-up control register
      PUCRE : aliased PUCRE_Register;
      --  Power Port E pull-down control register
      PDCRE : aliased PDCRE_Register;
      --  Power Port F pull-up control register
      PUCRF : aliased PUCRF_Register;
      --  Power Port F pull-down control register
      PDCRF : aliased PDCRF_Register;
      --  Power Port G pull-up control register
      PUCRG : aliased PUCRG_Register;
      --  Power Port G pull-down control register
      PDCRG : aliased PDCRG_Register;
      --  Power Port H pull-up control register
      PUCRH : aliased PUCRH_Register;
      --  Power Port H pull-down control register
      PDCRH : aliased PDCRH_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      CR1   at 16#0# range 0 .. 31;
      CR2   at 16#4# range 0 .. 31;
      CR3   at 16#8# range 0 .. 31;
      CR4   at 16#C# range 0 .. 31;
      SR1   at 16#10# range 0 .. 31;
      SR2   at 16#14# range 0 .. 31;
      SCR   at 16#18# range 0 .. 31;
      PUCRA at 16#20# range 0 .. 31;
      PDCRA at 16#24# range 0 .. 31;
      PUCRB at 16#28# range 0 .. 31;
      PDCRB at 16#2C# range 0 .. 31;
      PUCRC at 16#30# range 0 .. 31;
      PDCRC at 16#34# range 0 .. 31;
      PUCRD at 16#38# range 0 .. 31;
      PDCRD at 16#3C# range 0 .. 31;
      PUCRE at 16#40# range 0 .. 31;
      PDCRE at 16#44# range 0 .. 31;
      PUCRF at 16#48# range 0 .. 31;
      PDCRF at 16#4C# range 0 .. 31;
      PUCRG at 16#50# range 0 .. 31;
      PDCRG at 16#54# range 0 .. 31;
      PUCRH at 16#58# range 0 .. 31;
      PDCRH at 16#5C# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => System'To_Address (16#40007000#);

end Interfaces.STM32.PWR;
