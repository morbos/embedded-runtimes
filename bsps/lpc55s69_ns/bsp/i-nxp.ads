--
--  Copyright (C) 2020, AdaCore
--

--  Copyright 2016-2019 NXP
--  All rights reserved.SPDX-License-Identifier: BSD-3-Clause

--  This spec has been automatically generated from LPC55S6x.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  LPC55S69JBD100
--  LPC55S69JBD64
--  LPC55S69JEV98
--  LPC55S66JBD100
--  LPC55S66JBD64
--  LPC55S66JEV98
package Interfaces.NXP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   --------------------
   -- Base addresses --
   --------------------

   FLASH_CFPA0_Base : constant System.Address :=
     System'To_Address (16#9E000#);
   FLASH_CFPA_SCRATCH_Base : constant System.Address :=
     System'To_Address (16#9DE00#);
   FLASH_CFPA1_Base : constant System.Address :=
     System'To_Address (16#9E200#);
   FLASH_CMPA_Base : constant System.Address :=
     System'To_Address (16#9E400#);
   FLASH_KEY_STORE_Base : constant System.Address :=
     System'To_Address (16#9E600#);
   SYSCON_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   IOCON_Base : constant System.Address :=
     System'To_Address (16#40001000#);
   GINT0_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   GINT1_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   PINT_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   SECPINT_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   INPUTMUX_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   CTIMER0_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   CTIMER1_Base : constant System.Address :=
     System'To_Address (16#40009000#);
   CTIMER2_Base : constant System.Address :=
     System'To_Address (16#40028000#);
   CTIMER3_Base : constant System.Address :=
     System'To_Address (16#40029000#);
   CTIMER4_Base : constant System.Address :=
     System'To_Address (16#4002A000#);
   WWDT_Base : constant System.Address :=
     System'To_Address (16#4000C000#);
   MRT0_Base : constant System.Address :=
     System'To_Address (16#4000D000#);
   UTICK0_Base : constant System.Address :=
     System'To_Address (16#4000E000#);
   ANACTRL_Base : constant System.Address :=
     System'To_Address (16#40013000#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#40020000#);
   SYSCTL_Base : constant System.Address :=
     System'To_Address (16#40023000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#4002C000#);
   OSTIMER_Base : constant System.Address :=
     System'To_Address (16#4002D000#);
   FLASH_Base : constant System.Address :=
     System'To_Address (16#40034000#);
   PRINCE_Base : constant System.Address :=
     System'To_Address (16#40035000#);
   USBPHY_Base : constant System.Address :=
     System'To_Address (16#40038000#);
   RNG_Base : constant System.Address :=
     System'To_Address (16#4003A000#);
   PUF_Base : constant System.Address :=
     System'To_Address (16#4003B000#);
   PLU_Base : constant System.Address :=
     System'To_Address (16#4003D000#);
   DMA0_Base : constant System.Address :=
     System'To_Address (16#40082000#);
   DMA1_Base : constant System.Address :=
     System'To_Address (16#400A7000#);
   USB0_Base : constant System.Address :=
     System'To_Address (16#40084000#);
   SCT0_Base : constant System.Address :=
     System'To_Address (16#40085000#);
   FLEXCOMM0_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   FLEXCOMM1_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   FLEXCOMM2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   FLEXCOMM3_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   FLEXCOMM4_Base : constant System.Address :=
     System'To_Address (16#4008A000#);
   FLEXCOMM5_Base : constant System.Address :=
     System'To_Address (16#40096000#);
   FLEXCOMM6_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   FLEXCOMM7_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   FLEXCOMM8_Base : constant System.Address :=
     System'To_Address (16#4009F000#);
   I2C0_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   I2C3_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   I2C4_Base : constant System.Address :=
     System'To_Address (16#4008A000#);
   I2C5_Base : constant System.Address :=
     System'To_Address (16#40096000#);
   I2C6_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   I2C7_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   I2S0_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   I2S1_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   I2S2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   I2S3_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   I2S4_Base : constant System.Address :=
     System'To_Address (16#4008A000#);
   I2S5_Base : constant System.Address :=
     System'To_Address (16#40096000#);
   I2S6_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   I2S7_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   SPI0_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   SPI1_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   SPI2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   SPI3_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   SPI4_Base : constant System.Address :=
     System'To_Address (16#4008A000#);
   SPI5_Base : constant System.Address :=
     System'To_Address (16#40096000#);
   SPI6_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   SPI7_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   SPI8_Base : constant System.Address :=
     System'To_Address (16#4009F000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   USART1_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   USART4_Base : constant System.Address :=
     System'To_Address (16#4008A000#);
   USART5_Base : constant System.Address :=
     System'To_Address (16#40096000#);
   USART6_Base : constant System.Address :=
     System'To_Address (16#40097000#);
   USART7_Base : constant System.Address :=
     System'To_Address (16#40098000#);
   MAILBOX_Base : constant System.Address :=
     System'To_Address (16#4008B000#);
   GPIO_Base : constant System.Address :=
     System'To_Address (16#4008C000#);
   USBHSD_Base : constant System.Address :=
     System'To_Address (16#40094000#);
   CRC_ENGINE_Base : constant System.Address :=
     System'To_Address (16#40095000#);
   SDIF_Base : constant System.Address :=
     System'To_Address (16#4009B000#);
   DBGMAILBOX_Base : constant System.Address :=
     System'To_Address (16#4009C000#);
   ADC0_Base : constant System.Address :=
     System'To_Address (16#400A0000#);
   USBFSH_Base : constant System.Address :=
     System'To_Address (16#400A2000#);
   USBHSH_Base : constant System.Address :=
     System'To_Address (16#400A3000#);
   HASHCRYPT_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   CASPER_Base : constant System.Address :=
     System'To_Address (16#400A5000#);
   POWERQUAD_Base : constant System.Address :=
     System'To_Address (16#400A6000#);
   SECGPIO_Base : constant System.Address :=
     System'To_Address (16#400A8000#);
   AHB_SECURE_CTRL_Base : constant System.Address :=
     System'To_Address (16#400AC000#);

end Interfaces.NXP;
