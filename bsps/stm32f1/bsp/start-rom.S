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
	.cpu cortex-m3
	.thumb

	/* This is the initial vector table and also the one that is used by
	   the zfp runtime. Ravenscar runtimes install its own table (using
	   VTOR register) defined in handler.S.  */
	.section .vectors,"a"
__vectors0:
	.word   __stack_end /* stack top address */
	.word   _start_rom  /* 1 Reset */
	.word   hang        /* 2 NMI */
	.word   hang        /* 3 HardFault */
	.word   hang        /* 4 MemManage */
	.globl	local_id
local_id:
	.word	0xfacefeed  /* ID to be filled in */

	.text

	.thumb_func
	.globl _start_rom
_start_rom:
	/* Copy .data */
	movw	r0,#:lower16:__data_start
	movt	r0,#:upper16:__data_start
	movw	r1,#:lower16:__data_words
	movw	r2,#:lower16:__data_load
	movt	r2,#:upper16:__data_load
	cbz	r1,1f
0:	ldr	r4,[r2],#4
	str	r4,[r0],#4
	subs	r1,r1,#1
	bne	0b
1:
	/* Copy .ccmdata */
	movw	r0,#:lower16:__ccmdata_start
	movt	r0,#:upper16:__ccmdata_start
	movw	r1,#:lower16:__ccmdata_words
	movw	r2,#:lower16:__ccmdata_load
	movt	r2,#:upper16:__ccmdata_load
	cbz	r1,1f
0:	ldr	r4,[r2],#4
	str	r4,[r0],#4
	subs	r1,r1,#1
	bne	0b
1:
	/* Clear .bss */
	movw	r0,#:lower16:__bss_start
	movt	r0,#:upper16:__bss_start
	movw	r1,#:lower16:__bss_words
	mov	r2,#0
	cbz	r1,1f
0:	str	r2,[r0],#4
	subs	r1,r1,#1
	bne	0b

1:

	@ Setup MPU

@ MPU region defines

Region_32B     = 0b00100
Region_64B     = 0b00101
Region_128B    = 0b00110
Region_256B    = 0b00111
Region_512B    = 0b01000
Region_1K      = 0b01001
Region_2K      = 0b01010
Region_4K      = 0b01011
Region_8K      = 0b01100
Region_16K     = 0b01101
Region_32K     = 0b01110
Region_64K     = 0b01111
Region_128K    = 0b10000
Region_256K    = 0b10001
Region_512K    = 0b10010
Region_1M      = 0b10011
Region_2M      = 0b10100
Region_4M      = 0b10101
Region_8M      = 0b10110
Region_16M     = 0b10111
Region_32M     = 0b11000
Region_64M     = 0b11001
Region_128M    = 0b11010
Region_256M    = 0b11011
Region_512M    = 0b11100
Region_1G      = 0b11101
Region_2G      = 0b11110
Region_4G      = 0b11111

XN	      = (1 << 28)
Device_Space  = (1 << 17)
Region_Enable =	1
No_Access     = 0
Full_Access   = 0x3
Read_Only     = 0b110

	ldr	r1,=0xe000ed00
	@ Region 0 - No access the entire SoC (low pri)
        mov     r2, #0
	str	r2,[r1,#0x98]	@ region index0
	ldr	r2,=0x00000000
	str	r2,[r1,#0x9c]	@ region base 0x00000000
        ldr     r2,=(No_Access << 24) | XN | (Region_4G << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 1 - flash
        mov     r2, #1
	str	r2,[r1,#0x98]	@ region index1
	ldr	r2,=0x08000000
	str	r2,[r1,#0x9c]	@ region base 0x08000000
	@@ Flash is allowed to exec
        ldr     r2,=(Read_Only << 24) | (Region_128K << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 2 - RAM
        mov     r2, #2
	str	r2,[r1,#0x98]	@ region index2
	ldr	r2,=0x20000000
	str	r2,[r1,#0x9c]
        ldr     r2,=(Full_Access << 24) | XN | (Region_32K << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 3 - Device
        mov     r2, #3
	str	r2,[r1,#0x98]	@ region index3
	ldr	r2,=0x40000000
	str	r2,[r1,#0x9c]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_512M << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 4 - Device
        mov     r2, #4
	str	r2,[r1,#0x98]	@ region index4
	ldr	r2,=0x50000000
	str	r2,[r1,#0x9c]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_512K << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@ Region 5 - Device
        mov     r2, #5
	str	r2,[r1,#0x98]	@ region index5
	ldr	r2,=0xe0000000
	str	r2,[r1,#0x9c]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_64K << 1) | Region_Enable
	str	r2,[r1,#0xa0]

	@@ Enable the MPU
	mov	r2,#1
        dsb
	str	r2,[r1,#0x94]
	isb

	bl	_ada_setup_pll
	bl	main

	bl	_exit

hang:   b .
