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

--  with Interfaces.Bit_Types;     use Interfaces.Bit_Types;
with Interfaces.STM32.RCC;     use Interfaces.STM32.RCC;
with Interfaces.STM32.GPIO;    use Interfaces.STM32.GPIO;
with Interfaces.STM32.USART;   use Interfaces.STM32.USART;
with System.STM32;             use System.STM32;
--  with System.BB.Parameters;

package body System.Text_IO is

--   Baudrate : constant := 115_200;
   --  Bitrate to use

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      null;
   end Initialize;

   -----------------
   -- Is_Tx_Ready --
   -----------------

   function Is_Tx_Ready return Boolean is
     (USART1_Periph.ISR.TC);

   -----------------
   -- Is_Rx_Ready --
   -----------------

   function Is_Rx_Ready return Boolean is
     (USART1_Periph.ISR.RXNE);

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
