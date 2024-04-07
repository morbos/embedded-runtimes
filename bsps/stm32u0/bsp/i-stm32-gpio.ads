--
--  Copyright (C) 2024, AdaCore
--

--  This spec has been automatically generated from STM32U073.svd

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

   --  GPIOA_MODER_MODE array element
   subtype GPIOA_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOA_MODER_MODE array
   type GPIOA_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOA_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type GPIOA_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOA_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_OTYPER_OT array
   type GPIOA_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_OTYPER_OT
   type GPIOA_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOA_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output type register
   type GPIOA_OTYPER_Register is record
      --  Port x configuration I/O pin y These bits are written by software to
      --  configure the I/O output type.
      OT             : GPIOA_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_OSPEEDR_OSPEED array element
   subtype GPIOA_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOA_OSPEEDR_OSPEED array
   type GPIOA_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOA_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type GPIOA_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOA_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_PUPDR_PUPD array element
   subtype GPIOA_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOA_PUPDR_PUPD array
   type GPIOA_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOA_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOA_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOA_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_IDR_ID array
   type GPIOA_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_IDR_ID
   type GPIOA_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOA_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type GPIOA_IDR_Register is record
      --  Read-only. Port x input data I/O pin y These bits are read-only. They
      --  contain the input value of the corresponding I/O port.
      ID             : GPIOA_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_ODR_OD array
   type GPIOA_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_ODR_OD
   type GPIOA_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOA_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type GPIOA_ODR_Register is record
      --  Port output data I/O pin y These bits can be read and written by
      --  software. Note: For atomic bit set/reset, the OD bits can be
      --  individually set and/or reset by writing to the GPIOx_BSRR register
      --  (x = A..F).
      OD             : GPIOA_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOA_BSRR_BS array
   type GPIOA_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_BSRR_BS
   type GPIOA_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOA_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOA_BSRR_BR array
   type GPIOA_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_BSRR_BR
   type GPIOA_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOA_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit set/reset register
   type GPIOA_BSRR_Register is record
      --  Write-only. Port x set I/O pin y These bits are write-only. A read to
      --  these bits returns the value 0x0000.
      BS : GPIOA_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000. Note: If both BSx and BRx are
      --  set, BSx has priority.
      BR : GPIOA_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOA_LCKR_LCK array
   type GPIOA_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_LCKR_LCK
   type GPIOA_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOA_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port configuration lock register
   type GPIOA_LCKR_Register is record
      --  Port x lock I/O pin y These bits are read/write but can only be
      --  written when the LCKK bit is 0.
      LCK            : GPIOA_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key This bit can be read any time. It can only be modified using
      --  the lock key write sequence. LOCK key write sequence: WR LCKR[16] = 1
      --  + LCKR[15:0] WR LCKR[16] = 0 + LCKR[15:0] WR LCKR[16] = 1 +
      --  LCKR[15:0] RD LCKR RD LCKR[16] = 1 (this read operation is optional
      --  but it confirms that the lock is active) Note: During the LOCK key
      --  write sequence, the value of LCK[15:0] must not change. Note: Any
      --  error in the lock sequence aborts the lock. Note: After the first
      --  lock sequence on any bit of the port, any read access on the LCKK bit
      --  returns 1 until the next MCU reset or peripheral reset.
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOA_AFRL_AFSEL array element
   subtype GPIOA_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOA_AFRL_AFSEL array
   type GPIOA_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOA_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type GPIOA_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOA_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_AFRH_AFSEL array element
   subtype GPIOA_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOA_AFRH_AFSEL array
   type GPIOA_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOA_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type GPIOA_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOA_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOA_BRR_BR array
   type GPIOA_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_BRR_BR
   type GPIOA_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOA_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit reset register
   type GPIOA_BRR_Register is record
      --  Write-only. Port x reset IO pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000.
      BR             : GPIOA_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_MODER_MODE array element
   subtype GPIOB_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOB_MODER_MODE array
   type GPIOB_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOB_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type GPIOB_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOB_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_OTYPER_OT array
   type GPIOB_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_OTYPER_OT
   type GPIOB_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOB_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output type register
   type GPIOB_OTYPER_Register is record
      --  Port x configuration I/O pin y These bits are written by software to
      --  configure the I/O output type.
      OT             : GPIOB_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_OSPEEDR_OSPEED array element
   subtype GPIOB_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOB_OSPEEDR_OSPEED array
   type GPIOB_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOB_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type GPIOB_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOB_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_PUPDR_PUPD array element
   subtype GPIOB_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOB_PUPDR_PUPD array
   type GPIOB_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOB_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOB_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOB_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_IDR_ID array
   type GPIOB_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_IDR_ID
   type GPIOB_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOB_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type GPIOB_IDR_Register is record
      --  Read-only. Port x input data I/O pin y These bits are read-only. They
      --  contain the input value of the corresponding I/O port.
      ID             : GPIOB_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_ODR_OD array
   type GPIOB_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_ODR_OD
   type GPIOB_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOB_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type GPIOB_ODR_Register is record
      --  Port output data I/O pin y These bits can be read and written by
      --  software. Note: For atomic bit set/reset, the OD bits can be
      --  individually set and/or reset by writing to the GPIOx_BSRR register
      --  (x = A..F).
      OD             : GPIOB_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOB_BSRR_BS array
   type GPIOB_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_BSRR_BS
   type GPIOB_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOB_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOB_BSRR_BR array
   type GPIOB_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_BSRR_BR
   type GPIOB_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOB_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit set/reset register
   type GPIOB_BSRR_Register is record
      --  Write-only. Port x set I/O pin y These bits are write-only. A read to
      --  these bits returns the value 0x0000.
      BS : GPIOB_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000. Note: If both BSx and BRx are
      --  set, BSx has priority.
      BR : GPIOB_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOB_LCKR_LCK array
   type GPIOB_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_LCKR_LCK
   type GPIOB_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOB_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port configuration lock register
   type GPIOB_LCKR_Register is record
      --  Port x lock I/O pin y These bits are read/write but can only be
      --  written when the LCKK bit is 0.
      LCK            : GPIOB_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key This bit can be read any time. It can only be modified using
      --  the lock key write sequence. LOCK key write sequence: WR LCKR[16] = 1
      --  + LCKR[15:0] WR LCKR[16] = 0 + LCKR[15:0] WR LCKR[16] = 1 +
      --  LCKR[15:0] RD LCKR RD LCKR[16] = 1 (this read operation is optional
      --  but it confirms that the lock is active) Note: During the LOCK key
      --  write sequence, the value of LCK[15:0] must not change. Note: Any
      --  error in the lock sequence aborts the lock. Note: After the first
      --  lock sequence on any bit of the port, any read access on the LCKK bit
      --  returns 1 until the next MCU reset or peripheral reset.
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOB_AFRL_AFSEL array element
   subtype GPIOB_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_AFRL_AFSEL array
   type GPIOB_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOB_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type GPIOB_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOB_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_AFRH_AFSEL array element
   subtype GPIOB_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOB_AFRH_AFSEL array
   type GPIOB_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOB_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type GPIOB_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOB_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOB_BRR_BR array
   type GPIOB_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOB_BRR_BR
   type GPIOB_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOB_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOB_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit reset register
   type GPIOB_BRR_Register is record
      --  Write-only. Port x reset IO pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000.
      BR             : GPIOB_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOB_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_MODER_MODE array element
   subtype GPIOC_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOC_MODER_MODE array
   type GPIOC_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOC_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type GPIOC_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOC_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_OTYPER_OT array
   type GPIOC_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_OTYPER_OT
   type GPIOC_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOC_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output type register
   type GPIOC_OTYPER_Register is record
      --  Port x configuration I/O pin y These bits are written by software to
      --  configure the I/O output type.
      OT             : GPIOC_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_OSPEEDR_OSPEED array element
   subtype GPIOC_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOC_OSPEEDR_OSPEED array
   type GPIOC_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOC_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type GPIOC_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOC_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_PUPDR_PUPD array element
   subtype GPIOC_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOC_PUPDR_PUPD array
   type GPIOC_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOC_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOC_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOC_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_IDR_ID array
   type GPIOC_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_IDR_ID
   type GPIOC_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOC_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type GPIOC_IDR_Register is record
      --  Read-only. Port x input data I/O pin y These bits are read-only. They
      --  contain the input value of the corresponding I/O port.
      ID             : GPIOC_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_ODR_OD array
   type GPIOC_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_ODR_OD
   type GPIOC_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOC_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type GPIOC_ODR_Register is record
      --  Port output data I/O pin y These bits can be read and written by
      --  software. Note: For atomic bit set/reset, the OD bits can be
      --  individually set and/or reset by writing to the GPIOx_BSRR register
      --  (x = A..F).
      OD             : GPIOC_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOC_BSRR_BS array
   type GPIOC_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_BSRR_BS
   type GPIOC_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOC_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOC_BSRR_BR array
   type GPIOC_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_BSRR_BR
   type GPIOC_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOC_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit set/reset register
   type GPIOC_BSRR_Register is record
      --  Write-only. Port x set I/O pin y These bits are write-only. A read to
      --  these bits returns the value 0x0000.
      BS : GPIOC_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000. Note: If both BSx and BRx are
      --  set, BSx has priority.
      BR : GPIOC_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOC_LCKR_LCK array
   type GPIOC_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_LCKR_LCK
   type GPIOC_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOC_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port configuration lock register
   type GPIOC_LCKR_Register is record
      --  Port x lock I/O pin y These bits are read/write but can only be
      --  written when the LCKK bit is 0.
      LCK            : GPIOC_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key This bit can be read any time. It can only be modified using
      --  the lock key write sequence. LOCK key write sequence: WR LCKR[16] = 1
      --  + LCKR[15:0] WR LCKR[16] = 0 + LCKR[15:0] WR LCKR[16] = 1 +
      --  LCKR[15:0] RD LCKR RD LCKR[16] = 1 (this read operation is optional
      --  but it confirms that the lock is active) Note: During the LOCK key
      --  write sequence, the value of LCK[15:0] must not change. Note: Any
      --  error in the lock sequence aborts the lock. Note: After the first
      --  lock sequence on any bit of the port, any read access on the LCKK bit
      --  returns 1 until the next MCU reset or peripheral reset.
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOC_AFRL_AFSEL array element
   subtype GPIOC_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_AFRL_AFSEL array
   type GPIOC_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOC_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type GPIOC_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOC_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_AFRH_AFSEL array element
   subtype GPIOC_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOC_AFRH_AFSEL array
   type GPIOC_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOC_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type GPIOC_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOC_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOC_BRR_BR array
   type GPIOC_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOC_BRR_BR
   type GPIOC_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOC_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOC_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit reset register
   type GPIOC_BRR_Register is record
      --  Write-only. Port x reset IO pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000.
      BR             : GPIOC_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOC_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_MODER_MODE array element
   subtype GPIOD_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOD_MODER_MODE array
   type GPIOD_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOD_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type GPIOD_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOD_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_OTYPER_OT array
   type GPIOD_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_OTYPER_OT
   type GPIOD_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOD_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output type register
   type GPIOD_OTYPER_Register is record
      --  Port x configuration I/O pin y These bits are written by software to
      --  configure the I/O output type.
      OT             : GPIOD_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_OSPEEDR_OSPEED array element
   subtype GPIOD_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOD_OSPEEDR_OSPEED array
   type GPIOD_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOD_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type GPIOD_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOD_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_PUPDR_PUPD array element
   subtype GPIOD_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOD_PUPDR_PUPD array
   type GPIOD_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOD_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOD_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOD_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_IDR_ID array
   type GPIOD_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_IDR_ID
   type GPIOD_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOD_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type GPIOD_IDR_Register is record
      --  Read-only. Port x input data I/O pin y These bits are read-only. They
      --  contain the input value of the corresponding I/O port.
      ID             : GPIOD_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_ODR_OD array
   type GPIOD_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_ODR_OD
   type GPIOD_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOD_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type GPIOD_ODR_Register is record
      --  Port output data I/O pin y These bits can be read and written by
      --  software. Note: For atomic bit set/reset, the OD bits can be
      --  individually set and/or reset by writing to the GPIOx_BSRR register
      --  (x = A..F).
      OD             : GPIOD_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOD_BSRR_BS array
   type GPIOD_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_BSRR_BS
   type GPIOD_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOD_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOD_BSRR_BR array
   type GPIOD_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_BSRR_BR
   type GPIOD_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOD_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit set/reset register
   type GPIOD_BSRR_Register is record
      --  Write-only. Port x set I/O pin y These bits are write-only. A read to
      --  these bits returns the value 0x0000.
      BS : GPIOD_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000. Note: If both BSx and BRx are
      --  set, BSx has priority.
      BR : GPIOD_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOD_LCKR_LCK array
   type GPIOD_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_LCKR_LCK
   type GPIOD_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOD_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port configuration lock register
   type GPIOD_LCKR_Register is record
      --  Port x lock I/O pin y These bits are read/write but can only be
      --  written when the LCKK bit is 0.
      LCK            : GPIOD_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key This bit can be read any time. It can only be modified using
      --  the lock key write sequence. LOCK key write sequence: WR LCKR[16] = 1
      --  + LCKR[15:0] WR LCKR[16] = 0 + LCKR[15:0] WR LCKR[16] = 1 +
      --  LCKR[15:0] RD LCKR RD LCKR[16] = 1 (this read operation is optional
      --  but it confirms that the lock is active) Note: During the LOCK key
      --  write sequence, the value of LCK[15:0] must not change. Note: Any
      --  error in the lock sequence aborts the lock. Note: After the first
      --  lock sequence on any bit of the port, any read access on the LCKK bit
      --  returns 1 until the next MCU reset or peripheral reset.
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOD_AFRL_AFSEL array element
   subtype GPIOD_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOD_AFRL_AFSEL array
   type GPIOD_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOD_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type GPIOD_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOD_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_AFRH_AFSEL array element
   subtype GPIOD_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOD_AFRH_AFSEL array
   type GPIOD_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOD_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type GPIOD_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOD_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOD_BRR_BR array
   type GPIOD_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOD_BRR_BR
   type GPIOD_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOD_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOD_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit reset register
   type GPIOD_BRR_Register is record
      --  Write-only. Port x reset IO pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000.
      BR             : GPIOD_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOD_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_MODER_MODE array element
   subtype GPIOE_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOE_MODER_MODE array
   type GPIOE_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOE_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type GPIOE_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOE_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_OTYPER_OT array
   type GPIOE_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_OTYPER_OT
   type GPIOE_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOE_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output type register
   type GPIOE_OTYPER_Register is record
      --  Port x configuration I/O pin y These bits are written by software to
      --  configure the I/O output type.
      OT             : GPIOE_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_OSPEEDR_OSPEED array element
   subtype GPIOE_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOE_OSPEEDR_OSPEED array
   type GPIOE_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOE_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type GPIOE_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOE_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_PUPDR_PUPD array element
   subtype GPIOE_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOE_PUPDR_PUPD array
   type GPIOE_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOE_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOE_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOE_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_IDR_ID array
   type GPIOE_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_IDR_ID
   type GPIOE_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOE_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type GPIOE_IDR_Register is record
      --  Read-only. Port x input data I/O pin y These bits are read-only. They
      --  contain the input value of the corresponding I/O port.
      ID             : GPIOE_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_ODR_OD array
   type GPIOE_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_ODR_OD
   type GPIOE_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOE_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type GPIOE_ODR_Register is record
      --  Port output data I/O pin y These bits can be read and written by
      --  software. Note: For atomic bit set/reset, the OD bits can be
      --  individually set and/or reset by writing to the GPIOx_BSRR register
      --  (x = A..F).
      OD             : GPIOE_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOE_BSRR_BS array
   type GPIOE_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_BSRR_BS
   type GPIOE_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOE_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOE_BSRR_BR array
   type GPIOE_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_BSRR_BR
   type GPIOE_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOE_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit set/reset register
   type GPIOE_BSRR_Register is record
      --  Write-only. Port x set I/O pin y These bits are write-only. A read to
      --  these bits returns the value 0x0000.
      BS : GPIOE_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000. Note: If both BSx and BRx are
      --  set, BSx has priority.
      BR : GPIOE_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOE_LCKR_LCK array
   type GPIOE_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_LCKR_LCK
   type GPIOE_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOE_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port configuration lock register
   type GPIOE_LCKR_Register is record
      --  Port x lock I/O pin y These bits are read/write but can only be
      --  written when the LCKK bit is 0.
      LCK            : GPIOE_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key This bit can be read any time. It can only be modified using
      --  the lock key write sequence. LOCK key write sequence: WR LCKR[16] = 1
      --  + LCKR[15:0] WR LCKR[16] = 0 + LCKR[15:0] WR LCKR[16] = 1 +
      --  LCKR[15:0] RD LCKR RD LCKR[16] = 1 (this read operation is optional
      --  but it confirms that the lock is active) Note: During the LOCK key
      --  write sequence, the value of LCK[15:0] must not change. Note: Any
      --  error in the lock sequence aborts the lock. Note: After the first
      --  lock sequence on any bit of the port, any read access on the LCKK bit
      --  returns 1 until the next MCU reset or peripheral reset.
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOE_AFRL_AFSEL array element
   subtype GPIOE_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_AFRL_AFSEL array
   type GPIOE_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOE_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type GPIOE_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOE_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_AFRH_AFSEL array element
   subtype GPIOE_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOE_AFRH_AFSEL array
   type GPIOE_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOE_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type GPIOE_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOE_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOE_BRR_BR array
   type GPIOE_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOE_BRR_BR
   type GPIOE_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOE_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOE_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit reset register
   type GPIOE_BRR_Register is record
      --  Write-only. Port x reset IO pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000.
      BR             : GPIOE_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOE_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_MODER_MODE array element
   subtype GPIOF_MODER_MODE_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOF_MODER_MODE array
   type GPIOF_MODER_MODE_Field_Array is array (0 .. 15)
     of GPIOF_MODER_MODE_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port mode register
   type GPIOF_MODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MODE as an array
            Arr : GPIOF_MODER_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_MODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_OTYPER_OT array
   type GPIOF_OTYPER_OT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_OTYPER_OT
   type GPIOF_OTYPER_OT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OT as an array
            Arr : GPIOF_OTYPER_OT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_OTYPER_OT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output type register
   type GPIOF_OTYPER_Register is record
      --  Port x configuration I/O pin y These bits are written by software to
      --  configure the I/O output type.
      OT             : GPIOF_OTYPER_OT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_OTYPER_Register use record
      OT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_OSPEEDR_OSPEED array element
   subtype GPIOF_OSPEEDR_OSPEED_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOF_OSPEEDR_OSPEED array
   type GPIOF_OSPEEDR_OSPEED_Field_Array is array (0 .. 15)
     of GPIOF_OSPEEDR_OSPEED_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port output speed register
   type GPIOF_OSPEEDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OSPEED as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  OSPEED as an array
            Arr : GPIOF_OSPEEDR_OSPEED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_OSPEEDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_PUPDR_PUPD array element
   subtype GPIOF_PUPDR_PUPD_Element is Interfaces.Bit_Types.UInt2;

   --  GPIOF_PUPDR_PUPD array
   type GPIOF_PUPDR_PUPD_Field_Array is array (0 .. 15)
     of GPIOF_PUPDR_PUPD_Element
     with Component_Size => 2, Size => 32;

   --  GPIO port pull-up/pull-down register
   type GPIOF_PUPDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PUPD as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  PUPD as an array
            Arr : GPIOF_PUPDR_PUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_PUPDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_IDR_ID array
   type GPIOF_IDR_ID_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_IDR_ID
   type GPIOF_IDR_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  ID as an array
            Arr : GPIOF_IDR_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_IDR_ID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port input data register
   type GPIOF_IDR_Register is record
      --  Read-only. Port x input data I/O pin y These bits are read-only. They
      --  contain the input value of the corresponding I/O port.
      ID             : GPIOF_IDR_ID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_IDR_Register use record
      ID             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_ODR_OD array
   type GPIOF_ODR_OD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_ODR_OD
   type GPIOF_ODR_OD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  OD as an array
            Arr : GPIOF_ODR_OD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_ODR_OD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port output data register
   type GPIOF_ODR_Register is record
      --  Port output data I/O pin y These bits can be read and written by
      --  software. Note: For atomic bit set/reset, the OD bits can be
      --  individually set and/or reset by writing to the GPIOx_BSRR register
      --  (x = A..F).
      OD             : GPIOF_ODR_OD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_ODR_Register use record
      OD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPIOF_BSRR_BS array
   type GPIOF_BSRR_BS_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_BSRR_BS
   type GPIOF_BSRR_BS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BS as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BS as an array
            Arr : GPIOF_BSRR_BS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_BSRR_BS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIOF_BSRR_BR array
   type GPIOF_BSRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_BSRR_BR
   type GPIOF_BSRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOF_BSRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_BSRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit set/reset register
   type GPIOF_BSRR_Register is record
      --  Write-only. Port x set I/O pin y These bits are write-only. A read to
      --  these bits returns the value 0x0000.
      BS : GPIOF_BSRR_BS_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Port x reset I/O pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000. Note: If both BSx and BRx are
      --  set, BSx has priority.
      BR : GPIOF_BSRR_BR_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_BSRR_Register use record
      BS at 0 range 0 .. 15;
      BR at 0 range 16 .. 31;
   end record;

   --  GPIOF_LCKR_LCK array
   type GPIOF_LCKR_LCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_LCKR_LCK
   type GPIOF_LCKR_LCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LCK as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  LCK as an array
            Arr : GPIOF_LCKR_LCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_LCKR_LCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port configuration lock register
   type GPIOF_LCKR_Register is record
      --  Port x lock I/O pin y These bits are read/write but can only be
      --  written when the LCKK bit is 0.
      LCK            : GPIOF_LCKR_LCK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Lock key This bit can be read any time. It can only be modified using
      --  the lock key write sequence. LOCK key write sequence: WR LCKR[16] = 1
      --  + LCKR[15:0] WR LCKR[16] = 0 + LCKR[15:0] WR LCKR[16] = 1 +
      --  LCKR[15:0] RD LCKR RD LCKR[16] = 1 (this read operation is optional
      --  but it confirms that the lock is active) Note: During the LOCK key
      --  write sequence, the value of LCK[15:0] must not change. Note: Any
      --  error in the lock sequence aborts the lock. Note: After the first
      --  lock sequence on any bit of the port, any read access on the LCKK bit
      --  returns 1 until the next MCU reset or peripheral reset.
      LCKK           : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_LCKR_Register use record
      LCK            at 0 range 0 .. 15;
      LCKK           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPIOF_AFRL_AFSEL array element
   subtype GPIOF_AFRL_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOF_AFRL_AFSEL array
   type GPIOF_AFRL_AFSEL_Field_Array is array (0 .. 7)
     of GPIOF_AFRL_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function low register
   type GPIOF_AFRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOF_AFRL_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_AFRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_AFRH_AFSEL array element
   subtype GPIOF_AFRH_AFSEL_Element is Interfaces.Bit_Types.UInt4;

   --  GPIOF_AFRH_AFSEL array
   type GPIOF_AFRH_AFSEL_Field_Array is array (8 .. 15)
     of GPIOF_AFRH_AFSEL_Element
     with Component_Size => 4, Size => 32;

   --  GPIO alternate function high register
   type GPIOF_AFRH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFSEL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  AFSEL as an array
            Arr : GPIOF_AFRH_AFSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_AFRH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPIOF_BRR_BR array
   type GPIOF_BRR_BR_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOF_BRR_BR
   type GPIOF_BRR_BR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BR as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  BR as an array
            Arr : GPIOF_BRR_BR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOF_BRR_BR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  GPIO port bit reset register
   type GPIOF_BRR_Register is record
      --  Write-only. Port x reset IO pin y These bits are write-only. A read
      --  to these bits returns the value 0x0000.
      BR             : GPIOF_BRR_BR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOF_BRR_Register use record
      BR             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIOA address block description
   type GPIOA_Peripheral is record
      --  GPIO port mode register
      GPIOA_MODER   : aliased GPIOA_MODER_Register;
      --  GPIO port output type register
      GPIOA_OTYPER  : aliased GPIOA_OTYPER_Register;
      --  GPIO port output speed register
      GPIOA_OSPEEDR : aliased GPIOA_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      GPIOA_PUPDR   : aliased GPIOA_PUPDR_Register;
      --  GPIO port input data register
      GPIOA_IDR     : aliased GPIOA_IDR_Register;
      --  GPIO port output data register
      GPIOA_ODR     : aliased GPIOA_ODR_Register;
      --  GPIO port bit set/reset register
      GPIOA_BSRR    : aliased GPIOA_BSRR_Register;
      --  GPIO port configuration lock register
      GPIOA_LCKR    : aliased GPIOA_LCKR_Register;
      --  GPIO alternate function low register
      GPIOA_AFRL    : aliased GPIOA_AFRL_Register;
      --  GPIO alternate function high register
      GPIOA_AFRH    : aliased GPIOA_AFRH_Register;
      --  GPIO port bit reset register
      GPIOA_BRR     : aliased GPIOA_BRR_Register;
   end record
     with Volatile;

   for GPIOA_Peripheral use record
      GPIOA_MODER   at 16#0# range 0 .. 31;
      GPIOA_OTYPER  at 16#4# range 0 .. 31;
      GPIOA_OSPEEDR at 16#8# range 0 .. 31;
      GPIOA_PUPDR   at 16#C# range 0 .. 31;
      GPIOA_IDR     at 16#10# range 0 .. 31;
      GPIOA_ODR     at 16#14# range 0 .. 31;
      GPIOA_BSRR    at 16#18# range 0 .. 31;
      GPIOA_LCKR    at 16#1C# range 0 .. 31;
      GPIOA_AFRL    at 16#20# range 0 .. 31;
      GPIOA_AFRH    at 16#24# range 0 .. 31;
      GPIOA_BRR     at 16#28# range 0 .. 31;
   end record;

   --  GPIOA address block description
   GPIOA_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOA_Base;

   --  GPIOB address block description
   type GPIOB_Peripheral is record
      --  GPIO port mode register
      GPIOB_MODER   : aliased GPIOB_MODER_Register;
      --  GPIO port output type register
      GPIOB_OTYPER  : aliased GPIOB_OTYPER_Register;
      --  GPIO port output speed register
      GPIOB_OSPEEDR : aliased GPIOB_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      GPIOB_PUPDR   : aliased GPIOB_PUPDR_Register;
      --  GPIO port input data register
      GPIOB_IDR     : aliased GPIOB_IDR_Register;
      --  GPIO port output data register
      GPIOB_ODR     : aliased GPIOB_ODR_Register;
      --  GPIO port bit set/reset register
      GPIOB_BSRR    : aliased GPIOB_BSRR_Register;
      --  GPIO port configuration lock register
      GPIOB_LCKR    : aliased GPIOB_LCKR_Register;
      --  GPIO alternate function low register
      GPIOB_AFRL    : aliased GPIOB_AFRL_Register;
      --  GPIO alternate function high register
      GPIOB_AFRH    : aliased GPIOB_AFRH_Register;
      --  GPIO port bit reset register
      GPIOB_BRR     : aliased GPIOB_BRR_Register;
   end record
     with Volatile;

   for GPIOB_Peripheral use record
      GPIOB_MODER   at 16#0# range 0 .. 31;
      GPIOB_OTYPER  at 16#4# range 0 .. 31;
      GPIOB_OSPEEDR at 16#8# range 0 .. 31;
      GPIOB_PUPDR   at 16#C# range 0 .. 31;
      GPIOB_IDR     at 16#10# range 0 .. 31;
      GPIOB_ODR     at 16#14# range 0 .. 31;
      GPIOB_BSRR    at 16#18# range 0 .. 31;
      GPIOB_LCKR    at 16#1C# range 0 .. 31;
      GPIOB_AFRL    at 16#20# range 0 .. 31;
      GPIOB_AFRH    at 16#24# range 0 .. 31;
      GPIOB_BRR     at 16#28# range 0 .. 31;
   end record;

   --  GPIOB address block description
   GPIOB_Periph : aliased GPIOB_Peripheral
     with Import, Address => GPIOB_Base;

   --  GPIOC address block description
   type GPIOC_Peripheral is record
      --  GPIO port mode register
      GPIOC_MODER   : aliased GPIOC_MODER_Register;
      --  GPIO port output type register
      GPIOC_OTYPER  : aliased GPIOC_OTYPER_Register;
      --  GPIO port output speed register
      GPIOC_OSPEEDR : aliased GPIOC_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      GPIOC_PUPDR   : aliased GPIOC_PUPDR_Register;
      --  GPIO port input data register
      GPIOC_IDR     : aliased GPIOC_IDR_Register;
      --  GPIO port output data register
      GPIOC_ODR     : aliased GPIOC_ODR_Register;
      --  GPIO port bit set/reset register
      GPIOC_BSRR    : aliased GPIOC_BSRR_Register;
      --  GPIO port configuration lock register
      GPIOC_LCKR    : aliased GPIOC_LCKR_Register;
      --  GPIO alternate function low register
      GPIOC_AFRL    : aliased GPIOC_AFRL_Register;
      --  GPIO alternate function high register
      GPIOC_AFRH    : aliased GPIOC_AFRH_Register;
      --  GPIO port bit reset register
      GPIOC_BRR     : aliased GPIOC_BRR_Register;
   end record
     with Volatile;

   for GPIOC_Peripheral use record
      GPIOC_MODER   at 16#0# range 0 .. 31;
      GPIOC_OTYPER  at 16#4# range 0 .. 31;
      GPIOC_OSPEEDR at 16#8# range 0 .. 31;
      GPIOC_PUPDR   at 16#C# range 0 .. 31;
      GPIOC_IDR     at 16#10# range 0 .. 31;
      GPIOC_ODR     at 16#14# range 0 .. 31;
      GPIOC_BSRR    at 16#18# range 0 .. 31;
      GPIOC_LCKR    at 16#1C# range 0 .. 31;
      GPIOC_AFRL    at 16#20# range 0 .. 31;
      GPIOC_AFRH    at 16#24# range 0 .. 31;
      GPIOC_BRR     at 16#28# range 0 .. 31;
   end record;

   --  GPIOC address block description
   GPIOC_Periph : aliased GPIOC_Peripheral
     with Import, Address => GPIOC_Base;

   --  GPIOD address block description
   type GPIOD_Peripheral is record
      --  GPIO port mode register
      GPIOD_MODER   : aliased GPIOD_MODER_Register;
      --  GPIO port output type register
      GPIOD_OTYPER  : aliased GPIOD_OTYPER_Register;
      --  GPIO port output speed register
      GPIOD_OSPEEDR : aliased GPIOD_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      GPIOD_PUPDR   : aliased GPIOD_PUPDR_Register;
      --  GPIO port input data register
      GPIOD_IDR     : aliased GPIOD_IDR_Register;
      --  GPIO port output data register
      GPIOD_ODR     : aliased GPIOD_ODR_Register;
      --  GPIO port bit set/reset register
      GPIOD_BSRR    : aliased GPIOD_BSRR_Register;
      --  GPIO port configuration lock register
      GPIOD_LCKR    : aliased GPIOD_LCKR_Register;
      --  GPIO alternate function low register
      GPIOD_AFRL    : aliased GPIOD_AFRL_Register;
      --  GPIO alternate function high register
      GPIOD_AFRH    : aliased GPIOD_AFRH_Register;
      --  GPIO port bit reset register
      GPIOD_BRR     : aliased GPIOD_BRR_Register;
   end record
     with Volatile;

   for GPIOD_Peripheral use record
      GPIOD_MODER   at 16#0# range 0 .. 31;
      GPIOD_OTYPER  at 16#4# range 0 .. 31;
      GPIOD_OSPEEDR at 16#8# range 0 .. 31;
      GPIOD_PUPDR   at 16#C# range 0 .. 31;
      GPIOD_IDR     at 16#10# range 0 .. 31;
      GPIOD_ODR     at 16#14# range 0 .. 31;
      GPIOD_BSRR    at 16#18# range 0 .. 31;
      GPIOD_LCKR    at 16#1C# range 0 .. 31;
      GPIOD_AFRL    at 16#20# range 0 .. 31;
      GPIOD_AFRH    at 16#24# range 0 .. 31;
      GPIOD_BRR     at 16#28# range 0 .. 31;
   end record;

   --  GPIOD address block description
   GPIOD_Periph : aliased GPIOD_Peripheral
     with Import, Address => GPIOD_Base;

   --  GPIOE address block description
   type GPIOE_Peripheral is record
      --  GPIO port mode register
      GPIOE_MODER   : aliased GPIOE_MODER_Register;
      --  GPIO port output type register
      GPIOE_OTYPER  : aliased GPIOE_OTYPER_Register;
      --  GPIO port output speed register
      GPIOE_OSPEEDR : aliased GPIOE_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      GPIOE_PUPDR   : aliased GPIOE_PUPDR_Register;
      --  GPIO port input data register
      GPIOE_IDR     : aliased GPIOE_IDR_Register;
      --  GPIO port output data register
      GPIOE_ODR     : aliased GPIOE_ODR_Register;
      --  GPIO port bit set/reset register
      GPIOE_BSRR    : aliased GPIOE_BSRR_Register;
      --  GPIO port configuration lock register
      GPIOE_LCKR    : aliased GPIOE_LCKR_Register;
      --  GPIO alternate function low register
      GPIOE_AFRL    : aliased GPIOE_AFRL_Register;
      --  GPIO alternate function high register
      GPIOE_AFRH    : aliased GPIOE_AFRH_Register;
      --  GPIO port bit reset register
      GPIOE_BRR     : aliased GPIOE_BRR_Register;
   end record
     with Volatile;

   for GPIOE_Peripheral use record
      GPIOE_MODER   at 16#0# range 0 .. 31;
      GPIOE_OTYPER  at 16#4# range 0 .. 31;
      GPIOE_OSPEEDR at 16#8# range 0 .. 31;
      GPIOE_PUPDR   at 16#C# range 0 .. 31;
      GPIOE_IDR     at 16#10# range 0 .. 31;
      GPIOE_ODR     at 16#14# range 0 .. 31;
      GPIOE_BSRR    at 16#18# range 0 .. 31;
      GPIOE_LCKR    at 16#1C# range 0 .. 31;
      GPIOE_AFRL    at 16#20# range 0 .. 31;
      GPIOE_AFRH    at 16#24# range 0 .. 31;
      GPIOE_BRR     at 16#28# range 0 .. 31;
   end record;

   --  GPIOE address block description
   GPIOE_Periph : aliased GPIOE_Peripheral
     with Import, Address => GPIOE_Base;

   --  GPIOF address block description
   type GPIOF_Peripheral is record
      --  GPIO port mode register
      GPIOF_MODER   : aliased GPIOF_MODER_Register;
      --  GPIO port output type register
      GPIOF_OTYPER  : aliased GPIOF_OTYPER_Register;
      --  GPIO port output speed register
      GPIOF_OSPEEDR : aliased GPIOF_OSPEEDR_Register;
      --  GPIO port pull-up/pull-down register
      GPIOF_PUPDR   : aliased GPIOF_PUPDR_Register;
      --  GPIO port input data register
      GPIOF_IDR     : aliased GPIOF_IDR_Register;
      --  GPIO port output data register
      GPIOF_ODR     : aliased GPIOF_ODR_Register;
      --  GPIO port bit set/reset register
      GPIOF_BSRR    : aliased GPIOF_BSRR_Register;
      --  GPIO port configuration lock register
      GPIOF_LCKR    : aliased GPIOF_LCKR_Register;
      --  GPIO alternate function low register
      GPIOF_AFRL    : aliased GPIOF_AFRL_Register;
      --  GPIO alternate function high register
      GPIOF_AFRH    : aliased GPIOF_AFRH_Register;
      --  GPIO port bit reset register
      GPIOF_BRR     : aliased GPIOF_BRR_Register;
   end record
     with Volatile;

   for GPIOF_Peripheral use record
      GPIOF_MODER   at 16#0# range 0 .. 31;
      GPIOF_OTYPER  at 16#4# range 0 .. 31;
      GPIOF_OSPEEDR at 16#8# range 0 .. 31;
      GPIOF_PUPDR   at 16#C# range 0 .. 31;
      GPIOF_IDR     at 16#10# range 0 .. 31;
      GPIOF_ODR     at 16#14# range 0 .. 31;
      GPIOF_BSRR    at 16#18# range 0 .. 31;
      GPIOF_LCKR    at 16#1C# range 0 .. 31;
      GPIOF_AFRL    at 16#20# range 0 .. 31;
      GPIOF_AFRH    at 16#24# range 0 .. 31;
      GPIOF_BRR     at 16#28# range 0 .. 31;
   end record;

   --  GPIOF address block description
   GPIOF_Periph : aliased GPIOF_Peripheral
     with Import, Address => GPIOF_Base;

end Interfaces.STM32.GPIO;
