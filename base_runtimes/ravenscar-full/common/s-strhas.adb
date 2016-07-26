------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                    S Y S T E M . S T R I N G _ H A S H                   --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2009-2016, Free Software Foundation, Inc.         --
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

pragma Compiler_Unit_Warning;

package body System.String_Hash is

   --  Compute a hash value for a key. The approach here follows the algorithm
   --  introduced in the ndbm substitute SDBM by Ozan Yigit and then reused in
   --  GNU Awk (where they are implemented as a Duff's device).

   ----------
   -- Hash --
   ----------

   function Hash (Key : Key_Type) return Hash_Type is

      pragma Compile_Time_Error
        (Hash_Type'Modulus /= 2 ** 32
          or else Hash_Type'First /= 0
          or else Hash_Type'Last /= 2 ** 32 - 1,
         "Hash_Type must be 32-bit modular with range 0 .. 2**32-1");

      function Shift_Left
        (Value  : Hash_Type;
         Amount : Natural) return Hash_Type;
      pragma Import (Intrinsic, Shift_Left);

      H : Hash_Type;

   begin
      H := 0;
      for J in Key'Range loop
         H := Char_Type'Pos (Key (J))
                + Shift_Left (H, 6) + Shift_Left (H, 16) - H;
      end loop;

      return H;
   end Hash;

end System.String_Hash;
