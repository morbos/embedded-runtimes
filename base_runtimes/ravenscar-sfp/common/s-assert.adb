------------------------------------------------------------------------------
--                                                                          --
--                          GNAT RUN-TIME COMPONENTS                        --
--                                                                          --
--                     S Y S T E M . A S S E R T I O N S                    --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--          Copyright (C) 1992-2010, Free Software Foundation, Inc.          --
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

--  This version is for restricted run times (ZFP, Ravenscar, Cert)

package body System.Assertions is

   --------------------------
   -- Raise_Assert_Failure --
   --------------------------

   procedure Raise_Assert_Failure (Msg : String) is
   begin
      raise Assert_Failure with Msg;
   end Raise_Assert_Failure;

end System.Assertions;