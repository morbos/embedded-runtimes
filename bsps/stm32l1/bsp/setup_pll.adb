------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--          Copyright (C) 2012-2016, Free Software Foundation, Inc.         --
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

pragma Ada_2012; -- To work around pre-commit check?
pragma Suppress (All_Checks);

--  This initialization procedure mainly initializes the PLLs and
--  all derived clocks.

--  with Ada.Unchecked_Conversion;

--  with Interfaces.Bit_Types;       use Interfaces, Interfaces.Bit_Types;
with Interfaces.STM32.Flash;     use Interfaces.STM32.Flash;
with Interfaces.STM32.RCC;       use Interfaces.STM32.RCC;
with Interfaces.STM32.PWR;       use Interfaces.STM32.PWR;

--  with System.BB.Parameters;       use System.BB.Parameters;
--  with System.BB.MCU_Parameters;
--  with System.BB.Board_Parameters; use System.BB.Board_Parameters;

--  with System.STM32;               use System.STM32;

procedure Setup_Pll is
   HSE_Enabled     : constant Boolean := True;  -- use high-speed ext. clock
   LSE_Enabled     : constant Boolean := True;  -- use low-speed internal clk

   Activate_PLL    : constant Boolean := True;

   procedure Initialize_Clocks;
   procedure Reset_Clocks;

   procedure Initialize_Clocks
   is
   begin
      PWR_Periph.CR.VOS := 1;
      RCC_Periph.APB1ENR.PWREN := True;
      PWR_Periph.CR.DBP := True;

      if LSE_Enabled then
         RCC_Periph.CSR.LSEON := True;
         loop
            exit when RCC_Periph.CSR.LSERDY;
         end loop;
      end if;

      if HSE_Enabled then
         RCC_Periph.CR.HSEON := True;
         RCC_Periph.CR.HSEBYP := True;
         loop
            exit when RCC_Periph.CR.HSERDY;
         end loop;
      end if;

      if Activate_PLL then
         --  Disable the main PLL before configuring it
         RCC_Periph.CR.PLLON := False;

         --  Configure the PLL clock source, multiplication and division
         --  factors
         --  24Mhz
--         RCC_Periph.CFGR :=
--           (PLLDIV => 1,
--            PLLMUL => 2,
--            PLLSRC => True,
--            HPRE   => 0,
--            others => <>);

         --  16Mhz
         RCC_Periph.CFGR :=
           (PLLDIV => 1,
            PLLMUL => 1,
            PLLSRC => True,
            HPRE   => 0,
            others => <>);

         --  32Mhz (kills the core @WFI)
--         RCC_Periph.CFGR :=
--           (PLLDIV => 2,
--            PLLMUL => 4,
--            PLLSRC => True,
--            HPRE   => 0,
--            others => <>);

         Flash_Periph.ACR.ACC64 := True;
         Flash_Periph.ACR.PRFTEN := True;
         Flash_Periph.ACR.LATENCY := True;

         RCC_Periph.CR.PLLON := True;
         loop
            exit when RCC_Periph.CR.PLLRDY;
         end loop;

         RCC_Periph.CFGR.SW := 3;

      end if;

   end Initialize_Clocks;

   ------------------
   -- Reset_Clocks --
   ------------------

   procedure Reset_Clocks is
   begin
      null;
   end Reset_Clocks;

begin
   Reset_Clocks;
   Initialize_Clocks;
end Setup_Pll;
