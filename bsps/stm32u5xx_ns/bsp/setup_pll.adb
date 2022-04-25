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

with Interfaces.Bit_Types;       use Interfaces, Interfaces.Bit_Types;
with Interfaces.STM32.Flash;     use Interfaces.STM32.Flash;
with Interfaces.STM32.RCC;       use Interfaces.STM32.RCC;
with Interfaces.STM32.PWR;       use Interfaces.STM32.PWR;
--  with Interfaces.STM32.ICache;    use Interfaces.STM32.ICache;
--  with Interfaces.STM32.DCACHE;    use Interfaces.STM32.DCACHE;

--  with System.BB.Parameters;       use System.BB.Parameters;
--  with System.BB.MCU_Parameters;
with System.BB.Board_Parameters; use System.BB.Board_Parameters;
--  with System.STM32;               use System.STM32;

procedure Setup_Pll is
   procedure Initialize_Clocks;
   procedure Reset_Clocks;
   procedure CPU_Init;

--   MSI_Enabled        : constant Boolean := True;
   Activate_PLL       : constant Boolean := True;
   HSI48_Enabled      : constant Boolean := True;  -- For RNG

   -----------------------
   -- Initialize_Clocks --
   -----------------------

   procedure Initialize_Clocks is
   begin

      --  MSI is PoR on, we will use that

--      if MSI_Enabled then

      RCC_Periph.RCC_ICSCR1.MSIRGSEL := True;

--         RCC_Periph.RCC_CR.MSIKON := True;

--         loop
--            exit when RCC_Periph.RCC_CR.MSIKRDY;
--         end loop;
--      end if;
      RCC_Periph.RCC_CR.MSIKON := False;

      if HSI48_Enabled then
         --  Setup internal clock and wait for HSI stabilisation.

         RCC_Periph.RCC_CR.HSI48ON := True;

         loop
            exit when RCC_Periph.RCC_CR.HSI48RDY;
         end loop;

      end if;

      --  Flash prefetch and latency
      FLASH_Periph.FLASH_ACR.PRFTEN  := True;
      FLASH_Periph.FLASH_ACR.LATENCY := FLASH_Latency;

      --  Activate PLL if enabled
      if Activate_PLL then
         --  Disable the main PLL before configuring it
         RCC_Periph.RCC_CR.PLL1ON := False;

         --  Configure the PLL clock source, multiplication and division
         --  factors
         RCC_Periph.RCC_PLL1CFGR :=
           (PLL1REN    => True,
            PLL1FRACEN => True,
            PLL1SRC    => 1, --  MSIS (dft: 4Mhz)
            others     => <>);

         RCC_Periph.RCC_PLL1DIVR :=
           (PLL1N   => 16#4F#,
            others  => <>);

         RCC_Periph.RCC_CR.PLL1ON := True;
         loop
            exit when RCC_Periph.RCC_CR.PLL1RDY;
         end loop;

         --  Fix the power before moving to PLL
         RCC_Periph.RCC_AHB3ENR.PWREN := True;
         --  Ask for more volts
         PWR_Periph.PWR_VOSR.VOS := 3;
         loop
            exit when PWR_Periph.PWR_VOSR.VOSRDY;
         end loop;

         --  boost is needed when clk > 55Mhz. Get that ready
         PWR_Periph.PWR_VOSR.BOOSTEN := True;
         loop
            exit when PWR_Periph.PWR_VOSR.BOOSTRDY;
         end loop;

         RCC_Periph.RCC_CFGR1 :=
           (SW         => 3, --  PLL
            others     => <>);

         loop
            exit when RCC_Periph.RCC_CFGR1.SWS = 3;
         end loop;

         --  Enable caches
--         ICache_Periph.ICACHE_CR.CACHEINV := True;
--         ICache_Periph.ICACHE_CR.EN := True;
--         DCACHE_Periph.DCACHE_CR.EN := True;

      end if;

   end Initialize_Clocks;

   ------------------
   -- Reset_Clocks --
   ------------------

   procedure Reset_Clocks is
   begin
      null;
   end Reset_Clocks;

   procedure CPU_Init is
   begin
      RCC_Periph.RCC_AHB1SMENR.ICACHESMEN := True;
      RCC_Periph.RCC_AHB1ENR.DCACHE1EN := True;
   end CPU_Init;

begin
   CPU_Init;
   Reset_Clocks;
   Initialize_Clocks;
end Setup_Pll;
