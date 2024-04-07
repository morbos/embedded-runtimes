--
--  Copyright (C) 2024, AdaCore
--

--  This spec has been automatically generated from STM32U073.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.USART is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype USART_CR1_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype USART_CR1_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  USART control register 1
   type USART_CR1_Register is record
      --  USART enable When this bit is cleared, the USART prescalers and
      --  outputs are stopped immediately, and all current operations are
      --  discarded. The USART configuration is kept, but all the USART_ISR
      --  status flags are reset. This bit is set and cleared by software.
      --  Note: To enter low-power mode without generating errors on the line,
      --  the TE bit must be previously reset and the software must wait for
      --  the TC bit in the USART_ISR to be set before resetting the UE bit.
      --  Note: The DMA requests are also reset when UE = 0 so the DMA channel
      --  must be disabled before resetting the UE bit. Note: In Smartcard
      --  mode, (SCEN = 1), the CK is always available when CLKEN = 1,
      --  regardless of the UE bit value.
      UE      : Boolean := False;
      --  USART enable in low-power mode When this bit is cleared, the USART
      --  cannot wake up the MCU from low-power mode. When this bit is set, the
      --  USART can wake up the MCU from low-power mode. This bit is set and
      --  cleared by software. Note: It is recommended to set the UESM bit just
      --  before entering low-power mode, and clear it when exiting low-power
      --  mode.
      UESM    : Boolean := False;
      --  Receiver enable This bit enables the receiver. It is set and cleared
      --  by software.
      RE      : Boolean := False;
      --  Transmitter enable This bit enables the transmitter. It is set and
      --  cleared by software. Note: During transmission, a low pulse on the TE
      --  bit (0 followed by 1) sends a preamble (idle line) after the current
      --  word, except in Smartcard mode. In order to generate an idle
      --  character, the TE must not be immediately written to 1. To ensure the
      --  required duration, the software can poll the TEACK bit in the
      --  USART_ISR register. Note: In Smartcard mode, when TE is set, there is
      --  a 1 bit-time delay before the transmission starts.
      TE      : Boolean := False;
      --  IDLE interrupt enable This bit is set and cleared by software.
      IDLEIE  : Boolean := False;
      --  RXFIFO not empty interrupt enable This bit is set and cleared by
      --  software.
      RXFNEIE : Boolean := False;
      --  Transmission complete interrupt enable This bit is set and cleared by
      --  software.
      TCIE    : Boolean := False;
      --  TXFIFO not full interrupt enable This bit is set and cleared by
      --  software.
      TXFNFIE : Boolean := False;
      --  PE interrupt enable This bit is set and cleared by software.
      PEIE    : Boolean := False;
      --  Parity selection This bit selects the odd or even parity when the
      --  parity generation/detection is enabled (PCE bit set). It is set and
      --  cleared by software. The parity is selected after the current byte.
      --  This bitfield can only be written when the USART is disabled (UE=0).
      PS      : Boolean := False;
      --  Parity control enable This bit selects the hardware parity control
      --  (generation and detection). When the parity control is enabled, the
      --  computed parity is inserted at the MSB position (9th bit if M=1; 8th
      --  bit if M=0) and the parity is checked on the received data. This bit
      --  is set and cleared by software. Once it is set, PCE is active after
      --  the current byte (in reception and in transmission). This bitfield
      --  can only be written when the USART is disabled (UE=0).
      PCE     : Boolean := False;
      --  Receiver wake-up method This bit determines the USART wake-up method
      --  from Mute mode. It is set or cleared by software. This bitfield can
      --  only be written when the USART is disabled (UE=0).
      WAKE    : Boolean := False;
      --  Word length This bit is used in conjunction with bit 28 (M1) to
      --  determine the word length. It is set or cleared by software (refer to
      --  bit 28 (M1)description). This bit can only be written when the USART
      --  is disabled (UE=0).
      M0      : Boolean := False;
      --  Mute mode enable This bit enables the USART Mute mode function. When
      --  set, the USART can switch between active and Mute mode, as defined by
      --  the WAKE bit. It is set and cleared by software.
      MME     : Boolean := False;
      --  Character match interrupt enable This bit is set and cleared by
      --  software.
      CMIE    : Boolean := False;
      --  Oversampling mode This bit can only be written when the USART is
      --  disabled (UE=0). Note: In LIN, IrDA and Smartcard modes, this bit
      --  must be kept cleared.
      OVER8   : Boolean := False;
      --  Driver Enable deassertion time This 5-bit value defines the time
      --  between the end of the last stop bit, in a transmitted message, and
      --  the de-activation of the DE (Driver Enable) signal. It is expressed
      --  in sample time units (1/8 or 1/16 bit time, depending on the
      --  oversampling rate). If the USART_TDR register is written during the
      --  DEDT time, the new data is transmitted only when the DEDT and DEAT
      --  times have both elapsed. This bitfield can only be written when the
      --  USART is disabled (UE=0). Note: If the Driver Enable feature is not
      --  supported, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      DEDT    : USART_CR1_DEDT_Field := 16#0#;
      --  Driver Enable assertion time This 5-bit value defines the time
      --  between the activation of the DE (Driver Enable) signal and the
      --  beginning of the start bit. It is expressed in sample time units (1/8
      --  or 1/16 bit time, depending on the oversampling rate). This bitfield
      --  can only be written when the USART is disabled (UE=0). Note: If the
      --  Driver Enable feature is not supported, this bit is reserved and must
      --  be kept at reset value. Refer to Section131.4: USART implementation
      --  on page1826.
      DEAT    : USART_CR1_DEAT_Field := 16#0#;
      --  Receiver timeout interrupt enable This bit is set and cleared by
      --  software. Note: If the USART does not support the Receiver timeout
      --  feature, this bit is reserved and must be kept at reset value.
      --  Section131.4: USART implementation on page1826.
      RTOIE   : Boolean := False;
      --  End of Block interrupt enable This bit is set and cleared by
      --  software. Note: If the USART does not support Smartcard mode, this
      --  bit is reserved and must be kept at reset value. Refer to
      --  Section131.4: USART implementation on page1826.
      EOBIE   : Boolean := False;
      --  Word length This bit must be used in conjunction with bit 12 (M0) to
      --  determine the word length. It is set or cleared by software. M[1:0] =
      --  00: 1 start bit, 8 Data bits, n Stop bit M[1:0] = 01: 1 start bit, 9
      --  Data bits, n Stop bit M[1:0] = 10: 1 start bit, 7 Data bits, n Stop
      --  bit This bit can only be written when the USART is disabled (UE=0).
      --  Note: In 7-bits data length mode, the Smartcard mode, LIN master mode
      --  and auto baud rate (0x7F and 0x55 frames detection) are not
      --  supported.
      M1      : Boolean := False;
      --  FIFO mode enable This bit is set and cleared by software. This
      --  bitfield can only be written when the USART is disabled (UE=0). Note:
      --  FIFO mode can be used on standard UART communication, in SPI
      --  Master/Slave mode and in Smartcard modes only. It must not be enabled
      --  in IrDA and LIN modes.
      FIFOEN  : Boolean := False;
      --  TXFIFO empty interrupt enable This bit is set and cleared by
      --  software.
      TXFEIE  : Boolean := False;
      --  None
      RXFFIE  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR1_Register use record
      UE      at 0 range 0 .. 0;
      UESM    at 0 range 1 .. 1;
      RE      at 0 range 2 .. 2;
      TE      at 0 range 3 .. 3;
      IDLEIE  at 0 range 4 .. 4;
      RXFNEIE at 0 range 5 .. 5;
      TCIE    at 0 range 6 .. 6;
      TXFNFIE at 0 range 7 .. 7;
      PEIE    at 0 range 8 .. 8;
      PS      at 0 range 9 .. 9;
      PCE     at 0 range 10 .. 10;
      WAKE    at 0 range 11 .. 11;
      M0      at 0 range 12 .. 12;
      MME     at 0 range 13 .. 13;
      CMIE    at 0 range 14 .. 14;
      OVER8   at 0 range 15 .. 15;
      DEDT    at 0 range 16 .. 20;
      DEAT    at 0 range 21 .. 25;
      RTOIE   at 0 range 26 .. 26;
      EOBIE   at 0 range 27 .. 27;
      M1      at 0 range 28 .. 28;
      FIFOEN  at 0 range 29 .. 29;
      TXFEIE  at 0 range 30 .. 30;
      RXFFIE  at 0 range 31 .. 31;
   end record;

   subtype USART_CR1_ALTERNATE_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype USART_CR1_ALTERNATE_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  USART control register 1
   type USART_CR1_ALTERNATE_Register is record
      --  USART enable When this bit is cleared, the USART prescalers and
      --  outputs are stopped immediately, and all current operations are
      --  discarded. The USART configuration is kept, but all the USART_ISR
      --  status flags are reset. This bit is set and cleared by software.
      --  Note: To enter low-power mode without generating errors on the line,
      --  the TE bit must be previously reset and the software must wait for
      --  the TC bit in the USART_ISR to be set before resetting the UE bit.
      --  Note: The DMA requests are also reset when UE = 0 so the DMA channel
      --  must be disabled before resetting the UE bit. Note: In Smartcard
      --  mode, (SCEN = 1), the CK is always available when CLKEN = 1,
      --  regardless of the UE bit value.
      UE             : Boolean := False;
      --  USART enable in low-power mode When this bit is cleared, the USART
      --  cannot wake up the MCU from low-power mode. When this bit is set, the
      --  USART can wake up the MCU from low-power mode. This bit is set and
      --  cleared by software. Note: It is recommended to set the UESM bit just
      --  before entering low-power mode, and clear it when exiting low-power
      --  mode.
      UESM           : Boolean := False;
      --  Receiver enable This bit enables the receiver. It is set and cleared
      --  by software.
      RE             : Boolean := False;
      --  Transmitter enable This bit enables the transmitter. It is set and
      --  cleared by software. Note: During transmission, a low pulse on the TE
      --  bit (0 followed by 1) sends a preamble (idle line) after the current
      --  word, except in Smartcard mode. In order to generate an idle
      --  character, the TE must not be immediately written to 1. To ensure the
      --  required duration, the software can poll the TEACK bit in the
      --  USART_ISR register. Note: In Smartcard mode, when TE is set, there is
      --  a 1 bit-time delay before the transmission starts.
      TE             : Boolean := False;
      --  IDLE interrupt enable This bit is set and cleared by software.
      IDLEIE         : Boolean := False;
      --  Receive data register not empty This bit is set and cleared by
      --  software.
      RXNEIE         : Boolean := False;
      --  Transmission complete interrupt enable This bit is set and cleared by
      --  software.
      TCIE           : Boolean := False;
      --  Transmit data register empty This bit is set and cleared by software.
      TXEIE          : Boolean := False;
      --  PE interrupt enable This bit is set and cleared by software.
      PEIE           : Boolean := False;
      --  Parity selection This bit selects the odd or even parity when the
      --  parity generation/detection is enabled (PCE bit set). It is set and
      --  cleared by software. The parity is selected after the current byte.
      --  This bitfield can only be written when the USART is disabled (UE=0).
      PS             : Boolean := False;
      --  Parity control enable This bit selects the hardware parity control
      --  (generation and detection). When the parity control is enabled, the
      --  computed parity is inserted at the MSB position (9th bit if M=1; 8th
      --  bit if M=0) and the parity is checked on the received data. This bit
      --  is set and cleared by software. Once it is set, PCE is active after
      --  the current byte (in reception and in transmission). This bitfield
      --  can only be written when the USART is disabled (UE=0).
      PCE            : Boolean := False;
      --  Receiver wake-up method This bit determines the USART wake-up method
      --  from Mute mode. It is set or cleared by software. This bitfield can
      --  only be written when the USART is disabled (UE=0).
      WAKE           : Boolean := False;
      --  Word length This bit is used in conjunction with bit 28 (M1) to
      --  determine the word length. It is set or cleared by software (refer to
      --  bit 28 (M1)description). This bit can only be written when the USART
      --  is disabled (UE=0).
      M0             : Boolean := False;
      --  Mute mode enable This bit enables the USART Mute mode function. When
      --  set, the USART can switch between active and Mute mode, as defined by
      --  the WAKE bit. It is set and cleared by software.
      MME            : Boolean := False;
      --  Character match interrupt enable This bit is set and cleared by
      --  software.
      CMIE           : Boolean := False;
      --  Oversampling mode This bit can only be written when the USART is
      --  disabled (UE=0). Note: In LIN, IrDA and Smartcard modes, this bit
      --  must be kept cleared.
      OVER8          : Boolean := False;
      --  Driver Enable deassertion time This 5-bit value defines the time
      --  between the end of the last stop bit, in a transmitted message, and
      --  the de-activation of the DE (Driver Enable) signal. It is expressed
      --  in sample time units (1/8 or 1/16 bit time, depending on the
      --  oversampling rate). If the USART_TDR register is written during the
      --  DEDT time, the new data is transmitted only when the DEDT and DEAT
      --  times have both elapsed. This bitfield can only be written when the
      --  USART is disabled (UE=0). Note: If the Driver Enable feature is not
      --  supported, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      DEDT           : USART_CR1_ALTERNATE_DEDT_Field := 16#0#;
      --  Driver Enable assertion time This 5-bit value defines the time
      --  between the activation of the DE (Driver Enable) signal and the
      --  beginning of the start bit. It is expressed in sample time units (1/8
      --  or 1/16 bit time, depending on the oversampling rate). This bitfield
      --  can only be written when the USART is disabled (UE=0). Note: If the
      --  Driver Enable feature is not supported, this bit is reserved and must
      --  be kept at reset value. Refer to Section131.4: USART implementation
      --  on page1826.
      DEAT           : USART_CR1_ALTERNATE_DEAT_Field := 16#0#;
      --  Receiver timeout interrupt enable This bit is set and cleared by
      --  software. Note: If the USART does not support the Receiver timeout
      --  feature, this bit is reserved and must be kept at reset value.
      --  Section131.4: USART implementation on page1826.
      RTOIE          : Boolean := False;
      --  End of Block interrupt enable This bit is set and cleared by
      --  software. Note: If the USART does not support Smartcard mode, this
      --  bit is reserved and must be kept at reset value. Refer to
      --  Section131.4: USART implementation on page1826.
      EOBIE          : Boolean := False;
      --  Word length This bit must be used in conjunction with bit 12 (M0) to
      --  determine the word length. It is set or cleared by software. M[1:0] =
      --  00: 1 start bit, 8 Data bits, n Stop bit M[1:0] = 01: 1 start bit, 9
      --  Data bits, n Stop bit M[1:0] = 10: 1 start bit, 7 Data bits, n Stop
      --  bit This bit can only be written when the USART is disabled (UE=0).
      --  Note: In 7-bits data length mode, the Smartcard mode, LIN master mode
      --  and auto baud rate (0x7F and 0x55 frames detection) are not
      --  supported.
      M1             : Boolean := False;
      --  FIFO mode enable This bit is set and cleared by software. This
      --  bitfield can only be written when the USART is disabled (UE=0). Note:
      --  FIFO mode can be used on standard UART communication, in SPI
      --  Master/Slave mode and in Smartcard modes only. It must not be enabled
      --  in IrDA and LIN modes.
      FIFOEN         : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR1_ALTERNATE_Register use record
      UE             at 0 range 0 .. 0;
      UESM           at 0 range 1 .. 1;
      RE             at 0 range 2 .. 2;
      TE             at 0 range 3 .. 3;
      IDLEIE         at 0 range 4 .. 4;
      RXNEIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      TXEIE          at 0 range 7 .. 7;
      PEIE           at 0 range 8 .. 8;
      PS             at 0 range 9 .. 9;
      PCE            at 0 range 10 .. 10;
      WAKE           at 0 range 11 .. 11;
      M0             at 0 range 12 .. 12;
      MME            at 0 range 13 .. 13;
      CMIE           at 0 range 14 .. 14;
      OVER8          at 0 range 15 .. 15;
      DEDT           at 0 range 16 .. 20;
      DEAT           at 0 range 21 .. 25;
      RTOIE          at 0 range 26 .. 26;
      EOBIE          at 0 range 27 .. 27;
      M1             at 0 range 28 .. 28;
      FIFOEN         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype USART_CR2_STOP_Field is Interfaces.Bit_Types.UInt2;
   subtype USART_CR2_ABRMOD_Field is Interfaces.Bit_Types.UInt2;
   subtype USART_CR2_ADD_Field is Interfaces.Bit_Types.Byte;

   --  USART control register 2
   type USART_CR2_Register is record
      --  Synchronous Slave mode enable When the SLVEN bit is set, the
      --  Synchronous slave mode is enabled. Note: When SPI slave mode is not
      --  supported, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      SLVEN        : Boolean := False;
      --  unspecified
      Reserved_1_2 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  When the DIS_NSS bit is set, the NSS pin input is ignored. Note: When
      --  SPI slave mode is not supported, this bit is reserved and must be
      --  kept at reset value. Refer to Section131.4: USART implementation on
      --  page1826.
      DIS_NSS      : Boolean := False;
      --  7-bit Address Detection/4-bit Address Detection This bit is for
      --  selection between 4-bit address detection or 7-bit address detection.
      --  This bit can only be written when the USART is disabled (UE=0) Note:
      --  In 7-bit and 9-bit data modes, the address detection is done on 6-bit
      --  and 8-bit address (ADD[5:0] and ADD[7:0]) respectively.
      ADDM7        : Boolean := False;
      --  LIN break detection length This bit is for selection between 11 bit
      --  or 10 bit break detection. This bit can only be written when the
      --  USART is disabled (UE=0). Note: If LIN mode is not supported, this
      --  bit is reserved and must be kept at reset value. Refer to
      --  Section131.4: USART implementation on page1826.
      LBDL         : Boolean := False;
      --  LIN break detection interrupt enable Break interrupt mask (break
      --  detection using break delimiter). Note: If LIN mode is not supported,
      --  this bit is reserved and must be kept at reset value. Refer to
      --  Section131.4: USART implementation on page1826.
      LBDIE        : Boolean := False;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Last bit clock pulse This bit is used to select whether the clock
      --  pulse associated with the last data bit transmitted (MSB) has to be
      --  output on the CK pin in Synchronous mode. The last bit is the 7th or
      --  8th or 9th data bit transmitted depending on the 7 or 8 or 9 bit
      --  format selected by the M bit in the USART_CR1 register. This bit can
      --  only be written when the USART is disabled (UE=0). Note: If
      --  Synchronous mode is not supported, this bit is reserved and must be
      --  kept at reset value. Refer to Section131.4: USART implementation on
      --  page1826.
      LBCL         : Boolean := False;
      --  Clock phase This bit is used to select the phase of the clock output
      --  on the CK pin in Synchronous mode. It works in conjunction with the
      --  CPOL bit to produce the desired clock/data relationship (see
      --  Figure1233 and Figure1234) This bit can only be written when the
      --  USART is disabled (UE=0). Note: If Synchronous mode is not supported,
      --  this bit is reserved and must be kept at reset value. Refer to
      --  Section131.4: USART implementation on page1826.
      CPHA         : Boolean := False;
      --  Clock polarity This bit enables the user to select the polarity of
      --  the clock output on the CK pin in Synchronous mode. It works in
      --  conjunction with the CPHA bit to produce the desired clock/data
      --  relationship This bit can only be written when the USART is disabled
      --  (UE=0). Note: If Synchronous mode is not supported, this bit is
      --  reserved and must be kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      CPOL         : Boolean := False;
      --  Clock enable This bit enables the user to enable the CK pin. This bit
      --  can only be written when the USART is disabled (UE=0). Note: If
      --  neither Synchronous mode nor Smartcard mode is supported, this bit is
      --  reserved and must be kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826. In Smartcard mode, in order to
      --  provide correctly the CK clock to the smartcard, the steps below must
      --  be respected: UE = 0 SCEN = 1 GTPR configuration CLKEN= 1 Note: UE =
      --  1
      CLKEN        : Boolean := False;
      --  stop bits These bits are used for programming the stop bits. This
      --  bitfield can only be written when the USART is disabled (UE=0).
      STOP         : USART_CR2_STOP_Field := 16#0#;
      --  LIN mode enable This bit is set and cleared by software. The LIN mode
      --  enables the capability to send LIN synchronous breaks (13 low bits)
      --  using the SBKRQ bit in the USART_CR1 register, and to detect LIN Sync
      --  breaks. This bitfield can only be written when the USART is disabled
      --  (UE=0). Note: If the USART does not support LIN mode, this bit is
      --  reserved and must be kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      LINEN        : Boolean := False;
      --  Swap TX/RX pins This bit is set and cleared by software. This
      --  bitfield can only be written when the USART is disabled (UE=0).
      SWAP         : Boolean := False;
      --  RX pin active level inversion This bit is set and cleared by
      --  software. This enables the use of an external inverter on the RX
      --  line. This bitfield can only be written when the USART is disabled
      --  (UE=0).
      RXINV        : Boolean := False;
      --  TX pin active level inversion This bit is set and cleared by
      --  software. This enables the use of an external inverter on the TX
      --  line. This bitfield can only be written when the USART is disabled
      --  (UE=0).
      TXINV        : Boolean := False;
      --  Binary data inversion This bit is set and cleared by software. This
      --  bitfield can only be written when the USART is disabled (UE=0).
      DATAINV      : Boolean := False;
      --  Most significant bit first This bit is set and cleared by software.
      --  This bitfield can only be written when the USART is disabled (UE=0).
      MSBFIRST     : Boolean := False;
      --  Auto baud rate enable This bit is set and cleared by software. Note:
      --  If the USART does not support the auto baud rate feature, this bit is
      --  reserved and must be kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      ABREN        : Boolean := False;
      --  Auto baud rate mode These bits are set and cleared by software. This
      --  bitfield can only be written when ABREN = 0 or the USART is disabled
      --  (UE=0). Note: If DATAINV=1 and/or MSBFIRST=1 the patterns must be the
      --  same on the line, for example 0xAA for MSBFIRST) Note: If the USART
      --  does not support the auto baud rate feature, this bit is reserved and
      --  must be kept at reset value. Refer to Section131.4: USART
      --  implementation on page1826.
      ABRMOD       : USART_CR2_ABRMOD_Field := 16#0#;
      --  Receiver timeout enable This bit is set and cleared by software. When
      --  this feature is enabled, the RTOF flag in the USART_ISR register is
      --  set if the RX line is idle (no reception) for the duration programmed
      --  in the RTOR (receiver timeout register). Note: If the USART does not
      --  support the Receiver timeout feature, this bit is reserved and must
      --  be kept at reset value. Refer to Section131.4: USART implementation
      --  on page1826.
      RTOEN        : Boolean := False;
      --  Address of the USART node These bits give the address of the USART
      --  node in Mute mode or a character code to be recognized in low-power
      --  or Run mode: In Mute mode: they are used in multiprocessor
      --  communication to wake up from Mute mode with 4-bit/7-bit address mark
      --  detection. The MSB of the character sent by the transmitter should be
      --  equal to 1. In 4-bit address mark detection, only ADD[3:0] bits are
      --  used. In low-power mode: they are used for wake up from low-power
      --  mode on character match. When WUS[1:0] is programmed to 0b00 (WUF
      --  active on address match), the wake-up from low-power mode is
      --  performed when the received character corresponds to the character
      --  programmed through ADD[6:0] or ADD[3:0] bitfield (depending on ADDM7
      --  bit), and WUF interrupt is enabled by setting WUFIE bit. The MSB of
      --  the character sent by transmitter should be equal to 1. In Run mode
      --  with Mute mode inactive (for example, end-of-block detection in
      --  ModBus protocol): the whole received character (8 bits) is compared
      --  to ADD[7:0] value and CMF flag is set on match. An interrupt is
      --  generated if the CMIE bit is set. These bits can only be written when
      --  the reception is disabled (RE1=10) or when the USART is disabled
      --  (UE1=10).
      ADD          : USART_CR2_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR2_Register use record
      SLVEN        at 0 range 0 .. 0;
      Reserved_1_2 at 0 range 1 .. 2;
      DIS_NSS      at 0 range 3 .. 3;
      ADDM7        at 0 range 4 .. 4;
      LBDL         at 0 range 5 .. 5;
      LBDIE        at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      LBCL         at 0 range 8 .. 8;
      CPHA         at 0 range 9 .. 9;
      CPOL         at 0 range 10 .. 10;
      CLKEN        at 0 range 11 .. 11;
      STOP         at 0 range 12 .. 13;
      LINEN        at 0 range 14 .. 14;
      SWAP         at 0 range 15 .. 15;
      RXINV        at 0 range 16 .. 16;
      TXINV        at 0 range 17 .. 17;
      DATAINV      at 0 range 18 .. 18;
      MSBFIRST     at 0 range 19 .. 19;
      ABREN        at 0 range 20 .. 20;
      ABRMOD       at 0 range 21 .. 22;
      RTOEN        at 0 range 23 .. 23;
      ADD          at 0 range 24 .. 31;
   end record;

   subtype USART_CR3_SCARCNT_Field is Interfaces.Bit_Types.UInt3;

   --  USART_CR3_WUS array
   type USART_CR3_WUS_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USART_CR3_WUS
   type USART_CR3_WUS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUS as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  WUS as an array
            Arr : USART_CR3_WUS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USART_CR3_WUS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USART_CR3_RXFTCFG_Field is Interfaces.Bit_Types.UInt3;
   subtype USART_CR3_TXFTCFG_Field is Interfaces.Bit_Types.UInt3;

   --  USART control register 3
   type USART_CR3_Register is record
      --  Error interrupt enable Error Interrupt Enable Bit is required to
      --  enable interrupt generation in case of a framing error, overrun error
      --  noise flag or SPI slave underrun error (FE=1 or ORE=1 or NE=1or UDR =
      --  1 in the USART_ISR register).
      EIE            : Boolean := False;
      --  IrDA mode enable This bit is set and cleared by software. This bit
      --  can only be written when the USART is disabled (UE=0). Note: If IrDA
      --  mode is not supported, this bit is reserved and must be kept at reset
      --  value. Refer to Section131.4: USART implementation on page1826.
      IREN           : Boolean := False;
      --  IrDA low-power This bit is used for selecting between normal and
      --  low-power IrDA modes This bit can only be written when the USART is
      --  disabled (UE=0). Note: If IrDA mode is not supported, this bit is
      --  reserved and must be kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      IRLP           : Boolean := False;
      --  Half-duplex selection Selection of Single-wire Half-duplex mode This
      --  bit can only be written when the USART is disabled (UE=0).
      HDSEL          : Boolean := False;
      --  Smartcard NACK enable This bitfield can only be written when the
      --  USART is disabled (UE=0). Note: If the USART does not support
      --  Smartcard mode, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      NACK           : Boolean := False;
      --  Smartcard mode enable This bit is used for enabling Smartcard mode.
      --  This bitfield can only be written when the USART is disabled (UE=0).
      --  Note: If the USART does not support Smartcard mode, this bit is
      --  reserved and must be kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      SCEN           : Boolean := False;
      --  DMA enable receiver This bit is set/reset by software
      DMAR           : Boolean := False;
      --  DMA enable transmitter This bit is set/reset by software
      DMAT           : Boolean := False;
      --  RTS enable This bit can only be written when the USART is disabled
      --  (UE=0). Note: If the hardware flow control feature is not supported,
      --  this bit is reserved and must be kept at reset value. Refer to
      --  Section131.4: USART implementation on page1826.
      RTSE           : Boolean := False;
      --  CTS enable This bit can only be written when the USART is disabled
      --  (UE=0) Note: If the hardware flow control feature is not supported,
      --  this bit is reserved and must be kept at reset value. Refer to
      --  Section131.4: USART implementation on page1826.
      CTSE           : Boolean := False;
      --  CTS interrupt enable Note: If the hardware flow control feature is
      --  not supported, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      CTSIE          : Boolean := False;
      --  One sample bit method enable This bit enables the user to select the
      --  sample method. When the one sample bit method is selected the noise
      --  detection flag (NE) is disabled. This bit can only be written when
      --  the USART is disabled (UE=0).
      ONEBIT         : Boolean := False;
      --  Overrun Disable This bit is used to disable the receive overrun
      --  detection. the ORE flag is not set and the new received data
      --  overwrites the previous content of the USART_RDR register. When FIFO
      --  mode is enabled, the RXFIFO is bypassed and data are written directly
      --  in USART_RDR register. Even when FIFO management is enabled, the RXNE
      --  flag is to be used. This bit can only be written when the USART is
      --  disabled (UE=0). Note: This control bit enables checking the
      --  communication flow w/o reading the data
      OVRDIS         : Boolean := False;
      --  DMA Disable on Reception Error This bit can only be written when the
      --  USART is disabled (UE=0). Note: The reception errors are: parity
      --  error, framing error or noise error.
      DDRE           : Boolean := False;
      --  Driver enable mode This bit enables the user to activate the external
      --  transceiver control, through the DE signal. This bit can only be
      --  written when the USART is disabled (UE=0). Note: If the Driver Enable
      --  feature is not supported, this bit is reserved and must be kept at
      --  reset value. Section131.4: USART implementation on page1826.
      DEM            : Boolean := False;
      --  Driver enable polarity selection This bit can only be written when
      --  the USART is disabled (UE=0). Note: If the Driver Enable feature is
      --  not supported, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      DEP            : Boolean := False;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Smartcard auto-retry count This bitfield specifies the number of
      --  retries for transmission and reception in Smartcard mode. In
      --  Transmission mode, it specifies the number of automatic
      --  retransmission retries, before generating a transmission error (FE
      --  bit set). In Reception mode, it specifies the number or erroneous
      --  reception trials, before generating a reception error (RXNE/RXFNE and
      --  PE bits set). This bitfield must be programmed only when the USART is
      --  disabled (UE=0). When the USART is enabled (UE=1), this bitfield may
      --  only be written to 0x0, in order to stop retransmission. 0x1 to 0x7:
      --  number of automatic retransmission attempts (before signaling error)
      --  Note: If Smartcard mode is not supported, this bit is reserved and
      --  must be kept at reset value. Refer to Section131.4: USART
      --  implementation on page1826.
      SCARCNT        : USART_CR3_SCARCNT_Field := 16#0#;
      --  Wake-up from low-power mode interrupt flag selection This bitfield
      --  specifies the event which activates the WUF (wake-up from low-power
      --  mode flag). This bitfield can only be written when the USART is
      --  disabled (UE=0). Note: If the USART does not support the wake-up from
      --  Stop feature, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      WUS            : USART_CR3_WUS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Wake-up from low-power mode interrupt enable This bit is set and
      --  cleared by software. Note: WUFIE must be set before entering in
      --  low-power mode. Note: If the USART does not support the wake-up from
      --  Stop feature, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      WUFIE          : Boolean := False;
      --  TXFIFO threshold interrupt enable This bit is set and cleared by
      --  software.
      TXFTIE         : Boolean := False;
      --  Transmission Complete before guard time, interrupt enable This bit is
      --  set and cleared by software. Note: If the USART does not support the
      --  Smartcard mode, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      TCBGTIE        : Boolean := False;
      --  Receive FIFO threshold configuration Remaining combinations: Reserved
      RXFTCFG        : USART_CR3_RXFTCFG_Field := 16#0#;
      --  RXFIFO threshold interrupt enable This bit is set and cleared by
      --  software.
      RXFTIE         : Boolean := False;
      --  TXFIFO threshold configuration Remaining combinations: Reserved
      TXFTCFG        : USART_CR3_TXFTCFG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_CR3_Register use record
      EIE            at 0 range 0 .. 0;
      IREN           at 0 range 1 .. 1;
      IRLP           at 0 range 2 .. 2;
      HDSEL          at 0 range 3 .. 3;
      NACK           at 0 range 4 .. 4;
      SCEN           at 0 range 5 .. 5;
      DMAR           at 0 range 6 .. 6;
      DMAT           at 0 range 7 .. 7;
      RTSE           at 0 range 8 .. 8;
      CTSE           at 0 range 9 .. 9;
      CTSIE          at 0 range 10 .. 10;
      ONEBIT         at 0 range 11 .. 11;
      OVRDIS         at 0 range 12 .. 12;
      DDRE           at 0 range 13 .. 13;
      DEM            at 0 range 14 .. 14;
      DEP            at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      SCARCNT        at 0 range 17 .. 19;
      WUS            at 0 range 20 .. 21;
      WUFIE          at 0 range 22 .. 22;
      TXFTIE         at 0 range 23 .. 23;
      TCBGTIE        at 0 range 24 .. 24;
      RXFTCFG        at 0 range 25 .. 27;
      RXFTIE         at 0 range 28 .. 28;
      TXFTCFG        at 0 range 29 .. 31;
   end record;

   subtype USART_BRR_BRR_Field is Interfaces.Bit_Types.UInt16;

   --  USART baud rate register
   type USART_BRR_Register is record
      --  USART baud rate BRR[15:4] BRR[15:4] correspond to USARTDIV[15:4]
      --  BRR[3:0] When OVER8 = 0, BRR[3:0] = USARTDIV[3:0]. When OVER8 = 1:
      --  BRR[2:0] = USARTDIV[3:0] shifted 1 bit to the right. BRR[3] must be
      --  kept cleared.
      BRR            : USART_BRR_BRR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_BRR_Register use record
      BRR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART_GTPR_PSC_Field is Interfaces.Bit_Types.Byte;
   subtype USART_GTPR_GT_Field is Interfaces.Bit_Types.Byte;

   --  USART guard time and prescaler register
   type USART_GTPR_Register is record
      --  Prescaler value PSC[7:0] = IrDA Normal and Low-power baud rate This
      --  bitfield is used for programming the prescaler for dividing the USART
      --  source clock to achieve the low-power frequency: The source clock is
      --  divided by the value given in the register (8 significant bits): ...
      --  PSC[4:0]: Prescaler value This bitfield is used for programming the
      --  prescaler for dividing the USART source clock to provide the
      --  Smartcard clock. The value given in the register (5 significant bits)
      --  is multiplied by 2 to give the division factor of the source clock
      --  frequency: ... This bitfield can only be written when the USART is
      --  disabled (UE=0). Note: Bits [7:5] must be kept cleared if Smartcard
      --  mode is used. Note: This bitfield is reserved and forced by hardware
      --  to 0 when the Smartcard and IrDA modes are not supported. Refer to
      --  Section131.4: USART implementation on page1826.
      PSC            : USART_GTPR_PSC_Field := 16#0#;
      --  Guard time value This bitfield is used to program the Guard time
      --  value in terms of number of baud clock periods. This is used in
      --  Smartcard mode. The Transmission Complete flag is set after this
      --  guard time value. This bitfield can only be written when the USART is
      --  disabled (UE=0). Note: If Smartcard mode is not supported, this bit
      --  is reserved and must be kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      GT             : USART_GTPR_GT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_GTPR_Register use record
      PSC            at 0 range 0 .. 7;
      GT             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USART_RTOR_RTO_Field is Interfaces.Bit_Types.UInt24;
   subtype USART_RTOR_BLEN_Field is Interfaces.Bit_Types.Byte;

   --  USART receiver timeout register
   type USART_RTOR_Register is record
      --  Receiver timeout value This bitfield gives the Receiver timeout value
      --  in terms of number of bit duration. In Standard mode, the RTOF flag
      --  is set if, after the last received character, no new start bit is
      --  detected for more than the RTO value. In Smartcard mode, this value
      --  is used to implement the CWT and BWT. See Smartcard chapter for more
      --  details. In the standard, the CWT/BWT measurement is done starting
      --  from the start bit of the last received character. Note: This value
      --  must only be programmed once per received character.
      RTO  : USART_RTOR_RTO_Field := 16#0#;
      --  Block Length This bitfield gives the Block length in Smartcard T=1
      --  Reception. Its value equals the number of information characters +
      --  the length of the Epilogue Field (1-LEC/2-CRC) - 1. Examples: BLEN =
      --  0 -> 0 information characters + LEC BLEN = 1 -> 0 information
      --  characters + CRC BLEN = 255 -> 254 information characters + CRC
      --  (total 256 characters)) In Smartcard mode, the Block length counter
      --  is reset when TXE=0 (TXFE = 0 in case FIFO mode is enabled). This
      --  bitfield can be used also in other modes. In this case, the Block
      --  length counter is reset when RE=0 (receiver disabled) and/or when the
      --  EOBCF bit is written to 1. Note: This value can be programmed after
      --  the start of the block reception (using the data from the LEN
      --  character in the Prologue Field). It must be programmed only once per
      --  received block.
      BLEN : USART_RTOR_BLEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RTOR_Register use record
      RTO  at 0 range 0 .. 23;
      BLEN at 0 range 24 .. 31;
   end record;

   --  USART request register
   type USART_RQR_Register is record
      --  Write-only. Auto baud rate request Writing 1 to this bit resets the
      --  ABRF and ABRE flags in the USART_ISR and requests an automatic baud
      --  rate measurement on the next received data frame. Note: If the USART
      --  does not support the auto baud rate feature, this bit is reserved and
      --  must be kept at reset value. Refer to Section131.4: USART
      --  implementation on page1826.
      ABRRQ         : Boolean := False;
      --  Write-only. Send break request Writing 1 to this bit sets the SBKF
      --  flag and request to send a BREAK on the line, as soon as the transmit
      --  machine is available. Note: When the application needs to send the
      --  break character following all previously inserted data, including the
      --  ones not yet transmitted, the software must wait for the TXE flag
      --  assertion before setting the SBKRQ bit.
      SBKRQ         : Boolean := False;
      --  Write-only. Mute mode request Writing 1 to this bit puts the USART in
      --  Mute mode and resets the RWU flag.
      MMRQ          : Boolean := False;
      --  Write-only. Receive data flush request Writing 1 to this bit empties
      --  the entire receive FIFO i.e. clears the bit RXFNE. This enables to
      --  discard the received data without reading them, and avoid an overrun
      --  condition.
      RXFRQ         : Boolean := False;
      --  Write-only. Transmit data flush request When FIFO mode is disabled,
      --  writing 1 to this bit sets the TXE flag. This enables to discard the
      --  transmit data. This bit must be used only in Smartcard mode, when
      --  data have not been sent due to errors (NACK) and the FE flag is
      --  active in the USART_ISR register. If the USART does not support
      --  Smartcard mode, this bit is reserved and must be kept at reset value.
      --  When FIFO is enabled, TXFRQ bit is set to flush the whole FIFO. This
      --  sets the TXFE flag (Transmit FIFO empty, bit 23 in the USART_ISR
      --  register). Flushing the Transmit FIFO is supported in both UART and
      --  Smartcard modes. Note: In FIFO mode, the TXFNF flag is reset during
      --  the flush request until TxFIFO is empty in order to ensure that no
      --  data are written in the data register.
      TXFRQ         : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RQR_Register use record
      ABRRQ         at 0 range 0 .. 0;
      SBKRQ         at 0 range 1 .. 1;
      MMRQ          at 0 range 2 .. 2;
      RXFRQ         at 0 range 3 .. 3;
      TXFRQ         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  USART interrupt and status register
   type USART_ISR_Register is record
      --  Read-only. Parity error This bit is set by hardware when a parity
      --  error occurs in Reception mode. It is cleared by software, writing 1
      --  to the PECF in the USART_ICR register. An interrupt is generated if
      --  PEIE = 1 in the USART_CR1 register. Note: This error is associated
      --  with the character in the USART_RDR.
      PE             : Boolean;
      --  Read-only. Framing error This bit is set by hardware when a
      --  de-synchronization, excessive noise or a break character is detected.
      --  It is cleared by software, writing 1 to the FECF bit in the USART_ICR
      --  register. When transmitting data in Smartcard mode, this bit is set
      --  when the maximum number of transmit attempts is reached without
      --  success (the card NACKs the data frame). An interrupt is generated if
      --  EIE1=11 in the USART_CR3 register. Note: This error is associated
      --  with the character in the USART_RDR.
      FE             : Boolean;
      --  Read-only. Noise detection flag This bit is set by hardware when
      --  noise is detected on a received frame. It is cleared by software,
      --  writing 1 to the NFCF bit in the USART_ICR register. Note: This bit
      --  does not generate an interrupt as it appears at the same time as the
      --  RXFNE bit which itself generates an interrupt. An interrupt is
      --  generated when the NE flag is set during multi buffer communication
      --  if the EIE bit is set. Note: When the line is noise-free, the NE flag
      --  can be disabled by programming the ONEBIT bit to 1 to increase the
      --  USART tolerance to deviations (Refer to Section131.5.9: Tolerance of
      --  the USART receiver to clock deviation on page1845). Note: This error
      --  is associated with the character in the USART_RDR.
      NE             : Boolean;
      --  Read-only. Overrun error This bit is set by hardware when the data
      --  currently being received in the shift register is ready to be
      --  transferred into the USART_RDR register while RXFF = 1. It is cleared
      --  by a software, writing 1 to the ORECF, in the USART_ICR register. An
      --  interrupt is generated if RXFNEIE=1 in the USART_CR1 register, or EIE
      --  = 1 in the USART_CR3 register. Note: When this bit is set, the
      --  USART_RDR register content is not lost but the shift register is
      --  overwritten. An interrupt is generated if the ORE flag is set during
      --  multi buffer communication if the EIE bit is set. Note: This bit is
      --  permanently forced to 0 (no overrun detection) when the bit OVRDIS is
      --  set in the USART_CR3 register.
      ORE            : Boolean;
      --  Read-only. Idle line detected This bit is set by hardware when an
      --  Idle Line is detected. An interrupt is generated if IDLEIE=1 in the
      --  USART_CR1 register. It is cleared by software, writing 1 to the
      --  IDLECF in the USART_ICR register. Note: The IDLE bit is not set again
      --  until the RXFNE bit has been set (i.e. a new idle line occurs). Note:
      --  If Mute mode is enabled (MME=1), IDLE is set if the USART is not mute
      --  (RWU=0), whatever the Mute mode selected by the WAKE bit. If RWU=1,
      --  IDLE is not set.
      IDLE           : Boolean;
      --  Read-only. RXFIFO not empty RXFNE bit is set by hardware when the
      --  RXFIFO is not empty, meaning that data can be read from the USART_RDR
      --  register. Every read operation from the USART_RDR frees a location in
      --  the RXFIFO. RXFNE is cleared when the RXFIFO is empty. The RXFNE flag
      --  can also be cleared by writing 1 to the RXFRQ in the USART_RQR
      --  register. An interrupt is generated if RXFNEIE=1 in the USART_CR1
      --  register.
      RXFNE          : Boolean;
      --  Read-only. Transmission complete This bit indicates that the last
      --  data written in the USART_TDR has been transmitted out of the shift
      --  register. The TC flag behaves as follows: When TDN = 0, the TC flag
      --  is set when the transmission of a frame containing data is complete
      --  and when TXE/TXFE is set. When TDN is equal to the number of data in
      --  the TXFIFO, the TC flag is set when TXFIFO is empty and TDN is
      --  reached. When TDN is greater than the number of data in the TXFIFO,
      --  TC remains cleared until the TXFIFO is filled again to reach the
      --  programmed number of data to be transferred. When TDN is less than
      --  the number of data in the TXFIFO, TC is set when TDN is reached even
      --  if the TXFIFO is not empty. An interrupt is generated if TCIE=1 in
      --  the USART_CR1 register. TC bit is cleared by software by writing 1 to
      --  the TCCF in the USART_ICR register or by writing to the USART_TDR
      --  register.
      TC             : Boolean;
      --  Read-only. TXFIFO not full TXFNF is set by hardware when TXFIFO is
      --  not full meaning that data can be written in the USART_TDR. Every
      --  write operation to the USART_TDR places the data in the TXFIFO. This
      --  flag remains set until the TXFIFO is full. When the TXFIFO is full,
      --  this flag is cleared indicating that data can not be written into the
      --  USART_TDR. An interrupt is generated if the TXFNFIE bit =1 in the
      --  USART_CR1 register. Note: The TXFNF is kept reset during the flush
      --  request until TXFIFO is empty. After sending the flush request (by
      --  setting TXFRQ bit), the flag TXFNF must be checked prior to writing
      --  in TXFIFO (TXFNF and TXFE is set at the same time). Note: This bit is
      --  used during single buffer transmission.
      TXFNF          : Boolean;
      --  Read-only. LIN break detection flag This bit is set by hardware when
      --  the LIN break is detected. It is cleared by software, by writing 1 to
      --  the LBDCF in the USART_ICR. An interrupt is generated if LBDIE = 1 in
      --  the USART_CR2 register. Note: If the USART does not support LIN mode,
      --  this bit is reserved and kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      LBDF           : Boolean;
      --  Read-only. CTS interrupt flag This bit is set by hardware when the
      --  CTS input toggles, if the CTSE bit is set. It is cleared by software,
      --  by writing 1 to the CTSCF bit in the USART_ICR register. An interrupt
      --  is generated if CTSIE=1 in the USART_CR3 register. Note: If the
      --  hardware flow control feature is not supported, this bit is reserved
      --  and kept at reset value.
      CTSIF          : Boolean;
      --  Read-only. CTS flag This bit is set/reset by hardware. It is an
      --  inverted copy of the status of the CTS input pin. Note: If the
      --  hardware flow control feature is not supported, this bit is reserved
      --  and kept at reset value.
      CTS            : Boolean;
      --  Read-only. Receiver timeout This bit is set by hardware when the
      --  timeout value, programmed in the RTOR register has lapsed, without
      --  any communication. It is cleared by software, writing 1 to the RTOCF
      --  bit in the USART_ICR register. An interrupt is generated if RTOIE=1
      --  in the USART_CR2 register. In Smartcard mode, the timeout corresponds
      --  to the CWT or BWT timings. Note: If a time equal to the value
      --  programmed in RTOR register separates 2 characters, RTOF is not set.
      --  If this time exceeds this value + 2 sample times (2/16 or 2/8,
      --  depending on the oversampling method), RTOF flag is set. Note: The
      --  counter counts even if RE = 0 but RTOF is set only when RE = 1. If
      --  the timeout has already elapsed when RE is set, then RTOF is set.
      --  Note: If the USART does not support the Receiver timeout feature,
      --  this bit is reserved and kept at reset value.
      RTOF           : Boolean;
      --  Read-only. End of block flag This bit is set by hardware when a
      --  complete block has been received (for example T=1 Smartcard mode).
      --  The detection is done when the number of received bytes (from the
      --  start of the block, including the prologue) is equal or greater than
      --  BLEN + 4. An interrupt is generated if EOBIE1=11 in the USART_CR1
      --  register. It is cleared by software, writing 1 to EOBCF in the
      --  USART_ICR register. Note: If Smartcard mode is not supported, this
      --  bit is reserved and kept at reset value. Refer to Section131.4: USART
      --  implementation on page1826.
      EOBF           : Boolean;
      --  Read-only. SPI slave underrun error flag In Slave transmission mode,
      --  this flag is set when the first clock pulse for data transmission
      --  appears while the software has not yet loaded any value into
      --  USART_TDR. This flag is reset by setting UDRCF bit in the USART_ICR
      --  register. Note: If the USART does not support the SPI slave mode,
      --  this bit is reserved and kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      UDR            : Boolean;
      --  Read-only. Auto baud rate error This bit is set by hardware if the
      --  baud rate measurement failed (baud rate out of range or character
      --  comparison failed) It is cleared by software, by writing 1 to the
      --  ABRRQ bit in the USART_RQR register. Note: If the USART does not
      --  support the auto baud rate feature, this bit is reserved and kept at
      --  reset value.
      ABRE           : Boolean;
      --  Read-only. Auto baud rate flag This bit is set by hardware when the
      --  automatic baud rate has been set (RXFNE is also set, generating an
      --  interrupt if RXFNEIE = 1) or when the auto baud rate operation was
      --  completed without success (ABRE=1) (ABRE, RXFNE and FE are also set
      --  in this case) It is cleared by software, in order to request a new
      --  auto baud rate detection, by writing 1 to the ABRRQ in the USART_RQR
      --  register. Note: If the USART does not support the auto baud rate
      --  feature, this bit is reserved and kept at reset value.
      ABRF           : Boolean;
      --  Read-only. Busy flag This bit is set and reset by hardware. It is
      --  active when a communication is ongoing on the RX line (successful
      --  start bit detected). It is reset at the end of the reception
      --  (successful or not).
      BUSY           : Boolean;
      --  Read-only. Character match flag This bit is set by hardware, when a
      --  the character defined by ADD[7:0] is received. It is cleared by
      --  software, writing 1 to the CMCF in the USART_ICR register. An
      --  interrupt is generated if CMIE=1in the USART_CR1 register.
      CMF            : Boolean;
      --  Read-only. Send break flag This bit indicates that a send break
      --  character was requested. It is set by software, by writing 1 to the
      --  SBKRQ bit in the USART_CR3 register. It is automatically reset by
      --  hardware during the stop bit of break transmission.
      SBKF           : Boolean;
      --  Read-only. Receiver wake-up from Mute mode This bit indicates if the
      --  USART is in Mute mode. It is cleared/set by hardware when a
      --  wake-up/mute sequence is recognized. The Mute mode control sequence
      --  (address or IDLE) is selected by the WAKE bit in the USART_CR1
      --  register. When wake-up on IDLE mode is selected, this bit can only be
      --  set by software, writing 1 to the MMRQ bit in the USART_RQR register.
      --  Note: If the USART does not support the wake-up from Stop feature,
      --  this bit is reserved and kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      RWU            : Boolean;
      --  Read-only. Wake-up from low-power mode flag This bit is set by
      --  hardware, when a wake-up event is detected. The event is defined by
      --  the WUS bitfield. It is cleared by software, writing a 1 to the WUCF
      --  in the USART_ICR register. An interrupt is generated if WUFIE=1 in
      --  the USART_CR3 register. Note: When UESM is cleared, WUF flag is also
      --  cleared. Note: If the USART does not support the wake-up from Stop
      --  feature, this bit is reserved and kept at reset value. Refer to
      --  Section131.4: USART implementation on page1826.
      WUF            : Boolean;
      --  Read-only. Transmit enable acknowledge flag This bit is set/reset by
      --  hardware, when the Transmit Enable value is taken into account by the
      --  USART. It can be used when an idle frame request is generated by
      --  writing TE=0, followed by TE=1 in the USART_CR1 register, in order to
      --  respect the TE=0 minimum period.
      TEACK          : Boolean;
      --  Read-only. Receive enable acknowledge flag This bit is set/reset by
      --  hardware, when the Receive Enable value is taken into account by the
      --  USART. It can be used to verify that the USART is ready for reception
      --  before entering low-power mode. Note: If the USART does not support
      --  the wake-up from Stop feature, this bit is reserved and kept at reset
      --  value. Refer to Section131.4: USART implementation on page1826.
      REACK          : Boolean;
      --  Read-only. TXFIFO Empty This bit is set by hardware when TXFIFO is
      --  Empty. When the TXFIFO contains at least one data, this flag is
      --  cleared. The TXFE flag can also be set by writing 1 to the bit TXFRQ
      --  (bit 4) in the USART_RQR register. An interrupt is generated if the
      --  TXFEIE bit =1 (bit 30) in the USART_CR1 register.
      TXFE           : Boolean;
      --  Read-only. RXFIFO Full This bit is set by hardware when the number of
      --  received data corresponds to RXFIFO1size1+11 (RXFIFO full + 1 data in
      --  the USART_RDR register. An interrupt is generated if the RXFFIE bit
      --  =1 in the USART_CR1 register.
      RXFF           : Boolean;
      --  Read-only. Transmission complete before guard time flag This bit is
      --  set when the last data written in the USART_TDR has been transmitted
      --  correctly out of the shift register. It is set by hardware in
      --  Smartcard mode, if the transmission of a frame containing data is
      --  complete and if the smartcard did not send back any NACK. An
      --  interrupt is generated if TCBGTIE=1 in the USART_CR3 register. This
      --  bit is cleared by software, by writing 1 to the TCBGTCF in the
      --  USART_ICR register or by a write to the USART_TDR register. Note: If
      --  the USART does not support the Smartcard mode, this bit is reserved
      --  and kept at reset value. If the USART supports the Smartcard mode and
      --  the Smartcard mode is enabled, the TCBGT reset value is 1. Refer to
      --  Section131.4: USART implementation on page1826.
      TCBGT          : Boolean;
      --  Read-only. RXFIFO threshold flag This bit is set by hardware when the
      --  threshold programmed in RXFTCFG in USART_CR3 register is reached.
      --  This means that there are (RXFTCFG - 1) data in the Receive FIFO and
      --  one data in the USART_RDR register. An interrupt is generated if the
      --  RXFTIE bit =1 (bit 27) in the USART_CR3 register. Note: When the
      --  RXFTCFG threshold is configured to 101, RXFT flag is set if 16 data
      --  are available i.e. 15 data in the RXFIFO and 1 data in the USART_RDR.
      --  Consequently, the 17th received data does not cause an overrun error.
      --  The overrun error occurs after receiving the 18th data.
      RXFT           : Boolean;
      --  Read-only. TXFIFO threshold flag This bit is set by hardware when the
      --  TXFIFO reaches the threshold programmed in TXFTCFG of USART_CR3
      --  register i.e. the TXFIFO contains TXFTCFG empty locations. An
      --  interrupt is generated if the TXFTIE bit =1 (bit 31) in the USART_CR3
      --  register.
      TXFT           : Boolean;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_ISR_Register use record
      PE             at 0 range 0 .. 0;
      FE             at 0 range 1 .. 1;
      NE             at 0 range 2 .. 2;
      ORE            at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      RXFNE          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TXFNF          at 0 range 7 .. 7;
      LBDF           at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      RTOF           at 0 range 11 .. 11;
      EOBF           at 0 range 12 .. 12;
      UDR            at 0 range 13 .. 13;
      ABRE           at 0 range 14 .. 14;
      ABRF           at 0 range 15 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      WUF            at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      TXFE           at 0 range 23 .. 23;
      RXFF           at 0 range 24 .. 24;
      TCBGT          at 0 range 25 .. 25;
      RXFT           at 0 range 26 .. 26;
      TXFT           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  USART interrupt and status register
   type USART_ISR_ALTERNATE_Register is record
      --  Read-only. Parity error This bit is set by hardware when a parity
      --  error occurs in Reception mode. It is cleared by software, writing 1
      --  to the PECF in the USART_ICR register. An interrupt is generated if
      --  PEIE = 1 in the USART_CR1 register. Note: This error is associated
      --  with the character in the USART_RDR.
      PE             : Boolean;
      --  Read-only. Framing error This bit is set by hardware when a
      --  de-synchronization, excessive noise or a break character is detected.
      --  It is cleared by software, writing 1 to the FECF bit in the USART_ICR
      --  register. When transmitting data in Smartcard mode, this bit is set
      --  when the maximum number of transmit attempts is reached without
      --  success (the card NACKs the data frame). An interrupt is generated if
      --  EIE1=11 in the USART_CR3 register. Note: This error is associated
      --  with the character in the USART_RDR.
      FE             : Boolean;
      --  Read-only. Noise detection flag This bit is set by hardware when
      --  noise is detected on a received frame. It is cleared by software,
      --  writing 1 to the NFCF bit in the USART_ICR register. Note: This bit
      --  does not generate an interrupt as it appears at the same time as the
      --  RXNE bit which itself generates an interrupt. An interrupt is
      --  generated when the NE flag is set during multi buffer communication
      --  if the EIE bit is set. Note: When the line is noise-free, the NE flag
      --  can be disabled by programming the ONEBIT bit to 1 to increase the
      --  USART tolerance to deviations (Refer to Section131.5.9: Tolerance of
      --  the USART receiver to clock deviation on page1845). Note: This error
      --  is associated with the character in the USART_RDR.
      NE             : Boolean;
      --  Read-only. Overrun error This bit is set by hardware when the data
      --  currently being received in the shift register is ready to be
      --  transferred into the USART_RDR register while RXNE=1. It is cleared
      --  by a software, writing 1 to the ORECF, in the USART_ICR register. An
      --  interrupt is generated if RXNEIE=1 in the USART_CR1 register, or EIE
      --  = 1 in the USART_CR3 register. Note: When this bit is set, the
      --  USART_RDR register content is not lost but the shift register is
      --  overwritten. An interrupt is generated if the ORE flag is set during
      --  multi buffer communication if the EIE bit is set. Note: This bit is
      --  permanently forced to 0 (no overrun detection) when the bit OVRDIS is
      --  set in the USART_CR3 register.
      ORE            : Boolean;
      --  Read-only. Idle line detected This bit is set by hardware when an
      --  Idle Line is detected. An interrupt is generated if IDLEIE=1 in the
      --  USART_CR1 register. It is cleared by software, writing 1 to the
      --  IDLECF in the USART_ICR register. Note: The IDLE bit is not set again
      --  until the RXNE bit has been set (i.e. a new idle line occurs). Note:
      --  If Mute mode is enabled (MME=1), IDLE is set if the USART is not mute
      --  (RWU=0), whatever the Mute mode selected by the WAKE bit. If RWU=1,
      --  IDLE is not set.
      IDLE           : Boolean;
      --  Read-only. Read data register not empty RXNE bit is set by hardware
      --  when the content of the USART_RDR shift register has been transferred
      --  to the USART_RDR register. It is cleared by reading from the
      --  USART_RDR register. The RXNE flag can also be cleared by writing 1 to
      --  the RXFRQ in the USART_RQR register. An interrupt is generated if
      --  RXNEIE=1 in the USART_CR1 register.
      RXNE           : Boolean;
      --  Read-only. Transmission complete This bit indicates that the last
      --  data written in the USART_TDR has been transmitted out of the shift
      --  register. The TC flag is set when the transmission of a frame
      --  containing data is complete and when TXE is set. An interrupt is
      --  generated if TCIE=1 in the USART_CR1 register. TC bit is cleared by
      --  software by writing 1 to the TCCF in the USART_ICR register or by
      --  writing to the USART_TDR register.
      TC             : Boolean;
      --  Read-only. Transmit data register empty TXE is set by hardware when
      --  the content of the USART_TDR register has been transferred into the
      --  shift register. It is cleared by writing to the USART_TDR register.
      --  The TXE flag can also be set by writing 1 to the TXFRQ in the
      --  USART_RQR register, in order to discard the data (only in Smartcard
      --  T=0 mode, in case of transmission failure). An interrupt is generated
      --  if the TXEIE bit =1 in the USART_CR1 register.
      TXE            : Boolean;
      --  Read-only. LIN break detection flag This bit is set by hardware when
      --  the LIN break is detected. It is cleared by software, by writing 1 to
      --  the LBDCF in the USART_ICR. An interrupt is generated if LBDIE = 1 in
      --  the USART_CR2 register. Note: If the USART does not support LIN mode,
      --  this bit is reserved and kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      LBDF           : Boolean;
      --  Read-only. CTS interrupt flag This bit is set by hardware when the
      --  CTS input toggles, if the CTSE bit is set. It is cleared by software,
      --  by writing 1 to the CTSCF bit in the USART_ICR register. An interrupt
      --  is generated if CTSIE=1 in the USART_CR3 register. Note: If the
      --  hardware flow control feature is not supported, this bit is reserved
      --  and kept at reset value.
      CTSIF          : Boolean;
      --  Read-only. CTS flag This bit is set/reset by hardware. It is an
      --  inverted copy of the status of the CTS input pin. Note: If the
      --  hardware flow control feature is not supported, this bit is reserved
      --  and kept at reset value.
      CTS            : Boolean;
      --  Read-only. Receiver timeout This bit is set by hardware when the
      --  timeout value, programmed in the RTOR register has lapsed, without
      --  any communication. It is cleared by software, writing 1 to the RTOCF
      --  bit in the USART_ICR register. An interrupt is generated if RTOIE=1
      --  in the USART_CR2 register. In Smartcard mode, the timeout corresponds
      --  to the CWT or BWT timings. Note: If a time equal to the value
      --  programmed in RTOR register separates 2 characters, RTOF is not set.
      --  If this time exceeds this value + 2 sample times (2/16 or 2/8,
      --  depending on the oversampling method), RTOF flag is set. Note: The
      --  counter counts even if RE = 0 but RTOF is set only when RE = 1. If
      --  the timeout has already elapsed when RE is set, then RTOF is set.
      --  Note: If the USART does not support the Receiver timeout feature,
      --  this bit is reserved and kept at reset value.
      RTOF           : Boolean;
      --  Read-only. End of block flag This bit is set by hardware when a
      --  complete block has been received (for example T=1 Smartcard mode).
      --  The detection is done when the number of received bytes (from the
      --  start of the block, including the prologue) is equal or greater than
      --  BLEN + 4. An interrupt is generated if EOBIE1=11 in the USART_CR1
      --  register. It is cleared by software, writing 1 to EOBCF in the
      --  USART_ICR register. Note: If Smartcard mode is not supported, this
      --  bit is reserved and kept at reset value. Refer to Section131.4: USART
      --  implementation on page1826.
      EOBF           : Boolean;
      --  Read-only. SPI slave underrun error flag In Slave transmission mode,
      --  this flag is set when the first clock pulse for data transmission
      --  appears while the software has not yet loaded any value into
      --  USART_TDR. This flag is reset by setting UDRCF bit in the USART_ICR
      --  register. Note: If the USART does not support the SPI slave mode,
      --  this bit is reserved and kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      UDR            : Boolean;
      --  Read-only. Auto baud rate error This bit is set by hardware if the
      --  baud rate measurement failed (baud rate out of range or character
      --  comparison failed) It is cleared by software, by writing 1 to the
      --  ABRRQ bit in the USART_RQR register. Note: If the USART does not
      --  support the auto baud rate feature, this bit is reserved and kept at
      --  reset value.
      ABRE           : Boolean;
      --  Read-only. Auto baud rate flag This bit is set by hardware when the
      --  automatic baud rate has been set (RXNE is also set, generating an
      --  interrupt if RXNEIE = 1) or when the auto baud rate operation was
      --  completed without success (ABRE=1) (ABRE, RXNE and FE are also set in
      --  this case) It is cleared by software, in order to request a new auto
      --  baud rate detection, by writing 1 to the ABRRQ in the USART_RQR
      --  register. Note: If the USART does not support the auto baud rate
      --  feature, this bit is reserved and kept at reset value.
      ABRF           : Boolean;
      --  Read-only. Busy flag This bit is set and reset by hardware. It is
      --  active when a communication is ongoing on the RX line (successful
      --  start bit detected). It is reset at the end of the reception
      --  (successful or not).
      BUSY           : Boolean;
      --  Read-only. Character match flag This bit is set by hardware, when a
      --  the character defined by ADD[7:0] is received. It is cleared by
      --  software, writing 1 to the CMCF in the USART_ICR register. An
      --  interrupt is generated if CMIE=1in the USART_CR1 register.
      CMF            : Boolean;
      --  Read-only. Send break flag This bit indicates that a send break
      --  character was requested. It is set by software, by writing 1 to the
      --  SBKRQ bit in the USART_CR3 register. It is automatically reset by
      --  hardware during the stop bit of break transmission.
      SBKF           : Boolean;
      --  Read-only. Receiver wake-up from Mute mode This bit indicates if the
      --  USART is in Mute mode. It is cleared/set by hardware when a
      --  wake-up/mute sequence is recognized. The Mute mode control sequence
      --  (address or IDLE) is selected by the WAKE bit in the USART_CR1
      --  register. When wake-up on IDLE mode is selected, this bit can only be
      --  set by software, writing 1 to the MMRQ bit in the USART_RQR register.
      --  Note: If the USART does not support the wake-up from Stop feature,
      --  this bit is reserved and kept at reset value. Refer to Section131.4:
      --  USART implementation on page1826.
      RWU            : Boolean;
      --  Read-only. Wake-up from low-power mode flag This bit is set by
      --  hardware, when a wake-up event is detected. The event is defined by
      --  the WUS bitfield. It is cleared by software, writing a 1 to the WUCF
      --  in the USART_ICR register. An interrupt is generated if WUFIE=1 in
      --  the USART_CR3 register. Note: When UESM is cleared, WUF flag is also
      --  cleared. Note: If the USART does not support the wake-up from Stop
      --  feature, this bit is reserved and kept at reset value. Refer to
      --  Section131.4: USART implementation on page1826.
      WUF            : Boolean;
      --  Read-only. Transmit enable acknowledge flag This bit is set/reset by
      --  hardware, when the Transmit Enable value is taken into account by the
      --  USART. It can be used when an idle frame request is generated by
      --  writing TE=0, followed by TE=1 in the USART_CR1 register, in order to
      --  respect the TE=0 minimum period.
      TEACK          : Boolean;
      --  Read-only. Receive enable acknowledge flag This bit is set/reset by
      --  hardware, when the Receive Enable value is taken into account by the
      --  USART. It can be used to verify that the USART is ready for reception
      --  before entering low-power mode. Note: If the USART does not support
      --  the wake-up from Stop feature, this bit is reserved and kept at reset
      --  value. Refer to Section131.4: USART implementation on page1826.
      REACK          : Boolean;
      --  unspecified
      Reserved_23_24 : Interfaces.Bit_Types.UInt2;
      --  Read-only. Transmission complete before guard time flag This bit is
      --  set when the last data written in the USART_TDR has been transmitted
      --  correctly out of the shift register. It is set by hardware in
      --  Smartcard mode, if the transmission of a frame containing data is
      --  complete and if the smartcard did not send back any NACK. An
      --  interrupt is generated if TCBGTIE=1 in the USART_CR3 register. This
      --  bit is cleared by software, by writing 1 to the TCBGTCF in the
      --  USART_ICR register or by a write to the USART_TDR register. Note: If
      --  the USART does not support the Smartcard mode, this bit is reserved
      --  and kept at reset value. If the USART supports the Smartcard mode and
      --  the Smartcard mode is enabled, the TCBGT reset value is 1. Refer to
      --  Section131.4: USART implementation on page1826.
      TCBGT          : Boolean;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_ISR_ALTERNATE_Register use record
      PE             at 0 range 0 .. 0;
      FE             at 0 range 1 .. 1;
      NE             at 0 range 2 .. 2;
      ORE            at 0 range 3 .. 3;
      IDLE           at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TXE            at 0 range 7 .. 7;
      LBDF           at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      RTOF           at 0 range 11 .. 11;
      EOBF           at 0 range 12 .. 12;
      UDR            at 0 range 13 .. 13;
      ABRE           at 0 range 14 .. 14;
      ABRF           at 0 range 15 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      WUF            at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      TCBGT          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  USART interrupt flag clear register
   type USART_ICR_Register is record
      --  Write-only. Parity error clear flag Writing 1 to this bit clears the
      --  PE flag in the USART_ISR register.
      PECF           : Boolean := False;
      --  Write-only. Framing error clear flag Writing 1 to this bit clears the
      --  FE flag in the USART_ISR register.
      FECF           : Boolean := False;
      --  Write-only. Noise detected clear flag Writing 1 to this bit clears
      --  the NE flag in the USART_ISR register.
      NECF           : Boolean := False;
      --  Write-only. Overrun error clear flag Writing 1 to this bit clears the
      --  ORE flag in the USART_ISR register.
      ORECF          : Boolean := False;
      --  Write-only. Idle line detected clear flag Writing 1 to this bit
      --  clears the IDLE flag in the USART_ISR register.
      IDLECF         : Boolean := False;
      --  Write-only. TXFIFO empty clear flag Writing 1 to this bit clears the
      --  TXFE flag in the USART_ISR register.
      TXFECF         : Boolean := False;
      --  Write-only. Transmission complete clear flag Writing 1 to this bit
      --  clears the TC flag in the USART_ISR register.
      TCCF           : Boolean := False;
      --  Write-only. Transmission complete before Guard time clear flag
      --  Writing 1 to this bit clears the TCBGT flag in the USART_ISR
      --  register.
      TCBGTCF        : Boolean := False;
      --  Write-only. LIN break detection clear flag Writing 1 to this bit
      --  clears the LBDF flag in the USART_ISR register. Note: If LIN mode is
      --  not supported, this bit is reserved and must be kept at reset value.
      --  Refer to Section131.4: USART implementation on page1826.
      LBDCF          : Boolean := False;
      --  Write-only. CTS clear flag Writing 1 to this bit clears the CTSIF
      --  flag in the USART_ISR register. Note: If the hardware flow control
      --  feature is not supported, this bit is reserved and must be kept at
      --  reset value. Refer to Section131.4: USART implementation on page1826.
      CTSCF          : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Receiver timeout clear flag Writing 1 to this bit clears
      --  the RTOF flag in the USART_ISR register. Note: If the USART does not
      --  support the Receiver timeout feature, this bit is reserved and must
      --  be kept at reset value. Refer to Section131.4: USART implementation
      --  on page1826.
      RTOCF          : Boolean := False;
      --  Write-only. End of block clear flag Writing 1 to this bit clears the
      --  EOBF flag in the USART_ISR register. Note: If the USART does not
      --  support Smartcard mode, this bit is reserved and must be kept at
      --  reset value. Refer to Section131.4: USART implementation on page1826.
      EOBCF          : Boolean := False;
      --  Write-only. SPI slave underrun clear flag Writing 1 to this bit
      --  clears the UDRF flag in the USART_ISR register. Note: If the USART
      --  does not support SPI slave mode, this bit is reserved and must be
      --  kept at reset value. Refer to Section131.4: USART implementation on
      --  page1826
      UDRCF          : Boolean := False;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Character match clear flag Writing 1 to this bit clears
      --  the CMF flag in the USART_ISR register.
      CMCF           : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Wake-up from low-power mode clear flag Writing 1 to this
      --  bit clears the WUF flag in the USART_ISR register. Note: If the USART
      --  does not support the wake-up from Stop feature, this bit is reserved
      --  and must be kept at reset value. Refer to Section131.4: USART
      --  implementation on page1826.
      WUCF           : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_ICR_Register use record
      PECF           at 0 range 0 .. 0;
      FECF           at 0 range 1 .. 1;
      NECF           at 0 range 2 .. 2;
      ORECF          at 0 range 3 .. 3;
      IDLECF         at 0 range 4 .. 4;
      TXFECF         at 0 range 5 .. 5;
      TCCF           at 0 range 6 .. 6;
      TCBGTCF        at 0 range 7 .. 7;
      LBDCF          at 0 range 8 .. 8;
      CTSCF          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      RTOCF          at 0 range 11 .. 11;
      EOBCF          at 0 range 12 .. 12;
      UDRCF          at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      CMCF           at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      WUCF           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype USART_RDR_RDR_Field is Interfaces.Bit_Types.UInt9;

   --  USART receive data register
   type USART_RDR_Register is record
      --  Read-only. Receive data value Contains the received data character.
      --  The RDR register provides the parallel interface between the input
      --  shift register and the internal bus (see Figure1227). When receiving
      --  with the parity enabled, the value read in the MSB bit is the
      --  received parity bit.
      RDR           : USART_RDR_RDR_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_RDR_Register use record
      RDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype USART_TDR_TDR_Field is Interfaces.Bit_Types.UInt9;

   --  USART transmit data register
   type USART_TDR_Register is record
      --  Transmit data value Contains the data character to be transmitted.
      --  The USART_TDR register provides the parallel interface between the
      --  internal bus and the output shift register (see Figure1227). When
      --  transmitting with the parity enabled (PCE bit set to 1 in the
      --  USART_CR1 register), the value written in the MSB (bit 7 or bit 8
      --  depending on the data length) has no effect because it is replaced by
      --  the parity. Note: This register must be written only when
      --  TXE/TXFNF=1.
      TDR           : USART_TDR_TDR_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_TDR_Register use record
      TDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype USART_PRESC_PRESCALER_Field is Interfaces.Bit_Types.UInt4;

   --  USART prescaler register
   type USART_PRESC_Register is record
      --  Clock prescaler The USART input clock can be divided by a prescaler
      --  factor: Remaining combinations: Reserved Note: When PRESCALER is
      --  programmed with a value different of the allowed ones, programmed
      --  prescaler value is equal to 1011 i.e. input clock divided by 256.
      PRESCALER     : USART_PRESC_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USART_PRESC_Register use record
      PRESCALER     at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type USART1_Disc is
     (Default,
      Alternate);

   --  USART address block description
   type USART_Peripheral
     (Discriminent : USART1_Disc := Default)
   is record
      --  USART control register 2
      USART_CR2           : aliased USART_CR2_Register;
      --  USART control register 3
      USART_CR3           : aliased USART_CR3_Register;
      --  USART baud rate register
      USART_BRR           : aliased USART_BRR_Register;
      --  USART guard time and prescaler register
      USART_GTPR          : aliased USART_GTPR_Register;
      --  USART receiver timeout register
      USART_RTOR          : aliased USART_RTOR_Register;
      --  USART request register
      USART_RQR           : aliased USART_RQR_Register;
      --  USART interrupt flag clear register
      USART_ICR           : aliased USART_ICR_Register;
      --  USART receive data register
      USART_RDR           : aliased USART_RDR_Register;
      --  USART transmit data register
      USART_TDR           : aliased USART_TDR_Register;
      --  USART prescaler register
      USART_PRESC         : aliased USART_PRESC_Register;
      case Discriminent is
         when Default =>
            --  USART control register 1
            USART_CR1 : aliased USART_CR1_Register;
            --  USART interrupt and status register
            USART_ISR : aliased USART_ISR_Register;
         when Alternate =>
            --  USART control register 1
            USART_CR1_ALTERNATE : aliased USART_CR1_ALTERNATE_Register;
            --  USART interrupt and status register
            USART_ISR_ALTERNATE : aliased USART_ISR_ALTERNATE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      USART_CR2           at 16#4# range 0 .. 31;
      USART_CR3           at 16#8# range 0 .. 31;
      USART_BRR           at 16#C# range 0 .. 31;
      USART_GTPR          at 16#10# range 0 .. 31;
      USART_RTOR          at 16#14# range 0 .. 31;
      USART_RQR           at 16#18# range 0 .. 31;
      USART_ICR           at 16#20# range 0 .. 31;
      USART_RDR           at 16#24# range 0 .. 31;
      USART_TDR           at 16#28# range 0 .. 31;
      USART_PRESC         at 16#2C# range 0 .. 31;
      USART_CR1           at 16#0# range 0 .. 31;
      USART_ISR           at 16#1C# range 0 .. 31;
      USART_CR1_ALTERNATE at 16#0# range 0 .. 31;
      USART_ISR_ALTERNATE at 16#1C# range 0 .. 31;
   end record;

   --  USART address block description
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => USART1_Base;

   --  USART address block description
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => USART2_Base;

   --  USART address block description
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => USART3_Base;

   --  USART address block description
   USART4_Periph : aliased USART_Peripheral
     with Import, Address => USART4_Base;

end Interfaces.STM32.USART;
