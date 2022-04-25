--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

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

   subtype CR1_enabled_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype CR1_enabled_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  Control register 1
   type CR1_enabled_Register is record
      --  USART enable
      UE      : Boolean := False;
      --  USART enable in Stop mode
      UESM    : Boolean := False;
      --  Receiver enable
      RE      : Boolean := False;
      --  Transmitter enable
      TE      : Boolean := False;
      --  IDLE interrupt enable
      IDLEIE  : Boolean := False;
      --  RXFIFO not empty interrupt enable
      RXFNEIE : Boolean := False;
      --  Transmission complete interrupt enable
      TCIE    : Boolean := False;
      --  TXFIFO not full interrupt enable
      TXFNFIE : Boolean := False;
      --  PE interrupt enable
      PEIE    : Boolean := False;
      --  Parity selection
      PS      : Boolean := False;
      --  Parity control enable
      PCE     : Boolean := False;
      --  Receiver wakeup method
      WAKE    : Boolean := False;
      --  Word length
      M0      : Boolean := False;
      --  Mute mode enable
      MME     : Boolean := False;
      --  Character match interrupt enable
      CMIE    : Boolean := False;
      --  Oversampling mode
      OVER8   : Boolean := False;
      --  DEDT
      DEDT    : CR1_enabled_DEDT_Field := 16#0#;
      --  DEAT
      DEAT    : CR1_enabled_DEAT_Field := 16#0#;
      --  Receiver timeout interrupt
      RTOIE   : Boolean := False;
      --  End of Block interruptenable
      EOBIE   : Boolean := False;
      --  Word length
      M1      : Boolean := False;
      --  FIFOEN
      FIFOEN  : Boolean := False;
      --  TXFEIE
      TXFEIE  : Boolean := False;
      --  RXFFIE
      RXFFIE  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_enabled_Register use record
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

   subtype CR1_disabled_DEDT_Field is Interfaces.Bit_Types.UInt5;
   subtype CR1_disabled_DEAT_Field is Interfaces.Bit_Types.UInt5;

   --  Control register 1
   type CR1_disabled_Register is record
      --  USART enable
      UE             : Boolean := False;
      --  USART enable in Stop mode
      UESM           : Boolean := False;
      --  Receiver enable
      RE             : Boolean := False;
      --  Transmitter enable
      TE             : Boolean := False;
      --  IDLE interrupt enable
      IDLEIE         : Boolean := False;
      --  RXFIFO not empty interrupt enable
      RXFNEIE        : Boolean := False;
      --  Transmission complete interrupt enable
      TCIE           : Boolean := False;
      --  TXFIFO not full interrupt enable
      TXFNFIE        : Boolean := False;
      --  PE interrupt enable
      PEIE           : Boolean := False;
      --  Parity selection
      PS             : Boolean := False;
      --  Parity control enable
      PCE            : Boolean := False;
      --  Receiver wakeup method
      WAKE           : Boolean := False;
      --  Word length
      M0             : Boolean := False;
      --  Mute mode enable
      MME            : Boolean := False;
      --  Character match interrupt enable
      CMIE           : Boolean := False;
      --  Oversampling mode
      OVER8          : Boolean := False;
      --  DEDT
      DEDT           : CR1_disabled_DEDT_Field := 16#0#;
      --  DEAT
      DEAT           : CR1_disabled_DEAT_Field := 16#0#;
      --  Receiver timeout interrupt enable
      RTOIE          : Boolean := False;
      --  End of Block interrupt enable
      EOBIE          : Boolean := False;
      --  Word length
      M1             : Boolean := False;
      --  FIFOEN
      FIFOEN         : Boolean := False;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_disabled_Register use record
      UE             at 0 range 0 .. 0;
      UESM           at 0 range 1 .. 1;
      RE             at 0 range 2 .. 2;
      TE             at 0 range 3 .. 3;
      IDLEIE         at 0 range 4 .. 4;
      RXFNEIE        at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      TXFNFIE        at 0 range 7 .. 7;
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

   subtype CR2_STOP_Field is Interfaces.Bit_Types.UInt2;
   subtype CR2_ABRMOD_Field is Interfaces.Bit_Types.UInt2;
   subtype CR2_ADD_Field is Interfaces.Bit_Types.Byte;

   --  Control register 2
   type CR2_Register is record
      --  SLVEN
      SLVEN        : Boolean := False;
      --  unspecified
      Reserved_1_2 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DIS_NSS
      DIS_NSS      : Boolean := False;
      --  7-bit Address Detection/4-bit Address Detection
      ADDM7        : Boolean := False;
      --  LIN break detection length
      LBDL         : Boolean := False;
      --  LIN break detection interrupt enable
      LBDIE        : Boolean := False;
      --  unspecified
      Reserved_7_7 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Last bit clock pulse
      LBCL         : Boolean := False;
      --  Clock phase
      CPHA         : Boolean := False;
      --  Clock polarity
      CPOL         : Boolean := False;
      --  Clock enable
      CLKEN        : Boolean := False;
      --  STOP bits
      STOP         : CR2_STOP_Field := 16#0#;
      --  LIN mode enable
      LINEN        : Boolean := False;
      --  Swap TX/RX pins
      SWAP         : Boolean := False;
      --  RX pin active level inversion
      RXINV        : Boolean := False;
      --  TX pin active level inversion
      TXINV        : Boolean := False;
      --  Binary data inversion
      DATAINV      : Boolean := False;
      --  Most significant bit first
      MSBFIRST     : Boolean := False;
      --  Auto baud rate enable
      ABREN        : Boolean := False;
      --  Auto baud rate mode
      ABRMOD       : CR2_ABRMOD_Field := 16#0#;
      --  Receiver timeout enable
      RTOEN        : Boolean := False;
      --  Address of the USART node
      ADD          : CR2_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
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

   subtype CR3_SCARCNT_Field is Interfaces.Bit_Types.UInt3;
   subtype CR3_RXFTCFG_Field is Interfaces.Bit_Types.UInt3;
   subtype CR3_TXFTCFG_Field is Interfaces.Bit_Types.UInt3;

   --  Control register 3
   type CR3_Register is record
      --  Error interrupt enable
      EIE            : Boolean := False;
      --  Ir mode enable
      IREN           : Boolean := False;
      --  Ir low-power
      IRLP           : Boolean := False;
      --  Half-duplex selection
      HDSEL          : Boolean := False;
      --  Smartcard NACK enable
      NACK           : Boolean := False;
      --  Smartcard mode enable
      SCEN           : Boolean := False;
      --  DMA enable receiver
      DMAR           : Boolean := False;
      --  DMA enable transmitter
      DMAT           : Boolean := False;
      --  RTS enable
      RTSE           : Boolean := False;
      --  CTS enable
      CTSE           : Boolean := False;
      --  CTS interrupt enable
      CTSIE          : Boolean := False;
      --  One sample bit method enable
      ONEBIT         : Boolean := False;
      --  Overrun Disable
      OVRDIS         : Boolean := False;
      --  DMA Disable on Reception Error
      DDRE           : Boolean := False;
      --  Driver enable mode
      DEM            : Boolean := False;
      --  Driver enable polarity selection
      DEP            : Boolean := False;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Smartcard auto-retry count
      SCARCNT        : CR3_SCARCNT_Field := 16#0#;
      --  unspecified
      Reserved_20_22 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  TXFTIE
      TXFTIE         : Boolean := False;
      --  TCBGTIE
      TCBGTIE        : Boolean := False;
      --  RXFTCFG
      RXFTCFG        : CR3_RXFTCFG_Field := 16#0#;
      --  RXFTIE
      RXFTIE         : Boolean := False;
      --  TXFTCFG
      TXFTCFG        : CR3_TXFTCFG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register use record
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
      Reserved_20_22 at 0 range 20 .. 22;
      TXFTIE         at 0 range 23 .. 23;
      TCBGTIE        at 0 range 24 .. 24;
      RXFTCFG        at 0 range 25 .. 27;
      RXFTIE         at 0 range 28 .. 28;
      TXFTCFG        at 0 range 29 .. 31;
   end record;

   subtype BRR_BRR_Field is Interfaces.Bit_Types.UInt16;

   --  Baud rate register
   type BRR_Register is record
      --  BRR
      BRR            : BRR_BRR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register use record
      BRR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GTPR_PSC_Field is Interfaces.Bit_Types.Byte;
   subtype GTPR_GT_Field is Interfaces.Bit_Types.Byte;

   --  Guard time and prescaler register
   type GTPR_Register is record
      --  Prescaler value
      PSC            : GTPR_PSC_Field := 16#0#;
      --  Guard time value
      GT             : GTPR_GT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GTPR_Register use record
      PSC            at 0 range 0 .. 7;
      GT             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTOR_RTO_Field is Interfaces.Bit_Types.UInt24;
   subtype RTOR_BLEN_Field is Interfaces.Bit_Types.Byte;

   --  Receiver timeout register
   type RTOR_Register is record
      --  Receiver timeout value
      RTO  : RTOR_RTO_Field := 16#0#;
      --  Block Length
      BLEN : RTOR_BLEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTOR_Register use record
      RTO  at 0 range 0 .. 23;
      BLEN at 0 range 24 .. 31;
   end record;

   --  Request register
   type RQR_Register is record
      --  Write-only. Auto baud rate request
      ABRRQ         : Boolean := False;
      --  Write-only. Send break request
      SBKRQ         : Boolean := False;
      --  Write-only. Mute mode request
      MMRQ          : Boolean := False;
      --  Write-only. Receive data flush request
      RXFRQ         : Boolean := False;
      --  Write-only. Transmit data flush request
      TXFRQ         : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RQR_Register use record
      ABRRQ         at 0 range 0 .. 0;
      SBKRQ         at 0 range 1 .. 1;
      MMRQ          at 0 range 2 .. 2;
      RXFRQ         at 0 range 3 .. 3;
      TXFRQ         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Interrupt & status register
   type ISR_enabled_Register is record
      --  Read-only. PE
      PE             : Boolean;
      --  Read-only. FE
      FE             : Boolean;
      --  Read-only. NE
      NE             : Boolean;
      --  Read-only. ORE
      ORE            : Boolean;
      --  Read-only. IDLE
      IDLE           : Boolean;
      --  Read-only. RXFNE
      RXFNE          : Boolean;
      --  Read-only. TC
      TC             : Boolean;
      --  Read-only. TXFNF
      TXFNF          : Boolean;
      --  Read-only. LBDF
      LBDF           : Boolean;
      --  Read-only. CTSIF
      CTSIF          : Boolean;
      --  Read-only. CTS
      CTS            : Boolean;
      --  Read-only. RTOF
      RTOF           : Boolean;
      --  Read-only. EOBF
      EOBF           : Boolean;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit;
      --  Read-only. ABRE
      ABRE           : Boolean;
      --  Read-only. ABRF
      ABRF           : Boolean;
      --  Read-only. BUSY
      BUSY           : Boolean;
      --  Read-only. CMF
      CMF            : Boolean;
      --  Read-only. SBKF
      SBKF           : Boolean;
      --  Read-only. RWU
      RWU            : Boolean;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit;
      --  Read-only. TEACK
      TEACK          : Boolean;
      --  Read-only. REACK
      REACK          : Boolean;
      --  Read-only. TXFE
      TXFE           : Boolean;
      --  Read-only. RXFF
      RXFF           : Boolean;
      --  Read-only. TCBGT
      TCBGT          : Boolean;
      --  Read-only. RXFT
      RXFT           : Boolean;
      --  Read-only. TXFT
      TXFT           : Boolean;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_enabled_Register use record
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
      Reserved_13_13 at 0 range 13 .. 13;
      ABRE           at 0 range 14 .. 14;
      ABRF           at 0 range 15 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      TXFE           at 0 range 23 .. 23;
      RXFF           at 0 range 24 .. 24;
      TCBGT          at 0 range 25 .. 25;
      RXFT           at 0 range 26 .. 26;
      TXFT           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Interrupt & status register
   type ISR_disabled_Register is record
      --  Read-only. PE
      PE             : Boolean;
      --  Read-only. FE
      FE             : Boolean;
      --  Read-only. NE
      NE             : Boolean;
      --  Read-only. ORE
      ORE            : Boolean;
      --  Read-only. IDLE
      IDLE           : Boolean;
      --  Read-only. RXFNE
      RXFNE          : Boolean;
      --  Read-only. TC
      TC             : Boolean;
      --  Read-only. TXFNF
      TXFNF          : Boolean;
      --  Read-only. LBDF
      LBDF           : Boolean;
      --  Read-only. CTSIF
      CTSIF          : Boolean;
      --  Read-only. CTS
      CTS            : Boolean;
      --  Read-only. RTOF
      RTOF           : Boolean;
      --  Read-only. EOBF
      EOBF           : Boolean;
      --  Read-only. UDR
      UDR            : Boolean;
      --  Read-only. ABRE
      ABRE           : Boolean;
      --  Read-only. ABRF
      ABRF           : Boolean;
      --  Read-only. BUSY
      BUSY           : Boolean;
      --  Read-only. CMF
      CMF            : Boolean;
      --  Read-only. SBKF
      SBKF           : Boolean;
      --  Read-only. RWU
      RWU            : Boolean;
      --  unspecified
      Reserved_20_20 : Interfaces.Bit_Types.Bit;
      --  Read-only. TEACK
      TEACK          : Boolean;
      --  Read-only. REACK
      REACK          : Boolean;
      --  unspecified
      Reserved_23_24 : Interfaces.Bit_Types.UInt2;
      --  Read-only. TCBGT
      TCBGT          : Boolean;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_disabled_Register use record
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
      Reserved_20_20 at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      TCBGT          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Interrupt flag clear register
   type ICR_Register is record
      --  Write-only. Parity error clear flag
      PECF           : Boolean := False;
      --  Write-only. Framing error clear flag
      FECF           : Boolean := False;
      --  Write-only. Noise detected clear flag
      NECF           : Boolean := False;
      --  Write-only. Overrun error clear flag
      ORECF          : Boolean := False;
      --  Write-only. Idle line detected clear flag
      IDLECF         : Boolean := False;
      --  Write-only. TXFECF
      TXFECF         : Boolean := False;
      --  Write-only. Transmission complete clear flag
      TCCF           : Boolean := False;
      --  Write-only. TCBGTCF
      TCBGTCF        : Boolean := False;
      --  Write-only. LIN break detection clear flag
      LBDCF          : Boolean := False;
      --  Write-only. CTS clear flag
      CTSCF          : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Receiver timeout clear flag
      RTOCF          : Boolean := False;
      --  Write-only. End of block clear flag
      EOBCF          : Boolean := False;
      --  Write-only. UDRCF
      UDRCF          : Boolean := False;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Character match clear flag
      CMCF           : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
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
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RDR_RDR_Field is Interfaces.Bit_Types.UInt9;

   --  Receive data register
   type RDR_Register is record
      --  Read-only. Receive data value
      RDR           : RDR_RDR_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDR_Register use record
      RDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype TDR_TDR_Field is Interfaces.Bit_Types.UInt9;

   --  Transmit data register
   type TDR_Register is record
      --  Transmit data value
      TDR           : TDR_TDR_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TDR_Register use record
      TDR           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype PRESC_PRESCALER_Field is Interfaces.Bit_Types.UInt4;

   --  PRESC
   type PRESC_Register is record
      --  PRESCALER
      PRESCALER     : PRESC_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESC_Register use record
      PRESCALER     at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype AUTOCR_TDN_Field is Interfaces.Bit_Types.UInt16;
   subtype AUTOCR_TRIGSEL_Field is Interfaces.Bit_Types.UInt4;

   --  AUTOCR
   type AUTOCR_Register is record
      --  TDN
      TDN            : AUTOCR_TDN_Field := 16#0#;
      --  TRIPOL
      TRIGPOL        : Boolean := False;
      --  TRIGEN
      TRIGEN         : Boolean := False;
      --  IDLEDIS
      IDLEDIS        : Boolean := False;
      --  TRIGSEL
      TRIGSEL        : AUTOCR_TRIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : Interfaces.Bit_Types.Byte := 16#0#;
      --  TECLREN
      TECLREN        : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUTOCR_Register use record
      TDN            at 0 range 0 .. 15;
      TRIGPOL        at 0 range 16 .. 16;
      TRIGEN         at 0 range 17 .. 17;
      IDLEDIS        at 0 range 18 .. 18;
      TRIGSEL        at 0 range 19 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      TECLREN        at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SEC_UART4_Disc is
     (ENABLED,
      DISABLED);

   --  Universal synchronous asynchronous receiver transmitter
   type USART_Peripheral
     (Discriminent : SEC_UART4_Disc := ENABLED)
   is record
      --  Control register 2
      CR2          : aliased CR2_Register;
      --  Control register 3
      CR3          : aliased CR3_Register;
      --  Baud rate register
      BRR          : aliased BRR_Register;
      --  Guard time and prescaler register
      GTPR         : aliased GTPR_Register;
      --  Receiver timeout register
      RTOR         : aliased RTOR_Register;
      --  Request register
      RQR          : aliased RQR_Register;
      --  Interrupt flag clear register
      ICR          : aliased ICR_Register;
      --  Receive data register
      RDR          : aliased RDR_Register;
      --  Transmit data register
      TDR          : aliased TDR_Register;
      --  PRESC
      PRESC        : aliased PRESC_Register;
      --  AUTOCR
      AUTOCR       : aliased AUTOCR_Register;
      case Discriminent is
         when ENABLED =>
            --  Control register 1
            CR1_enabled : aliased CR1_enabled_Register;
            --  Interrupt & status register
            ISR_enabled : aliased ISR_enabled_Register;
         when DISABLED =>
            --  Control register 1
            CR1_disabled : aliased CR1_disabled_Register;
            --  Interrupt & status register
            ISR_disabled : aliased ISR_disabled_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      CR2          at 16#4# range 0 .. 31;
      CR3          at 16#8# range 0 .. 31;
      BRR          at 16#C# range 0 .. 31;
      GTPR         at 16#10# range 0 .. 31;
      RTOR         at 16#14# range 0 .. 31;
      RQR          at 16#18# range 0 .. 31;
      ICR          at 16#20# range 0 .. 31;
      RDR          at 16#24# range 0 .. 31;
      TDR          at 16#28# range 0 .. 31;
      PRESC        at 16#2C# range 0 .. 31;
      AUTOCR       at 16#30# range 0 .. 31;
      CR1_enabled  at 16#0# range 0 .. 31;
      ISR_enabled  at 16#1C# range 0 .. 31;
      CR1_disabled at 16#0# range 0 .. 31;
      ISR_disabled at 16#1C# range 0 .. 31;
   end record;

   --  Universal synchronous asynchronous receiver transmitter
   SEC_UART4_Periph : aliased USART_Peripheral
     with Import, Address => SEC_UART4_Base;

   --  Universal synchronous asynchronous receiver transmitter
   SEC_UART5_Periph : aliased USART_Peripheral
     with Import, Address => SEC_UART5_Base;

   --  Universal synchronous asynchronous receiver transmitter
   SEC_USART1_Periph : aliased USART_Peripheral
     with Import, Address => SEC_USART1_Base;

   --  Universal synchronous asynchronous receiver transmitter
   SEC_USART2_Periph : aliased USART_Peripheral
     with Import, Address => SEC_USART2_Base;

   --  Universal synchronous asynchronous receiver transmitter
   SEC_USART3_Periph : aliased USART_Peripheral
     with Import, Address => SEC_USART3_Base;

   --  Universal synchronous asynchronous receiver transmitter
   UART4_Periph : aliased USART_Peripheral
     with Import, Address => UART4_Base;

   --  Universal synchronous asynchronous receiver transmitter
   UART5_Periph : aliased USART_Peripheral
     with Import, Address => UART5_Base;

   --  Universal synchronous asynchronous receiver transmitter
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => USART1_Base;

   --  Universal synchronous asynchronous receiver transmitter
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => USART2_Base;

   --  Universal synchronous asynchronous receiver transmitter
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => USART3_Base;

end Interfaces.STM32.USART;
