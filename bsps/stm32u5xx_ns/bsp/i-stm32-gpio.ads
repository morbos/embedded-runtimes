--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.GPIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  MODER_MODE array element
   subtype MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  MODER_MODE array
   type MODER_MODE_Field_Array is array (0 .. 15) of MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OTYPER_OT array
   type OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for OTYPER_OT
   type OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output type register
   type OTYPER_Register is record
      --  Port x configuration bits (y = 0..15)
      OT             : OTYPER_OT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  OSPEEDR_OSPEED array element
   subtype OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  OSPEEDR_OSPEED array
   type OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PUPDR_PUPD array element
   subtype PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  PUPDR_PUPD array
   type PUPDR_PUPD_Field_Array is array (0 .. 15) of PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IDR_ID array
   type IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for IDR_ID
   type IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type IDR_Register is record
      --  Read-only. Port input data (y = 0..15)
      ID             : IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ODR_OD array
   type ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ODR_OD
   type ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type ODR_Register is record
      --  Port output data (y = 0..15)
      OD             : ODR_OD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  BSRR_BS array
   type BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BSRR_BS
   type BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  BSRR_BR array
   type BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BSRR_BR
   type BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit set/reset register
   type BSRR_Register is record
      --  Write-only. Port x set bit y (y= 0..15)
      BS : BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x set bit y (y= 0..15)
      BR : BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  LCKR_LCK array
   type LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for LCKR_LCK
   type LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port configuration lock register
   type LCKR_Register is record
      --  Port x lock bit y (y= 0..15)
      LCK            : LCKR_LCK_Field := (As_Array => False, Val => 16#0#);
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  AFRL_AFSEL array element
   subtype AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  AFRL_AFSEL array
   type AFRL_AFSEL_Field_Array is array (0 .. 7) of AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  AFRH_AFSEL array element
   subtype AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  AFRH_AFSEL array
   type AFRH_AFSEL_Field_Array is array (8 .. 15) of AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  BRR_BR array
   type BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for BRR_BR
   type BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit reset register
   type BRR_Register is record
      --  Write-only. Port x reset IO pin y
      BR             : BRR_BR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  HSLVR_HSLV array
   type HSLVR_HSLV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for HSLVR_HSLV
   type HSLVR_HSLV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  HSLV as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  HSLV as an array
            Arr : HSLVR_HSLV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for HSLVR_HSLV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO high-speed low-voltage register
   type HSLVR_Register is record
      --  Port x high-speed low-voltage configuration (y= 15 to 0)
      HSLV           : HSLVR_HSLV_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSLVR_Register use record
      HSLV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SECCFGR_SEC array
   type SECCFGR_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for SECCFGR_SEC
   type SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SEC as an array
            Arr : SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO secure configuration register
   type SECCFGR_Register is record
      --  Write-only. I/O pin of Port x secure bit enable
      SEC            : SECCFGR_SEC_Field := (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  OSPEEDR_OSPEED array
   type OSPEEDR_OSPEED_Field_Array_1 is array (0 .. 7)
     of OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 16;

   --  Type definition for OSPEEDR_OSPEED
   type OSPEEDR_OSPEED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OSPEED as an array
            Arr : OSPEEDR_OSPEED_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for OSPEEDR_OSPEED_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output speed register
   type OSPEEDR_Register_1 is record
      --  Port x configuration bits (y =7 .. 0)
      OSPEED         : OSPEEDR_OSPEED_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSPEEDR_Register_1 use record
      OSPEED         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PUPDR_PUPD array
   type PUPDR_PUPD_Field_Array_1 is array (0 .. 7) of PUPDR_PUPD_Element
     with Component_Size => 2, Size => 16;

   --  Type definition for PUPDR_PUPD
   type PUPDR_PUPD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PUPD as an array
            Arr : PUPDR_PUPD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PUPDR_PUPD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port pull-up/pull-down register
   type PUPDR_Register_1 is record
      --  Port x configuration bits (y =7 .. 0)
      PUPD           : PUPDR_PUPD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUPDR_Register_1 use record
      PUPD           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IDR_ID array
   type IDR_ID_Field_Array_1 is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for IDR_ID
   type IDR_ID_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  ID as an array
            Arr : IDR_ID_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for IDR_ID_Field_1 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  GPIO port input data register
   type IDR_Register_1 is record
      --  Read-only. Port input data (y = 0..7)
      ID            : IDR_ID_Field_1;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register_1 use record
      ID            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ODR_OD array
   type ODR_OD_Field_Array_1 is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ODR_OD
   type ODR_OD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  OD as an array
            Arr : ODR_OD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ODR_OD_Field_1 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  GPIO port output data register
   type ODR_Register_1 is record
      --  Port output data (y = 0..7)
      OD            : ODR_OD_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODR_Register_1 use record
      OD            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  BSRR_BS array
   type BSRR_BS_Field_Array_1 is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for BSRR_BS
   type BSRR_BS_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  BS as an array
            Arr : BSRR_BS_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for BSRR_BS_Field_1 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  BSRR_BR array
   type BSRR_BR_Field_Array_1 is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for BSRR_BR
   type BSRR_BR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  BR as an array
            Arr : BSRR_BR_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for BSRR_BR_Field_1 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  GPIO port bit set/reset register
   type BSRR_Register_1 is record
      --  Write-only. Port x set bit y (y= 0..7)
      BS             : BSRR_BS_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Port x set bit y (y= 0..7)
      BR             : BSRR_BR_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSRR_Register_1 use record
      BS             at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      BR             at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  LCKR_LCK array
   type LCKR_LCK_Field_Array_1 is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for LCKR_LCK
   type LCKR_LCK_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  LCK as an array
            Arr : LCKR_LCK_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for LCKR_LCK_Field_1 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  GPIO port configuration lock register
   type LCKR_Register_1 is record
      --  Port x lock bit y (y= 0..15)
      LCK            : LCKR_LCK_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Lock key
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCKR_Register_1 use record
      LCK            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  BRR_BR array
   type BRR_BR_Field_Array_1 is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for BRR_BR
   type BRR_BR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  BR as an array
            Arr : BRR_BR_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for BRR_BR_Field_1 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  GPIO port bit reset register
   type BRR_Register_1 is record
      --  Write-only. Port x reset IO pin y
      BR            : BRR_BR_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register_1 use record
      BR            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  HSLVR_HSLV array
   type HSLVR_HSLV_Field_Array_1 is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for HSLVR_HSLV
   type HSLVR_HSLV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  HSLV as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  HSLV as an array
            Arr : HSLVR_HSLV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for HSLVR_HSLV_Field_1 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  GPIO high-speed low-voltage register
   type HSLVR_Register_1 is record
      --  Port x high-speed low-voltage configuration (y= 7 to 0)
      HSLV          : HSLVR_HSLV_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSLVR_Register_1 use record
      HSLV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SECCFGR_SEC array
   type SECCFGR_SEC_Field_Array_1 is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for SECCFGR_SEC
   type SECCFGR_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SEC as an array
            Arr : SECCFGR_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SECCFGR_SEC_Field_1 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  GPIO secure configuration register
   type SECCFGR_Register_1 is record
      --  Write-only. I/O pin of Port x secure bit enable
      SEC           : SECCFGR_SEC_Field_1 :=
                       (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#FF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SECCFGR_Register_1 use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-purpose I/Os
   type GPIOA_Peripheral is record
      --  GPIO port mode register
      MODER   : aliased MODER_Register;
      --  GPIO port output type register
      OTYPER  : aliased OTYPER_Register;
      --  GPIO port output speed register
      OSPEEDR : aliased OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      PUPDR   : aliased PUPDR_Register;
      --  GPIO port input data register
      IDR     : aliased IDR_Register;
      --  GPIO port output data register
      ODR     : aliased ODR_Register;
      --  GPIO port bit set/reset register
      BSRR    : aliased BSRR_Register;
      --  GPIO port configuration lock register
      LCKR    : aliased LCKR_Register;
      --  GPIO alternate function low register
      AFRL    : aliased AFRL_Register;
      --  GPIO alternate function high register
      AFRH    : aliased AFRH_Register;
      --  GPIO port bit reset register
      BRR     : aliased BRR_Register;
      --  GPIO high-speed low-voltage register
      HSLVR   : aliased HSLVR_Register;
      --  GPIO secure configuration register
      SECCFGR : aliased SECCFGR_Register;
   end record
     with Volatile;

   for GPIOA_Peripheral use record
      MODER   at 16#0# range 0 .. 31;
      OTYPER  at 16#4# range 0 .. 31;
      OSPEEDR at 16#8# range 0 .. 31;
      PUPDR   at 16#C# range 0 .. 31;
      IDR     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      BSRR    at 16#18# range 0 .. 31;
      LCKR    at 16#1C# range 0 .. 31;
      AFRL    at 16#20# range 0 .. 31;
      AFRH    at 16#24# range 0 .. 31;
      BRR     at 16#28# range 0 .. 31;
      HSLVR   at 16#2C# range 0 .. 31;
      SECCFGR at 16#30# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOA_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOA_Base;

   --  General-purpose I/Os
   GPIOB_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOB_Base;

   --  General-purpose I/Os
   GPIOC_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOC_Base;

   --  General-purpose I/Os
   GPIOD_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOD_Base;

   --  General-purpose I/Os
   GPIOE_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOE_Base;

   --  General-purpose I/Os
   GPIOF_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOF_Base;

   --  General-purpose I/Os
   GPIOG_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOG_Base;

   --  General-purpose I/Os
   GPIOH_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOH_Base;

   --  General-purpose I/Os
   SEC_GPIOA_Periph : aliased GPIOA_Peripheral
     with Import, Address => SEC_GPIOA_Base;

   --  General-purpose I/Os
   SEC_GPIOB_Periph : aliased GPIOA_Peripheral
     with Import, Address => SEC_GPIOB_Base;

   --  General-purpose I/Os
   SEC_GPIOC_Periph : aliased GPIOA_Peripheral
     with Import, Address => SEC_GPIOC_Base;

   --  General-purpose I/Os
   SEC_GPIOD_Periph : aliased GPIOA_Peripheral
     with Import, Address => SEC_GPIOD_Base;

   --  General-purpose I/Os
   SEC_GPIOE_Periph : aliased GPIOA_Peripheral
     with Import, Address => SEC_GPIOE_Base;

   --  General-purpose I/Os
   SEC_GPIOF_Periph : aliased GPIOA_Peripheral
     with Import, Address => SEC_GPIOF_Base;

   --  General-purpose I/Os
   SEC_GPIOG_Periph : aliased GPIOA_Peripheral
     with Import, Address => SEC_GPIOG_Base;

   --  General-purpose I/Os
   SEC_GPIOH_Periph : aliased GPIOA_Peripheral
     with Import, Address => SEC_GPIOH_Base;

   --  General-purpose I/Os
   type GPIOI_Peripheral is record
      --  GPIO port mode register
      MODER   : aliased MODER_Register;
      --  GPIO port output type register
      OTYPER  : aliased OTYPER_Register;
      --  GPIO port output speed register
      OSPEEDR : aliased OSPEEDR_Register_1;
      --  GPIO port pull-up/pull-down register
      PUPDR   : aliased PUPDR_Register_1;
      --  GPIO port input data register
      IDR     : aliased IDR_Register_1;
      --  GPIO port output data register
      ODR     : aliased ODR_Register_1;
      --  GPIO port bit set/reset register
      BSRR    : aliased BSRR_Register_1;
      --  GPIO port configuration lock register
      LCKR    : aliased LCKR_Register_1;
      --  GPIO alternate function low register
      AFRL    : aliased AFRL_Register;
      --  GPIO port bit reset register
      BRR     : aliased BRR_Register_1;
      --  GPIO high-speed low-voltage register
      HSLVR   : aliased HSLVR_Register_1;
      --  GPIO secure configuration register
      SECCFGR : aliased SECCFGR_Register_1;
   end record
     with Volatile;

   for GPIOI_Peripheral use record
      MODER   at 16#0# range 0 .. 31;
      OTYPER  at 16#4# range 0 .. 31;
      OSPEEDR at 16#8# range 0 .. 31;
      PUPDR   at 16#C# range 0 .. 31;
      IDR     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      BSRR    at 16#18# range 0 .. 31;
      LCKR    at 16#1C# range 0 .. 31;
      AFRL    at 16#20# range 0 .. 31;
      BRR     at 16#28# range 0 .. 31;
      HSLVR   at 16#2C# range 0 .. 31;
      SECCFGR at 16#30# range 0 .. 31;
   end record;

   --  General-purpose I/Os
   GPIOI_Periph : aliased GPIOI_Peripheral
     with Import, Address => GPIOI_Base;

   --  General-purpose I/Os
   SEC_GPIOI_Periph : aliased GPIOI_Peripheral
     with Import, Address => SEC_GPIOI_Base;

end Interfaces.STM32.GPIO;
