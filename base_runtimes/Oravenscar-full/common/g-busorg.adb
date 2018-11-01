------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                   G N A T . B U B B L E _ S O R T _ G                    --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                     Copyright (C) 1995-2010, AdaCore                     --
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

package body GNAT.Bubble_Sort_G is

   ----------
   -- Sort --
   ----------

   procedure Sort (N : Natural) is
      Switched : Boolean;

   begin
      loop
         Switched := False;

         for J in 1 .. N - 1 loop
            if Lt (J + 1, J) then
               Move (J, 0);
               Move (J + 1, J);
               Move (0, J + 1);
               Switched := True;
            end if;
         end loop;

         exit when not Switched;
      end loop;
   end Sort;

end GNAT.Bubble_Sort_G;
