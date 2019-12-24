--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L151.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.SYSCFG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype MEMRMP_MEM_MODE_Field is Interfaces.Bit_Types.UInt2;
   subtype MEMRMP_BOOT_MODE_Field is Interfaces.Bit_Types.UInt2;

   --  memory remap register
   type MEMRMP_Register is record
      --  MEM_MODE
      MEM_MODE       : MEMRMP_MEM_MODE_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Read-only. BOOT_MODE
      BOOT_MODE      : MEMRMP_BOOT_MODE_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEMRMP_Register use record
      MEM_MODE       at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      BOOT_MODE      at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype PMC_LCD_CAPA_Field is Interfaces.Bit_Types.UInt5;

   --  peripheral mode configuration register
   type PMC_Register is record
      --  USB pull-up
      USB_PU        : Boolean := False;
      --  USB pull-up enable on DP line
      LCD_CAPA      : PMC_LCD_CAPA_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMC_Register use record
      USB_PU        at 0 range 0 .. 0;
      LCD_CAPA      at 0 range 1 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  EXTICR1_EXTI array element
   subtype EXTICR1_EXTI_Element is Interfaces.Bit_Types.UInt4;

   --  EXTICR1_EXTI array
   type EXTICR1_EXTI_Field_Array is array (0 .. 3) of EXTICR1_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR1_EXTI
   type EXTICR1_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  EXTI as an array
            Arr : EXTICR1_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR1_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 1
   type EXTICR1_Register is record
      --  EXTI x configuration (x = 0 to 3)
      EXTI           : EXTICR1_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR1_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTICR2_EXTI array element
   subtype EXTICR2_EXTI_Element is Interfaces.Bit_Types.UInt4;

   --  EXTICR2_EXTI array
   type EXTICR2_EXTI_Field_Array is array (4 .. 7) of EXTICR2_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR2_EXTI
   type EXTICR2_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  EXTI as an array
            Arr : EXTICR2_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR2_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 2
   type EXTICR2_Register is record
      --  EXTI x configuration (x = 4 to 7)
      EXTI           : EXTICR2_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR2_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTICR3_EXTI array element
   subtype EXTICR3_EXTI_Element is Interfaces.Bit_Types.UInt4;

   --  EXTICR3_EXTI array
   type EXTICR3_EXTI_Field_Array is array (8 .. 11) of EXTICR3_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR3_EXTI
   type EXTICR3_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  EXTI as an array
            Arr : EXTICR3_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR3_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 3
   type EXTICR3_Register is record
      --  EXTI x configuration (x = 8 to 11)
      EXTI           : EXTICR3_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR3_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTICR4_EXTI array element
   subtype EXTICR4_EXTI_Element is Interfaces.Bit_Types.UInt4;

   --  EXTICR4_EXTI array
   type EXTICR4_EXTI_Field_Array is array (12 .. 15) of EXTICR4_EXTI_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for EXTICR4_EXTI
   type EXTICR4_EXTI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.Bit_Types.Short;
         when True =>
            --  EXTI as an array
            Arr : EXTICR4_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTICR4_EXTI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  external interrupt configuration register 4
   type EXTICR4_Register is record
      --  EXTI12
      EXTI           : EXTICR4_EXTI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR4_Register use record
      EXTI           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System configuration controller
   type SYSCFG_Peripheral is record
      --  memory remap register
      MEMRMP  : aliased MEMRMP_Register;
      --  peripheral mode configuration register
      PMC     : aliased PMC_Register;
      --  external interrupt configuration register 1
      EXTICR1 : aliased EXTICR1_Register;
      --  external interrupt configuration register 2
      EXTICR2 : aliased EXTICR2_Register;
      --  external interrupt configuration register 3
      EXTICR3 : aliased EXTICR3_Register;
      --  external interrupt configuration register 4
      EXTICR4 : aliased EXTICR4_Register;
   end record
     with Volatile;

   for SYSCFG_Peripheral use record
      MEMRMP  at 16#0# range 0 .. 31;
      PMC     at 16#4# range 0 .. 31;
      EXTICR1 at 16#8# range 0 .. 31;
      EXTICR2 at 16#C# range 0 .. 31;
      EXTICR3 at 16#10# range 0 .. 31;
      EXTICR4 at 16#14# range 0 .. 31;
   end record;

   --  System configuration controller
   SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => System'To_Address (16#40010000#);

end Interfaces.STM32.SYSCFG;
