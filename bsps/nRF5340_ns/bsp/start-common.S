## -*- asm -*- ##############################################################
#                                                                           #
#                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                  #
#                                                                           #
#                                 C A C H E                                 #
#                                                                           #
#                               Assembly File                               #
#                                                                           #
#                      Copyright (C) 2012-2016 AdaCore                      #
#                                                                           #
#  GNAT is free software;  you can  redistribute it  and/or modify it under #
#  terms of the  GNU General Public License as published  by the Free Soft- #
#  ware  Foundation;  either version 3,  or (at your option) any later ver- #
#  sion.  GNAT is distributed in the hope that it will be useful, but WITH- #
#  OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY #
#  or FITNESS FOR A PARTICULAR PURPOSE.                                     #
#                                                                           #
#  You should have received a copy of the GNU General Public License along  #
#  with this library; see the file COPYING3. If not, see:                   #
#  <http://www.gnu.org/licenses/>.                                          #
#                                                                           #
#############################################################################

	.syntax unified
	.cpu cortex-m33
	.thumb

	.text
	.thumb_func
	.globl  is_secure
	.globl	_stm32_start_common
        .type _stm32_start_common, #function
_stm32_start_common:
        /**************/
        /* Enable FPU */
        /**************/
        movw    r0,#0xED88
        movt    r0,#0xE000
        ldr     r1,[r0]
        orr     r1,r1,#(0xF << 20)
        str     r1,[r0]
        dsb
        isb
end:
        bx      lr

	.globl  is_secure
is_secure:
	tt    r0,r0
	lsls  r0,#9		                @ move [22] upto 31 (when < 0, secure)
	cmp   r0,#0
	blt   secure_return
        mov   r0,#0
	bx    r14
secure_return:
	mov   r0,#1
	bx    r14
        .size _stm32_start_common, . - _stm32_start_common
