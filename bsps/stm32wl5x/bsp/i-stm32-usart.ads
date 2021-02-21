--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM4.svd

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
      UE             : Boolean := False;
      --  USART enable in Stop mode
      UESM           : Boolean := False;
      --  Receiver enable
      RE             : Boolean := False;
      --  Transmitter enable
      TE             : Boolean := False;
      --  IDLE interrupt enable
      IDLEIE         : Boolean := False;
      --  RXNE interrupt enable
      RXNEIE         : Boolean := False;
      --  Transmission complete interrupt enable
      TCIE           : Boolean := False;
      --  interrupt enable
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
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DEDT
      DEDT           : CR1_enabled_DEDT_Field := 16#0#;
      --  DEAT
      DEAT           : CR1_enabled_DEAT_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Word length
      M1             : Boolean := False;
      --  FIFO mode enable
      FIFOEN         : Boolean := False;
      --  TXFIFO empty interrupt enable
      TXFEIE         : Boolean := False;
      --  RXFIFO Full interrupt enable
      RXFFIE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_enabled_Register use record
      UE             at 0 range 0 .. 0;
      UESM           at 0 range 1 .. 1;
      RE             at 0 range 2 .. 2;
      TE             at 0 range 3 .. 3;
      IDLEIE         at 0 range 4 .. 4;
      RXNEIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      TXFNFIE        at 0 range 7 .. 7;
      PEIE           at 0 range 8 .. 8;
      PS             at 0 range 9 .. 9;
      PCE            at 0 range 10 .. 10;
      WAKE           at 0 range 11 .. 11;
      M0             at 0 range 12 .. 12;
      MME            at 0 range 13 .. 13;
      CMIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DEDT           at 0 range 16 .. 20;
      DEAT           at 0 range 21 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      M1             at 0 range 28 .. 28;
      FIFOEN         at 0 range 29 .. 29;
      TXFEIE         at 0 range 30 .. 30;
      RXFFIE         at 0 range 31 .. 31;
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
      --  Transmit data register empty
      TXEIE          : Boolean := False;
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
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DEDT
      DEDT           : CR1_disabled_DEDT_Field := 16#0#;
      --  DEAT
      DEAT           : CR1_disabled_DEAT_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.Bit_Types.UInt2 := 16#0#;
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
      TXEIE          at 0 range 7 .. 7;
      PEIE           at 0 range 8 .. 8;
      PS             at 0 range 9 .. 9;
      PCE            at 0 range 10 .. 10;
      WAKE           at 0 range 11 .. 11;
      M0             at 0 range 12 .. 12;
      MME            at 0 range 13 .. 13;
      CMIE           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DEDT           at 0 range 16 .. 20;
      DEAT           at 0 range 21 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      M1             at 0 range 28 .. 28;
      FIFOEN         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CR2_STOP_Field is Interfaces.Bit_Types.UInt2;
   subtype CR2_ADD_Field is Interfaces.Bit_Types.Byte;

   --  Control register 2
   type CR2_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  7-bit Address Detection/4-bit Address Detection
      ADDM7          : Boolean := False;
      --  unspecified
      Reserved_5_11  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  STOP bits
      STOP           : CR2_STOP_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Swap TX/RX pins
      SWAP           : Boolean := False;
      --  RX pin active level inversion
      RXINV          : Boolean := False;
      --  TX pin active level inversion
      TXINV          : Boolean := False;
      --  Binary data inversion
      DATAINV        : Boolean := False;
      --  Most significant bit first
      MSBFIRST       : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Address of the LPUART node
      ADD            : CR2_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ADDM7          at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      STOP           at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      SWAP           at 0 range 15 .. 15;
      RXINV          at 0 range 16 .. 16;
      TXINV          at 0 range 17 .. 17;
      DATAINV        at 0 range 18 .. 18;
      MSBFIRST       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ADD            at 0 range 24 .. 31;
   end record;

   subtype CR3_WUS_Field is Interfaces.Bit_Types.UInt2;
   subtype CR3_RXFTCFG_Field is Interfaces.Bit_Types.UInt3;
   subtype CR3_TXFTCFG_Field is Interfaces.Bit_Types.UInt3;

   --  Control register 3
   type CR3_Register is record
      --  Error interrupt enable
      EIE            : Boolean := False;
      --  unspecified
      Reserved_1_2   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Half-duplex selection
      HDSEL          : Boolean := False;
      --  unspecified
      Reserved_4_5   : Interfaces.Bit_Types.UInt2 := 16#0#;
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
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Overrun Disable
      OVRDIS         : Boolean := False;
      --  DMA Disable on Reception Error
      DDRE           : Boolean := False;
      --  Driver enable mode
      DEM            : Boolean := False;
      --  Driver enable polarity selection
      DEP            : Boolean := False;
      --  unspecified
      Reserved_16_19 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Wakeup from Stop mode interrupt flag selection
      WUS            : CR3_WUS_Field := 16#0#;
      --  Wakeup from Stop mode interrupt enable
      WUFIE          : Boolean := False;
      --  threshold interrupt enable
      TXFTIE         : Boolean := False;
      --  unspecified
      Reserved_24_24 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Receive FIFO threshold configuration
      RXFTCFG        : CR3_RXFTCFG_Field := 16#0#;
      --  RXFIFO threshold interrupt enable
      RXFTIE         : Boolean := False;
      --  TXFIFO threshold configuration
      TXFTCFG        : CR3_TXFTCFG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register use record
      EIE            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      HDSEL          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DMAR           at 0 range 6 .. 6;
      DMAT           at 0 range 7 .. 7;
      RTSE           at 0 range 8 .. 8;
      CTSE           at 0 range 9 .. 9;
      CTSIE          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      OVRDIS         at 0 range 12 .. 12;
      DDRE           at 0 range 13 .. 13;
      DEM            at 0 range 14 .. 14;
      DEP            at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      WUS            at 0 range 20 .. 21;
      WUFIE          at 0 range 22 .. 22;
      TXFTIE         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      RXFTCFG        at 0 range 25 .. 27;
      RXFTIE         at 0 range 28 .. 28;
      TXFTCFG        at 0 range 29 .. 31;
   end record;

   subtype BRR_BRR_Field is Interfaces.Bit_Types.UInt20;

   --  Baud rate register
   type BRR_Register is record
      --  BRR
      BRR            : BRR_BRR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register use record
      BRR            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Request register
   type RQR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
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
      Reserved_0_0  at 0 range 0 .. 0;
      SBKRQ         at 0 range 1 .. 1;
      MMRQ          at 0 range 2 .. 2;
      RXFRQ         at 0 range 3 .. 3;
      TXFRQ         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Interrupt and status register
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
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit;
      --  Read-only. CTSIF
      CTSIF          : Boolean;
      --  Read-only. CTS
      CTS            : Boolean;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5;
      --  Read-only. BUSY
      BUSY           : Boolean;
      --  Read-only. CMF
      CMF            : Boolean;
      --  Read-only. SBKF
      SBKF           : Boolean;
      --  Read-only. RWU
      RWU            : Boolean;
      --  Read-only. WUF
      WUF            : Boolean;
      --  Read-only. TEACK
      TEACK          : Boolean;
      --  Read-only. REACK
      REACK          : Boolean;
      --  Read-only. TXFIFO Empty
      TXFE           : Boolean;
      --  Read-only. RXFIFO Full
      RXFF           : Boolean;
      --  unspecified
      Reserved_25_25 : Interfaces.Bit_Types.Bit;
      --  Read-only. RXFIFO threshold flag
      RXFT           : Boolean;
      --  Read-only. TXFIFO threshold flag
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
      Reserved_8_8   at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      WUF            at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      TXFE           at 0 range 23 .. 23;
      RXFF           at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      RXFT           at 0 range 26 .. 26;
      TXFT           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Interrupt and status register
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
      --  Read-only. TXE
      TXE            : Boolean;
      --  unspecified
      Reserved_8_8   : Interfaces.Bit_Types.Bit;
      --  Read-only. CTSIF
      CTSIF          : Boolean;
      --  Read-only. CTS
      CTS            : Boolean;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5;
      --  Read-only. BUSY
      BUSY           : Boolean;
      --  Read-only. CMF
      CMF            : Boolean;
      --  Read-only. SBKF
      SBKF           : Boolean;
      --  Read-only. RWU
      RWU            : Boolean;
      --  Read-only. WUF
      WUF            : Boolean;
      --  Read-only. TEACK
      TEACK          : Boolean;
      --  Read-only. REACK
      REACK          : Boolean;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
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
      TXE            at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CTSIF          at 0 range 9 .. 9;
      CTS            at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      BUSY           at 0 range 16 .. 16;
      CMF            at 0 range 17 .. 17;
      SBKF           at 0 range 18 .. 18;
      RWU            at 0 range 19 .. 19;
      WUF            at 0 range 20 .. 20;
      TEACK          at 0 range 21 .. 21;
      REACK          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
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
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Transmission complete clear flag
      TCCF           : Boolean := False;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. CTS clear flag
      CTSCF          : Boolean := False;
      --  unspecified
      Reserved_10_16 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. Character match clear flag
      CMCF           : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Wakeup from Stop mode clear flag
      WUCF           : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      PECF           at 0 range 0 .. 0;
      FECF           at 0 range 1 .. 1;
      NECF           at 0 range 2 .. 2;
      ORECF          at 0 range 3 .. 3;
      IDLECF         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TCCF           at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      CTSCF          at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      CMCF           at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      WUCF           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
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

   --  Prescaler register
   type PRESC_Register is record
      --  Clock prescaler
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

   --  CR1_DEDT array
   type CR1_DEDT_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for CR1_DEDT
   type CR1_DEDT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DEDT as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  DEDT as an array
            Arr : CR1_DEDT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CR1_DEDT_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  CR1_DEAT array
   type CR1_DEAT_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for CR1_DEAT
   type CR1_DEAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DEAT as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  DEAT as an array
            Arr : CR1_DEAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CR1_DEAT_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  control register 1
   type CR1_Register is record
      --  USART enable
      UE     : Boolean := False;
      --  USART enable in low-power mode
      UESM   : Boolean := False;
      --  Receiver enable
      RE     : Boolean := False;
      --  Transmitter enable
      TE     : Boolean := False;
      --  IDLE interrupt enable
      IDLEIE : Boolean := False;
      --  Receive data register not empty/RXFIFO not empty interrupt enable
      RXNEIE : Boolean := False;
      --  Transmission complete interrupt enable
      TCIE   : Boolean := False;
      --  Transmit data register empty/TXFIFO not full interrupt enable
      TXEIE  : Boolean := False;
      --  PE interrupt enable
      PEIE   : Boolean := False;
      --  Parity selection
      PS     : Boolean := False;
      --  Parity control enable
      PCE    : Boolean := False;
      --  Receiver wakeup method
      WAKE   : Boolean := False;
      --  Word length
      M      : Boolean := False;
      --  Mute mode enable
      MME    : Boolean := False;
      --  Character match interrupt enable
      CMIE   : Boolean := False;
      --  Oversampling mode
      OVER8  : Boolean := False;
      --  DEDT0
      DEDT   : CR1_DEDT_Field := (As_Array => False, Val => 16#0#);
      --  DEAT0
      DEAT   : CR1_DEAT_Field := (As_Array => False, Val => 16#0#);
      --  Receiver timeout interrupt enable
      RTOIE  : Boolean := False;
      --  End of Block interrupt enable
      EOBIE  : Boolean := False;
      --  Word length
      M1     : Boolean := False;
      --  FIFO mode enable
      FIFOEN : Boolean := False;
      --  TXFIFO empty interrupt enable
      TXFEIE : Boolean := False;
      --  RXFIFO Full interrupt enable
      RXFFIE : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      UE     at 0 range 0 .. 0;
      UESM   at 0 range 1 .. 1;
      RE     at 0 range 2 .. 2;
      TE     at 0 range 3 .. 3;
      IDLEIE at 0 range 4 .. 4;
      RXNEIE at 0 range 5 .. 5;
      TCIE   at 0 range 6 .. 6;
      TXEIE  at 0 range 7 .. 7;
      PEIE   at 0 range 8 .. 8;
      PS     at 0 range 9 .. 9;
      PCE    at 0 range 10 .. 10;
      WAKE   at 0 range 11 .. 11;
      M      at 0 range 12 .. 12;
      MME    at 0 range 13 .. 13;
      CMIE   at 0 range 14 .. 14;
      OVER8  at 0 range 15 .. 15;
      DEDT   at 0 range 16 .. 20;
      DEAT   at 0 range 21 .. 25;
      RTOIE  at 0 range 26 .. 26;
      EOBIE  at 0 range 27 .. 27;
      M1     at 0 range 28 .. 28;
      FIFOEN at 0 range 29 .. 29;
      TXFEIE at 0 range 30 .. 30;
      RXFFIE at 0 range 31 .. 31;
   end record;

   --  CR2_ABRMOD array
   type CR2_ABRMOD_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CR2_ABRMOD
   type CR2_ABRMOD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ABRMOD as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  ABRMOD as an array
            Arr : CR2_ABRMOD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CR2_ABRMOD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CR2_ADD3_0_Field is Interfaces.Bit_Types.UInt4;
   subtype CR2_ADD7_4_Field is Interfaces.Bit_Types.UInt4;

   --  control register 2
   type CR2_Register_1 is record
      --  Synchronous Slave mode enable
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
      --  stop bits
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
      --  ABRMOD0
      ABRMOD       : CR2_ABRMOD_Field := (As_Array => False, Val => 16#0#);
      --  Receiver timeout enable
      RTOEN        : Boolean := False;
      --  Address of the USART node
      ADD3_0       : CR2_ADD3_0_Field := 16#0#;
      --  Address of the USART node
      ADD7_4       : CR2_ADD7_4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register_1 use record
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
      ADD3_0       at 0 range 24 .. 27;
      ADD7_4       at 0 range 28 .. 31;
   end record;

   subtype CR3_SCARCNT2_0_Field is Interfaces.Bit_Types.UInt3;

   --  control register 3
   type CR3_Register_1 is record
      --  Error interrupt enable
      EIE            : Boolean := False;
      --  IrDA mode enable
      IREN           : Boolean := False;
      --  IrDA low-power
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
      --  OVRDIS: Overrun Disable
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
      SCARCNT2_0     : CR3_SCARCNT2_0_Field := 16#0#;
      --  Wakeup from low-power mode interrupt flag selection
      WUS            : CR3_WUS_Field := 16#0#;
      --  Wakeup from low-power mode interrupt enable
      WUFIE          : Boolean := False;
      --  TXFIFO threshold interrupt enable
      TXFTIE         : Boolean := False;
      --  Transmission Complete before guard time, interrupt enable
      TCBGTIE        : Boolean := False;
      --  Receive FIFO threshold configuration
      RXFTCFG        : CR3_RXFTCFG_Field := 16#0#;
      --  RXFIFO threshold interrupt enable
      RXFTIE         : Boolean := False;
      --  TXFIFO threshold configuration
      TXFTCFG        : CR3_TXFTCFG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR3_Register_1 use record
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
      SCARCNT2_0     at 0 range 17 .. 19;
      WUS            at 0 range 20 .. 21;
      WUFIE          at 0 range 22 .. 22;
      TXFTIE         at 0 range 23 .. 23;
      TCBGTIE        at 0 range 24 .. 24;
      RXFTCFG        at 0 range 25 .. 27;
      RXFTIE         at 0 range 28 .. 28;
      TXFTCFG        at 0 range 29 .. 31;
   end record;

   subtype BRR_BRR_Field_1 is Interfaces.Bit_Types.UInt16;

   --  baud rate register
   type BRR_Register_1 is record
      --  BRR
      BRR            : BRR_BRR_Field_1 := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRR_Register_1 use record
      BRR            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GTPR_PSC_Field is Interfaces.Bit_Types.Byte;
   subtype GTPR_GT_Field is Interfaces.Bit_Types.Byte;

   --  guard time and prescaler register
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

   --  receiver timeout register
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

   --  request register
   type RQR_Register_1 is record
      --  Auto baud rate request
      ABRRQ         : Boolean := False;
      --  Send break request
      SBKRQ         : Boolean := False;
      --  Mute mode request
      MMRQ          : Boolean := False;
      --  Receive data flush request
      RXFRQ         : Boolean := False;
      --  Transmit data flush request
      TXFRQ         : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RQR_Register_1 use record
      ABRRQ         at 0 range 0 .. 0;
      SBKRQ         at 0 range 1 .. 1;
      MMRQ          at 0 range 2 .. 2;
      RXFRQ         at 0 range 3 .. 3;
      TXFRQ         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  interrupt and status register
   type ISR_Register is record
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
      --  Read-only. RXNE
      RXNE           : Boolean;
      --  Read-only. TC
      TC             : Boolean;
      --  Read-only. TXE
      TXE            : Boolean;
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
      --  Read-only. WUF
      WUF            : Boolean;
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

   for ISR_Register use record
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
      TXFE           at 0 range 23 .. 23;
      RXFF           at 0 range 24 .. 24;
      TCBGT          at 0 range 25 .. 25;
      RXFT           at 0 range 26 .. 26;
      TXFT           at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  interrupt flag clear register
   type ICR_Register_1 is record
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
      --  Write-only. TXFIFO empty clear flag
      TXFECF         : Boolean := False;
      --  Write-only. Transmission complete clear flag
      TCCF           : Boolean := False;
      --  Write-only. Transmission complete before Guard time clear flag
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
      --  Write-only. SPI slave underrun clear flag
      UDRCF          : Boolean := False;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Character match clear flag
      CMCF           : Boolean := False;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Wakeup from low-power mode clear flag
      WUCF           : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register_1 use record
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

   -----------------
   -- Peripherals --
   -----------------

   type LPUART_Disc is
     (ENABLED,
      DISABLED);

   --  Universal synchronous asynchronous receiver transmitter
   type LPUART_Peripheral
     (Discriminent : LPUART_Disc := ENABLED)
   is record
      --  Control register 2
      CR2          : aliased CR2_Register;
      --  Control register 3
      CR3          : aliased CR3_Register;
      --  Baud rate register
      BRR          : aliased BRR_Register;
      --  Request register
      RQR          : aliased RQR_Register;
      --  Interrupt flag clear register
      ICR          : aliased ICR_Register;
      --  Receive data register
      RDR          : aliased RDR_Register;
      --  Transmit data register
      TDR          : aliased TDR_Register;
      --  Prescaler register
      PRESC        : aliased PRESC_Register;
      case Discriminent is
         when ENABLED =>
            --  Control register 1
            CR1_enabled : aliased CR1_enabled_Register;
            --  Interrupt and status register
            ISR_enabled : aliased ISR_enabled_Register;
         when DISABLED =>
            --  Control register 1
            CR1_disabled : aliased CR1_disabled_Register;
            --  Interrupt and status register
            ISR_disabled : aliased ISR_disabled_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LPUART_Peripheral use record
      CR2          at 16#4# range 0 .. 31;
      CR3          at 16#8# range 0 .. 31;
      BRR          at 16#C# range 0 .. 31;
      RQR          at 16#18# range 0 .. 31;
      ICR          at 16#20# range 0 .. 31;
      RDR          at 16#24# range 0 .. 31;
      TDR          at 16#28# range 0 .. 31;
      PRESC        at 16#2C# range 0 .. 31;
      CR1_enabled  at 16#0# range 0 .. 31;
      ISR_enabled  at 16#1C# range 0 .. 31;
      CR1_disabled at 16#0# range 0 .. 31;
      ISR_disabled at 16#1C# range 0 .. 31;
   end record;

   --  Universal synchronous asynchronous receiver transmitter
   LPUART_Periph : aliased LPUART_Peripheral
     with Import, Address => LPUART_Base;

   --  Universal synchronous asynchronous receiver transmitter
   type USART_Peripheral is record
      --  control register 1
      CR1   : aliased CR1_Register;
      --  control register 2
      CR2   : aliased CR2_Register_1;
      --  control register 3
      CR3   : aliased CR3_Register_1;
      --  baud rate register
      BRR   : aliased BRR_Register_1;
      --  guard time and prescaler register
      GTPR  : aliased GTPR_Register;
      --  receiver timeout register
      RTOR  : aliased RTOR_Register;
      --  request register
      RQR   : aliased RQR_Register_1;
      --  interrupt and status register
      ISR   : aliased ISR_Register;
      --  interrupt flag clear register
      ICR   : aliased ICR_Register_1;
      --  receive data register
      RDR   : aliased RDR_Register;
      --  transmit data register
      TDR   : aliased TDR_Register;
      --  prescaler register
      PRESC : aliased PRESC_Register;
   end record
     with Volatile;

   for USART_Peripheral use record
      CR1   at 16#0# range 0 .. 31;
      CR2   at 16#4# range 0 .. 31;
      CR3   at 16#8# range 0 .. 31;
      BRR   at 16#C# range 0 .. 31;
      GTPR  at 16#10# range 0 .. 31;
      RTOR  at 16#14# range 0 .. 31;
      RQR   at 16#18# range 0 .. 31;
      ISR   at 16#1C# range 0 .. 31;
      ICR   at 16#20# range 0 .. 31;
      RDR   at 16#24# range 0 .. 31;
      TDR   at 16#28# range 0 .. 31;
      PRESC at 16#2C# range 0 .. 31;
   end record;

   --  Universal synchronous asynchronous receiver transmitter
   USART1_Periph : aliased USART_Peripheral
     with Import, Address => USART1_Base;

   --  Universal synchronous asynchronous receiver transmitter
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => USART2_Base;

end Interfaces.STM32.USART;
