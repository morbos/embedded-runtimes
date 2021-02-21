--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM4.svd

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

   --  MODER array element
   subtype MODER_Element is Interfaces.Bit_Types.UInt2;

   --  MODER array
   type MODER_Field_Array is array (0 .. 15) of MODER_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODER as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODER as an array
            Arr : MODER_Field_Array;
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

   --  OSPEEDR array element
   subtype OSPEEDR_Element is Interfaces.Bit_Types.UInt2;

   --  OSPEEDR array
   type OSPEEDR_Field_Array is array (0 .. 15) of OSPEEDR_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEEDR as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEEDR as an array
            Arr : OSPEEDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PUPDR array element
   subtype PUPDR_Element is Interfaces.Bit_Types.UInt2;

   --  PUPDR array
   type PUPDR_Field_Array is array (0 .. 15) of PUPDR_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPDR as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPDR as an array
            Arr : PUPDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IDR array
   type IDR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for IDR
   type IDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IDR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  IDR as an array
            Arr : IDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IDR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type IDR_Register is record
      --  Read-only. Port input data (y = 0..15)
      IDR            : IDR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      IDR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ODR array
   type ODR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for ODR
   type ODR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ODR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ODR as an array
            Arr : ODR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for ODR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type ODR_Register is record
      --  Port output data (y = 0..15)
      ODR            : ODR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODR_Register use record
      ODR            at 0 range 0 .. 15;
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
      --  Port x lock bit y (y= 0..15)
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

   --  AFRL array element
   subtype AFRL_Element is Interfaces.Bit_Types.UInt4;

   --  AFRL array
   type AFRL_Field_Array is array (0 .. 7) of AFRL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFRL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFRL as an array
            Arr : AFRL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  AFRH array element
   subtype AFRH_Element is Interfaces.Bit_Types.UInt4;

   --  AFRH array
   type AFRH_Field_Array is array (8 .. 15) of AFRH_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFRH as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFRH as an array
            Arr : AFRH_Field_Array;
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
      --  Port Reset bit
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

   --  MODER array
   type MODER_Field_Array_1 is array (0 .. 6) of MODER_Element
     with Component_Size => 2, Size => 14;

   --  Type definition for MODER
   type MODER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODER as a value
            Val : Interfaces.Bit_Types.UInt14;
         when True =>
            --  MODER as an array
            Arr : MODER_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 14;

   for MODER_Field use record
      Val at 0 range 0 .. 13;
      Arr at 0 range 0 .. 13;
   end record;

   --  MODER array
   type MODER_Field_Array_2 is array (13 .. 15) of MODER_Element
     with Component_Size => 2, Size => 6;

   --  Type definition for MODER
   type MODER_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODER as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  MODER as an array
            Arr : MODER_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for MODER_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  GPIO port mode register
   type MODER_Register_1 is record
      --  Port x configuration bits (y = 0..15)
      MODER          : MODER_Field := (As_Array => False, Val => 16#3#);
      --  unspecified
      Reserved_14_25 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Port x configuration bits (y = 0..15)
      MODER_1        : MODER_Field_1 := (As_Array => False, Val => 16#3#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODER_Register_1 use record
      MODER          at 0 range 0 .. 13;
      Reserved_14_25 at 0 range 14 .. 25;
      MODER_1        at 0 range 26 .. 31;
   end record;

   --  OTYPER_OT array
   type OTYPER_OT_Field_Array_1 is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for OTYPER_OT
   type OTYPER_OT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  OT as an array
            Arr : OTYPER_OT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for OTYPER_OT_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  OTYPER_OT array
   type OTYPER_OT_Field_Array_2 is array (13 .. 15) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for OTYPER_OT
   type OTYPER_OT_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  OT as an array
            Arr : OTYPER_OT_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for OTYPER_OT_Field_2 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  GPIO port output type register
   type OTYPER_Register_1 is record
      --  Port x configuration bits (y = 0..15)
      OT             : OTYPER_OT_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_12  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Port x configuration bits (y = 0..15)
      OT_1           : OTYPER_OT_Field_2 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTYPER_Register_1 use record
      OT             at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      OT_1           at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  OSPEEDR array
   type OSPEEDR_Field_Array_1 is array (0 .. 6) of OSPEEDR_Element
     with Component_Size => 2, Size => 14;

   --  Type definition for OSPEEDR
   type OSPEEDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEEDR as a value
            Val : Interfaces.Bit_Types.UInt14;
         when True =>
            --  OSPEEDR as an array
            Arr : OSPEEDR_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 14;

   for OSPEEDR_Field use record
      Val at 0 range 0 .. 13;
      Arr at 0 range 0 .. 13;
   end record;

   --  OSPEEDR array
   type OSPEEDR_Field_Array_2 is array (13 .. 15) of OSPEEDR_Element
     with Component_Size => 2, Size => 6;

   --  Type definition for OSPEEDR
   type OSPEEDR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEEDR as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  OSPEEDR as an array
            Arr : OSPEEDR_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for OSPEEDR_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  GPIO port output speed register
   type OSPEEDR_Register_1 is record
      --  Port x configuration bits (y = 0..15)
      OSPEEDR        : OSPEEDR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_25 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Port x configuration bits (y = 0..15)
      OSPEEDR_1      : OSPEEDR_Field_1 := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSPEEDR_Register_1 use record
      OSPEEDR        at 0 range 0 .. 13;
      Reserved_14_25 at 0 range 14 .. 25;
      OSPEEDR_1      at 0 range 26 .. 31;
   end record;

   --  PUPDR array
   type PUPDR_Field_Array_1 is array (0 .. 6) of PUPDR_Element
     with Component_Size => 2, Size => 14;

   --  Type definition for PUPDR
   type PUPDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPDR as a value
            Val : Interfaces.Bit_Types.UInt14;
         when True =>
            --  PUPDR as an array
            Arr : PUPDR_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 14;

   for PUPDR_Field use record
      Val at 0 range 0 .. 13;
      Arr at 0 range 0 .. 13;
   end record;

   --  PUPDR array
   type PUPDR_Field_Array_2 is array (13 .. 15) of PUPDR_Element
     with Component_Size => 2, Size => 6;

   --  Type definition for PUPDR
   type PUPDR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPDR as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  PUPDR as an array
            Arr : PUPDR_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PUPDR_Field_1 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  GPIO port pull-up/pull-down register
   type PUPDR_Register_1 is record
      --  Port x configuration bits (y = 0..15)
      PUPDR          : PUPDR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_25 : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Port x configuration bits (y = 0..15)
      PUPDR_1        : PUPDR_Field_1 := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUPDR_Register_1 use record
      PUPDR          at 0 range 0 .. 13;
      Reserved_14_25 at 0 range 14 .. 25;
      PUPDR_1        at 0 range 26 .. 31;
   end record;

   --  IDR array
   type IDR_Field_Array_1 is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for IDR
   type IDR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IDR as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  IDR as an array
            Arr : IDR_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for IDR_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  IDR array
   type IDR_Field_Array_2 is array (13 .. 15) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for IDR
   type IDR_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IDR as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  IDR as an array
            Arr : IDR_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IDR_Field_2 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  GPIO port input data register
   type IDR_Register_1 is record
      --  Read-only. Port input data (y = 0..15)
      IDR            : IDR_Field_1;
      --  unspecified
      Reserved_7_12  : Interfaces.Bit_Types.UInt6;
      --  Read-only. Port input data (y = 0..15)
      IDR_1          : IDR_Field_2;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register_1 use record
      IDR            at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      IDR_1          at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ODR array
   type ODR_Field_Array_1 is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for ODR
   type ODR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ODR as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  ODR as an array
            Arr : ODR_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for ODR_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  ODR array
   type ODR_Field_Array_2 is array (13 .. 15) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for ODR
   type ODR_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ODR as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  ODR as an array
            Arr : ODR_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ODR_Field_2 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  GPIO port output data register
   type ODR_Register_1 is record
      --  Port output data (y = 0..15)
      ODR            : ODR_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_12  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Port output data (y = 0..15)
      ODR_1          : ODR_Field_2 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODR_Register_1 use record
      ODR            at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      ODR_1          at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  BSRR_BS array
   type BSRR_BS_Field_Array_1 is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for BSRR_BS
   type BSRR_BS_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  BS as an array
            Arr : BSRR_BS_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for BSRR_BS_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  BSRR_BS array
   type BSRR_BS_Field_Array_2 is array (13 .. 15) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for BSRR_BS
   type BSRR_BS_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  BS as an array
            Arr : BSRR_BS_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for BSRR_BS_Field_2 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  BSRR_BR array
   type BSRR_BR_Field_Array_1 is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for BSRR_BR
   type BSRR_BR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  BR as an array
            Arr : BSRR_BR_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for BSRR_BR_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  BSRR_BR array
   type BSRR_BR_Field_Array_2 is array (13 .. 15) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for BSRR_BR
   type BSRR_BR_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  BR as an array
            Arr : BSRR_BR_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for BSRR_BR_Field_2 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  GPIO port bit set/reset register
   type BSRR_Register_1 is record
      --  Write-only. Port x set bit y (y= 0..15)
      BS             : BSRR_BS_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_12  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. Port x set bit y (y= 0..15)
      BS_1           : BSRR_BS_Field_2 := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x set bit y (y= 0..15)
      BR             : BSRR_BR_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_28 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Write-only. Port x reset bit y (y = 0..15)
      BR_1           : BSRR_BR_Field_2 := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSRR_Register_1 use record
      BS             at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      BS_1           at 0 range 13 .. 15;
      BR             at 0 range 16 .. 22;
      Reserved_23_28 at 0 range 23 .. 28;
      BR_1           at 0 range 29 .. 31;
   end record;

   --  LCKR_LCK array
   type LCKR_LCK_Field_Array_1 is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for LCKR_LCK
   type LCKR_LCK_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  LCK as an array
            Arr : LCKR_LCK_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for LCKR_LCK_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  LCKR_LCK array
   type LCKR_LCK_Field_Array_2 is array (13 .. 15) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for LCKR_LCK
   type LCKR_LCK_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  LCK as an array
            Arr : LCKR_LCK_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for LCKR_LCK_Field_2 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  GPIO port configuration lock register
   type LCKR_Register_1 is record
      --  Port x lock bit y (y= 0..15)
      LCK            : LCKR_LCK_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_12  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Port x lock bit y (y= 0..15)
      LCK_1          : LCKR_LCK_Field_2 := (As_Array => False, Val => 16#0#);
      --  Port x lock bit y (y= 0..15)
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCKR_Register_1 use record
      LCK            at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      LCK_1          at 0 range 13 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  BRR_BR array
   type BRR_BR_Field_Array_1 is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for BRR_BR
   type BRR_BR_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  BR as an array
            Arr : BRR_BR_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for BRR_BR_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  BRR_BR array
   type BRR_BR_Field_Array_2 is array (13 .. 15) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for BRR_BR
   type BRR_BR_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  BR as an array
            Arr : BRR_BR_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for BRR_BR_Field_2 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  GPIO port bit reset register
   type BRR_Register_1 is record
      --  Port Reset bit
      BR             : BRR_BR_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_12  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Port Reset bit
      BR_1           : BRR_BR_Field_2 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register_1 use record
      BR             at 0 range 0 .. 6;
      Reserved_7_12  at 0 range 7 .. 12;
      BR_1           at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MODER_MODER3_Field is Interfaces.Bit_Types.UInt2;

   --  GPIO port mode register
   type MODER_Register_2 is record
      --  unspecified
      Reserved_0_5  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Port x configuration bits (y = 0..15)
      MODER3        : MODER_MODER3_Field := 16#3#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODER_Register_2 use record
      Reserved_0_5  at 0 range 0 .. 5;
      MODER3        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  GPIO port output type register
   type OTYPER_Register_2 is record
      --  unspecified
      Reserved_0_2  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Port x configuration bits (y = 0..15)
      OT3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTYPER_Register_2 use record
      Reserved_0_2  at 0 range 0 .. 2;
      OT3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype OSPEEDR_OSPEEDR3_Field is Interfaces.Bit_Types.UInt2;

   --  GPIO port output speed register
   type OSPEEDR_Register_2 is record
      --  unspecified
      Reserved_0_5  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Port x configuration bits (y = 0..15)
      OSPEEDR3      : OSPEEDR_OSPEEDR3_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSPEEDR_Register_2 use record
      Reserved_0_5  at 0 range 0 .. 5;
      OSPEEDR3      at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PUPDR_PUPDR3_Field is Interfaces.Bit_Types.UInt2;

   --  GPIO port pull-up/pull-down register
   type PUPDR_Register_2 is record
      --  unspecified
      Reserved_0_5  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Port x configuration bits (y = 0..15)
      PUPDR3        : PUPDR_PUPDR3_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PUPDR_Register_2 use record
      Reserved_0_5  at 0 range 0 .. 5;
      PUPDR3        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  GPIO port input data register
   type IDR_Register_2 is record
      --  unspecified
      Reserved_0_2  : Interfaces.Bit_Types.UInt3;
      --  Read-only. Port input data (y = 0..15)
      IDR3          : Boolean;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register_2 use record
      Reserved_0_2  at 0 range 0 .. 2;
      IDR3          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  GPIO port output data register
   type ODR_Register_2 is record
      --  unspecified
      Reserved_0_2  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Port output data (y = 0..15)
      ODR3          : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODR_Register_2 use record
      Reserved_0_2  at 0 range 0 .. 2;
      ODR3          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  GPIO port bit set/reset register
   type BSRR_Register_2 is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Port x set bit y (y= 0..15)
      BS3            : Boolean := False;
      --  unspecified
      Reserved_4_18  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Write-only. Port x reset bit y (y = 0..15)
      BR3            : Boolean := False;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSRR_Register_2 use record
      Reserved_0_2   at 0 range 0 .. 2;
      BS3            at 0 range 3 .. 3;
      Reserved_4_18  at 0 range 4 .. 18;
      BR3            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  GPIO port configuration lock register
   type LCKR_Register_2 is record
      --  unspecified
      Reserved_0_2   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Port x lock bit y (y= 0..15)
      LCK3           : Boolean := False;
      --  unspecified
      Reserved_4_15  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Port x lock bit y (y= 0..15)
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCKR_Register_2 use record
      Reserved_0_2   at 0 range 0 .. 2;
      LCK3           at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype AFRL_AFRL3_Field is Interfaces.Bit_Types.UInt4;

   --  GPIO alternate function low register
   type AFRL_Register_1 is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Alternate function selection for port x bit y (y = 0..7)
      AFRL3          : AFRL_AFRL3_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AFRL_Register_1 use record
      Reserved_0_11  at 0 range 0 .. 11;
      AFRL3          at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIO port bit reset register
   type BRR_Register_2 is record
      --  unspecified
      Reserved_0_2  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Port Reset bit
      BR3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register_2 use record
      Reserved_0_2  at 0 range 0 .. 2;
      BR3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
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
   end record;

   --  General-purpose I/Os
   GPIOA_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOA_Base;

   --  General-purpose I/Os
   GPIOB_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOB_Base;

   --  General-purpose I/Os
   type GPIOC_Peripheral is record
      --  GPIO port mode register
      MODER   : aliased MODER_Register_1;
      --  GPIO port output type register
      OTYPER  : aliased OTYPER_Register_1;
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
      --  GPIO alternate function high register
      AFRH    : aliased AFRH_Register;
      --  GPIO port bit reset register
      BRR     : aliased BRR_Register_1;
   end record
     with Volatile;

   for GPIOC_Peripheral use record
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
   end record;

   --  General-purpose I/Os
   GPIOC_Periph : aliased GPIOC_Peripheral
     with Import, Address => GPIOC_Base;

   --  General-purpose I/Os
   type GPIOH_Peripheral is record
      --  GPIO port mode register
      MODER   : aliased MODER_Register_2;
      --  GPIO port output type register
      OTYPER  : aliased OTYPER_Register_2;
      --  GPIO port output speed register
      OSPEEDR : aliased OSPEEDR_Register_2;
      --  GPIO port pull-up/pull-down register
      PUPDR   : aliased PUPDR_Register_2;
      --  GPIO port input data register
      IDR     : aliased IDR_Register_2;
      --  GPIO port output data register
      ODR     : aliased ODR_Register_2;
      --  GPIO port bit set/reset register
      BSRR    : aliased BSRR_Register_2;
      --  GPIO port configuration lock register
      LCKR    : aliased LCKR_Register_2;
      --  GPIO alternate function low register
      AFRL    : aliased AFRL_Register_1;
      --  GPIO alternate function high register
      AFRH    : aliased AFRH_Register;
      --  GPIO port bit reset register
      BRR     : aliased BRR_Register_2;
   end record
     with Volatile;

   for GPIOH_Peripheral use record
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
   end record;

   --  General-purpose I/Os
   GPIOH_Periph : aliased GPIOH_Peripheral
     with Import, Address => GPIOH_Base;

end Interfaces.STM32.GPIO;
