## -*- asm -*- ##############################################################
#                                                                           #
#                 GNAT RUN-TIME LIBRARY (GNARL) COMPONENTS                  #
#                                                                           #
#                                 S T A R T                                 #
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
	.cpu cortex-m0
	.thumb

	.section .vectors,"a"
__vectors0:
	.word   __stack_end /* stack top address */
	.word   _start_ram  /* 1 Reset */
	.word   hang        /* 2 NMI */
	.word   hang        /* 3 HardFault */
	.word   hang        /* 4 MemManage */

	.text

	.thumb_func
	.globl _start_ram
_start_ram:
	/* Init stack */
	ldr	r0,=.LinitSp
	mov	sp,r0

        /* Enable FPU and cache when appropriate */
        bl _stm32_start_common

	/* Clear .bss */
	ldr	r0,=__bss_start
	ldr	r1,=__bss_words
	movs	r2,#0
	cmp	r1,#0
	beq	1f
0:	str	r2,[r0]
	adds	r0,r0,#4
	subs	r1,r1,#1
	bne	0b

1:
	bl	_ada_setup_pll
	bl	main

	bl	_exit

hang:   b .

.LinitSp:
	.word __stack_end
