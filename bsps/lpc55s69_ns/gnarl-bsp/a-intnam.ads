--  Copyright (C) 2020, AdaCore
--  Copyright 2016-2019 NXP
--  All rights reserved.SPDX-License-Identifier: BSD-3-Clause
--  This spec has been automatically generated from LPC55S6x.svd
--  This is a version for the
--  LPC55S69JBD100
--  LPC55S69JBD64
--  LPC55S69JEV98
--  LPC55S66JBD100
--  LPC55S66JBD64
--  LPC55S66JEV98
--  MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt            : constant Interrupt_ID := -1;
   WDT_BOD_Interrupt             : constant Interrupt_ID := 0;
   DMA0_Interrupt                : constant Interrupt_ID := 1;
   GINT0_Interrupt               : constant Interrupt_ID := 2;
   GINT1_Interrupt               : constant Interrupt_ID := 3;
   PIN_INT0_Interrupt            : constant Interrupt_ID := 4;
   PIN_INT1_Interrupt            : constant Interrupt_ID := 5;
   PIN_INT2_Interrupt            : constant Interrupt_ID := 6;
   PIN_INT3_Interrupt            : constant Interrupt_ID := 7;
   UTICK0_Interrupt              : constant Interrupt_ID := 8;
   MRT0_Interrupt                : constant Interrupt_ID := 9;
   CTIMER0_Interrupt             : constant Interrupt_ID := 10;
   CTIMER1_Interrupt             : constant Interrupt_ID := 11;
   SCT0_Interrupt                : constant Interrupt_ID := 12;
   CTIMER3_Interrupt             : constant Interrupt_ID := 13;
   FLEXCOMM0_Interrupt           : constant Interrupt_ID := 14;
   FLEXCOMM1_Interrupt           : constant Interrupt_ID := 15;
   FLEXCOMM2_Interrupt           : constant Interrupt_ID := 16;
   FLEXCOMM3_Interrupt           : constant Interrupt_ID := 17;
   FLEXCOMM4_Interrupt           : constant Interrupt_ID := 18;
   FLEXCOMM5_Interrupt           : constant Interrupt_ID := 19;
   FLEXCOMM6_Interrupt           : constant Interrupt_ID := 20;
   FLEXCOMM7_Interrupt           : constant Interrupt_ID := 21;
   ADC0_Interrupt                : constant Interrupt_ID := 22;
   USB0_NEEDCLK_Interrupt        : constant Interrupt_ID := 27;
   USB0_Interrupt                : constant Interrupt_ID := 28;
   RTC_Interrupt                 : constant Interrupt_ID := 29;
   MAILBOX_Interrupt             : constant Interrupt_ID := 31;
   PIN_INT4_Interrupt            : constant Interrupt_ID := 32;
   PIN_INT5_Interrupt            : constant Interrupt_ID := 33;
   PIN_INT6_Interrupt            : constant Interrupt_ID := 34;
   PIN_INT7_Interrupt            : constant Interrupt_ID := 35;
   CTIMER2_Interrupt             : constant Interrupt_ID := 36;
   CTIMER4_Interrupt             : constant Interrupt_ID := 37;
   OS_EVENT_Interrupt            : constant Interrupt_ID := 38;
   SDIO_Interrupt                : constant Interrupt_ID := 42;
   USB1_PHY_Interrupt            : constant Interrupt_ID := 46;
   USB1_Interrupt                : constant Interrupt_ID := 47;
   USB1_NEEDCLK_Interrupt        : constant Interrupt_ID := 48;
   SEC_GPIO_INT0_IRQ0_Interrupt  : constant Interrupt_ID := 50;
   SEC_GPIO_INT0_IRQ1_Interrupt  : constant Interrupt_ID := 51;
   PLU_Interrupt                 : constant Interrupt_ID := 52;
   HASHCRYPT_Interrupt           : constant Interrupt_ID := 54;
   PUF_Interrupt                 : constant Interrupt_ID := 56;
   DMA1_Interrupt                : constant Interrupt_ID := 58;
   FLEXCOMM8_Interrupt           : constant Interrupt_ID := 59;

end Ada.Interrupts.Names;
