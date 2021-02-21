--
--  Copyright (C) 2020, AdaCore
--

--  Copyright 2016-2019 NXP
--  All rights reserved.SPDX-License-Identifier: BSD-3-Clause

--  This spec has been automatically generated from LPC55S6x.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.NXP.SYSCTL is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  All Registers
   type UPDATELCKOUT_UPDATELCKOUT_Field is
     (
      --  Normal Mode. Can be written to.
      Normal_Mode,
      --  Protected Mode. Cannot be written to.
      Protected_Mode)
     with Size => 1;
   for UPDATELCKOUT_UPDATELCKOUT_Field use
     (Normal_Mode => 0,
      Protected_Mode => 1);

   --  update lock out control
   type UPDATELCKOUT_Register is record
      --  All Registers
      UPDATELCKOUT  : UPDATELCKOUT_UPDATELCKOUT_Field :=
                       Interfaces.NXP.SYSCTL.Normal_Mode;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPDATELCKOUT_Register use record
      UPDATELCKOUT  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Selects the source for SCK going into this Flexcomm.
   type FCCTRLSEL_SCKINSEL_Field is
     (
      --  Selects the dedicated FCn_SCK function for this Flexcomm.
      Orig_Flex_I2S_Signals,
      --  SCK is taken from shared signal set 0 (defined by SHAREDCTRLSET0).
      Shared_Set0_I2S_Signals,
      --  SCK is taken from shared signal set 1 (defined by SHAREDCTRLSET1).
      Shared_Set1_I2S_Signals)
     with Size => 2;
   for FCCTRLSEL_SCKINSEL_Field use
     (Orig_Flex_I2S_Signals => 0,
      Shared_Set0_I2S_Signals => 1,
      Shared_Set1_I2S_Signals => 2);

   --  Selects the source for WS going into this Flexcomm.
   type FCCTRLSEL_WSINSEL_Field is
     (
      --  Selects the dedicated (FCn_TXD_SCL_MISO_WS) function for this
      --  Flexcomm.
      Orig_Flex_I2S_Signals,
      --  WS is taken from shared signal set 0 (defined by SHAREDCTRLSET0).
      Shared_Set0_I2S_Signals,
      --  WS is taken from shared signal set 1 (defined by SHAREDCTRLSET1).
      Shared_Set1_I2S_Signals)
     with Size => 2;
   for FCCTRLSEL_WSINSEL_Field use
     (Orig_Flex_I2S_Signals => 0,
      Shared_Set0_I2S_Signals => 1,
      Shared_Set1_I2S_Signals => 2);

   --  Selects the source for DATA input to this Flexcomm.
   type FCCTRLSEL_DATAINSEL_Field is
     (
      --  Selects the dedicated FCn_RXD_SDA_MOSI_DATA input for this Flexcomm.
      Orig_Flex_I2S_Signals,
      --  Input data is taken from shared signal set 0 (defined by
      --  SHAREDCTRLSET0).
      Shared_Set0_I2S_Signals,
      --  Input data is taken from shared signal set 1 (defined by
      --  SHAREDCTRLSET1).
      Shared_Set1_I2S_Signals)
     with Size => 2;
   for FCCTRLSEL_DATAINSEL_Field use
     (Orig_Flex_I2S_Signals => 0,
      Shared_Set0_I2S_Signals => 1,
      Shared_Set1_I2S_Signals => 2);

   --  Selects the source for DATA output from this Flexcomm.
   type FCCTRLSEL_DATAOUTSEL_Field is
     (
      --  Selects the dedicated FCn_RXD_SDA_MOSI_DATA output from this
      --  Flexcomm.
      Orig_Flex_I2S_Signals,
      --  Output data is taken from shared signal set 0 (defined by
      --  SHAREDCTRLSET0).
      Shared_Set0_I2S_Signals,
      --  Output data is taken from shared signal set 1 (defined by
      --  SHAREDCTRLSET1).
      Shared_Set1_I2S_Signals)
     with Size => 2;
   for FCCTRLSEL_DATAOUTSEL_Field use
     (Orig_Flex_I2S_Signals => 0,
      Shared_Set0_I2S_Signals => 1,
      Shared_Set1_I2S_Signals => 2);

   --  Selects the source for SCK going into Flexcomm 0
   type FCCTRLSEL_Register is record
      --  Read-Write-once. Selects the source for SCK going into this Flexcomm.
      SCKINSEL       : FCCTRLSEL_SCKINSEL_Field :=
                        Interfaces.NXP.SYSCTL.Orig_Flex_I2S_Signals;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Selects the source for WS going into this Flexcomm.
      WSINSEL        : FCCTRLSEL_WSINSEL_Field :=
                        Interfaces.NXP.SYSCTL.Orig_Flex_I2S_Signals;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Selects the source for DATA input to this Flexcomm.
      DATAINSEL      : FCCTRLSEL_DATAINSEL_Field :=
                        Interfaces.NXP.SYSCTL.Orig_Flex_I2S_Signals;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Selects the source for DATA output from this Flexcomm.
      DATAOUTSEL     : FCCTRLSEL_DATAOUTSEL_Field :=
                        Interfaces.NXP.SYSCTL.Orig_Flex_I2S_Signals;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCCTRLSEL_Register use record
      SCKINSEL       at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      WSINSEL        at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DATAINSEL      at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      DATAOUTSEL     at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Selects the source for SCK going into Flexcomm 0
   type FCCTRLSEL_Registers is array (0 .. 7) of FCCTRLSEL_Register
     with Volatile;

   --  Selects the source for SCK of this shared signal set.
   type SHAREDCTRLSET_SHAREDSCKSEL_Field is
     (
      --  SCK for this shared signal set comes from Flexcomm 0.
      Flexcomm0,
      --  SCK for this shared signal set comes from Flexcomm 1.
      Flexcomm1,
      --  SCK for this shared signal set comes from Flexcomm 2.
      Flexcomm2,
      --  SCK for this shared signal set comes from Flexcomm 3.
      Flexcomm3,
      --  SCK for this shared signal set comes from Flexcomm 4.
      Flexcomm4,
      --  SCK for this shared signal set comes from Flexcomm 5.
      Flexcomm5,
      --  SCK for this shared signal set comes from Flexcomm 6.
      Flexcomm6,
      --  SCK for this shared signal set comes from Flexcomm 7.
      Flexcomm7)
     with Size => 3;
   for SHAREDCTRLSET_SHAREDSCKSEL_Field use
     (Flexcomm0 => 0,
      Flexcomm1 => 1,
      Flexcomm2 => 2,
      Flexcomm3 => 3,
      Flexcomm4 => 4,
      Flexcomm5 => 5,
      Flexcomm6 => 6,
      Flexcomm7 => 7);

   --  Selects the source for WS of this shared signal set.
   type SHAREDCTRLSET_SHAREDWSSEL_Field is
     (
      --  WS for this shared signal set comes from Flexcomm 0.
      Flexcomm0,
      --  WS for this shared signal set comes from Flexcomm 1.
      Flexcomm1,
      --  WS for this shared signal set comes from Flexcomm 2.
      Flexcomm2,
      --  WS for this shared signal set comes from Flexcomm 3.
      Flexcomm3,
      --  WS for this shared signal set comes from Flexcomm 4.
      Flexcomm4,
      --  WS for this shared signal set comes from Flexcomm 5.
      Flexcomm5,
      --  WS for this shared signal set comes from Flexcomm 6.
      Flexcomm6,
      --  WS for this shared signal set comes from Flexcomm 7.
      Flexcomm7)
     with Size => 3;
   for SHAREDCTRLSET_SHAREDWSSEL_Field use
     (Flexcomm0 => 0,
      Flexcomm1 => 1,
      Flexcomm2 => 2,
      Flexcomm3 => 3,
      Flexcomm4 => 4,
      Flexcomm5 => 5,
      Flexcomm6 => 6,
      Flexcomm7 => 7);

   --  Selects the source for DATA input for this shared signal set.
   type SHAREDCTRLSET_SHAREDDATASEL_Field is
     (
      --  DATA input for this shared signal set comes from Flexcomm 0.
      Flexcomm0,
      --  DATA input for this shared signal set comes from Flexcomm 1.
      Flexcomm1,
      --  DATA input for this shared signal set comes from Flexcomm 2.
      Flexcomm2,
      --  DATA input for this shared signal set comes from Flexcomm 3.
      Flexcomm3,
      --  DATA input for this shared signal set comes from Flexcomm 4.
      Flexcomm4,
      --  DATA input for this shared signal set comes from Flexcomm 5.
      Flexcomm5,
      --  DATA input for this shared signal set comes from Flexcomm 6.
      Flexcomm6,
      --  DATA input for this shared signal set comes from Flexcomm 7.
      Flexcomm7)
     with Size => 3;
   for SHAREDCTRLSET_SHAREDDATASEL_Field use
     (Flexcomm0 => 0,
      Flexcomm1 => 1,
      Flexcomm2 => 2,
      Flexcomm3 => 3,
      Flexcomm4 => 4,
      Flexcomm5 => 5,
      Flexcomm6 => 6,
      Flexcomm7 => 7);

   --  Controls FC0 contribution to SHAREDDATAOUT for this shared set.
   type SHAREDCTRLSET_FC0DATAOUTEN_Field is
     (
      --  Data output from FC0 does not contribute to this shared set.
      Input,
      --  Data output from FC0 does contribute to this shared set.
      Output)
     with Size => 1;
   for SHAREDCTRLSET_FC0DATAOUTEN_Field use
     (Input => 0,
      Output => 1);

   --  Controls FC1 contribution to SHAREDDATAOUT for this shared set.
   type SHAREDCTRLSET_FC1DATAOUTEN_Field is
     (
      --  Data output from FC1 does not contribute to this shared set.
      Input,
      --  Data output from FC1 does contribute to this shared set.
      Output)
     with Size => 1;
   for SHAREDCTRLSET_FC1DATAOUTEN_Field use
     (Input => 0,
      Output => 1);

   --  Controls FC2 contribution to SHAREDDATAOUT for this shared set.
   type SHAREDCTRLSET_FC2DATAOUTEN_Field is
     (
      --  Data output from FC2 does not contribute to this shared set.
      Input,
      --  Data output from FC2 does contribute to this shared set.
      Output)
     with Size => 1;
   for SHAREDCTRLSET_FC2DATAOUTEN_Field use
     (Input => 0,
      Output => 1);

   --  Controls FC4 contribution to SHAREDDATAOUT for this shared set.
   type SHAREDCTRLSET_FC4DATAOUTEN_Field is
     (
      --  Data output from FC4 does not contribute to this shared set.
      Input,
      --  Data output from FC4 does contribute to this shared set.
      Output)
     with Size => 1;
   for SHAREDCTRLSET_FC4DATAOUTEN_Field use
     (Input => 0,
      Output => 1);

   --  Controls FC5 contribution to SHAREDDATAOUT for this shared set.
   type SHAREDCTRLSET_FC5DATAOUTEN_Field is
     (
      --  Data output from FC5 does not contribute to this shared set.
      Input,
      --  Data output from FC5 does contribute to this shared set.
      Output)
     with Size => 1;
   for SHAREDCTRLSET_FC5DATAOUTEN_Field use
     (Input => 0,
      Output => 1);

   --  Controls FC6 contribution to SHAREDDATAOUT for this shared set.
   type SHAREDCTRLSET_FC6DATAOUTEN_Field is
     (
      --  Data output from FC6 does not contribute to this shared set.
      Input,
      --  Data output from FC6 does contribute to this shared set.
      Output)
     with Size => 1;
   for SHAREDCTRLSET_FC6DATAOUTEN_Field use
     (Input => 0,
      Output => 1);

   --  Controls FC7 contribution to SHAREDDATAOUT for this shared set.
   type SHAREDCTRLSET_FC7DATAOUTEN_Field is
     (
      --  Data output from FC7 does not contribute to this shared set.
      Input,
      --  Data output from FC7 does contribute to this shared set.
      Output)
     with Size => 1;
   for SHAREDCTRLSET_FC7DATAOUTEN_Field use
     (Input => 0,
      Output => 1);

   --  Selects sources and data combinations for shared signal set 0.
   type SHAREDCTRLSET_Register is record
      --  Selects the source for SCK of this shared signal set.
      SHAREDSCKSEL   : SHAREDCTRLSET_SHAREDSCKSEL_Field :=
                        Interfaces.NXP.SYSCTL.Flexcomm0;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Selects the source for WS of this shared signal set.
      SHAREDWSSEL    : SHAREDCTRLSET_SHAREDWSSEL_Field :=
                        Interfaces.NXP.SYSCTL.Flexcomm0;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Selects the source for DATA input for this shared signal set.
      SHAREDDATASEL  : SHAREDCTRLSET_SHAREDDATASEL_Field :=
                        Interfaces.NXP.SYSCTL.Flexcomm0;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Controls FC0 contribution to SHAREDDATAOUT for this shared set.
      FC0DATAOUTEN   : SHAREDCTRLSET_FC0DATAOUTEN_Field :=
                        Interfaces.NXP.SYSCTL.Input;
      --  Controls FC1 contribution to SHAREDDATAOUT for this shared set.
      FC1DATAOUTEN   : SHAREDCTRLSET_FC1DATAOUTEN_Field :=
                        Interfaces.NXP.SYSCTL.Input;
      --  Controls FC2 contribution to SHAREDDATAOUT for this shared set.
      FC2DATAOUTEN   : SHAREDCTRLSET_FC2DATAOUTEN_Field :=
                        Interfaces.NXP.SYSCTL.Input;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Controls FC4 contribution to SHAREDDATAOUT for this shared set.
      FC4DATAOUTEN   : SHAREDCTRLSET_FC4DATAOUTEN_Field :=
                        Interfaces.NXP.SYSCTL.Input;
      --  Controls FC5 contribution to SHAREDDATAOUT for this shared set.
      FC5DATAOUTEN   : SHAREDCTRLSET_FC5DATAOUTEN_Field :=
                        Interfaces.NXP.SYSCTL.Input;
      --  Controls FC6 contribution to SHAREDDATAOUT for this shared set.
      FC6DATAOUTEN   : SHAREDCTRLSET_FC6DATAOUTEN_Field :=
                        Interfaces.NXP.SYSCTL.Input;
      --  Controls FC7 contribution to SHAREDDATAOUT for this shared set.
      FC7DATAOUTEN   : SHAREDCTRLSET_FC7DATAOUTEN_Field :=
                        Interfaces.NXP.SYSCTL.Input;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHAREDCTRLSET_Register use record
      SHAREDSCKSEL   at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SHAREDWSSEL    at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SHAREDDATASEL  at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      FC0DATAOUTEN   at 0 range 16 .. 16;
      FC1DATAOUTEN   at 0 range 17 .. 17;
      FC2DATAOUTEN   at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FC4DATAOUTEN   at 0 range 20 .. 20;
      FC5DATAOUTEN   at 0 range 21 .. 21;
      FC6DATAOUTEN   at 0 range 22 .. 22;
      FC7DATAOUTEN   at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Selects sources and data combinations for shared signal set 0.
   type SHAREDCTRLSET_Registers is array (0 .. 1) of SHAREDCTRLSET_Register
     with Volatile;

   --  USB_HS: Low voltage detection on 3.3V supply.
   type USB_HS_STATUS_USBHS_3V_NOK_Field is
     (
      --  3v3 supply is good.
      Supply_3V_Ok,
      --  3v3 supply is too low.
      Supply_3V_Low)
     with Size => 1;
   for USB_HS_STATUS_USBHS_3V_NOK_Field use
     (Supply_3V_Ok => 0,
      Supply_3V_Low => 1);

   --  Status register for USB HS
   type USB_HS_STATUS_Register is record
      --  Read-only. USB_HS: Low voltage detection on 3.3V supply.
      USBHS_3V_NOK  : USB_HS_STATUS_USBHS_3V_NOK_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_HS_STATUS_Register use record
      USBHS_3V_NOK  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  system controller
   type SYSCTL_Peripheral is record
      --  update lock out control
      UPDATELCKOUT  : aliased UPDATELCKOUT_Register;
      --  Selects the source for SCK going into Flexcomm 0
      FCCTRLSEL     : aliased FCCTRLSEL_Registers;
      --  Selects sources and data combinations for shared signal set 0.
      SHAREDCTRLSET : aliased SHAREDCTRLSET_Registers;
      --  Status register for USB HS
      USB_HS_STATUS : aliased USB_HS_STATUS_Register;
   end record
     with Volatile;

   for SYSCTL_Peripheral use record
      UPDATELCKOUT  at 16#0# range 0 .. 31;
      FCCTRLSEL     at 16#40# range 0 .. 255;
      SHAREDCTRLSET at 16#80# range 0 .. 63;
      USB_HS_STATUS at 16#100# range 0 .. 31;
   end record;

   --  system controller
   SYSCTL_Periph : aliased SYSCTL_Peripheral
     with Import, Address => System'To_Address (16#40023000#);

end Interfaces.NXP.SYSCTL;
