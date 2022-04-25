--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

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

   subtype PWR_CR1_LPMS_Field is Interfaces.Bit_Types.UInt3;

   --  PWR_CR1_RRSB array
   type PWR_CR1_RRSB_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_CR1_RRSB
   type PWR_CR1_RRSB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RRSB as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  RRSB as an array
            Arr : PWR_CR1_RRSB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_CR1_RRSB_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR control register 1
   type PWR_CR1_Register is record
      --  Low-power mode selection These bits select the low-power mode entered
      --  when the CPU enters the Deepsleep mode. 10x: Standby mode (Standby
      --  mode also entered if LPMS = 11X in PWR_CR1 with BREN = 1 in
      --  PWR_BDCR1) 11x: Shutdown mode if BREN = 0 in PWR_BDCR1
      LPMS           : PWR_CR1_LPMS_Field := 16#0#;
      --  unspecified
      Reserved_3_4   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  SRAM2 page 1 retention in Stop 3 and Standby modes This bit is used
      --  to keep the SRAM2 page 1 content in Stop 3 and Standby modes. The
      --  SRAM2 page 1 corresponds to the first 8 Kbytes of the SRAM2 (from
      --  SRAM2 base address to SRAM2 base address + 0x1FFF). Note: This bit
      --  has no effect in Shutdown mode.
      RRSB           : PWR_CR1_RRSB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  BOR ultra-low power mode This bit is used to reduce the consumption
      --  by configuring the BOR in discontinuous mode. This bit must be set to
      --  reach the lowest power consumption in the low-power modes.
      ULPMEN         : Boolean := False;
      --  SRAM1 power down This bit is used to reduce the consumption by
      --  powering off the SRAM1.
      SRAM1PD        : Boolean := False;
      --  SRAM2 power down This bit is used to reduce the consumption by
      --  powering off the SRAM2.
      SRAM2PD        : Boolean := False;
      --  SRAM3 power down This bit is used to reduce the consumption by
      --  powering off the SRAM3.
      SRAM3PD        : Boolean := False;
      --  SRAM4 power down This bit is used to reduce the consumption by
      --  powering off the SRAM4.
      SRAM4PD        : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR1_Register use record
      LPMS           at 0 range 0 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      RRSB           at 0 range 5 .. 6;
      ULPMEN         at 0 range 7 .. 7;
      SRAM1PD        at 0 range 8 .. 8;
      SRAM2PD        at 0 range 9 .. 9;
      SRAM3PD        at 0 range 10 .. 10;
      SRAM4PD        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  PWR_CR2_SRAM1PDS array
   type PWR_CR2_SRAM1PDS_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PWR_CR2_SRAM1PDS
   type PWR_CR2_SRAM1PDS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRAM1PDS as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SRAM1PDS as an array
            Arr : PWR_CR2_SRAM1PDS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PWR_CR2_SRAM1PDS_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PWR_CR2_SRAM2PDS array
   type PWR_CR2_SRAM2PDS_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_CR2_SRAM2PDS
   type PWR_CR2_SRAM2PDS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRAM2PDS as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  SRAM2PDS as an array
            Arr : PWR_CR2_SRAM2PDS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_CR2_SRAM2PDS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR_CR2_SRAM3PDS array
   type PWR_CR2_SRAM3PDS_Field_Array is array (1 .. 8) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_CR2_SRAM3PDS
   type PWR_CR2_SRAM3PDS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRAM3PDS as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SRAM3PDS as an array
            Arr : PWR_CR2_SRAM3PDS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_CR2_SRAM3PDS_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR control register 2
   type PWR_CR2_Register is record
      --  SRAM1 page 1 (64 Kbytes) power-down in Stop modes (Stop 0, 1, 2, 3)
      SRAM1PDS       : PWR_CR2_SRAM1PDS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SRAM2 page 1 (8 Kbytes) power-down in Stop modes (Stop 0, 1, 2) Note:
      --  The SRAM2 page 1 retention in Stop 3 is controlled by RRSB1 bit in
      --  PWR_CR1.
      SRAM2PDS       : PWR_CR2_SRAM2PDS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  SRAM4 power-down in Stop modes (Stop 0, 1, 2, 3)
      SRAM4PDS       : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  ICACHE SRAM power-down in Stop modes (Stop 0, 1, 2, 3)
      ICRAMPDS       : Boolean := False;
      --  DCACHE1 SRAM power-down in Stop modes (Stop 0, 1, 2, 3)
      DC1RAMPDS      : Boolean := False;
      --  DMA2D SRAM power-down in Stop modes (Stop 0, 1, 2, 3)
      DMA2DRAMPDS    : Boolean := False;
      --  FMAC, FDCAN and USB peripherals SRAM power-down in Stop modes
      --  (Stop 0, 1, 2, 3)
      PRAMPDS        : Boolean := False;
      --  PKA SRAM power-down
      PKARAMPDS      : Boolean := False;
      --  SRAM4 fast wakeup from Stop 0, Stop 1 and Stop 2 modes This bit is
      --  used to obtain the best trade-off between low-power consumption and
      --  wakeup time. SRAM4 wakeup time increases the wakeup time when exiting
      --  Stop 0, 1 and 2 modes, and also increases the LPDMA access time to
      --  SRAM4 during Stop modes.
      SRAM4FWU       : Boolean := False;
      --  Flash memory fast wakeup from Stop 0 and Stop 1 modes This bit is
      --  used to obtain the best trade-off between low-power consumption and
      --  wakeup time when exiting the Stop 0 or Stop 1 modes. When this bit is
      --  set, the Flash memory remains in normal mode in Stop 0 and Stop 1
      --  modes, which offers a faster startup time with higher consumption.
      FLASHFWU       : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SRAM3 page 1 (64 Kbytes) power-down in Stop modes (Stop 0, 1, 2, 3)
      SRAM3PDS       : PWR_CR2_SRAM3PDS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_30 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  SmartRun domain in Run mode
      SRDRUN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR2_Register use record
      SRAM1PDS       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SRAM2PDS       at 0 range 4 .. 5;
      SRAM4PDS       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ICRAMPDS       at 0 range 8 .. 8;
      DC1RAMPDS      at 0 range 9 .. 9;
      DMA2DRAMPDS    at 0 range 10 .. 10;
      PRAMPDS        at 0 range 11 .. 11;
      PKARAMPDS      at 0 range 12 .. 12;
      SRAM4FWU       at 0 range 13 .. 13;
      FLASHFWU       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SRAM3PDS       at 0 range 16 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      SRDRUN         at 0 range 31 .. 31;
   end record;

   --  PWR control register 3
   type PWR_CR3_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Regulator selection Note: REGSEL is reserved and must be kept at
      --  reset value in packages without SMPS.
      REGSEL        : Boolean := False;
      --  Fast soft start
      FSTEN         : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR3_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      REGSEL        at 0 range 1 .. 1;
      FSTEN         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype PWR_VOSR_VOS_Field is Interfaces.Bit_Types.UInt2;

   --  PWR voltage scaling register
   type PWR_VOSR_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Read-only. EPOD booster ready This bit is set to 1 by hardware when
      --  the power booster startup time is reached. The system clock frequency
      --  can be switched higher than 50 MHz only after this bit is set.
      BOOSTRDY       : Boolean := False;
      --  Read-only. Ready bit for VCORE voltage scaling output selection
      VOSRDY         : Boolean := True;
      --  Voltage scaling range selection This field is protected against
      --  non-secure access when SYSCLKSEC = 1 in RCC_SECCFGR. It is
      --  protected against unprivileged access when SYSCLKSEC = 1 in
      --  RCC_SECCFGR and SPRIV = 1 in PWR_PRIVCFGR, or when SYSCLKSEC = 0
      --  and NSPRIV = 1.
      VOS            : PWR_VOSR_VOS_Field := 16#0#;
      --  EPOD booster enable
      BOOSTEN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_VOSR_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      BOOSTRDY       at 0 range 14 .. 14;
      VOSRDY         at 0 range 15 .. 15;
      VOS            at 0 range 16 .. 17;
      BOOSTEN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype PWR_SVMCR_PVDLS_Field is Interfaces.Bit_Types.UInt3;

   --  PWR supply voltage monitoring control register
   type PWR_SVMCR_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Power voltage detector enable
      PVDE           : Boolean := False;
      --  Power voltage detector level selection These bits select the voltage
      --  threshold detected by the power voltage detector:
      PVDLS          : PWR_SVMCR_PVDLS_Field := 16#0#;
      --  unspecified
      Reserved_8_23  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  VDDUSB independent USB voltage monitor enable
      UVMEN          : Boolean := False;
      --  VDDIO2 independent I/Os voltage monitor enable
      IO2VMEN        : Boolean := False;
      --  VDDA independent analog supply voltage monitor 1 enable (1.6 V
      --  threshold)
      AVM1EN         : Boolean := False;
      --  VDDA independent analog supply voltage monitor 2 enable (1.8 V
      --  threshold)
      AVM2EN         : Boolean := False;
      --  VDDUSB independent USB supply valid
      USV            : Boolean := False;
      --  VDDIO2 independent I/Os supply valid This bit is used to validate the
      --  VDDIO2 supply for electrical and logical isolation purpose. Setting
      --  this bit is mandatory to use PG[15:2]. If VDDIO2 is not always
      --  present in the application, the VDDIO2 voltage monitor can be used to
      --  determine whether this supply is ready or not.
      IO2SV          : Boolean := False;
      --  VDDA independent analog supply valid
      ASV            : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SVMCR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PVDE           at 0 range 4 .. 4;
      PVDLS          at 0 range 5 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      UVMEN          at 0 range 24 .. 24;
      IO2VMEN        at 0 range 25 .. 25;
      AVM1EN         at 0 range 26 .. 26;
      AVM2EN         at 0 range 27 .. 27;
      USV            at 0 range 28 .. 28;
      IO2SV          at 0 range 29 .. 29;
      ASV            at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  PWR_WUCR1_WUPEN array
   type PWR_WUCR1_WUPEN_Field_Array is array (1 .. 8) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WUCR1_WUPEN
   type PWR_WUCR1_WUPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPEN as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WUPEN as an array
            Arr : PWR_WUCR1_WUPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WUCR1_WUPEN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR wakeup control register 1
   type PWR_WUCR1_Register is record
      --  Wakeup pin WKUP1 enable
      WUPEN         : PWR_WUCR1_WUPEN_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUCR1_Register use record
      WUPEN         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWR_WUCR2_WUPP array
   type PWR_WUCR2_WUPP_Field_Array is array (1 .. 8) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WUCR2_WUPP
   type PWR_WUCR2_WUPP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPP as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WUPP as an array
            Arr : PWR_WUCR2_WUPP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WUCR2_WUPP_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR wakeup control register 2
   type PWR_WUCR2_Register is record
      --  Wakeup pin WKUP1 polarity. This bit must be configured when WUPEN1 =
      --  0.
      WUPP          : PWR_WUCR2_WUPP_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUCR2_Register use record
      WUPP          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWR_WUCR3_WUSEL array element
   subtype PWR_WUCR3_WUSEL_Element is Interfaces.Bit_Types.UInt2;

   --  PWR_WUCR3_WUSEL array
   type PWR_WUCR3_WUSEL_Field_Array is array (1 .. 8)
     of PWR_WUCR3_WUSEL_Element
     with Component_Size => 2, Size => 16;

   --  Type definition for PWR_WUCR3_WUSEL
   type PWR_WUCR3_WUSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUSEL as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  WUSEL as an array
            Arr : PWR_WUCR3_WUSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_WUCR3_WUSEL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR wakeup control register 3
   type PWR_WUCR3_Register is record
      --  Wakeup pin WKUP1 selection This field must be configured when WUPEN1
      --  = 0.
      WUSEL          : PWR_WUCR3_WUSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUCR3_Register use record
      WUSEL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR Backup domain control register 1
   type PWR_BDCR1_Register is record
      --  Backup RAM retention in Standby and VBAT modes When this bit is set,
      --  the backup RAM content is kept in Standby and VBAT modes. If BREN is
      --  reset, the backup RAM can still be used in Run, Sleep and Stop modes.
      --  However, its content is lost in Standby, Shutdown and VBAT modes.
      --  This bit can be written only when the regulator is LDO, which must be
      --  configured before switching to SMPS. Note: Backup RAM cannot be
      --  preserved in Shutdown mode.
      BREN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Backup domain voltage and temperature monitoring enable
      MONEN         : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_BDCR1_Register use record
      BREN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      MONEN         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PWR Backup domain control register 2
   type PWR_BDCR2_Register is record
      --  VBAT charging enable
      VBE           : Boolean := False;
      --  VBAT charging resistor selection
      VBRS          : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_BDCR2_Register use record
      VBE           at 0 range 0 .. 0;
      VBRS          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PWR disable Backup domain register
   type PWR_DBPR_Register is record
      --  Disable Backup domain write protection In reset state, all registers
      --  and SRAM in Backup domain are protected against parasitic write
      --  access. This bit must be set to enable the write access to these
      --  registers.
      DBP           : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_DBPR_Register use record
      DBP           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PWR USB Type-C™ and Power Delivery register
   type PWR_UCPDR_Register is record
      --  UCPD dead battery disable After exiting reset, the USB Type-C “dead
      --  battery” behavior is enabled, which may have a pull-down effect on
      --  CC1 and CC2 pins. It is recommended to disable it in all cases,
      --  either to stop this pull-down or to handover control to the UCPD (the
      --  UCPD must be initialized before doing the disable).
      UCPD_DBDIS    : Boolean := False;
      --  UCPD Standby mode When set, this bit is used to memorize the UCPD
      --  configuration in Standby mode. This bit must be written to 1 just
      --  before entering Standby mode when using UCPD. It must be written to 0
      --  after exiting the Standby mode and before writing any UCPD registers.
      UCPD_STBY     : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_UCPDR_Register use record
      UCPD_DBDIS    at 0 range 0 .. 0;
      UCPD_STBY     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PWR security configuration register
   type PWR_SECCFGR_Register is record
      --  WUP1 secure protection
      WUP1SEC        : Boolean := False;
      --  WUP2 secure protection
      WUP2SEC        : Boolean := False;
      --  WUP3 secure protection
      WUP3SEC        : Boolean := False;
      --  WUP4 secure protection
      WUP4SEC        : Boolean := False;
      --  WUP5 secure protection
      WUP5SEC        : Boolean := False;
      --  WUP6 secure protection
      WUP6SEC        : Boolean := False;
      --  WUP7 secure protection
      WUP7SEC        : Boolean := False;
      --  WUP8 secure protection
      WUP8SEC        : Boolean := False;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Low-power modes secure protection
      LPMSEC         : Boolean := False;
      --  Voltage detection and monitoring secure protection
      VDMSEC         : Boolean := False;
      --  Backup domain secure protection
      VBSEC          : Boolean := False;
      --  Pull-up/pull-down secure protection
      APCSEC         : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SECCFGR_Register use record
      WUP1SEC        at 0 range 0 .. 0;
      WUP2SEC        at 0 range 1 .. 1;
      WUP3SEC        at 0 range 2 .. 2;
      WUP4SEC        at 0 range 3 .. 3;
      WUP5SEC        at 0 range 4 .. 4;
      WUP6SEC        at 0 range 5 .. 5;
      WUP7SEC        at 0 range 6 .. 6;
      WUP8SEC        at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      LPMSEC         at 0 range 12 .. 12;
      VDMSEC         at 0 range 13 .. 13;
      VBSEC          at 0 range 14 .. 14;
      APCSEC         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR privilege control register
   type PWR_PRIVCFGR_Register is record
      --  PWR secure functions privilege configuration This bit is set and
      --  reset by software. It can be written only by a secure privileged
      --  access.
      SPRIV         : Boolean := False;
      --  PWR non-secure functions privilege configuration This bit is set and
      --  reset by software. It can be written only by privileged access,
      --  secure or non-secure.
      NSPRIV        : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PRIVCFGR_Register use record
      SPRIV         at 0 range 0 .. 0;
      NSPRIV        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PWR status register
   type PWR_SR_Register is record
      --  Write-only. Clear Stop and Standby flags This bit is protected
      --  against non-secure access when LPMSEC = 1 in PWR_SECCFGR. This bit
      --  is protected against unprivileged access when LPMSEC = 1 and
      --  SPRIV = 1 in PWR_PRIVCFGR, or when LPMSEC = 0 and NSPRIV = 1.
      --  Writing 1 to this bit clears the STOPF and SBF flags.
      CSSF          : Boolean := False;
      --  Read-only. Stop flag This bit is set by hardware when the device
      --  enters a Stop mode, and is cleared by software by writing 1 to the
      --  CSSF bit.
      STOPF         : Boolean := False;
      --  Read-only. Standby flag This bit is set by hardware when the device
      --  enters the Standby mode, and is cleared by writing 1 to the CSSF bit,
      --  or by a power-on reset. It is not cleared by the system reset.
      SBF           : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SR_Register use record
      CSSF          at 0 range 0 .. 0;
      STOPF         at 0 range 1 .. 1;
      SBF           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype PWR_SVMSR_ACTVOS_Field is Interfaces.Bit_Types.UInt2;

   type PWR_SVMSR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit;
      --  Read-only. Regulator selection
      REGS           : Boolean;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2;
      --  Read-only. VDD voltage detector output
      PVDO           : Boolean;
      --  unspecified
      Reserved_5_14  : Interfaces.Bit_Types.UInt10;
      --  Read-only. Voltage level ready for currently used VOS
      ACTVOSRDY      : Boolean;
      --  Read-only. VOS currently applied to VCORE This field provides the
      --  last VOS value.
      ACTVOS         : PWR_SVMSR_ACTVOS_Field;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6;
      --  Read-only. VDDUSB ready
      VDDUSBRDY      : Boolean;
      --  Read-only. VDDIO2 ready
      VDDIO2RDY      : Boolean;
      --  Read-only. VDDA ready versus 1.6V voltage monitor
      VDDA1RDY       : Boolean;
      --  Read-only. VDDA ready versus 1.8 V voltage monitor
      VDDA2RDY       : Boolean;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SVMSR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      REGS           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PVDO           at 0 range 4 .. 4;
      Reserved_5_14  at 0 range 5 .. 14;
      ACTVOSRDY      at 0 range 15 .. 15;
      ACTVOS         at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      VDDUSBRDY      at 0 range 24 .. 24;
      VDDIO2RDY      at 0 range 25 .. 25;
      VDDA1RDY       at 0 range 26 .. 26;
      VDDA2RDY       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  PWR Backup domain status register
   type PWR_BDSR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit;
      --  Read-only. Backup domain voltage level monitoring versus high
      --  threshold
      VBATH         : Boolean;
      --  Read-only. Temperature level monitoring versus low threshold
      TEMPL         : Boolean;
      --  Read-only. Temperature level monitoring versus high threshold
      TEMPH         : Boolean;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_BDSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VBATH         at 0 range 1 .. 1;
      TEMPL         at 0 range 2 .. 2;
      TEMPH         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWR_WUSR_WUF array
   type PWR_WUSR_WUF_Field_Array is array (1 .. 8) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WUSR_WUF
   type PWR_WUSR_WUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUF as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  WUF as an array
            Arr : PWR_WUSR_WUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WUSR_WUF_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR wakeup status register
   type PWR_WUSR_Register is record
      --  Read-only. Wakeup flag 1 This bit is set when a wakeup event is
      --  detected on WKUP1 pin. This bit is cleared by writing 1 in the CWUF1
      --  bit of PWR_WUSCR when WUSEL ≠ 11, or by hardware when WUPEN1 = 0.
      WUF           : PWR_WUSR_WUF_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUSR_Register use record
      WUF           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWR_WUSCR_CWUF array
   type PWR_WUSCR_CWUF_Field_Array is array (1 .. 8) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WUSCR_CWUF
   type PWR_WUSCR_CWUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CWUF as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  CWUF as an array
            Arr : PWR_WUSCR_CWUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WUSCR_CWUF_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR wakeup status clear register
   type PWR_WUSCR_Register is record
      --  Write-only. Wakeup flag 1 Writing 1 to this bit clears the WUF1 flag
      --  in PWR_WUSR.
      CWUF          : PWR_WUSCR_CWUF_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUSCR_Register use record
      CWUF          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWR apply pull configuration register
   type PWR_APCR_Register is record
      --  Apply pull-up and pull-down configuration When this bit is set, the
      --  I/O pull-up and pull-down configurations defined in PWR_PUCRx and
      --  PWR_PDCRx are applied. When this bit is cleared, PWR_PUCRx and
      --  PWR_PDCRx are not applied to the I/Os.
      APC           : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_APCR_Register use record
      APC           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PWR_PUCRA_PU array
   type PWR_PUCRA_PU_Field_Array is array (0 .. 13) of Boolean
     with Component_Size => 1, Size => 14;

   --  Type definition for PWR_PUCRA_PU
   type PWR_PUCRA_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt14;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRA_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 14;

   for PWR_PUCRA_PU_Field use record
      Val at 0 range 0 .. 13;
      Arr at 0 range 0 .. 13;
   end record;

   --  PWR port A pull-up control register
   type PWR_PUCRA_Register is record
      --  Port A pull-up bit
      PU             : PWR_PUCRA_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Port A pull-up bit 15 When set, this bit activates the pull-up on
      --  PA15 when the APC bit is set in PWR_APCR. The pull-up is not
      --  activated if the corresponding PD15 bit is also set.
      PU15           : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRA_Register use record
      PU             at 0 range 0 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PU15           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRA_PD array
   type PWR_PDCRA_PD_Field_Array is array (0 .. 12) of Boolean
     with Component_Size => 1, Size => 13;

   --  Type definition for PWR_PDCRA_PD
   type PWR_PDCRA_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt13;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRA_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for PWR_PDCRA_PD_Field use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   --  PWR port A pull-down control register
   type PWR_PDCRA_Register is record
      --  Port A pull-down bit
      PD             : PWR_PDCRA_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Port A pull-down bit
      PD14           : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRA_Register use record
      PD             at 0 range 0 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PD14           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  PWR_PUCRB_PU array
   type PWR_PUCRB_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRB_PU
   type PWR_PUCRB_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRB_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRB_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port B pull-up control register
   type PWR_PUCRB_Register is record
      --  Port B pull-up bit
      PU             : PWR_PUCRB_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRB_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRB_PD array
   type PWR_PDCRB_PD_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_PDCRB_PD
   type PWR_PDCRB_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRB_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_PDCRB_PD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR_PDCRB_PD array
   type PWR_PDCRB_PD_Field_Array_1 is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for PWR_PDCRB_PD
   type PWR_PDCRB_PD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRB_PD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for PWR_PDCRB_PD_Field_1 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  PWR port B pull-down control register
   type PWR_PDCRB_Register is record
      --  Port B pull-down bit
      PD             : PWR_PDCRB_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Port B pull-down bit
      PD_1           : PWR_PDCRB_PD_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRB_Register use record
      PD             at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      PD_1           at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRC_PU array
   type PWR_PUCRC_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRC_PU
   type PWR_PUCRC_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRC_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRC_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port C pull-up control register
   type PWR_PUCRC_Register is record
      --  Port C pull-up bit
      PU             : PWR_PUCRC_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRC_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRC_PD array
   type PWR_PDCRC_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRC_PD
   type PWR_PDCRC_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRC_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRC_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port C pull-down control register
   type PWR_PDCRC_Register is record
      --  Port C pull-down bit
      PD             : PWR_PDCRC_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRC_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRD_PU array
   type PWR_PUCRD_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRD_PU
   type PWR_PUCRD_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRD_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRD_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port D pull-up control register
   type PWR_PUCRD_Register is record
      --  Port D pull-up bit
      PU             : PWR_PUCRD_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRD_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRD_PD array
   type PWR_PDCRD_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRD_PD
   type PWR_PDCRD_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRD_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRD_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port D pull-down control register
   type PWR_PDCRD_Register is record
      --  Port D pull-down bit
      PD             : PWR_PDCRD_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRD_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRE_PU array
   type PWR_PUCRE_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRE_PU
   type PWR_PUCRE_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRE_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRE_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port E pull-up control register
   type PWR_PUCRE_Register is record
      --  Port E pull-up bit
      PU             : PWR_PUCRE_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRE_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRE_PD array
   type PWR_PDCRE_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRE_PD
   type PWR_PDCRE_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRE_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRE_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port E pull-down control register
   type PWR_PDCRE_Register is record
      --  Port E pull-down bit
      PD             : PWR_PDCRE_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRE_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRF_PU array
   type PWR_PUCRF_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRF_PU
   type PWR_PUCRF_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRF_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRF_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port F pull-up control register
   type PWR_PUCRF_Register is record
      --  Port F pull-up bit
      PU             : PWR_PUCRF_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRF_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRF_PD array
   type PWR_PDCRF_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRF_PD
   type PWR_PDCRF_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRF_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRF_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port F pull-down control register
   type PWR_PDCRF_Register is record
      --  Port F pull-down bit
      PD             : PWR_PDCRF_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRF_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRG_PU array
   type PWR_PUCRG_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRG_PU
   type PWR_PUCRG_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRG_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRG_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port G pull-up control register
   type PWR_PUCRG_Register is record
      --  Port G pull-up bit
      PU             : PWR_PUCRG_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRG_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRG_PD array
   type PWR_PDCRG_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRG_PD
   type PWR_PDCRG_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRG_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRG_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port G pull-down control register
   type PWR_PDCRG_Register is record
      --  Port G pull-down bit
      PD             : PWR_PDCRG_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRG_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRH_PU array
   type PWR_PUCRH_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRH_PU
   type PWR_PUCRH_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRH_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRH_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port H pull-up control register
   type PWR_PUCRH_Register is record
      --  Port H pull-up bit
      PU             : PWR_PUCRH_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRH_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRH_PD array
   type PWR_PDCRH_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRH_PD
   type PWR_PDCRH_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRH_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRH_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port H pull-down control register
   type PWR_PDCRH_Register is record
      --  Port H pull-down bit
      PD             : PWR_PDCRH_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRH_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRI_PU array
   type PWR_PUCRI_PU_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_PUCRI_PU
   type PWR_PUCRI_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRI_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_PUCRI_PU_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR port I pull-up control register
   type PWR_PUCRI_Register is record
      --  Port I pull-up bit
      PU            : PWR_PUCRI_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRI_Register use record
      PU            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWR_PDCRI_PD array
   type PWR_PDCRI_PD_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_PDCRI_PD
   type PWR_PDCRI_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRI_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_PDCRI_PD_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR port I pull-down control register
   type PWR_PDCRI_Register is record
      --  Port I pull-down bit
      PD            : PWR_PDCRI_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRI_Register use record
      PD            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  PWR control register 1
      PWR_CR1      : aliased PWR_CR1_Register;
      --  PWR control register 2
      PWR_CR2      : aliased PWR_CR2_Register;
      --  PWR control register 3
      PWR_CR3      : aliased PWR_CR3_Register;
      --  PWR voltage scaling register
      PWR_VOSR     : aliased PWR_VOSR_Register;
      --  PWR supply voltage monitoring control register
      PWR_SVMCR    : aliased PWR_SVMCR_Register;
      --  PWR wakeup control register 1
      PWR_WUCR1    : aliased PWR_WUCR1_Register;
      --  PWR wakeup control register 2
      PWR_WUCR2    : aliased PWR_WUCR2_Register;
      --  PWR wakeup control register 3
      PWR_WUCR3    : aliased PWR_WUCR3_Register;
      --  PWR Backup domain control register 1
      PWR_BDCR1    : aliased PWR_BDCR1_Register;
      --  PWR Backup domain control register 2
      PWR_BDCR2    : aliased PWR_BDCR2_Register;
      --  PWR disable Backup domain register
      PWR_DBPR     : aliased PWR_DBPR_Register;
      --  PWR USB Type-C™ and Power Delivery register
      PWR_UCPDR    : aliased PWR_UCPDR_Register;
      --  PWR security configuration register
      PWR_SECCFGR  : aliased PWR_SECCFGR_Register;
      --  PWR privilege control register
      PWR_PRIVCFGR : aliased PWR_PRIVCFGR_Register;
      --  PWR status register
      PWR_SR       : aliased PWR_SR_Register;
      PWR_SVMSR    : aliased PWR_SVMSR_Register;
      --  PWR Backup domain status register
      PWR_BDSR     : aliased PWR_BDSR_Register;
      --  PWR wakeup status register
      PWR_WUSR     : aliased PWR_WUSR_Register;
      --  PWR wakeup status clear register
      PWR_WUSCR    : aliased PWR_WUSCR_Register;
      --  PWR apply pull configuration register
      PWR_APCR     : aliased PWR_APCR_Register;
      --  PWR port A pull-up control register
      PWR_PUCRA    : aliased PWR_PUCRA_Register;
      --  PWR port A pull-down control register
      PWR_PDCRA    : aliased PWR_PDCRA_Register;
      --  PWR port B pull-up control register
      PWR_PUCRB    : aliased PWR_PUCRB_Register;
      --  PWR port B pull-down control register
      PWR_PDCRB    : aliased PWR_PDCRB_Register;
      --  PWR port C pull-up control register
      PWR_PUCRC    : aliased PWR_PUCRC_Register;
      --  PWR port C pull-down control register
      PWR_PDCRC    : aliased PWR_PDCRC_Register;
      --  PWR port D pull-up control register
      PWR_PUCRD    : aliased PWR_PUCRD_Register;
      --  PWR port D pull-down control register
      PWR_PDCRD    : aliased PWR_PDCRD_Register;
      --  PWR port E pull-up control register
      PWR_PUCRE    : aliased PWR_PUCRE_Register;
      --  PWR port E pull-down control register
      PWR_PDCRE    : aliased PWR_PDCRE_Register;
      --  PWR port F pull-up control register
      PWR_PUCRF    : aliased PWR_PUCRF_Register;
      --  PWR port F pull-down control register
      PWR_PDCRF    : aliased PWR_PDCRF_Register;
      --  PWR port G pull-up control register
      PWR_PUCRG    : aliased PWR_PUCRG_Register;
      --  PWR port G pull-down control register
      PWR_PDCRG    : aliased PWR_PDCRG_Register;
      --  PWR port H pull-up control register
      PWR_PUCRH    : aliased PWR_PUCRH_Register;
      --  PWR port H pull-down control register
      PWR_PDCRH    : aliased PWR_PDCRH_Register;
      --  PWR port I pull-up control register
      PWR_PUCRI    : aliased PWR_PUCRI_Register;
      --  PWR port I pull-down control register
      PWR_PDCRI    : aliased PWR_PDCRI_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      PWR_CR1      at 16#0# range 0 .. 31;
      PWR_CR2      at 16#4# range 0 .. 31;
      PWR_CR3      at 16#8# range 0 .. 31;
      PWR_VOSR     at 16#C# range 0 .. 31;
      PWR_SVMCR    at 16#10# range 0 .. 31;
      PWR_WUCR1    at 16#14# range 0 .. 31;
      PWR_WUCR2    at 16#18# range 0 .. 31;
      PWR_WUCR3    at 16#1C# range 0 .. 31;
      PWR_BDCR1    at 16#20# range 0 .. 31;
      PWR_BDCR2    at 16#24# range 0 .. 31;
      PWR_DBPR     at 16#28# range 0 .. 31;
      PWR_UCPDR    at 16#2C# range 0 .. 31;
      PWR_SECCFGR  at 16#30# range 0 .. 31;
      PWR_PRIVCFGR at 16#34# range 0 .. 31;
      PWR_SR       at 16#38# range 0 .. 31;
      PWR_SVMSR    at 16#3C# range 0 .. 31;
      PWR_BDSR     at 16#40# range 0 .. 31;
      PWR_WUSR     at 16#44# range 0 .. 31;
      PWR_WUSCR    at 16#48# range 0 .. 31;
      PWR_APCR     at 16#4C# range 0 .. 31;
      PWR_PUCRA    at 16#50# range 0 .. 31;
      PWR_PDCRA    at 16#54# range 0 .. 31;
      PWR_PUCRB    at 16#58# range 0 .. 31;
      PWR_PDCRB    at 16#5C# range 0 .. 31;
      PWR_PUCRC    at 16#60# range 0 .. 31;
      PWR_PDCRC    at 16#64# range 0 .. 31;
      PWR_PUCRD    at 16#68# range 0 .. 31;
      PWR_PDCRD    at 16#6C# range 0 .. 31;
      PWR_PUCRE    at 16#70# range 0 .. 31;
      PWR_PDCRE    at 16#74# range 0 .. 31;
      PWR_PUCRF    at 16#78# range 0 .. 31;
      PWR_PDCRF    at 16#7C# range 0 .. 31;
      PWR_PUCRG    at 16#80# range 0 .. 31;
      PWR_PDCRG    at 16#84# range 0 .. 31;
      PWR_PUCRH    at 16#88# range 0 .. 31;
      PWR_PDCRH    at 16#8C# range 0 .. 31;
      PWR_PUCRI    at 16#90# range 0 .. 31;
      PWR_PDCRI    at 16#94# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

   --  Power control
   SEC_PWR_Periph : aliased PWR_Peripheral
     with Import, Address => SEC_PWR_Base;

end Interfaces.STM32.PWR;
