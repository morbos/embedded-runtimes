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
	.cpu cortex-m0plus
	.thumb

.section .boot2, "ax"
.byte 0x00, 0xb5, 0x32, 0x4b, 0x21, 0x20, 0x58, 0x60, 0x98, 0x68, 0x02, 0x21, 0x88, 0x43, 0x98, 0x60
.byte 0xd8, 0x60, 0x18, 0x61, 0x58, 0x61, 0x2e, 0x4b, 0x00, 0x21, 0x99, 0x60, 0x02, 0x21, 0x59, 0x61
.byte 0x01, 0x21, 0xf0, 0x22, 0x99, 0x50, 0x2b, 0x49, 0x19, 0x60, 0x01, 0x21, 0x99, 0x60, 0x35, 0x20
.byte 0x00, 0xf0, 0x44, 0xf8, 0x02, 0x22, 0x90, 0x42, 0x14, 0xd0, 0x06, 0x21, 0x19, 0x66, 0x00, 0xf0
.byte 0x34, 0xf8, 0x19, 0x6e, 0x01, 0x21, 0x19, 0x66, 0x00, 0x20, 0x18, 0x66, 0x1a, 0x66, 0x00, 0xf0
.byte 0x2c, 0xf8, 0x19, 0x6e, 0x19, 0x6e, 0x19, 0x6e, 0x05, 0x20, 0x00, 0xf0, 0x2f, 0xf8, 0x01, 0x21
.byte 0x08, 0x42, 0xf9, 0xd1, 0x00, 0x21, 0x99, 0x60, 0x1b, 0x49, 0x19, 0x60, 0x00, 0x21, 0x59, 0x60
.byte 0x1a, 0x49, 0x1b, 0x48, 0x01, 0x60, 0x01, 0x21, 0x99, 0x60, 0xeb, 0x21, 0x19, 0x66, 0xa0, 0x21
.byte 0x19, 0x66, 0x00, 0xf0, 0x12, 0xf8, 0x00, 0x21, 0x99, 0x60, 0x16, 0x49, 0x14, 0x48, 0x01, 0x60
.byte 0x01, 0x21, 0x99, 0x60, 0x01, 0xbc, 0x00, 0x28, 0x00, 0xd0, 0x00, 0x47, 0x12, 0x48, 0x13, 0x49
.byte 0x08, 0x60, 0x03, 0xc8, 0x80, 0xf3, 0x08, 0x88, 0x08, 0x47, 0x03, 0xb5, 0x99, 0x6a, 0x04, 0x20
.byte 0x01, 0x42, 0xfb, 0xd0, 0x01, 0x20, 0x01, 0x42, 0xf8, 0xd1, 0x03, 0xbd, 0x02, 0xb5, 0x18, 0x66
.byte 0x18, 0x66, 0xff, 0xf7, 0xf2, 0xff, 0x18, 0x6e, 0x18, 0x6e, 0x02, 0xbd, 0x00, 0x00, 0x02, 0x40
.byte 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x07, 0x00, 0x00, 0x03, 0x5f, 0x00, 0x21, 0x22, 0x00, 0x00
.byte 0xf4, 0x00, 0x00, 0x18, 0x22, 0x20, 0x00, 0xa0, 0x00, 0x01, 0x00, 0x10, 0x08, 0xed, 0x00, 0xe0
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74, 0xb2, 0x4e, 0x7a

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
@	movs	r0,#1
@spin:
@	cmp	r0,#0
@	bne	spin
	/* Copy .data */
	ldr	r0,=__data_start
@	movw	r0,#:lower16:__data_start
@	movt	r0,#:upper16:__data_start
	ldr	r1,=__data_words
@	movw	r1,#:lower16:__data_words
@	movw	r2,#:lower16:__data_load
@	movt	r2,#:upper16:__data_load
	ldr	r2,=__data_load
	cmp	r1,#0
	beq	1f
@	cbz	r1,1f
0:	ldr	r4,[r2]
	adds	r2,r2,#4
	str	r4,[r0]
	adds	r0,r0,#4
	subs	r1,r1,#1
	bne	0b
1:
	/* Copy .ccmdata */
@	movw	r0,#:lower16:__ccmdata_start
@	movt	r0,#:upper16:__ccmdata_start
	ldr	r0,=__ccmdata_start
@	movw	r1,#:lower16:__ccmdata_words
	ldr	r0,=__ccmdata_words
@	movw	r2,#:lower16:__ccmdata_load
@	movt	r2,#:upper16:__ccmdata_load
	ldr	r2,=__ccmdata_load
	@	cbz	r1,1f
	cmp	r1,#0
	beq	1f
0:	ldr	r4,[r2]
	adds	r2,r2,#4
	str	r4,[r0]
	adds	r0,r0,#4
	subs	r1,r1,#1
	bne	0b
1:
	/* Clear .bss */
@	movw	r0,#:lower16:__bss_start
@	movt	r0,#:upper16:__bss_start
	ldr	r0,=__bss_start
@	movw	r1,#:lower16:__bss_words
	ldr	r1,=__bss_words
	movs	r2,#0
	@	cbz	r1,1f
	cmp	r1,#0
	beq	1f
0:	str	r2,[r0]
	adds	r0,r0,#4
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

	ldr	r1,=0xe000ed98
	ldr	r3,=0xe000ed9c
	ldr	r4,=0xe000eda0
	ldr	r5,=0xe000ed94
	@ Region 0 - No access the entire SoC (low pri)
        movs    r2, #0

	str	r2,[r1]  	@ region index0
	ldr	r2,=0x00000000
	str	r2,[r3]	        @ region base 0x00000000
        ldr     r2,=(No_Access << 24) | XN | (Region_4G << 1) | Region_Enable
	str	r2,[r4]

	@ Region 1 - flash
        movs     r2, #1
	str	r2,[r1]	         @ region index1
	ldr	r2,=0x10000000
	str	r2,[r3]	@ region base 0x10000000
	@@ Flash is allowed to exec
        ldr     r2,=(Read_Only << 24) | (Region_2M << 1) | Region_Enable
	str	r2,[r4]

	@ Region 2 - RAM
        movs     r2, #2
	str	r2,[r1]	@ region index2
	ldr	r2,=0x20000000
	str	r2,[r3]
        ldr     r2,=(Full_Access << 24) | XN | (Region_512K << 1) | Region_Enable
	str	r2,[r4]

	@ Region 3 - Device
        movs     r2, #3
	str	r2,[r1]	@ region index3
	ldr	r2,=0x40000000
	str	r2,[r3]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_512M << 1) | Region_Enable
	str	r2,[r4]

	@ Region 4 - Device
        movs     r2, #4
	str	r2,[r1]	@ region index4
	ldr	r2,=0x50000000
	str	r2,[r3]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_512K << 1) | Region_Enable
	str	r2,[r4]

	@ Region 5 - Device
        movs     r2, #5
	str	r2,[r1]	@ region index5
	ldr	r2,=0xe0000000
	str	r2,[r3]
        ldr     r2,=(Full_Access << 24) | Device_Space | (Region_64K << 1) | Region_Enable
	str	r2,[r4]

	@@ Enable the MPU
	movs	r2,#1
        dsb
	str	r2,[r5]
	isb

@	bl	_ada_setup_pll
	bl	main

	bl	_exit

hang:   b .

	.globl __sync_lock_test_and_set_1
__sync_lock_test_and_set_1:
	bx	r14
