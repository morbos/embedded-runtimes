------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                       S Y S T E M . T E X T _ I O                        --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--          Copyright (C) 1992-2016, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- You should have received a copy of the GNU General Public License along  --
-- with this library; see the file COPYING3. If not, see:                   --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  Minimal version of Text_IO body for use on STM32F7x, using USART6.
--  Serial interface is available via the arduino port of the board:
--  PIN D4 (PB7 GPIO): USART1_TX
--  PIN D5 (PB6 GPIO): USART1_RX

with Interfaces; use Interfaces;

with Interfaces.Bit_Types;   use Interfaces.Bit_Types;
with Interfaces.STM32.RCC;   use Interfaces.STM32.RCC;
with Interfaces.STM32.GPIO;  use Interfaces.STM32.GPIO;
with Interfaces.STM32.USART; use Interfaces.STM32.USART;
with System.STM32;           use System.STM32;
with System.BB.Parameters;

package body System.Text_IO is

   Baudrate : constant := 115_200;
   --  Bitrate to use

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
      use System.BB.Parameters;

      APB_Clock    : constant Positive := Positive (STM32.System_Clocks.PCLK2);
      Divider      : constant Word := (Word (APB_Clock) / Word (Baudrate));

   begin
      Initialized := True;

      RCC_Periph.APB2ENR.USART1EN := 1;
      RCC_Periph.AHB2ENR.GPIOAEN  := 1;

      GPIOA_Periph.MODER.Arr     (9 .. 10) := (Mode_AF,     Mode_AF);
      GPIOA_Periph.OSPEEDR.Arr   (9 .. 10) := (Speed_50MHz, Speed_50MHz);
      GPIOA_Periph.OTYPER.OT.Arr (9 .. 10) := (Push_Pull,   Push_Pull);
      GPIOA_Periph.PUPDR.Arr     (9 .. 10) := (Pull_Up,     Pull_Up);
      GPIOA_Periph.AFRH.Arr      (9 .. 10) := (AF_USART1, AF_USART1);

      USART1_Periph.BRR :=
        (DIV_Fraction => UInt4  (Divider and 16#f#),
         DIV_Mantissa => UInt12 (Shift_Right (Divider, 4)),
         others => <>);
      USART1_Periph.CR1 :=
        (UE => 1,
         RE => 1,
         TE => 1,
         others => <>);
      USART1_Periph.CR2 := (others => <>);
      USART1_Periph.CR3 := (others => <>);
   end Initialize;

   -----------------
   -- Is_Tx_Ready --
   -----------------

   function Is_Tx_Ready return Boolean is
     (USART1_Periph.ISR.TC = 1);

   -----------------
   -- Is_Rx_Ready --
   -----------------

   function Is_Rx_Ready return Boolean is
     (USART1_Periph.ISR.RXNE = 1);

   ---------
   -- Get --
   ---------

   function Get return Character is (Character'Val (USART1_Periph.RDR.RDR));

   ---------
   -- Put --
   ---------

   procedure Put (C : Character) is
   begin
      USART1_Periph.TDR.TDR := Character'Pos (C);
   end Put;

   ----------------------------
   -- Use_Cr_Lf_For_New_Line --
   ----------------------------

   function Use_Cr_Lf_For_New_Line return Boolean is (True);

end System.Text_IO;
