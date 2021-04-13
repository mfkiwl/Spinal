// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : Pinsec
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26


`define BR_opt_type [3:0]
`define BR_opt_N 4'b1000
`define BR_opt_NE 4'b0001
`define BR_opt_EQ 4'b0000
`define BR_opt_GE 4'b0101
`define BR_opt_GEU 4'b0111
`define BR_opt_LT 4'b0100
`define BR_opt_LTU 4'b0110
`define BR_opt_J 4'b0010
`define BR_opt_JR 4'b0011

`define OP0_binary_sequential_type [1:0]
`define OP0_binary_sequential_RS 2'b00
`define OP0_binary_sequential_IMU 2'b01
`define OP0_binary_sequential_IMZ 2'b10
`define OP0_binary_sequential_IMJB 2'b11

`define OP1_binary_sequential_type [1:0]
`define OP1_binary_sequential_RS 2'b00
`define OP1_binary_sequential_IMI 2'b01
`define OP1_binary_sequential_IMS 2'b10
`define OP1_binary_sequential_PC_1 2'b11

`define ALU_opt_type [3:0]
`define ALU_opt_ADD 4'b0000
`define ALU_opt_SLL1 4'b0001
`define ALU_opt_SLT 4'b0010
`define ALU_opt_SLTU 4'b0011
`define ALU_opt_XOR_1 4'b0100
`define ALU_opt_SRL_1 4'b0101
`define ALU_opt_OR_1 4'b0110
`define ALU_opt_AND_1 4'b0111
`define ALU_opt_SUB 4'b1000
`define ALU_opt_COPY 4'b1111
`define ALU_opt_SRA_1 4'b1101

`define WB_binary_sequential_type [1:0]
`define WB_binary_sequential_ALU_1 2'b00
`define WB_binary_sequential_MEM 2'b01
`define WB_binary_sequential_PC4 2'b10
`define WB_binary_sequential_CSR1 2'b11

`define M_binary_sequential_type [0:0]
`define M_binary_sequential_XRD 1'b0
`define M_binary_sequential_XWR 1'b1

`define MSK_binary_sequential_type [1:0]
`define MSK_binary_sequential_B 2'b00
`define MSK_binary_sequential_H 2'b01
`define MSK_binary_sequential_W 2'b10

`define CSR_binary_sequential_type [1:0]
`define CSR_binary_sequential_N 2'b00
`define CSR_binary_sequential_W 2'b01
`define CSR_binary_sequential_S 2'b10
`define CSR_binary_sequential_C 2'b11

`define MFS_binary_sequential_type [2:0]
`define MFS_binary_sequential_N 3'b000
`define MFS_binary_sequential_SI 3'b001
`define MFS_binary_sequential_SD 3'b010
`define MFS_binary_sequential_FA 3'b011
`define MFS_binary_sequential_FD 3'b100

`define PC_binary_sequential_type [1:0]
`define PC_binary_sequential_INC 2'b00
`define PC_binary_sequential_BRA 2'b01
`define PC_binary_sequential_J 2'b10
`define PC_binary_sequential_JR 2'b11

`define SdramCtrlBackendTask_binary_sequential_type [2:0]
`define SdramCtrlBackendTask_binary_sequential_MODE 3'b000
`define SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL 3'b001
`define SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE 3'b010
`define SdramCtrlBackendTask_binary_sequential_REFRESH 3'b011
`define SdramCtrlBackendTask_binary_sequential_ACTIVE 3'b100
`define SdramCtrlBackendTask_binary_sequential_READ 3'b101
`define SdramCtrlBackendTask_binary_sequential_WRITE 3'b110

`define SdramCtrlFrontendState_binary_sequential_type [1:0]
`define SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE 2'b00
`define SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH 2'b01
`define SdramCtrlFrontendState_binary_sequential_BOOT_MODE 2'b10
`define SdramCtrlFrontendState_binary_sequential_RUN 2'b11

`define JtagState_binary_sequential_type [3:0]
`define JtagState_binary_sequential_RESET 4'b0000
`define JtagState_binary_sequential_IDLE 4'b0001
`define JtagState_binary_sequential_IR_SELECT 4'b0010
`define JtagState_binary_sequential_IR_CAPTURE 4'b0011
`define JtagState_binary_sequential_IR_SHIFT 4'b0100
`define JtagState_binary_sequential_IR_EXIT1 4'b0101
`define JtagState_binary_sequential_IR_PAUSE 4'b0110
`define JtagState_binary_sequential_IR_EXIT2 4'b0111
`define JtagState_binary_sequential_IR_UPDATE 4'b1000
`define JtagState_binary_sequential_DR_SELECT 4'b1001
`define JtagState_binary_sequential_DR_CAPTURE 4'b1010
`define JtagState_binary_sequential_DR_SHIFT 4'b1011
`define JtagState_binary_sequential_DR_EXIT1 4'b1100
`define JtagState_binary_sequential_DR_PAUSE 4'b1101
`define JtagState_binary_sequential_DR_EXIT2 4'b1110
`define JtagState_binary_sequential_DR_UPDATE 4'b1111

`define Axi4ToApb3BridgePhase_binary_sequential_type [1:0]
`define Axi4ToApb3BridgePhase_binary_sequential_SETUP 2'b00
`define Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 2'b01
`define Axi4ToApb3BridgePhase_binary_sequential_RESPONSE 2'b10

`define UartStopType_binary_sequential_type [0:0]
`define UartStopType_binary_sequential_ONE 1'b0
`define UartStopType_binary_sequential_TWO 1'b1

`define UartParityType_binary_sequential_type [1:0]
`define UartParityType_binary_sequential_NONE 2'b00
`define UartParityType_binary_sequential_EVEN 2'b01
`define UartParityType_binary_sequential_ODD 2'b10

`define UartCtrlTxState_binary_sequential_type [2:0]
`define UartCtrlTxState_binary_sequential_IDLE 3'b000
`define UartCtrlTxState_binary_sequential_START 3'b001
`define UartCtrlTxState_binary_sequential_DATA 3'b010
`define UartCtrlTxState_binary_sequential_PARITY 3'b011
`define UartCtrlTxState_binary_sequential_STOP 3'b100

`define UartCtrlRxState_binary_sequential_type [2:0]
`define UartCtrlRxState_binary_sequential_IDLE 3'b000
`define UartCtrlRxState_binary_sequential_START 3'b001
`define UartCtrlRxState_binary_sequential_DATA 3'b010
`define UartCtrlRxState_binary_sequential_PARITY 3'b011
`define UartCtrlRxState_binary_sequential_STOP 3'b100


module Pinsec (
  input               io_asyncReset,
  input               io_axiClk,
  input               io_vgaClk,
  input               io_jtag_tms,
  input               io_jtag_tdi,
  output              io_jtag_tdo,
  input               io_jtag_tck,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input      [31:0]   io_gpioA_read,
  output     [31:0]   io_gpioA_write,
  output     [31:0]   io_gpioA_writeEnable,
  input      [31:0]   io_gpioB_read,
  output     [31:0]   io_gpioB_write,
  output     [31:0]   io_gpioB_writeEnable,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_vga_vSync,
  output              io_vga_hSync,
  output              io_vga_colorEn,
  output     [4:0]    io_vga_color_r,
  output     [5:0]    io_vga_color_g,
  output     [4:0]    io_vga_color_b,
  input               io_timerExternal_clear,
  input               io_timerExternal_tick
);
  reg        [3:0]    _zz_44;
  wire       [11:0]   _zz_45;
  wire       [3:0]    _zz_46;
  wire       [3:0]    _zz_47;
  wire       [7:0]    _zz_48;
  wire       [4:0]    _zz_49;
  wire       [7:0]    _zz_50;
  wire                _zz_51;
  wire                _zz_52;
  wire                _zz_53;
  wire                _zz_54;
  wire                _zz_55;
  wire                _zz_56;
  wire                _zz_57;
  wire                _zz_58;
  wire                _zz_59;
  wire       [11:0]   _zz_60;
  wire       [2:0]    _zz_61;
  wire       [11:0]   _zz_62;
  wire       [1:0]    _zz_63;
  wire       [11:0]   _zz_64;
  wire       [1:0]    _zz_65;
  wire       [25:0]   _zz_66;
  wire       [2:0]    _zz_67;
  wire       [25:0]   _zz_68;
  wire       [1:0]    _zz_69;
  wire       [25:0]   _zz_70;
  wire       [1:0]    _zz_71;
  wire       [25:0]   _zz_72;
  wire       [1:0]    _zz_73;
  wire                _zz_74;
  wire       [19:0]   _zz_75;
  wire       [1:0]    _zz_76;
  wire       [19:0]   _zz_77;
  wire       [1:0]    _zz_78;
  wire                _zz_79;
  wire                _zz_80;
  wire                io_asyncReset_buffercc_io_dataOut;
  wire                resetCtrl_axiResetUnbuffered_buffercc_io_dataOut;
  wire                axi_core_io_i_ar_valid;
  wire       [31:0]   axi_core_io_i_ar_payload_addr;
  wire       [7:0]    axi_core_io_i_ar_payload_len;
  wire       [1:0]    axi_core_io_i_ar_payload_burst;
  wire       [3:0]    axi_core_io_i_ar_payload_cache;
  wire       [2:0]    axi_core_io_i_ar_payload_prot;
  wire                axi_core_io_i_r_ready;
  wire                axi_core_io_d_arw_valid;
  wire       [31:0]   axi_core_io_d_arw_payload_addr;
  wire       [2:0]    axi_core_io_d_arw_payload_size;
  wire       [3:0]    axi_core_io_d_arw_payload_cache;
  wire       [2:0]    axi_core_io_d_arw_payload_prot;
  wire                axi_core_io_d_arw_payload_write;
  wire                axi_core_io_d_w_valid;
  wire       [31:0]   axi_core_io_d_w_payload_data;
  wire       [3:0]    axi_core_io_d_w_payload_strb;
  wire                axi_core_io_d_w_payload_last;
  wire                axi_core_io_d_b_ready;
  wire                axi_core_io_d_r_ready;
  wire                axi_core_io_debugResetOut;
  wire                axi_core_io_debugBus_PREADY;
  wire       [31:0]   axi_core_io_debugBus_PRDATA;
  wire                axi_core_io_debugBus_PSLVERROR;
  wire                axi_ram_io_axi_arw_ready;
  wire                axi_ram_io_axi_w_ready;
  wire                axi_ram_io_axi_b_valid;
  wire       [3:0]    axi_ram_io_axi_b_payload_id;
  wire       [1:0]    axi_ram_io_axi_b_payload_resp;
  wire                axi_ram_io_axi_r_valid;
  wire       [31:0]   axi_ram_io_axi_r_payload_data;
  wire       [3:0]    axi_ram_io_axi_r_payload_id;
  wire       [1:0]    axi_ram_io_axi_r_payload_resp;
  wire                axi_ram_io_axi_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arw_ready;
  wire                axi_sdramCtrl_io_axi_w_ready;
  wire                axi_sdramCtrl_io_axi_b_valid;
  wire       [3:0]    axi_sdramCtrl_io_axi_b_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_b_payload_resp;
  wire                axi_sdramCtrl_io_axi_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_r_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_r_payload_last;
  wire       [12:0]   axi_sdramCtrl_io_sdram_ADDR;
  wire       [1:0]    axi_sdramCtrl_io_sdram_BA;
  wire                axi_sdramCtrl_io_sdram_CASn;
  wire                axi_sdramCtrl_io_sdram_CKE;
  wire                axi_sdramCtrl_io_sdram_CSn;
  wire       [1:0]    axi_sdramCtrl_io_sdram_DQM;
  wire                axi_sdramCtrl_io_sdram_RASn;
  wire                axi_sdramCtrl_io_sdram_WEn;
  wire       [15:0]   axi_sdramCtrl_io_sdram_DQ_write;
  wire       [15:0]   axi_sdramCtrl_io_sdram_DQ_writeEnable;
  wire                axi_jtagCtrl_io_jtag_tdo;
  wire                axi_jtagCtrl_io_axi_arw_valid;
  wire       [31:0]   axi_jtagCtrl_io_axi_arw_payload_addr;
  wire       [2:0]    axi_jtagCtrl_io_axi_arw_payload_size;
  wire                axi_jtagCtrl_io_axi_arw_payload_write;
  wire                axi_jtagCtrl_io_axi_w_valid;
  wire       [31:0]   axi_jtagCtrl_io_axi_w_payload_data;
  wire       [3:0]    axi_jtagCtrl_io_axi_w_payload_strb;
  wire                axi_jtagCtrl_io_axi_w_payload_last;
  wire                axi_jtagCtrl_io_axi_b_ready;
  wire                axi_jtagCtrl_io_axi_r_ready;
  wire                axi_apbBridge_io_axi_arw_ready;
  wire                axi_apbBridge_io_axi_w_ready;
  wire                axi_apbBridge_io_axi_b_valid;
  wire       [3:0]    axi_apbBridge_io_axi_b_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_b_payload_resp;
  wire                axi_apbBridge_io_axi_r_valid;
  wire       [31:0]   axi_apbBridge_io_axi_r_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_r_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_r_payload_resp;
  wire                axi_apbBridge_io_axi_r_payload_last;
  wire       [19:0]   axi_apbBridge_io_apb_PADDR;
  wire       [0:0]    axi_apbBridge_io_apb_PSEL;
  wire                axi_apbBridge_io_apb_PENABLE;
  wire                axi_apbBridge_io_apb_PWRITE;
  wire       [31:0]   axi_apbBridge_io_apb_PWDATA;
  wire                axi_gpioACtrl_io_apb_PREADY;
  wire       [31:0]   axi_gpioACtrl_io_apb_PRDATA;
  wire                axi_gpioACtrl_io_apb_PSLVERROR;
  wire       [31:0]   axi_gpioACtrl_io_gpio_write;
  wire       [31:0]   axi_gpioACtrl_io_gpio_writeEnable;
  wire       [31:0]   axi_gpioACtrl_io_value;
  wire                axi_gpioBCtrl_io_apb_PREADY;
  wire       [31:0]   axi_gpioBCtrl_io_apb_PRDATA;
  wire                axi_gpioBCtrl_io_apb_PSLVERROR;
  wire       [31:0]   axi_gpioBCtrl_io_gpio_write;
  wire       [31:0]   axi_gpioBCtrl_io_gpio_writeEnable;
  wire       [31:0]   axi_gpioBCtrl_io_value;
  wire                axi_timerCtrl_io_apb_PREADY;
  wire       [31:0]   axi_timerCtrl_io_apb_PRDATA;
  wire                axi_timerCtrl_io_apb_PSLVERROR;
  wire                axi_timerCtrl_io_interrupt;
  wire                axi_uartCtrl_io_apb_PREADY;
  wire       [31:0]   axi_uartCtrl_io_apb_PRDATA;
  wire                axi_uartCtrl_io_uart_txd;
  wire                axi_uartCtrl_io_interrupt;
  wire                axi_vgaCtrl_io_axi_ar_valid;
  wire       [31:0]   axi_vgaCtrl_io_axi_ar_payload_addr;
  wire       [7:0]    axi_vgaCtrl_io_axi_ar_payload_len;
  wire       [2:0]    axi_vgaCtrl_io_axi_ar_payload_size;
  wire       [3:0]    axi_vgaCtrl_io_axi_ar_payload_cache;
  wire       [2:0]    axi_vgaCtrl_io_axi_ar_payload_prot;
  wire                axi_vgaCtrl_io_axi_r_ready;
  wire                axi_vgaCtrl_io_apb_PREADY;
  wire       [31:0]   axi_vgaCtrl_io_apb_PRDATA;
  wire                axi_vgaCtrl_io_vga_vSync;
  wire                axi_vgaCtrl_io_vga_hSync;
  wire                axi_vgaCtrl_io_vga_colorEn;
  wire       [4:0]    axi_vgaCtrl_io_vga_color_r;
  wire       [5:0]    axi_vgaCtrl_io_vga_color_g;
  wire       [4:0]    axi_vgaCtrl_io_vga_color_b;
  wire                axi_core_io_i_decoder_io_input_ar_ready;
  wire                axi_core_io_i_decoder_io_input_r_valid;
  wire       [31:0]   axi_core_io_i_decoder_io_input_r_payload_data;
  wire                axi_core_io_i_decoder_io_input_r_payload_last;
  wire                axi_core_io_i_decoder_io_outputs_0_ar_valid;
  wire       [31:0]   axi_core_io_i_decoder_io_outputs_0_ar_payload_addr;
  wire       [7:0]    axi_core_io_i_decoder_io_outputs_0_ar_payload_len;
  wire       [1:0]    axi_core_io_i_decoder_io_outputs_0_ar_payload_burst;
  wire       [3:0]    axi_core_io_i_decoder_io_outputs_0_ar_payload_cache;
  wire       [2:0]    axi_core_io_i_decoder_io_outputs_0_ar_payload_prot;
  wire                axi_core_io_i_decoder_io_outputs_0_r_ready;
  wire                axi_core_io_i_decoder_io_outputs_1_ar_valid;
  wire       [31:0]   axi_core_io_i_decoder_io_outputs_1_ar_payload_addr;
  wire       [7:0]    axi_core_io_i_decoder_io_outputs_1_ar_payload_len;
  wire       [1:0]    axi_core_io_i_decoder_io_outputs_1_ar_payload_burst;
  wire       [3:0]    axi_core_io_i_decoder_io_outputs_1_ar_payload_cache;
  wire       [2:0]    axi_core_io_i_decoder_io_outputs_1_ar_payload_prot;
  wire                axi_core_io_i_decoder_io_outputs_1_r_ready;
  wire                axi_core_io_d_decoder_io_input_arw_ready;
  wire                axi_core_io_d_decoder_io_input_w_ready;
  wire                axi_core_io_d_decoder_io_input_b_valid;
  wire                axi_core_io_d_decoder_io_input_r_valid;
  wire       [31:0]   axi_core_io_d_decoder_io_input_r_payload_data;
  wire                axi_core_io_d_decoder_io_input_r_payload_last;
  wire                axi_core_io_d_decoder_io_sharedOutputs_0_arw_valid;
  wire       [31:0]   axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_addr;
  wire       [2:0]    axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_size;
  wire       [3:0]    axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_cache;
  wire       [2:0]    axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_prot;
  wire                axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_write;
  wire                axi_core_io_d_decoder_io_sharedOutputs_0_w_valid;
  wire       [31:0]   axi_core_io_d_decoder_io_sharedOutputs_0_w_payload_data;
  wire       [3:0]    axi_core_io_d_decoder_io_sharedOutputs_0_w_payload_strb;
  wire                axi_core_io_d_decoder_io_sharedOutputs_0_w_payload_last;
  wire                axi_core_io_d_decoder_io_sharedOutputs_0_b_ready;
  wire                axi_core_io_d_decoder_io_sharedOutputs_0_r_ready;
  wire                axi_core_io_d_decoder_io_sharedOutputs_1_arw_valid;
  wire       [31:0]   axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_addr;
  wire       [2:0]    axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_size;
  wire       [3:0]    axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_cache;
  wire       [2:0]    axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_prot;
  wire                axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_write;
  wire                axi_core_io_d_decoder_io_sharedOutputs_1_w_valid;
  wire       [31:0]   axi_core_io_d_decoder_io_sharedOutputs_1_w_payload_data;
  wire       [3:0]    axi_core_io_d_decoder_io_sharedOutputs_1_w_payload_strb;
  wire                axi_core_io_d_decoder_io_sharedOutputs_1_w_payload_last;
  wire                axi_core_io_d_decoder_io_sharedOutputs_1_b_ready;
  wire                axi_core_io_d_decoder_io_sharedOutputs_1_r_ready;
  wire                axi_core_io_d_decoder_io_sharedOutputs_2_arw_valid;
  wire       [31:0]   axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_addr;
  wire       [2:0]    axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_size;
  wire       [3:0]    axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_cache;
  wire       [2:0]    axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_prot;
  wire                axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_write;
  wire                axi_core_io_d_decoder_io_sharedOutputs_2_w_valid;
  wire       [31:0]   axi_core_io_d_decoder_io_sharedOutputs_2_w_payload_data;
  wire       [3:0]    axi_core_io_d_decoder_io_sharedOutputs_2_w_payload_strb;
  wire                axi_core_io_d_decoder_io_sharedOutputs_2_w_payload_last;
  wire                axi_core_io_d_decoder_io_sharedOutputs_2_b_ready;
  wire                axi_core_io_d_decoder_io_sharedOutputs_2_r_ready;
  wire                axi_jtagCtrl_io_axi_decoder_io_input_arw_ready;
  wire                axi_jtagCtrl_io_axi_decoder_io_input_w_ready;
  wire                axi_jtagCtrl_io_axi_decoder_io_input_b_valid;
  wire                axi_jtagCtrl_io_axi_decoder_io_input_r_valid;
  wire       [31:0]   axi_jtagCtrl_io_axi_decoder_io_input_r_payload_data;
  wire                axi_jtagCtrl_io_axi_decoder_io_input_r_payload_last;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_valid;
  wire       [31:0]   axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_payload_addr;
  wire       [2:0]    axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_payload_size;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_payload_write;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_valid;
  wire       [31:0]   axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_payload_data;
  wire       [3:0]    axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_payload_strb;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_payload_last;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_b_ready;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_r_ready;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_valid;
  wire       [31:0]   axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_payload_addr;
  wire       [2:0]    axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_payload_size;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_payload_write;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_valid;
  wire       [31:0]   axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_payload_data;
  wire       [3:0]    axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_payload_strb;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_payload_last;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_b_ready;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_r_ready;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_valid;
  wire       [31:0]   axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_payload_addr;
  wire       [2:0]    axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_payload_size;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_payload_write;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_valid;
  wire       [31:0]   axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_payload_data;
  wire       [3:0]    axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_payload_strb;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_payload_last;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_b_ready;
  wire                axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_r_ready;
  wire                axi_vgaCtrl_io_axi_decoder_io_input_ar_ready;
  wire                axi_vgaCtrl_io_axi_decoder_io_input_r_valid;
  wire       [31:0]   axi_vgaCtrl_io_axi_decoder_io_input_r_payload_data;
  wire                axi_vgaCtrl_io_axi_decoder_io_input_r_payload_last;
  wire                axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_valid;
  wire       [31:0]   axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_addr;
  wire       [7:0]    axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_len;
  wire       [2:0]    axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_size;
  wire       [3:0]    axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_cache;
  wire       [2:0]    axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_prot;
  wire                axi_vgaCtrl_io_axi_decoder_io_outputs_0_r_ready;
  wire                axi_ram_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                axi_ram_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_1_arw_ready;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_1_w_ready;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_1_b_valid;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_1_b_payload_id;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_1_b_payload_resp;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_1_r_valid;
  wire       [31:0]   axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_data;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_id;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_resp;
  wire                axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_last;
  wire                axi_ram_io_axi_arbiter_io_output_arw_valid;
  wire       [11:0]   axi_ram_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_ram_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_ram_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_ram_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_ram_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_ram_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_ram_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_ram_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_ram_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_ram_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_ram_io_axi_arbiter_io_output_b_ready;
  wire                axi_ram_io_axi_arbiter_io_output_r_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_ar_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_data;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_arw_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_w_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_b_valid;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_b_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_b_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_data;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_id;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_resp;
  wire                axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid;
  wire       [25:0]   axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_b_ready;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_r_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_arw_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_w_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_b_valid;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_b_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_b_payload_resp;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_valid;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_data;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_id;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_resp;
  wire                axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_last;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_valid;
  wire       [19:0]   axi_apbBridge_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_payload_burst;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_payload_write;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_w_payload_strb;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_payload_last;
  wire                axi_apbBridge_io_axi_arbiter_io_output_b_ready;
  wire                axi_apbBridge_io_axi_arbiter_io_output_r_ready;
  wire                io_apb_decoder_io_input_PREADY;
  wire       [31:0]   io_apb_decoder_io_input_PRDATA;
  wire                io_apb_decoder_io_input_PSLVERROR;
  wire       [19:0]   io_apb_decoder_io_output_PADDR;
  wire       [5:0]    io_apb_decoder_io_output_PSEL;
  wire                io_apb_decoder_io_output_PENABLE;
  wire                io_apb_decoder_io_output_PWRITE;
  wire       [31:0]   io_apb_decoder_io_output_PWDATA;
  wire                apb3Router_1_io_input_PREADY;
  wire       [31:0]   apb3Router_1_io_input_PRDATA;
  wire                apb3Router_1_io_input_PSLVERROR;
  wire       [19:0]   apb3Router_1_io_outputs_0_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_0_PSEL;
  wire                apb3Router_1_io_outputs_0_PENABLE;
  wire                apb3Router_1_io_outputs_0_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_0_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_1_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_1_PSEL;
  wire                apb3Router_1_io_outputs_1_PENABLE;
  wire                apb3Router_1_io_outputs_1_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_1_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_2_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_2_PSEL;
  wire                apb3Router_1_io_outputs_2_PENABLE;
  wire                apb3Router_1_io_outputs_2_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_2_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_3_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_3_PSEL;
  wire                apb3Router_1_io_outputs_3_PENABLE;
  wire                apb3Router_1_io_outputs_3_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_3_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_4_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_4_PSEL;
  wire                apb3Router_1_io_outputs_4_PENABLE;
  wire                apb3Router_1_io_outputs_4_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_4_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_5_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_5_PSEL;
  wire                apb3Router_1_io_outputs_5_PENABLE;
  wire                apb3Router_1_io_outputs_5_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_5_PWDATA;
  wire                _zz_81;
  wire                _zz_82;
  wire                _zz_83;
  wire                _zz_84;
  wire                _zz_85;
  reg                 resetCtrl_axiResetUnbuffered;
  reg                 resetCtrl_coreResetUnbuffered;
  reg        [5:0]    resetCtrl_axiResetCounter = 6'h0;
  wire       [5:0]    _zz_1;
  reg                 resetCtrl_axiReset;
  reg                 resetCtrl_coreReset;
  wire                resetCtrl_vgaReset;
  wire                _zz_2;
  wire                _zz_3;
  reg                 _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  reg                 _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  reg                 _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  reg                 _zz_13;
  wire                _zz_14;
  wire                _zz_15;
  reg                 _zz_16;
  wire                _zz_17;
  wire                _zz_18;
  reg                 _zz_19;
  wire                _zz_20;
  wire                _zz_21;
  reg                 _zz_22;
  wire                _zz_23;
  wire                _zz_24;
  reg                 _zz_25;
  wire                _zz_26;
  wire                _zz_27;
  reg                 _zz_28;
  wire       [1:0]    _zz_29;
  wire       [1:0]    _zz_30;
  wire       [7:0]    _zz_31;
  wire       [1:0]    _zz_32;
  wire       [7:0]    _zz_33;
  wire       [1:0]    _zz_34;
  wire       [1:0]    _zz_35;
  wire       [1:0]    _zz_36;
  wire       [7:0]    _zz_37;
  wire       [1:0]    _zz_38;
  wire       [7:0]    _zz_39;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [25:0]   axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready;
  reg        [25:0]   axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  reg        [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  reg        [7:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  reg        [2:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  reg        [1:0]    axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_valid;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid;
  reg        [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_data;
  reg        [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_strb;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_last;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready;
  wire       [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data;
  wire       [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb;
  wire                axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid;
  reg        [31:0]   axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data;
  reg        [3:0]    axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb;
  reg                 axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last;
  wire       [2:0]    _zz_40;
  wire       [7:0]    _zz_41;
  wire       [2:0]    _zz_42;
  wire       [7:0]    _zz_43;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [19:0]   axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready;
  reg        [19:0]   axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  reg        [3:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  reg        [7:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  reg        [2:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  reg        [1:0]    axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready;
  wire       [31:0]   axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_data;
  wire       [3:0]    axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_strb;
  wire                axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_last;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready;
  reg        [31:0]   axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_data;
  reg        [3:0]    axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_strb;
  reg                 axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_last;

  assign _zz_81 = (resetCtrl_axiResetCounter != _zz_1);
  assign _zz_82 = (! axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid);
  assign _zz_83 = (_zz_74 && (! axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready));
  assign _zz_84 = (! axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid);
  assign _zz_85 = (! axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid);
  BufferCC_10 io_asyncReset_buffercc (
    .io_dataIn     (io_asyncReset                      ), //i
    .io_dataOut    (io_asyncReset_buffercc_io_dataOut  ), //o
    .io_axiClk     (io_axiClk                          )  //i
  );
  BufferCC_10 resetCtrl_axiResetUnbuffered_buffercc (
    .io_dataIn     (resetCtrl_axiResetUnbuffered                      ), //i
    .io_dataOut    (resetCtrl_axiResetUnbuffered_buffercc_io_dataOut  ), //o
    .io_axiClk     (io_axiClk                                         )  //i
  );
  RiscvAxi4 axi_core (
    .io_i_ar_valid             (axi_core_io_i_ar_valid                               ), //o
    .io_i_ar_ready             (axi_core_io_i_decoder_io_input_ar_ready              ), //i
    .io_i_ar_payload_addr      (axi_core_io_i_ar_payload_addr[31:0]                  ), //o
    .io_i_ar_payload_len       (axi_core_io_i_ar_payload_len[7:0]                    ), //o
    .io_i_ar_payload_burst     (axi_core_io_i_ar_payload_burst[1:0]                  ), //o
    .io_i_ar_payload_cache     (axi_core_io_i_ar_payload_cache[3:0]                  ), //o
    .io_i_ar_payload_prot      (axi_core_io_i_ar_payload_prot[2:0]                   ), //o
    .io_i_r_valid              (axi_core_io_i_decoder_io_input_r_valid               ), //i
    .io_i_r_ready              (axi_core_io_i_r_ready                                ), //o
    .io_i_r_payload_data       (axi_core_io_i_decoder_io_input_r_payload_data[31:0]  ), //i
    .io_i_r_payload_last       (axi_core_io_i_decoder_io_input_r_payload_last        ), //i
    .io_d_arw_valid            (axi_core_io_d_arw_valid                              ), //o
    .io_d_arw_ready            (axi_core_io_d_decoder_io_input_arw_ready             ), //i
    .io_d_arw_payload_addr     (axi_core_io_d_arw_payload_addr[31:0]                 ), //o
    .io_d_arw_payload_size     (axi_core_io_d_arw_payload_size[2:0]                  ), //o
    .io_d_arw_payload_cache    (axi_core_io_d_arw_payload_cache[3:0]                 ), //o
    .io_d_arw_payload_prot     (axi_core_io_d_arw_payload_prot[2:0]                  ), //o
    .io_d_arw_payload_write    (axi_core_io_d_arw_payload_write                      ), //o
    .io_d_w_valid              (axi_core_io_d_w_valid                                ), //o
    .io_d_w_ready              (axi_core_io_d_decoder_io_input_w_ready               ), //i
    .io_d_w_payload_data       (axi_core_io_d_w_payload_data[31:0]                   ), //o
    .io_d_w_payload_strb       (axi_core_io_d_w_payload_strb[3:0]                    ), //o
    .io_d_w_payload_last       (axi_core_io_d_w_payload_last                         ), //o
    .io_d_b_valid              (axi_core_io_d_decoder_io_input_b_valid               ), //i
    .io_d_b_ready              (axi_core_io_d_b_ready                                ), //o
    .io_d_r_valid              (axi_core_io_d_decoder_io_input_r_valid               ), //i
    .io_d_r_ready              (axi_core_io_d_r_ready                                ), //o
    .io_d_r_payload_data       (axi_core_io_d_decoder_io_input_r_payload_data[31:0]  ), //i
    .io_d_r_payload_last       (axi_core_io_d_decoder_io_input_r_payload_last        ), //i
    .io_interrupt              (_zz_44[3:0]                                          ), //i
    .io_debugResetIn           (resetCtrl_axiReset                                   ), //i
    .io_debugResetOut          (axi_core_io_debugResetOut                            ), //o
    .io_debugBus_PADDR         (_zz_45[11:0]                                         ), //i
    .io_debugBus_PSEL          (apb3Router_1_io_outputs_5_PSEL                       ), //i
    .io_debugBus_PENABLE       (apb3Router_1_io_outputs_5_PENABLE                    ), //i
    .io_debugBus_PREADY        (axi_core_io_debugBus_PREADY                          ), //o
    .io_debugBus_PWRITE        (apb3Router_1_io_outputs_5_PWRITE                     ), //i
    .io_debugBus_PWDATA        (apb3Router_1_io_outputs_5_PWDATA[31:0]               ), //i
    .io_debugBus_PRDATA        (axi_core_io_debugBus_PRDATA[31:0]                    ), //o
    .io_debugBus_PSLVERROR     (axi_core_io_debugBus_PSLVERROR                       ), //o
    .io_axiClk                 (io_axiClk                                            ), //i
    .resetCtrl_coreReset       (resetCtrl_coreReset                                  )  //i
  );
  Axi4SharedOnChipRam axi_ram (
    .io_axi_arw_valid            (axi_ram_io_axi_arbiter_io_output_arw_valid               ), //i
    .io_axi_arw_ready            (axi_ram_io_axi_arw_ready                                 ), //o
    .io_axi_arw_payload_addr     (axi_ram_io_axi_arbiter_io_output_arw_payload_addr[11:0]  ), //i
    .io_axi_arw_payload_id       (axi_ram_io_axi_arbiter_io_output_arw_payload_id[3:0]     ), //i
    .io_axi_arw_payload_len      (axi_ram_io_axi_arbiter_io_output_arw_payload_len[7:0]    ), //i
    .io_axi_arw_payload_size     (axi_ram_io_axi_arbiter_io_output_arw_payload_size[2:0]   ), //i
    .io_axi_arw_payload_burst    (axi_ram_io_axi_arbiter_io_output_arw_payload_burst[1:0]  ), //i
    .io_axi_arw_payload_write    (axi_ram_io_axi_arbiter_io_output_arw_payload_write       ), //i
    .io_axi_w_valid              (axi_ram_io_axi_arbiter_io_output_w_valid                 ), //i
    .io_axi_w_ready              (axi_ram_io_axi_w_ready                                   ), //o
    .io_axi_w_payload_data       (axi_ram_io_axi_arbiter_io_output_w_payload_data[31:0]    ), //i
    .io_axi_w_payload_strb       (axi_ram_io_axi_arbiter_io_output_w_payload_strb[3:0]     ), //i
    .io_axi_w_payload_last       (axi_ram_io_axi_arbiter_io_output_w_payload_last          ), //i
    .io_axi_b_valid              (axi_ram_io_axi_b_valid                                   ), //o
    .io_axi_b_ready              (axi_ram_io_axi_arbiter_io_output_b_ready                 ), //i
    .io_axi_b_payload_id         (axi_ram_io_axi_b_payload_id[3:0]                         ), //o
    .io_axi_b_payload_resp       (axi_ram_io_axi_b_payload_resp[1:0]                       ), //o
    .io_axi_r_valid              (axi_ram_io_axi_r_valid                                   ), //o
    .io_axi_r_ready              (axi_ram_io_axi_arbiter_io_output_r_ready                 ), //i
    .io_axi_r_payload_data       (axi_ram_io_axi_r_payload_data[31:0]                      ), //o
    .io_axi_r_payload_id         (axi_ram_io_axi_r_payload_id[3:0]                         ), //o
    .io_axi_r_payload_resp       (axi_ram_io_axi_r_payload_resp[1:0]                       ), //o
    .io_axi_r_payload_last       (axi_ram_io_axi_r_payload_last                            ), //o
    .io_axiClk                   (io_axiClk                                                ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                       )  //i
  );
  Axi4SharedSdramCtrl axi_sdramCtrl (
    .io_axi_arw_valid            (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid                    ), //i
    .io_axi_arw_ready            (axi_sdramCtrl_io_axi_arw_ready                                               ), //o
    .io_axi_arw_payload_addr     (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_addr[25:0]       ), //i
    .io_axi_arw_payload_id       (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_id[3:0]          ), //i
    .io_axi_arw_payload_len      (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_len[7:0]         ), //i
    .io_axi_arw_payload_size     (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_size[2:0]        ), //i
    .io_axi_arw_payload_burst    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_burst[1:0]       ), //i
    .io_axi_arw_payload_write    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_write            ), //i
    .io_axi_w_valid              (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid               ), //i
    .io_axi_w_ready              (axi_sdramCtrl_io_axi_w_ready                                                 ), //o
    .io_axi_w_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data[31:0]  ), //i
    .io_axi_w_payload_strb       (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb[3:0]   ), //i
    .io_axi_w_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last        ), //i
    .io_axi_b_valid              (axi_sdramCtrl_io_axi_b_valid                                                 ), //o
    .io_axi_b_ready              (axi_sdramCtrl_io_axi_arbiter_io_output_b_ready                               ), //i
    .io_axi_b_payload_id         (axi_sdramCtrl_io_axi_b_payload_id[3:0]                                       ), //o
    .io_axi_b_payload_resp       (axi_sdramCtrl_io_axi_b_payload_resp[1:0]                                     ), //o
    .io_axi_r_valid              (axi_sdramCtrl_io_axi_r_valid                                                 ), //o
    .io_axi_r_ready              (axi_sdramCtrl_io_axi_arbiter_io_output_r_ready                               ), //i
    .io_axi_r_payload_data       (axi_sdramCtrl_io_axi_r_payload_data[31:0]                                    ), //o
    .io_axi_r_payload_id         (axi_sdramCtrl_io_axi_r_payload_id[3:0]                                       ), //o
    .io_axi_r_payload_resp       (axi_sdramCtrl_io_axi_r_payload_resp[1:0]                                     ), //o
    .io_axi_r_payload_last       (axi_sdramCtrl_io_axi_r_payload_last                                          ), //o
    .io_sdram_ADDR               (axi_sdramCtrl_io_sdram_ADDR[12:0]                                            ), //o
    .io_sdram_BA                 (axi_sdramCtrl_io_sdram_BA[1:0]                                               ), //o
    .io_sdram_DQ_read            (io_sdram_DQ_read[15:0]                                                       ), //i
    .io_sdram_DQ_write           (axi_sdramCtrl_io_sdram_DQ_write[15:0]                                        ), //o
    .io_sdram_DQ_writeEnable     (axi_sdramCtrl_io_sdram_DQ_writeEnable[15:0]                                  ), //o
    .io_sdram_DQM                (axi_sdramCtrl_io_sdram_DQM[1:0]                                              ), //o
    .io_sdram_CASn               (axi_sdramCtrl_io_sdram_CASn                                                  ), //o
    .io_sdram_CKE                (axi_sdramCtrl_io_sdram_CKE                                                   ), //o
    .io_sdram_CSn                (axi_sdramCtrl_io_sdram_CSn                                                   ), //o
    .io_sdram_RASn               (axi_sdramCtrl_io_sdram_RASn                                                  ), //o
    .io_sdram_WEn                (axi_sdramCtrl_io_sdram_WEn                                                   ), //o
    .io_axiClk                   (io_axiClk                                                                    ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                                           )  //i
  );
  JtagAxi4SharedDebugger axi_jtagCtrl (
    .io_jtag_tms                 (io_jtag_tms                                                ), //i
    .io_jtag_tdi                 (io_jtag_tdi                                                ), //i
    .io_jtag_tdo                 (axi_jtagCtrl_io_jtag_tdo                                   ), //o
    .io_jtag_tck                 (io_jtag_tck                                                ), //i
    .io_axi_arw_valid            (axi_jtagCtrl_io_axi_arw_valid                              ), //o
    .io_axi_arw_ready            (axi_jtagCtrl_io_axi_decoder_io_input_arw_ready             ), //i
    .io_axi_arw_payload_addr     (axi_jtagCtrl_io_axi_arw_payload_addr[31:0]                 ), //o
    .io_axi_arw_payload_size     (axi_jtagCtrl_io_axi_arw_payload_size[2:0]                  ), //o
    .io_axi_arw_payload_write    (axi_jtagCtrl_io_axi_arw_payload_write                      ), //o
    .io_axi_w_valid              (axi_jtagCtrl_io_axi_w_valid                                ), //o
    .io_axi_w_ready              (axi_jtagCtrl_io_axi_decoder_io_input_w_ready               ), //i
    .io_axi_w_payload_data       (axi_jtagCtrl_io_axi_w_payload_data[31:0]                   ), //o
    .io_axi_w_payload_strb       (axi_jtagCtrl_io_axi_w_payload_strb[3:0]                    ), //o
    .io_axi_w_payload_last       (axi_jtagCtrl_io_axi_w_payload_last                         ), //o
    .io_axi_b_valid              (axi_jtagCtrl_io_axi_decoder_io_input_b_valid               ), //i
    .io_axi_b_ready              (axi_jtagCtrl_io_axi_b_ready                                ), //o
    .io_axi_r_valid              (axi_jtagCtrl_io_axi_decoder_io_input_r_valid               ), //i
    .io_axi_r_ready              (axi_jtagCtrl_io_axi_r_ready                                ), //o
    .io_axi_r_payload_data       (axi_jtagCtrl_io_axi_decoder_io_input_r_payload_data[31:0]  ), //i
    .io_axi_r_payload_last       (axi_jtagCtrl_io_axi_decoder_io_input_r_payload_last        ), //i
    .io_axiClk                   (io_axiClk                                                  ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                         )  //i
  );
  Axi4SharedToApb3Bridge axi_apbBridge (
    .io_axi_arw_valid            (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid               ), //i
    .io_axi_arw_ready            (axi_apbBridge_io_axi_arw_ready                                          ), //o
    .io_axi_arw_payload_addr     (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_addr[19:0]  ), //i
    .io_axi_arw_payload_id       (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_id[3:0]     ), //i
    .io_axi_arw_payload_len      (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_len[7:0]    ), //i
    .io_axi_arw_payload_size     (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_size[2:0]   ), //i
    .io_axi_arw_payload_burst    (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_burst[1:0]  ), //i
    .io_axi_arw_payload_write    (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_write       ), //i
    .io_axi_w_valid              (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid                 ), //i
    .io_axi_w_ready              (axi_apbBridge_io_axi_w_ready                                            ), //o
    .io_axi_w_payload_data       (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_data[31:0]    ), //i
    .io_axi_w_payload_strb       (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_strb[3:0]     ), //i
    .io_axi_w_payload_last       (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_last          ), //i
    .io_axi_b_valid              (axi_apbBridge_io_axi_b_valid                                            ), //o
    .io_axi_b_ready              (axi_apbBridge_io_axi_arbiter_io_output_b_ready                          ), //i
    .io_axi_b_payload_id         (axi_apbBridge_io_axi_b_payload_id[3:0]                                  ), //o
    .io_axi_b_payload_resp       (axi_apbBridge_io_axi_b_payload_resp[1:0]                                ), //o
    .io_axi_r_valid              (axi_apbBridge_io_axi_r_valid                                            ), //o
    .io_axi_r_ready              (axi_apbBridge_io_axi_arbiter_io_output_r_ready                          ), //i
    .io_axi_r_payload_data       (axi_apbBridge_io_axi_r_payload_data[31:0]                               ), //o
    .io_axi_r_payload_id         (axi_apbBridge_io_axi_r_payload_id[3:0]                                  ), //o
    .io_axi_r_payload_resp       (axi_apbBridge_io_axi_r_payload_resp[1:0]                                ), //o
    .io_axi_r_payload_last       (axi_apbBridge_io_axi_r_payload_last                                     ), //o
    .io_apb_PADDR                (axi_apbBridge_io_apb_PADDR[19:0]                                        ), //o
    .io_apb_PSEL                 (axi_apbBridge_io_apb_PSEL                                               ), //o
    .io_apb_PENABLE              (axi_apbBridge_io_apb_PENABLE                                            ), //o
    .io_apb_PREADY               (io_apb_decoder_io_input_PREADY                                          ), //i
    .io_apb_PWRITE               (axi_apbBridge_io_apb_PWRITE                                             ), //o
    .io_apb_PWDATA               (axi_apbBridge_io_apb_PWDATA[31:0]                                       ), //o
    .io_apb_PRDATA               (io_apb_decoder_io_input_PRDATA[31:0]                                    ), //i
    .io_apb_PSLVERROR            (io_apb_decoder_io_input_PSLVERROR                                       ), //i
    .io_axiClk                   (io_axiClk                                                               ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                                                      )  //i
  );
  Apb3Gpio axi_gpioACtrl (
    .io_apb_PADDR           (_zz_46[3:0]                              ), //i
    .io_apb_PSEL            (apb3Router_1_io_outputs_0_PSEL           ), //i
    .io_apb_PENABLE         (apb3Router_1_io_outputs_0_PENABLE        ), //i
    .io_apb_PREADY          (axi_gpioACtrl_io_apb_PREADY              ), //o
    .io_apb_PWRITE          (apb3Router_1_io_outputs_0_PWRITE         ), //i
    .io_apb_PWDATA          (apb3Router_1_io_outputs_0_PWDATA[31:0]   ), //i
    .io_apb_PRDATA          (axi_gpioACtrl_io_apb_PRDATA[31:0]        ), //o
    .io_apb_PSLVERROR       (axi_gpioACtrl_io_apb_PSLVERROR           ), //o
    .io_gpio_read           (io_gpioA_read[31:0]                      ), //i
    .io_gpio_write          (axi_gpioACtrl_io_gpio_write[31:0]        ), //o
    .io_gpio_writeEnable    (axi_gpioACtrl_io_gpio_writeEnable[31:0]  ), //o
    .io_value               (axi_gpioACtrl_io_value[31:0]             ), //o
    .io_axiClk              (io_axiClk                                ), //i
    .resetCtrl_axiReset     (resetCtrl_axiReset                       )  //i
  );
  Apb3Gpio axi_gpioBCtrl (
    .io_apb_PADDR           (_zz_47[3:0]                              ), //i
    .io_apb_PSEL            (apb3Router_1_io_outputs_1_PSEL           ), //i
    .io_apb_PENABLE         (apb3Router_1_io_outputs_1_PENABLE        ), //i
    .io_apb_PREADY          (axi_gpioBCtrl_io_apb_PREADY              ), //o
    .io_apb_PWRITE          (apb3Router_1_io_outputs_1_PWRITE         ), //i
    .io_apb_PWDATA          (apb3Router_1_io_outputs_1_PWDATA[31:0]   ), //i
    .io_apb_PRDATA          (axi_gpioBCtrl_io_apb_PRDATA[31:0]        ), //o
    .io_apb_PSLVERROR       (axi_gpioBCtrl_io_apb_PSLVERROR           ), //o
    .io_gpio_read           (io_gpioB_read[31:0]                      ), //i
    .io_gpio_write          (axi_gpioBCtrl_io_gpio_write[31:0]        ), //o
    .io_gpio_writeEnable    (axi_gpioBCtrl_io_gpio_writeEnable[31:0]  ), //o
    .io_value               (axi_gpioBCtrl_io_value[31:0]             ), //o
    .io_axiClk              (io_axiClk                                ), //i
    .resetCtrl_axiReset     (resetCtrl_axiReset                       )  //i
  );
  PinsecTimerCtrl axi_timerCtrl (
    .io_apb_PADDR          (_zz_48[7:0]                             ), //i
    .io_apb_PSEL           (apb3Router_1_io_outputs_3_PSEL          ), //i
    .io_apb_PENABLE        (apb3Router_1_io_outputs_3_PENABLE       ), //i
    .io_apb_PREADY         (axi_timerCtrl_io_apb_PREADY             ), //o
    .io_apb_PWRITE         (apb3Router_1_io_outputs_3_PWRITE        ), //i
    .io_apb_PWDATA         (apb3Router_1_io_outputs_3_PWDATA[31:0]  ), //i
    .io_apb_PRDATA         (axi_timerCtrl_io_apb_PRDATA[31:0]       ), //o
    .io_apb_PSLVERROR      (axi_timerCtrl_io_apb_PSLVERROR          ), //o
    .io_external_clear     (io_timerExternal_clear                  ), //i
    .io_external_tick      (io_timerExternal_tick                   ), //i
    .io_interrupt          (axi_timerCtrl_io_interrupt              ), //o
    .io_axiClk             (io_axiClk                               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                      )  //i
  );
  Apb3UartCtrl axi_uartCtrl (
    .io_apb_PADDR          (_zz_49[4:0]                             ), //i
    .io_apb_PSEL           (apb3Router_1_io_outputs_2_PSEL          ), //i
    .io_apb_PENABLE        (apb3Router_1_io_outputs_2_PENABLE       ), //i
    .io_apb_PREADY         (axi_uartCtrl_io_apb_PREADY              ), //o
    .io_apb_PWRITE         (apb3Router_1_io_outputs_2_PWRITE        ), //i
    .io_apb_PWDATA         (apb3Router_1_io_outputs_2_PWDATA[31:0]  ), //i
    .io_apb_PRDATA         (axi_uartCtrl_io_apb_PRDATA[31:0]        ), //o
    .io_uart_txd           (axi_uartCtrl_io_uart_txd                ), //o
    .io_uart_rxd           (io_uart_rxd                             ), //i
    .io_interrupt          (axi_uartCtrl_io_interrupt               ), //o
    .io_axiClk             (io_axiClk                               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                      )  //i
  );
  Axi4VgaCtrl axi_vgaCtrl (
    .io_axi_ar_valid            (axi_vgaCtrl_io_axi_ar_valid                               ), //o
    .io_axi_ar_ready            (axi_vgaCtrl_io_axi_decoder_io_input_ar_ready              ), //i
    .io_axi_ar_payload_addr     (axi_vgaCtrl_io_axi_ar_payload_addr[31:0]                  ), //o
    .io_axi_ar_payload_len      (axi_vgaCtrl_io_axi_ar_payload_len[7:0]                    ), //o
    .io_axi_ar_payload_size     (axi_vgaCtrl_io_axi_ar_payload_size[2:0]                   ), //o
    .io_axi_ar_payload_cache    (axi_vgaCtrl_io_axi_ar_payload_cache[3:0]                  ), //o
    .io_axi_ar_payload_prot     (axi_vgaCtrl_io_axi_ar_payload_prot[2:0]                   ), //o
    .io_axi_r_valid             (axi_vgaCtrl_io_axi_decoder_io_input_r_valid               ), //i
    .io_axi_r_ready             (axi_vgaCtrl_io_axi_r_ready                                ), //o
    .io_axi_r_payload_data      (axi_vgaCtrl_io_axi_decoder_io_input_r_payload_data[31:0]  ), //i
    .io_axi_r_payload_last      (axi_vgaCtrl_io_axi_decoder_io_input_r_payload_last        ), //i
    .io_apb_PADDR               (_zz_50[7:0]                                               ), //i
    .io_apb_PSEL                (apb3Router_1_io_outputs_4_PSEL                            ), //i
    .io_apb_PENABLE             (apb3Router_1_io_outputs_4_PENABLE                         ), //i
    .io_apb_PREADY              (axi_vgaCtrl_io_apb_PREADY                                 ), //o
    .io_apb_PWRITE              (apb3Router_1_io_outputs_4_PWRITE                          ), //i
    .io_apb_PWDATA              (apb3Router_1_io_outputs_4_PWDATA[31:0]                    ), //i
    .io_apb_PRDATA              (axi_vgaCtrl_io_apb_PRDATA[31:0]                           ), //o
    .io_vga_vSync               (axi_vgaCtrl_io_vga_vSync                                  ), //o
    .io_vga_hSync               (axi_vgaCtrl_io_vga_hSync                                  ), //o
    .io_vga_colorEn             (axi_vgaCtrl_io_vga_colorEn                                ), //o
    .io_vga_color_r             (axi_vgaCtrl_io_vga_color_r[4:0]                           ), //o
    .io_vga_color_g             (axi_vgaCtrl_io_vga_color_g[5:0]                           ), //o
    .io_vga_color_b             (axi_vgaCtrl_io_vga_color_b[4:0]                           ), //o
    .io_axiClk                  (io_axiClk                                                 ), //i
    .resetCtrl_axiReset         (resetCtrl_axiReset                                        ), //i
    .io_vgaClk                  (io_vgaClk                                                 ), //i
    .resetCtrl_vgaReset         (resetCtrl_vgaReset                                        )  //i
  );
  Axi4ReadOnlyDecoder axi_core_io_i_decoder (
    .io_input_ar_valid                (axi_core_io_i_ar_valid                                             ), //i
    .io_input_ar_ready                (axi_core_io_i_decoder_io_input_ar_ready                            ), //o
    .io_input_ar_payload_addr         (axi_core_io_i_ar_payload_addr[31:0]                                ), //i
    .io_input_ar_payload_len          (axi_core_io_i_ar_payload_len[7:0]                                  ), //i
    .io_input_ar_payload_burst        (axi_core_io_i_ar_payload_burst[1:0]                                ), //i
    .io_input_ar_payload_cache        (axi_core_io_i_ar_payload_cache[3:0]                                ), //i
    .io_input_ar_payload_prot         (axi_core_io_i_ar_payload_prot[2:0]                                 ), //i
    .io_input_r_valid                 (axi_core_io_i_decoder_io_input_r_valid                             ), //o
    .io_input_r_ready                 (axi_core_io_i_r_ready                                              ), //i
    .io_input_r_payload_data          (axi_core_io_i_decoder_io_input_r_payload_data[31:0]                ), //o
    .io_input_r_payload_last          (axi_core_io_i_decoder_io_input_r_payload_last                      ), //o
    .io_outputs_0_ar_valid            (axi_core_io_i_decoder_io_outputs_0_ar_valid                        ), //o
    .io_outputs_0_ar_ready            (_zz_51                                                             ), //i
    .io_outputs_0_ar_payload_addr     (axi_core_io_i_decoder_io_outputs_0_ar_payload_addr[31:0]           ), //o
    .io_outputs_0_ar_payload_len      (axi_core_io_i_decoder_io_outputs_0_ar_payload_len[7:0]             ), //o
    .io_outputs_0_ar_payload_burst    (axi_core_io_i_decoder_io_outputs_0_ar_payload_burst[1:0]           ), //o
    .io_outputs_0_ar_payload_cache    (axi_core_io_i_decoder_io_outputs_0_ar_payload_cache[3:0]           ), //o
    .io_outputs_0_ar_payload_prot     (axi_core_io_i_decoder_io_outputs_0_ar_payload_prot[2:0]            ), //o
    .io_outputs_0_r_valid             (axi_ram_io_axi_arbiter_io_readInputs_0_r_valid                     ), //i
    .io_outputs_0_r_ready             (axi_core_io_i_decoder_io_outputs_0_r_ready                         ), //o
    .io_outputs_0_r_payload_data      (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]        ), //i
    .io_outputs_0_r_payload_last      (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_last              ), //i
    .io_outputs_1_ar_valid            (axi_core_io_i_decoder_io_outputs_1_ar_valid                        ), //o
    .io_outputs_1_ar_ready            (_zz_52                                                             ), //i
    .io_outputs_1_ar_payload_addr     (axi_core_io_i_decoder_io_outputs_1_ar_payload_addr[31:0]           ), //o
    .io_outputs_1_ar_payload_len      (axi_core_io_i_decoder_io_outputs_1_ar_payload_len[7:0]             ), //o
    .io_outputs_1_ar_payload_burst    (axi_core_io_i_decoder_io_outputs_1_ar_payload_burst[1:0]           ), //o
    .io_outputs_1_ar_payload_cache    (axi_core_io_i_decoder_io_outputs_1_ar_payload_cache[3:0]           ), //o
    .io_outputs_1_ar_payload_prot     (axi_core_io_i_decoder_io_outputs_1_ar_payload_prot[2:0]            ), //o
    .io_outputs_1_r_valid             (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_valid               ), //i
    .io_outputs_1_r_ready             (axi_core_io_i_decoder_io_outputs_1_r_ready                         ), //o
    .io_outputs_1_r_payload_data      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]  ), //i
    .io_outputs_1_r_payload_last      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_last        ), //i
    .io_axiClk                        (io_axiClk                                                          ), //i
    .resetCtrl_axiReset               (resetCtrl_axiReset                                                 )  //i
  );
  Axi4SharedDecoder axi_core_io_d_decoder (
    .io_input_arw_valid                      (axi_core_io_d_arw_valid                                              ), //i
    .io_input_arw_ready                      (axi_core_io_d_decoder_io_input_arw_ready                             ), //o
    .io_input_arw_payload_addr               (axi_core_io_d_arw_payload_addr[31:0]                                 ), //i
    .io_input_arw_payload_size               (axi_core_io_d_arw_payload_size[2:0]                                  ), //i
    .io_input_arw_payload_cache              (axi_core_io_d_arw_payload_cache[3:0]                                 ), //i
    .io_input_arw_payload_prot               (axi_core_io_d_arw_payload_prot[2:0]                                  ), //i
    .io_input_arw_payload_write              (axi_core_io_d_arw_payload_write                                      ), //i
    .io_input_w_valid                        (axi_core_io_d_w_valid                                                ), //i
    .io_input_w_ready                        (axi_core_io_d_decoder_io_input_w_ready                               ), //o
    .io_input_w_payload_data                 (axi_core_io_d_w_payload_data[31:0]                                   ), //i
    .io_input_w_payload_strb                 (axi_core_io_d_w_payload_strb[3:0]                                    ), //i
    .io_input_w_payload_last                 (axi_core_io_d_w_payload_last                                         ), //i
    .io_input_b_valid                        (axi_core_io_d_decoder_io_input_b_valid                               ), //o
    .io_input_b_ready                        (axi_core_io_d_b_ready                                                ), //i
    .io_input_r_valid                        (axi_core_io_d_decoder_io_input_r_valid                               ), //o
    .io_input_r_ready                        (axi_core_io_d_r_ready                                                ), //i
    .io_input_r_payload_data                 (axi_core_io_d_decoder_io_input_r_payload_data[31:0]                  ), //o
    .io_input_r_payload_last                 (axi_core_io_d_decoder_io_input_r_payload_last                        ), //o
    .io_sharedOutputs_0_arw_valid            (axi_core_io_d_decoder_io_sharedOutputs_0_arw_valid                   ), //o
    .io_sharedOutputs_0_arw_ready            (_zz_53                                                               ), //i
    .io_sharedOutputs_0_arw_payload_addr     (axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_addr[31:0]      ), //o
    .io_sharedOutputs_0_arw_payload_size     (axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_size[2:0]       ), //o
    .io_sharedOutputs_0_arw_payload_cache    (axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_cache[3:0]      ), //o
    .io_sharedOutputs_0_arw_payload_prot     (axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_prot[2:0]       ), //o
    .io_sharedOutputs_0_arw_payload_write    (axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_write           ), //o
    .io_sharedOutputs_0_w_valid              (axi_core_io_d_decoder_io_sharedOutputs_0_w_valid                     ), //o
    .io_sharedOutputs_0_w_ready              (axi_ram_io_axi_arbiter_io_sharedInputs_0_w_ready                     ), //i
    .io_sharedOutputs_0_w_payload_data       (axi_core_io_d_decoder_io_sharedOutputs_0_w_payload_data[31:0]        ), //o
    .io_sharedOutputs_0_w_payload_strb       (axi_core_io_d_decoder_io_sharedOutputs_0_w_payload_strb[3:0]         ), //o
    .io_sharedOutputs_0_w_payload_last       (axi_core_io_d_decoder_io_sharedOutputs_0_w_payload_last              ), //o
    .io_sharedOutputs_0_b_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_0_b_valid                     ), //i
    .io_sharedOutputs_0_b_ready              (axi_core_io_d_decoder_io_sharedOutputs_0_b_ready                     ), //o
    .io_sharedOutputs_0_r_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_valid                     ), //i
    .io_sharedOutputs_0_r_ready              (axi_core_io_d_decoder_io_sharedOutputs_0_r_ready                     ), //o
    .io_sharedOutputs_0_r_payload_data       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]        ), //i
    .io_sharedOutputs_0_r_payload_last       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_last              ), //i
    .io_sharedOutputs_1_arw_valid            (axi_core_io_d_decoder_io_sharedOutputs_1_arw_valid                   ), //o
    .io_sharedOutputs_1_arw_ready            (_zz_54                                                               ), //i
    .io_sharedOutputs_1_arw_payload_addr     (axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_addr[31:0]      ), //o
    .io_sharedOutputs_1_arw_payload_size     (axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_size[2:0]       ), //o
    .io_sharedOutputs_1_arw_payload_cache    (axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_cache[3:0]      ), //o
    .io_sharedOutputs_1_arw_payload_prot     (axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_prot[2:0]       ), //o
    .io_sharedOutputs_1_arw_payload_write    (axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_write           ), //o
    .io_sharedOutputs_1_w_valid              (axi_core_io_d_decoder_io_sharedOutputs_1_w_valid                     ), //o
    .io_sharedOutputs_1_w_ready              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //i
    .io_sharedOutputs_1_w_payload_data       (axi_core_io_d_decoder_io_sharedOutputs_1_w_payload_data[31:0]        ), //o
    .io_sharedOutputs_1_w_payload_strb       (axi_core_io_d_decoder_io_sharedOutputs_1_w_payload_strb[3:0]         ), //o
    .io_sharedOutputs_1_w_payload_last       (axi_core_io_d_decoder_io_sharedOutputs_1_w_payload_last              ), //o
    .io_sharedOutputs_1_b_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //i
    .io_sharedOutputs_1_b_ready              (axi_core_io_d_decoder_io_sharedOutputs_1_b_ready                     ), //o
    .io_sharedOutputs_1_r_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //i
    .io_sharedOutputs_1_r_ready              (axi_core_io_d_decoder_io_sharedOutputs_1_r_ready                     ), //o
    .io_sharedOutputs_1_r_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //i
    .io_sharedOutputs_1_r_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //i
    .io_sharedOutputs_2_arw_valid            (axi_core_io_d_decoder_io_sharedOutputs_2_arw_valid                   ), //o
    .io_sharedOutputs_2_arw_ready            (_zz_55                                                               ), //i
    .io_sharedOutputs_2_arw_payload_addr     (axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_addr[31:0]      ), //o
    .io_sharedOutputs_2_arw_payload_size     (axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_size[2:0]       ), //o
    .io_sharedOutputs_2_arw_payload_cache    (axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_cache[3:0]      ), //o
    .io_sharedOutputs_2_arw_payload_prot     (axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_prot[2:0]       ), //o
    .io_sharedOutputs_2_arw_payload_write    (axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_write           ), //o
    .io_sharedOutputs_2_w_valid              (axi_core_io_d_decoder_io_sharedOutputs_2_w_valid                     ), //o
    .io_sharedOutputs_2_w_ready              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //i
    .io_sharedOutputs_2_w_payload_data       (axi_core_io_d_decoder_io_sharedOutputs_2_w_payload_data[31:0]        ), //o
    .io_sharedOutputs_2_w_payload_strb       (axi_core_io_d_decoder_io_sharedOutputs_2_w_payload_strb[3:0]         ), //o
    .io_sharedOutputs_2_w_payload_last       (axi_core_io_d_decoder_io_sharedOutputs_2_w_payload_last              ), //o
    .io_sharedOutputs_2_b_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //i
    .io_sharedOutputs_2_b_ready              (axi_core_io_d_decoder_io_sharedOutputs_2_b_ready                     ), //o
    .io_sharedOutputs_2_r_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //i
    .io_sharedOutputs_2_r_ready              (axi_core_io_d_decoder_io_sharedOutputs_2_r_ready                     ), //o
    .io_sharedOutputs_2_r_payload_data       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //i
    .io_sharedOutputs_2_r_payload_last       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //i
    .io_axiClk                               (io_axiClk                                                            ), //i
    .resetCtrl_axiReset                      (resetCtrl_axiReset                                                   )  //i
  );
  Axi4SharedDecoder_1 axi_jtagCtrl_io_axi_decoder (
    .io_input_arw_valid                      (axi_jtagCtrl_io_axi_arw_valid                                          ), //i
    .io_input_arw_ready                      (axi_jtagCtrl_io_axi_decoder_io_input_arw_ready                         ), //o
    .io_input_arw_payload_addr               (axi_jtagCtrl_io_axi_arw_payload_addr[31:0]                             ), //i
    .io_input_arw_payload_size               (axi_jtagCtrl_io_axi_arw_payload_size[2:0]                              ), //i
    .io_input_arw_payload_write              (axi_jtagCtrl_io_axi_arw_payload_write                                  ), //i
    .io_input_w_valid                        (axi_jtagCtrl_io_axi_w_valid                                            ), //i
    .io_input_w_ready                        (axi_jtagCtrl_io_axi_decoder_io_input_w_ready                           ), //o
    .io_input_w_payload_data                 (axi_jtagCtrl_io_axi_w_payload_data[31:0]                               ), //i
    .io_input_w_payload_strb                 (axi_jtagCtrl_io_axi_w_payload_strb[3:0]                                ), //i
    .io_input_w_payload_last                 (axi_jtagCtrl_io_axi_w_payload_last                                     ), //i
    .io_input_b_valid                        (axi_jtagCtrl_io_axi_decoder_io_input_b_valid                           ), //o
    .io_input_b_ready                        (axi_jtagCtrl_io_axi_b_ready                                            ), //i
    .io_input_r_valid                        (axi_jtagCtrl_io_axi_decoder_io_input_r_valid                           ), //o
    .io_input_r_ready                        (axi_jtagCtrl_io_axi_r_ready                                            ), //i
    .io_input_r_payload_data                 (axi_jtagCtrl_io_axi_decoder_io_input_r_payload_data[31:0]              ), //o
    .io_input_r_payload_last                 (axi_jtagCtrl_io_axi_decoder_io_input_r_payload_last                    ), //o
    .io_sharedOutputs_0_arw_valid            (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_valid               ), //o
    .io_sharedOutputs_0_arw_ready            (_zz_56                                                                 ), //i
    .io_sharedOutputs_0_arw_payload_addr     (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_payload_addr[31:0]  ), //o
    .io_sharedOutputs_0_arw_payload_size     (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_payload_size[2:0]   ), //o
    .io_sharedOutputs_0_arw_payload_write    (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_payload_write       ), //o
    .io_sharedOutputs_0_w_valid              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_valid                 ), //o
    .io_sharedOutputs_0_w_ready              (axi_ram_io_axi_arbiter_io_sharedInputs_1_w_ready                       ), //i
    .io_sharedOutputs_0_w_payload_data       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_payload_data[31:0]    ), //o
    .io_sharedOutputs_0_w_payload_strb       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_payload_strb[3:0]     ), //o
    .io_sharedOutputs_0_w_payload_last       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_payload_last          ), //o
    .io_sharedOutputs_0_b_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_1_b_valid                       ), //i
    .io_sharedOutputs_0_b_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_b_ready                 ), //o
    .io_sharedOutputs_0_r_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_1_r_valid                       ), //i
    .io_sharedOutputs_0_r_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_r_ready                 ), //o
    .io_sharedOutputs_0_r_payload_data       (axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_data[31:0]          ), //i
    .io_sharedOutputs_0_r_payload_last       (axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_last                ), //i
    .io_sharedOutputs_1_arw_valid            (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_valid               ), //o
    .io_sharedOutputs_1_arw_ready            (_zz_57                                                                 ), //i
    .io_sharedOutputs_1_arw_payload_addr     (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_payload_addr[31:0]  ), //o
    .io_sharedOutputs_1_arw_payload_size     (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_payload_size[2:0]   ), //o
    .io_sharedOutputs_1_arw_payload_write    (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_payload_write       ), //o
    .io_sharedOutputs_1_w_valid              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_valid                 ), //o
    .io_sharedOutputs_1_w_ready              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_w_ready                 ), //i
    .io_sharedOutputs_1_w_payload_data       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_payload_data[31:0]    ), //o
    .io_sharedOutputs_1_w_payload_strb       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_payload_strb[3:0]     ), //o
    .io_sharedOutputs_1_w_payload_last       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_payload_last          ), //o
    .io_sharedOutputs_1_b_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_b_valid                 ), //i
    .io_sharedOutputs_1_b_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_b_ready                 ), //o
    .io_sharedOutputs_1_r_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_valid                 ), //i
    .io_sharedOutputs_1_r_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_r_ready                 ), //o
    .io_sharedOutputs_1_r_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_data[31:0]    ), //i
    .io_sharedOutputs_1_r_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_last          ), //i
    .io_sharedOutputs_2_arw_valid            (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_valid               ), //o
    .io_sharedOutputs_2_arw_ready            (_zz_58                                                                 ), //i
    .io_sharedOutputs_2_arw_payload_addr     (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_payload_addr[31:0]  ), //o
    .io_sharedOutputs_2_arw_payload_size     (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_payload_size[2:0]   ), //o
    .io_sharedOutputs_2_arw_payload_write    (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_payload_write       ), //o
    .io_sharedOutputs_2_w_valid              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_valid                 ), //o
    .io_sharedOutputs_2_w_ready              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_w_ready                 ), //i
    .io_sharedOutputs_2_w_payload_data       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_payload_data[31:0]    ), //o
    .io_sharedOutputs_2_w_payload_strb       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_payload_strb[3:0]     ), //o
    .io_sharedOutputs_2_w_payload_last       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_payload_last          ), //o
    .io_sharedOutputs_2_b_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_b_valid                 ), //i
    .io_sharedOutputs_2_b_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_b_ready                 ), //o
    .io_sharedOutputs_2_r_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_valid                 ), //i
    .io_sharedOutputs_2_r_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_r_ready                 ), //o
    .io_sharedOutputs_2_r_payload_data       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_data[31:0]    ), //i
    .io_sharedOutputs_2_r_payload_last       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_last          ), //i
    .io_axiClk                               (io_axiClk                                                              ), //i
    .resetCtrl_axiReset                      (resetCtrl_axiReset                                                     )  //i
  );
  Axi4ReadOnlyDecoder_1 axi_vgaCtrl_io_axi_decoder (
    .io_input_ar_valid                (axi_vgaCtrl_io_axi_ar_valid                                        ), //i
    .io_input_ar_ready                (axi_vgaCtrl_io_axi_decoder_io_input_ar_ready                       ), //o
    .io_input_ar_payload_addr         (axi_vgaCtrl_io_axi_ar_payload_addr[31:0]                           ), //i
    .io_input_ar_payload_len          (axi_vgaCtrl_io_axi_ar_payload_len[7:0]                             ), //i
    .io_input_ar_payload_size         (axi_vgaCtrl_io_axi_ar_payload_size[2:0]                            ), //i
    .io_input_ar_payload_cache        (axi_vgaCtrl_io_axi_ar_payload_cache[3:0]                           ), //i
    .io_input_ar_payload_prot         (axi_vgaCtrl_io_axi_ar_payload_prot[2:0]                            ), //i
    .io_input_r_valid                 (axi_vgaCtrl_io_axi_decoder_io_input_r_valid                        ), //o
    .io_input_r_ready                 (axi_vgaCtrl_io_axi_r_ready                                         ), //i
    .io_input_r_payload_data          (axi_vgaCtrl_io_axi_decoder_io_input_r_payload_data[31:0]           ), //o
    .io_input_r_payload_last          (axi_vgaCtrl_io_axi_decoder_io_input_r_payload_last                 ), //o
    .io_outputs_0_ar_valid            (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_valid                   ), //o
    .io_outputs_0_ar_ready            (_zz_59                                                             ), //i
    .io_outputs_0_ar_payload_addr     (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_addr[31:0]      ), //o
    .io_outputs_0_ar_payload_len      (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_len[7:0]        ), //o
    .io_outputs_0_ar_payload_size     (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_size[2:0]       ), //o
    .io_outputs_0_ar_payload_cache    (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_cache[3:0]      ), //o
    .io_outputs_0_ar_payload_prot     (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_prot[2:0]       ), //o
    .io_outputs_0_r_valid             (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_valid               ), //i
    .io_outputs_0_r_ready             (axi_vgaCtrl_io_axi_decoder_io_outputs_0_r_ready                    ), //o
    .io_outputs_0_r_payload_data      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_data[31:0]  ), //i
    .io_outputs_0_r_payload_last      (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_last        ), //i
    .io_axiClk                        (io_axiClk                                                          ), //i
    .resetCtrl_axiReset               (resetCtrl_axiReset                                                 )  //i
  );
  Axi4SharedArbiter axi_ram_io_axi_arbiter (
    .io_readInputs_0_ar_valid               (_zz_2                                                                 ), //i
    .io_readInputs_0_ar_ready               (axi_ram_io_axi_arbiter_io_readInputs_0_ar_ready                       ), //o
    .io_readInputs_0_ar_payload_addr        (_zz_60[11:0]                                                          ), //i
    .io_readInputs_0_ar_payload_id          (_zz_29[1:0]                                                           ), //i
    .io_readInputs_0_ar_payload_len         (axi_core_io_i_decoder_io_outputs_0_ar_payload_len[7:0]                ), //i
    .io_readInputs_0_ar_payload_size        (_zz_61[2:0]                                                           ), //i
    .io_readInputs_0_ar_payload_burst       (axi_core_io_i_decoder_io_outputs_0_ar_payload_burst[1:0]              ), //i
    .io_readInputs_0_r_valid                (axi_ram_io_axi_arbiter_io_readInputs_0_r_valid                        ), //o
    .io_readInputs_0_r_ready                (axi_core_io_i_decoder_io_outputs_0_r_ready                            ), //i
    .io_readInputs_0_r_payload_data         (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]           ), //o
    .io_readInputs_0_r_payload_id           (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_id[1:0]              ), //o
    .io_readInputs_0_r_payload_resp         (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]            ), //o
    .io_readInputs_0_r_payload_last         (axi_ram_io_axi_arbiter_io_readInputs_0_r_payload_last                 ), //o
    .io_sharedInputs_0_arw_valid            (_zz_8                                                                 ), //i
    .io_sharedInputs_0_arw_ready            (axi_ram_io_axi_arbiter_io_sharedInputs_0_arw_ready                    ), //o
    .io_sharedInputs_0_arw_payload_addr     (_zz_62[11:0]                                                          ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_30[1:0]                                                           ), //i
    .io_sharedInputs_0_arw_payload_len      (_zz_31[7:0]                                                           ), //i
    .io_sharedInputs_0_arw_payload_size     (axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_size[2:0]        ), //i
    .io_sharedInputs_0_arw_payload_burst    (_zz_63[1:0]                                                           ), //i
    .io_sharedInputs_0_arw_payload_write    (axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_write            ), //i
    .io_sharedInputs_0_w_valid              (axi_core_io_d_decoder_io_sharedOutputs_0_w_valid                      ), //i
    .io_sharedInputs_0_w_ready              (axi_ram_io_axi_arbiter_io_sharedInputs_0_w_ready                      ), //o
    .io_sharedInputs_0_w_payload_data       (axi_core_io_d_decoder_io_sharedOutputs_0_w_payload_data[31:0]         ), //i
    .io_sharedInputs_0_w_payload_strb       (axi_core_io_d_decoder_io_sharedOutputs_0_w_payload_strb[3:0]          ), //i
    .io_sharedInputs_0_w_payload_last       (axi_core_io_d_decoder_io_sharedOutputs_0_w_payload_last               ), //i
    .io_sharedInputs_0_b_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_0_b_valid                      ), //o
    .io_sharedInputs_0_b_ready              (axi_core_io_d_decoder_io_sharedOutputs_0_b_ready                      ), //i
    .io_sharedInputs_0_b_payload_id         (axi_ram_io_axi_arbiter_io_sharedInputs_0_b_payload_id[1:0]            ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_ram_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]          ), //o
    .io_sharedInputs_0_r_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_valid                      ), //o
    .io_sharedInputs_0_r_ready              (axi_core_io_d_decoder_io_sharedOutputs_0_r_ready                      ), //i
    .io_sharedInputs_0_r_payload_data       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]         ), //o
    .io_sharedInputs_0_r_payload_id         (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_id[1:0]            ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]          ), //o
    .io_sharedInputs_0_r_payload_last       (axi_ram_io_axi_arbiter_io_sharedInputs_0_r_payload_last               ), //o
    .io_sharedInputs_1_arw_valid            (_zz_17                                                                ), //i
    .io_sharedInputs_1_arw_ready            (axi_ram_io_axi_arbiter_io_sharedInputs_1_arw_ready                    ), //o
    .io_sharedInputs_1_arw_payload_addr     (_zz_64[11:0]                                                          ), //i
    .io_sharedInputs_1_arw_payload_id       (_zz_32[1:0]                                                           ), //i
    .io_sharedInputs_1_arw_payload_len      (_zz_33[7:0]                                                           ), //i
    .io_sharedInputs_1_arw_payload_size     (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_payload_size[2:0]  ), //i
    .io_sharedInputs_1_arw_payload_burst    (_zz_65[1:0]                                                           ), //i
    .io_sharedInputs_1_arw_payload_write    (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_payload_write      ), //i
    .io_sharedInputs_1_w_valid              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_valid                ), //i
    .io_sharedInputs_1_w_ready              (axi_ram_io_axi_arbiter_io_sharedInputs_1_w_ready                      ), //o
    .io_sharedInputs_1_w_payload_data       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_payload_data[31:0]   ), //i
    .io_sharedInputs_1_w_payload_strb       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_payload_strb[3:0]    ), //i
    .io_sharedInputs_1_w_payload_last       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_w_payload_last         ), //i
    .io_sharedInputs_1_b_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_1_b_valid                      ), //o
    .io_sharedInputs_1_b_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_b_ready                ), //i
    .io_sharedInputs_1_b_payload_id         (axi_ram_io_axi_arbiter_io_sharedInputs_1_b_payload_id[1:0]            ), //o
    .io_sharedInputs_1_b_payload_resp       (axi_ram_io_axi_arbiter_io_sharedInputs_1_b_payload_resp[1:0]          ), //o
    .io_sharedInputs_1_r_valid              (axi_ram_io_axi_arbiter_io_sharedInputs_1_r_valid                      ), //o
    .io_sharedInputs_1_r_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_r_ready                ), //i
    .io_sharedInputs_1_r_payload_data       (axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_data[31:0]         ), //o
    .io_sharedInputs_1_r_payload_id         (axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_id[1:0]            ), //o
    .io_sharedInputs_1_r_payload_resp       (axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_resp[1:0]          ), //o
    .io_sharedInputs_1_r_payload_last       (axi_ram_io_axi_arbiter_io_sharedInputs_1_r_payload_last               ), //o
    .io_output_arw_valid                    (axi_ram_io_axi_arbiter_io_output_arw_valid                            ), //o
    .io_output_arw_ready                    (axi_ram_io_axi_arw_ready                                              ), //i
    .io_output_arw_payload_addr             (axi_ram_io_axi_arbiter_io_output_arw_payload_addr[11:0]               ), //o
    .io_output_arw_payload_id               (axi_ram_io_axi_arbiter_io_output_arw_payload_id[3:0]                  ), //o
    .io_output_arw_payload_len              (axi_ram_io_axi_arbiter_io_output_arw_payload_len[7:0]                 ), //o
    .io_output_arw_payload_size             (axi_ram_io_axi_arbiter_io_output_arw_payload_size[2:0]                ), //o
    .io_output_arw_payload_burst            (axi_ram_io_axi_arbiter_io_output_arw_payload_burst[1:0]               ), //o
    .io_output_arw_payload_write            (axi_ram_io_axi_arbiter_io_output_arw_payload_write                    ), //o
    .io_output_w_valid                      (axi_ram_io_axi_arbiter_io_output_w_valid                              ), //o
    .io_output_w_ready                      (axi_ram_io_axi_w_ready                                                ), //i
    .io_output_w_payload_data               (axi_ram_io_axi_arbiter_io_output_w_payload_data[31:0]                 ), //o
    .io_output_w_payload_strb               (axi_ram_io_axi_arbiter_io_output_w_payload_strb[3:0]                  ), //o
    .io_output_w_payload_last               (axi_ram_io_axi_arbiter_io_output_w_payload_last                       ), //o
    .io_output_b_valid                      (axi_ram_io_axi_b_valid                                                ), //i
    .io_output_b_ready                      (axi_ram_io_axi_arbiter_io_output_b_ready                              ), //o
    .io_output_b_payload_id                 (axi_ram_io_axi_b_payload_id[3:0]                                      ), //i
    .io_output_b_payload_resp               (axi_ram_io_axi_b_payload_resp[1:0]                                    ), //i
    .io_output_r_valid                      (axi_ram_io_axi_r_valid                                                ), //i
    .io_output_r_ready                      (axi_ram_io_axi_arbiter_io_output_r_ready                              ), //o
    .io_output_r_payload_data               (axi_ram_io_axi_r_payload_data[31:0]                                   ), //i
    .io_output_r_payload_id                 (axi_ram_io_axi_r_payload_id[3:0]                                      ), //i
    .io_output_r_payload_resp               (axi_ram_io_axi_r_payload_resp[1:0]                                    ), //i
    .io_output_r_payload_last               (axi_ram_io_axi_r_payload_last                                         ), //i
    .io_axiClk                              (io_axiClk                                                             ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                                    )  //i
  );
  Axi4SharedArbiter_1 axi_sdramCtrl_io_axi_arbiter (
    .io_readInputs_0_ar_valid               (_zz_5                                                                 ), //i
    .io_readInputs_0_ar_ready               (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_ready                 ), //o
    .io_readInputs_0_ar_payload_addr        (_zz_66[25:0]                                                          ), //i
    .io_readInputs_0_ar_payload_id          (_zz_34[1:0]                                                           ), //i
    .io_readInputs_0_ar_payload_len         (axi_core_io_i_decoder_io_outputs_1_ar_payload_len[7:0]                ), //i
    .io_readInputs_0_ar_payload_size        (_zz_67[2:0]                                                           ), //i
    .io_readInputs_0_ar_payload_burst       (axi_core_io_i_decoder_io_outputs_1_ar_payload_burst[1:0]              ), //i
    .io_readInputs_0_r_valid                (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_valid                  ), //o
    .io_readInputs_0_r_ready                (axi_core_io_i_decoder_io_outputs_1_r_ready                            ), //i
    .io_readInputs_0_r_payload_data         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]     ), //o
    .io_readInputs_0_r_payload_id           (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_id[1:0]        ), //o
    .io_readInputs_0_r_payload_resp         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]      ), //o
    .io_readInputs_0_r_payload_last         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_r_payload_last           ), //o
    .io_readInputs_1_ar_valid               (_zz_26                                                                ), //i
    .io_readInputs_1_ar_ready               (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_ar_ready                 ), //o
    .io_readInputs_1_ar_payload_addr        (_zz_68[25:0]                                                          ), //i
    .io_readInputs_1_ar_payload_id          (_zz_35[1:0]                                                           ), //i
    .io_readInputs_1_ar_payload_len         (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_len[7:0]           ), //i
    .io_readInputs_1_ar_payload_size        (axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_size[2:0]          ), //i
    .io_readInputs_1_ar_payload_burst       (_zz_69[1:0]                                                           ), //i
    .io_readInputs_1_r_valid                (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_valid                  ), //o
    .io_readInputs_1_r_ready                (axi_vgaCtrl_io_axi_decoder_io_outputs_0_r_ready                       ), //i
    .io_readInputs_1_r_payload_data         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_data[31:0]     ), //o
    .io_readInputs_1_r_payload_id           (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_id[1:0]        ), //o
    .io_readInputs_1_r_payload_resp         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_resp[1:0]      ), //o
    .io_readInputs_1_r_payload_last         (axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_r_payload_last           ), //o
    .io_sharedInputs_0_arw_valid            (_zz_11                                                                ), //i
    .io_sharedInputs_0_arw_ready            (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_ready              ), //o
    .io_sharedInputs_0_arw_payload_addr     (_zz_70[25:0]                                                          ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_36[1:0]                                                           ), //i
    .io_sharedInputs_0_arw_payload_len      (_zz_37[7:0]                                                           ), //i
    .io_sharedInputs_0_arw_payload_size     (axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_size[2:0]        ), //i
    .io_sharedInputs_0_arw_payload_burst    (_zz_71[1:0]                                                           ), //i
    .io_sharedInputs_0_arw_payload_write    (axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_write            ), //i
    .io_sharedInputs_0_w_valid              (axi_core_io_d_decoder_io_sharedOutputs_1_w_valid                      ), //i
    .io_sharedInputs_0_w_ready              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_w_ready                ), //o
    .io_sharedInputs_0_w_payload_data       (axi_core_io_d_decoder_io_sharedOutputs_1_w_payload_data[31:0]         ), //i
    .io_sharedInputs_0_w_payload_strb       (axi_core_io_d_decoder_io_sharedOutputs_1_w_payload_strb[3:0]          ), //i
    .io_sharedInputs_0_w_payload_last       (axi_core_io_d_decoder_io_sharedOutputs_1_w_payload_last               ), //i
    .io_sharedInputs_0_b_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_valid                ), //o
    .io_sharedInputs_0_b_ready              (axi_core_io_d_decoder_io_sharedOutputs_1_b_ready                      ), //i
    .io_sharedInputs_0_b_payload_id         (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_id[1:0]      ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]    ), //o
    .io_sharedInputs_0_r_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_valid                ), //o
    .io_sharedInputs_0_r_ready              (axi_core_io_d_decoder_io_sharedOutputs_1_r_ready                      ), //i
    .io_sharedInputs_0_r_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]   ), //o
    .io_sharedInputs_0_r_payload_id         (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_id[1:0]      ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]    ), //o
    .io_sharedInputs_0_r_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_r_payload_last         ), //o
    .io_sharedInputs_1_arw_valid            (_zz_20                                                                ), //i
    .io_sharedInputs_1_arw_ready            (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_arw_ready              ), //o
    .io_sharedInputs_1_arw_payload_addr     (_zz_72[25:0]                                                          ), //i
    .io_sharedInputs_1_arw_payload_id       (_zz_38[1:0]                                                           ), //i
    .io_sharedInputs_1_arw_payload_len      (_zz_39[7:0]                                                           ), //i
    .io_sharedInputs_1_arw_payload_size     (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_payload_size[2:0]  ), //i
    .io_sharedInputs_1_arw_payload_burst    (_zz_73[1:0]                                                           ), //i
    .io_sharedInputs_1_arw_payload_write    (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_payload_write      ), //i
    .io_sharedInputs_1_w_valid              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_valid                ), //i
    .io_sharedInputs_1_w_ready              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_w_ready                ), //o
    .io_sharedInputs_1_w_payload_data       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_payload_data[31:0]   ), //i
    .io_sharedInputs_1_w_payload_strb       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_payload_strb[3:0]    ), //i
    .io_sharedInputs_1_w_payload_last       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_w_payload_last         ), //i
    .io_sharedInputs_1_b_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_b_valid                ), //o
    .io_sharedInputs_1_b_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_b_ready                ), //i
    .io_sharedInputs_1_b_payload_id         (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_b_payload_id[1:0]      ), //o
    .io_sharedInputs_1_b_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_b_payload_resp[1:0]    ), //o
    .io_sharedInputs_1_r_valid              (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_valid                ), //o
    .io_sharedInputs_1_r_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_r_ready                ), //i
    .io_sharedInputs_1_r_payload_data       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_data[31:0]   ), //o
    .io_sharedInputs_1_r_payload_id         (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_id[1:0]      ), //o
    .io_sharedInputs_1_r_payload_resp       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_resp[1:0]    ), //o
    .io_sharedInputs_1_r_payload_last       (axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_r_payload_last         ), //o
    .io_output_arw_valid                    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid                      ), //o
    .io_output_arw_ready                    (axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready        ), //i
    .io_output_arw_payload_addr             (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_addr[25:0]         ), //o
    .io_output_arw_payload_id               (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_id[3:0]            ), //o
    .io_output_arw_payload_len              (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_len[7:0]           ), //o
    .io_output_arw_payload_size             (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_size[2:0]          ), //o
    .io_output_arw_payload_burst            (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_burst[1:0]         ), //o
    .io_output_arw_payload_write            (axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_write              ), //o
    .io_output_w_valid                      (axi_sdramCtrl_io_axi_arbiter_io_output_w_valid                        ), //o
    .io_output_w_ready                      (_zz_74                                                                ), //i
    .io_output_w_payload_data               (axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data[31:0]           ), //o
    .io_output_w_payload_strb               (axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb[3:0]            ), //o
    .io_output_w_payload_last               (axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last                 ), //o
    .io_output_b_valid                      (axi_sdramCtrl_io_axi_b_valid                                          ), //i
    .io_output_b_ready                      (axi_sdramCtrl_io_axi_arbiter_io_output_b_ready                        ), //o
    .io_output_b_payload_id                 (axi_sdramCtrl_io_axi_b_payload_id[3:0]                                ), //i
    .io_output_b_payload_resp               (axi_sdramCtrl_io_axi_b_payload_resp[1:0]                              ), //i
    .io_output_r_valid                      (axi_sdramCtrl_io_axi_r_valid                                          ), //i
    .io_output_r_ready                      (axi_sdramCtrl_io_axi_arbiter_io_output_r_ready                        ), //o
    .io_output_r_payload_data               (axi_sdramCtrl_io_axi_r_payload_data[31:0]                             ), //i
    .io_output_r_payload_id                 (axi_sdramCtrl_io_axi_r_payload_id[3:0]                                ), //i
    .io_output_r_payload_resp               (axi_sdramCtrl_io_axi_r_payload_resp[1:0]                              ), //i
    .io_output_r_payload_last               (axi_sdramCtrl_io_axi_r_payload_last                                   ), //i
    .io_axiClk                              (io_axiClk                                                             ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                                    )  //i
  );
  Axi4SharedArbiter_2 axi_apbBridge_io_axi_arbiter (
    .io_sharedInputs_0_arw_valid            (_zz_14                                                                ), //i
    .io_sharedInputs_0_arw_ready            (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready              ), //o
    .io_sharedInputs_0_arw_payload_addr     (_zz_75[19:0]                                                          ), //i
    .io_sharedInputs_0_arw_payload_id       (_zz_40[2:0]                                                           ), //i
    .io_sharedInputs_0_arw_payload_len      (_zz_41[7:0]                                                           ), //i
    .io_sharedInputs_0_arw_payload_size     (axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_size[2:0]        ), //i
    .io_sharedInputs_0_arw_payload_burst    (_zz_76[1:0]                                                           ), //i
    .io_sharedInputs_0_arw_payload_write    (axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_write            ), //i
    .io_sharedInputs_0_w_valid              (axi_core_io_d_decoder_io_sharedOutputs_2_w_valid                      ), //i
    .io_sharedInputs_0_w_ready              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready                ), //o
    .io_sharedInputs_0_w_payload_data       (axi_core_io_d_decoder_io_sharedOutputs_2_w_payload_data[31:0]         ), //i
    .io_sharedInputs_0_w_payload_strb       (axi_core_io_d_decoder_io_sharedOutputs_2_w_payload_strb[3:0]          ), //i
    .io_sharedInputs_0_w_payload_last       (axi_core_io_d_decoder_io_sharedOutputs_2_w_payload_last               ), //i
    .io_sharedInputs_0_b_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid                ), //o
    .io_sharedInputs_0_b_ready              (axi_core_io_d_decoder_io_sharedOutputs_2_b_ready                      ), //i
    .io_sharedInputs_0_b_payload_id         (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_id[2:0]      ), //o
    .io_sharedInputs_0_b_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]    ), //o
    .io_sharedInputs_0_r_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid                ), //o
    .io_sharedInputs_0_r_ready              (axi_core_io_d_decoder_io_sharedOutputs_2_r_ready                      ), //i
    .io_sharedInputs_0_r_payload_data       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]   ), //o
    .io_sharedInputs_0_r_payload_id         (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_id[2:0]      ), //o
    .io_sharedInputs_0_r_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]    ), //o
    .io_sharedInputs_0_r_payload_last       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last         ), //o
    .io_sharedInputs_1_arw_valid            (_zz_23                                                                ), //i
    .io_sharedInputs_1_arw_ready            (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_arw_ready              ), //o
    .io_sharedInputs_1_arw_payload_addr     (_zz_77[19:0]                                                          ), //i
    .io_sharedInputs_1_arw_payload_id       (_zz_42[2:0]                                                           ), //i
    .io_sharedInputs_1_arw_payload_len      (_zz_43[7:0]                                                           ), //i
    .io_sharedInputs_1_arw_payload_size     (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_payload_size[2:0]  ), //i
    .io_sharedInputs_1_arw_payload_burst    (_zz_78[1:0]                                                           ), //i
    .io_sharedInputs_1_arw_payload_write    (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_payload_write      ), //i
    .io_sharedInputs_1_w_valid              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_valid                ), //i
    .io_sharedInputs_1_w_ready              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_w_ready                ), //o
    .io_sharedInputs_1_w_payload_data       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_payload_data[31:0]   ), //i
    .io_sharedInputs_1_w_payload_strb       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_payload_strb[3:0]    ), //i
    .io_sharedInputs_1_w_payload_last       (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_w_payload_last         ), //i
    .io_sharedInputs_1_b_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_b_valid                ), //o
    .io_sharedInputs_1_b_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_b_ready                ), //i
    .io_sharedInputs_1_b_payload_id         (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_b_payload_id[2:0]      ), //o
    .io_sharedInputs_1_b_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_b_payload_resp[1:0]    ), //o
    .io_sharedInputs_1_r_valid              (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_valid                ), //o
    .io_sharedInputs_1_r_ready              (axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_r_ready                ), //i
    .io_sharedInputs_1_r_payload_data       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_data[31:0]   ), //o
    .io_sharedInputs_1_r_payload_id         (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_id[2:0]      ), //o
    .io_sharedInputs_1_r_payload_resp       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_resp[1:0]    ), //o
    .io_sharedInputs_1_r_payload_last       (axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_r_payload_last         ), //o
    .io_output_arw_valid                    (axi_apbBridge_io_axi_arbiter_io_output_arw_valid                      ), //o
    .io_output_arw_ready                    (axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready        ), //i
    .io_output_arw_payload_addr             (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_addr[19:0]         ), //o
    .io_output_arw_payload_id               (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_id[3:0]            ), //o
    .io_output_arw_payload_len              (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_len[7:0]           ), //o
    .io_output_arw_payload_size             (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_size[2:0]          ), //o
    .io_output_arw_payload_burst            (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_burst[1:0]         ), //o
    .io_output_arw_payload_write            (axi_apbBridge_io_axi_arbiter_io_output_arw_payload_write              ), //o
    .io_output_w_valid                      (axi_apbBridge_io_axi_arbiter_io_output_w_valid                        ), //o
    .io_output_w_ready                      (axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready          ), //i
    .io_output_w_payload_data               (axi_apbBridge_io_axi_arbiter_io_output_w_payload_data[31:0]           ), //o
    .io_output_w_payload_strb               (axi_apbBridge_io_axi_arbiter_io_output_w_payload_strb[3:0]            ), //o
    .io_output_w_payload_last               (axi_apbBridge_io_axi_arbiter_io_output_w_payload_last                 ), //o
    .io_output_b_valid                      (axi_apbBridge_io_axi_b_valid                                          ), //i
    .io_output_b_ready                      (axi_apbBridge_io_axi_arbiter_io_output_b_ready                        ), //o
    .io_output_b_payload_id                 (axi_apbBridge_io_axi_b_payload_id[3:0]                                ), //i
    .io_output_b_payload_resp               (axi_apbBridge_io_axi_b_payload_resp[1:0]                              ), //i
    .io_output_r_valid                      (axi_apbBridge_io_axi_r_valid                                          ), //i
    .io_output_r_ready                      (axi_apbBridge_io_axi_arbiter_io_output_r_ready                        ), //o
    .io_output_r_payload_data               (axi_apbBridge_io_axi_r_payload_data[31:0]                             ), //i
    .io_output_r_payload_id                 (axi_apbBridge_io_axi_r_payload_id[3:0]                                ), //i
    .io_output_r_payload_resp               (axi_apbBridge_io_axi_r_payload_resp[1:0]                              ), //i
    .io_output_r_payload_last               (axi_apbBridge_io_axi_r_payload_last                                   ), //i
    .io_axiClk                              (io_axiClk                                                             ), //i
    .resetCtrl_axiReset                     (resetCtrl_axiReset                                                    )  //i
  );
  Apb3Decoder io_apb_decoder (
    .io_input_PADDR         (axi_apbBridge_io_apb_PADDR[19:0]       ), //i
    .io_input_PSEL          (axi_apbBridge_io_apb_PSEL              ), //i
    .io_input_PENABLE       (axi_apbBridge_io_apb_PENABLE           ), //i
    .io_input_PREADY        (io_apb_decoder_io_input_PREADY         ), //o
    .io_input_PWRITE        (axi_apbBridge_io_apb_PWRITE            ), //i
    .io_input_PWDATA        (axi_apbBridge_io_apb_PWDATA[31:0]      ), //i
    .io_input_PRDATA        (io_apb_decoder_io_input_PRDATA[31:0]   ), //o
    .io_input_PSLVERROR     (io_apb_decoder_io_input_PSLVERROR      ), //o
    .io_output_PADDR        (io_apb_decoder_io_output_PADDR[19:0]   ), //o
    .io_output_PSEL         (io_apb_decoder_io_output_PSEL[5:0]     ), //o
    .io_output_PENABLE      (io_apb_decoder_io_output_PENABLE       ), //o
    .io_output_PREADY       (apb3Router_1_io_input_PREADY           ), //i
    .io_output_PWRITE       (io_apb_decoder_io_output_PWRITE        ), //o
    .io_output_PWDATA       (io_apb_decoder_io_output_PWDATA[31:0]  ), //o
    .io_output_PRDATA       (apb3Router_1_io_input_PRDATA[31:0]     ), //i
    .io_output_PSLVERROR    (apb3Router_1_io_input_PSLVERROR        )  //i
  );
  Apb3Router apb3Router_1 (
    .io_input_PADDR            (io_apb_decoder_io_output_PADDR[19:0]    ), //i
    .io_input_PSEL             (io_apb_decoder_io_output_PSEL[5:0]      ), //i
    .io_input_PENABLE          (io_apb_decoder_io_output_PENABLE        ), //i
    .io_input_PREADY           (apb3Router_1_io_input_PREADY            ), //o
    .io_input_PWRITE           (io_apb_decoder_io_output_PWRITE         ), //i
    .io_input_PWDATA           (io_apb_decoder_io_output_PWDATA[31:0]   ), //i
    .io_input_PRDATA           (apb3Router_1_io_input_PRDATA[31:0]      ), //o
    .io_input_PSLVERROR        (apb3Router_1_io_input_PSLVERROR         ), //o
    .io_outputs_0_PADDR        (apb3Router_1_io_outputs_0_PADDR[19:0]   ), //o
    .io_outputs_0_PSEL         (apb3Router_1_io_outputs_0_PSEL          ), //o
    .io_outputs_0_PENABLE      (apb3Router_1_io_outputs_0_PENABLE       ), //o
    .io_outputs_0_PREADY       (axi_gpioACtrl_io_apb_PREADY             ), //i
    .io_outputs_0_PWRITE       (apb3Router_1_io_outputs_0_PWRITE        ), //o
    .io_outputs_0_PWDATA       (apb3Router_1_io_outputs_0_PWDATA[31:0]  ), //o
    .io_outputs_0_PRDATA       (axi_gpioACtrl_io_apb_PRDATA[31:0]       ), //i
    .io_outputs_0_PSLVERROR    (axi_gpioACtrl_io_apb_PSLVERROR          ), //i
    .io_outputs_1_PADDR        (apb3Router_1_io_outputs_1_PADDR[19:0]   ), //o
    .io_outputs_1_PSEL         (apb3Router_1_io_outputs_1_PSEL          ), //o
    .io_outputs_1_PENABLE      (apb3Router_1_io_outputs_1_PENABLE       ), //o
    .io_outputs_1_PREADY       (axi_gpioBCtrl_io_apb_PREADY             ), //i
    .io_outputs_1_PWRITE       (apb3Router_1_io_outputs_1_PWRITE        ), //o
    .io_outputs_1_PWDATA       (apb3Router_1_io_outputs_1_PWDATA[31:0]  ), //o
    .io_outputs_1_PRDATA       (axi_gpioBCtrl_io_apb_PRDATA[31:0]       ), //i
    .io_outputs_1_PSLVERROR    (axi_gpioBCtrl_io_apb_PSLVERROR          ), //i
    .io_outputs_2_PADDR        (apb3Router_1_io_outputs_2_PADDR[19:0]   ), //o
    .io_outputs_2_PSEL         (apb3Router_1_io_outputs_2_PSEL          ), //o
    .io_outputs_2_PENABLE      (apb3Router_1_io_outputs_2_PENABLE       ), //o
    .io_outputs_2_PREADY       (axi_uartCtrl_io_apb_PREADY              ), //i
    .io_outputs_2_PWRITE       (apb3Router_1_io_outputs_2_PWRITE        ), //o
    .io_outputs_2_PWDATA       (apb3Router_1_io_outputs_2_PWDATA[31:0]  ), //o
    .io_outputs_2_PRDATA       (axi_uartCtrl_io_apb_PRDATA[31:0]        ), //i
    .io_outputs_2_PSLVERROR    (_zz_79                                  ), //i
    .io_outputs_3_PADDR        (apb3Router_1_io_outputs_3_PADDR[19:0]   ), //o
    .io_outputs_3_PSEL         (apb3Router_1_io_outputs_3_PSEL          ), //o
    .io_outputs_3_PENABLE      (apb3Router_1_io_outputs_3_PENABLE       ), //o
    .io_outputs_3_PREADY       (axi_timerCtrl_io_apb_PREADY             ), //i
    .io_outputs_3_PWRITE       (apb3Router_1_io_outputs_3_PWRITE        ), //o
    .io_outputs_3_PWDATA       (apb3Router_1_io_outputs_3_PWDATA[31:0]  ), //o
    .io_outputs_3_PRDATA       (axi_timerCtrl_io_apb_PRDATA[31:0]       ), //i
    .io_outputs_3_PSLVERROR    (axi_timerCtrl_io_apb_PSLVERROR          ), //i
    .io_outputs_4_PADDR        (apb3Router_1_io_outputs_4_PADDR[19:0]   ), //o
    .io_outputs_4_PSEL         (apb3Router_1_io_outputs_4_PSEL          ), //o
    .io_outputs_4_PENABLE      (apb3Router_1_io_outputs_4_PENABLE       ), //o
    .io_outputs_4_PREADY       (axi_vgaCtrl_io_apb_PREADY               ), //i
    .io_outputs_4_PWRITE       (apb3Router_1_io_outputs_4_PWRITE        ), //o
    .io_outputs_4_PWDATA       (apb3Router_1_io_outputs_4_PWDATA[31:0]  ), //o
    .io_outputs_4_PRDATA       (axi_vgaCtrl_io_apb_PRDATA[31:0]         ), //i
    .io_outputs_4_PSLVERROR    (_zz_80                                  ), //i
    .io_outputs_5_PADDR        (apb3Router_1_io_outputs_5_PADDR[19:0]   ), //o
    .io_outputs_5_PSEL         (apb3Router_1_io_outputs_5_PSEL          ), //o
    .io_outputs_5_PENABLE      (apb3Router_1_io_outputs_5_PENABLE       ), //o
    .io_outputs_5_PREADY       (axi_core_io_debugBus_PREADY             ), //i
    .io_outputs_5_PWRITE       (apb3Router_1_io_outputs_5_PWRITE        ), //o
    .io_outputs_5_PWDATA       (apb3Router_1_io_outputs_5_PWDATA[31:0]  ), //o
    .io_outputs_5_PRDATA       (axi_core_io_debugBus_PRDATA[31:0]       ), //i
    .io_outputs_5_PSLVERROR    (axi_core_io_debugBus_PSLVERROR          ), //i
    .io_axiClk                 (io_axiClk                               ), //i
    .resetCtrl_axiReset        (resetCtrl_axiReset                      )  //i
  );
  always @ (*) begin
    resetCtrl_axiResetUnbuffered = 1'b0;
    if(_zz_81)begin
      resetCtrl_axiResetUnbuffered = 1'b1;
    end
  end

  always @ (*) begin
    resetCtrl_coreResetUnbuffered = 1'b0;
    if(resetCtrl_axiResetUnbuffered)begin
      resetCtrl_coreResetUnbuffered = 1'b1;
    end
    if(axi_core_io_debugResetOut)begin
      resetCtrl_coreResetUnbuffered = 1'b1;
    end
  end

  assign _zz_1[5 : 0] = 6'h3f;
  assign resetCtrl_vgaReset = resetCtrl_axiResetUnbuffered_buffercc_io_dataOut;
  assign _zz_2 = _zz_4;
  assign _zz_51 = (_zz_3 && _zz_4);
  assign _zz_3 = axi_ram_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign _zz_5 = _zz_7;
  assign _zz_52 = (_zz_6 && _zz_7);
  assign _zz_6 = axi_sdramCtrl_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign _zz_8 = _zz_10;
  assign _zz_53 = (_zz_9 && _zz_10);
  assign _zz_9 = axi_ram_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign _zz_11 = _zz_13;
  assign _zz_54 = (_zz_12 && _zz_13);
  assign _zz_12 = axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign _zz_14 = _zz_16;
  assign _zz_55 = (_zz_15 && _zz_16);
  assign _zz_15 = axi_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign _zz_17 = _zz_19;
  assign _zz_56 = (_zz_18 && _zz_19);
  assign _zz_18 = axi_ram_io_axi_arbiter_io_sharedInputs_1_arw_ready;
  assign _zz_20 = _zz_22;
  assign _zz_57 = (_zz_21 && _zz_22);
  assign _zz_21 = axi_sdramCtrl_io_axi_arbiter_io_sharedInputs_1_arw_ready;
  assign _zz_23 = _zz_25;
  assign _zz_58 = (_zz_24 && _zz_25);
  assign _zz_24 = axi_apbBridge_io_axi_arbiter_io_sharedInputs_1_arw_ready;
  assign _zz_26 = _zz_28;
  assign _zz_59 = (_zz_27 && _zz_28);
  assign _zz_27 = axi_sdramCtrl_io_axi_arbiter_io_readInputs_1_ar_ready;
  assign _zz_60 = axi_core_io_i_decoder_io_outputs_0_ar_payload_addr[11:0];
  assign _zz_29[1 : 0] = 2'b00;
  assign _zz_61 = 3'b010;
  assign _zz_62 = axi_core_io_d_decoder_io_sharedOutputs_0_arw_payload_addr[11:0];
  assign _zz_30[1 : 0] = 2'b00;
  assign _zz_31[7 : 0] = 8'h0;
  assign _zz_63 = 2'b01;
  assign _zz_64 = axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_payload_addr[11:0];
  assign _zz_32[1 : 0] = 2'b00;
  assign _zz_33[7 : 0] = 8'h0;
  assign _zz_65 = 2'b01;
  assign _zz_66 = axi_core_io_i_decoder_io_outputs_1_ar_payload_addr[25:0];
  assign _zz_34[1 : 0] = 2'b00;
  assign _zz_67 = 3'b010;
  assign _zz_68 = axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_payload_addr[25:0];
  assign _zz_35[1 : 0] = 2'b00;
  assign _zz_69 = 2'b01;
  assign _zz_70 = axi_core_io_d_decoder_io_sharedOutputs_1_arw_payload_addr[25:0];
  assign _zz_36[1 : 0] = 2'b00;
  assign _zz_37[7 : 0] = 8'h0;
  assign _zz_71 = 2'b01;
  assign _zz_72 = axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_payload_addr[25:0];
  assign _zz_38[1 : 0] = 2'b00;
  assign _zz_39[7 : 0] = 8'h0;
  assign _zz_73 = 2'b01;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_valid = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_id = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_len = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_size = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_payload_write = axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready = axi_sdramCtrl_io_axi_arw_ready;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_valid = (axi_sdramCtrl_io_axi_arbiter_io_output_w_valid || axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid);
  assign _zz_74 = (! axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_data = (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid ? axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_data : axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_strb = (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid ? axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_strb : axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_last = (axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid ? axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_last : axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready = ((1'b1 && (! axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid)) || axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready);
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last = axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last;
  assign axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready = axi_sdramCtrl_io_axi_w_ready;
  assign _zz_75 = axi_core_io_d_decoder_io_sharedOutputs_2_arw_payload_addr[19:0];
  assign _zz_40[2 : 0] = 3'b000;
  assign _zz_41[7 : 0] = 8'h0;
  assign _zz_76 = 2'b01;
  assign _zz_77 = axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_payload_addr[19:0];
  assign _zz_42[2 : 0] = 3'b000;
  assign _zz_43[7 : 0] = 8'h0;
  assign _zz_78 = 2'b01;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_valid = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_id = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_len = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_size = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_payload_write = axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  assign axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready = axi_apbBridge_io_axi_arw_ready;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_valid = axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_data = axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_data;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_strb = axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_strb;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_payload_last = axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_last;
  assign axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready = axi_apbBridge_io_axi_w_ready;
  assign _zz_46 = apb3Router_1_io_outputs_0_PADDR[3:0];
  assign _zz_47 = apb3Router_1_io_outputs_1_PADDR[3:0];
  assign _zz_49 = apb3Router_1_io_outputs_2_PADDR[4:0];
  assign _zz_79 = 1'b0;
  assign _zz_48 = apb3Router_1_io_outputs_3_PADDR[7:0];
  assign _zz_50 = apb3Router_1_io_outputs_4_PADDR[7:0];
  assign _zz_80 = 1'b0;
  assign _zz_45 = apb3Router_1_io_outputs_5_PADDR[11:0];
  always @ (*) begin
    _zz_44 = 4'b0000;
    _zz_44[0] = axi_uartCtrl_io_interrupt;
    _zz_44[1] = axi_timerCtrl_io_interrupt;
  end

  assign io_gpioA_write = axi_gpioACtrl_io_gpio_write;
  assign io_gpioA_writeEnable = axi_gpioACtrl_io_gpio_writeEnable;
  assign io_gpioB_write = axi_gpioBCtrl_io_gpio_write;
  assign io_gpioB_writeEnable = axi_gpioBCtrl_io_gpio_writeEnable;
  assign io_jtag_tdo = axi_jtagCtrl_io_jtag_tdo;
  assign io_uart_txd = axi_uartCtrl_io_uart_txd;
  assign io_sdram_ADDR = axi_sdramCtrl_io_sdram_ADDR;
  assign io_sdram_BA = axi_sdramCtrl_io_sdram_BA;
  assign io_sdram_DQ_write = axi_sdramCtrl_io_sdram_DQ_write;
  assign io_sdram_DQ_writeEnable = axi_sdramCtrl_io_sdram_DQ_writeEnable;
  assign io_sdram_DQM = axi_sdramCtrl_io_sdram_DQM;
  assign io_sdram_CASn = axi_sdramCtrl_io_sdram_CASn;
  assign io_sdram_CKE = axi_sdramCtrl_io_sdram_CKE;
  assign io_sdram_CSn = axi_sdramCtrl_io_sdram_CSn;
  assign io_sdram_RASn = axi_sdramCtrl_io_sdram_RASn;
  assign io_sdram_WEn = axi_sdramCtrl_io_sdram_WEn;
  assign io_vga_vSync = axi_vgaCtrl_io_vga_vSync;
  assign io_vga_hSync = axi_vgaCtrl_io_vga_hSync;
  assign io_vga_colorEn = axi_vgaCtrl_io_vga_colorEn;
  assign io_vga_color_r = axi_vgaCtrl_io_vga_color_r;
  assign io_vga_color_g = axi_vgaCtrl_io_vga_color_g;
  assign io_vga_color_b = axi_vgaCtrl_io_vga_color_b;
  always @ (posedge io_axiClk) begin
    if(_zz_81)begin
      resetCtrl_axiResetCounter <= (resetCtrl_axiResetCounter + 6'h01);
    end
    if(io_asyncReset_buffercc_io_dataOut)begin
      resetCtrl_axiResetCounter <= 6'h0;
    end
  end

  always @ (posedge io_axiClk) begin
    resetCtrl_axiReset <= resetCtrl_axiResetUnbuffered;
    resetCtrl_coreReset <= resetCtrl_coreResetUnbuffered;
  end

  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_4 <= 1'b0;
      _zz_7 <= 1'b0;
      _zz_10 <= 1'b0;
      _zz_13 <= 1'b0;
      _zz_16 <= 1'b0;
      _zz_19 <= 1'b0;
      _zz_22 <= 1'b0;
      _zz_25 <= 1'b0;
      _zz_28 <= 1'b0;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= 1'b0;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= 1'b1;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid <= 1'b0;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= 1'b0;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= 1'b1;
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid <= 1'b0;
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready <= 1'b1;
    end else begin
      if(axi_core_io_i_decoder_io_outputs_0_ar_valid)begin
        _zz_4 <= 1'b1;
      end
      if((_zz_2 && _zz_3))begin
        _zz_4 <= 1'b0;
      end
      if(axi_core_io_i_decoder_io_outputs_1_ar_valid)begin
        _zz_7 <= 1'b1;
      end
      if((_zz_5 && _zz_6))begin
        _zz_7 <= 1'b0;
      end
      if(axi_core_io_d_decoder_io_sharedOutputs_0_arw_valid)begin
        _zz_10 <= 1'b1;
      end
      if((_zz_8 && _zz_9))begin
        _zz_10 <= 1'b0;
      end
      if(axi_core_io_d_decoder_io_sharedOutputs_1_arw_valid)begin
        _zz_13 <= 1'b1;
      end
      if((_zz_11 && _zz_12))begin
        _zz_13 <= 1'b0;
      end
      if(axi_core_io_d_decoder_io_sharedOutputs_2_arw_valid)begin
        _zz_16 <= 1'b1;
      end
      if((_zz_14 && _zz_15))begin
        _zz_16 <= 1'b0;
      end
      if(axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_0_arw_valid)begin
        _zz_19 <= 1'b1;
      end
      if((_zz_17 && _zz_18))begin
        _zz_19 <= 1'b0;
      end
      if(axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_1_arw_valid)begin
        _zz_22 <= 1'b1;
      end
      if((_zz_20 && _zz_21))begin
        _zz_22 <= 1'b0;
      end
      if(axi_jtagCtrl_io_axi_decoder_io_sharedOutputs_2_arw_valid)begin
        _zz_25 <= 1'b1;
      end
      if((_zz_23 && _zz_24))begin
        _zz_25 <= 1'b0;
      end
      if(axi_vgaCtrl_io_axi_decoder_io_outputs_0_ar_valid)begin
        _zz_28 <= 1'b1;
      end
      if((_zz_26 && _zz_27))begin
        _zz_28 <= 1'b0;
      end
      if(_zz_82)begin
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid;
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= (! axi_sdramCtrl_io_axi_arbiter_io_output_arw_valid);
      end else begin
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= (! axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready);
        axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_ready;
      end
      if(axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
        axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_83)begin
        axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rValid <= axi_sdramCtrl_io_axi_arbiter_io_output_w_valid;
      end
      if(axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
        axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_valid;
      end
      if(_zz_84)begin
        axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= axi_apbBridge_io_axi_arbiter_io_output_arw_valid;
        axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= (! axi_apbBridge_io_axi_arbiter_io_output_arw_valid);
      end else begin
        axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= (! axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready);
        axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_ready;
      end
      if(_zz_85)begin
        axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid <= axi_apbBridge_io_axi_arbiter_io_output_w_valid;
        axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready <= (! axi_apbBridge_io_axi_arbiter_io_output_w_valid);
      end else begin
        axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_valid <= (! axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready);
        axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_ready <= axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_ready;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_82)begin
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_addr;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_id;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_len;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_size;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_burst;
      axi_sdramCtrl_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write <= axi_sdramCtrl_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(_zz_83)begin
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_data <= axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_data;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_strb <= axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_strb;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_rData_last <= axi_sdramCtrl_io_axi_arbiter_io_output_w_payload_last;
    end
    if(axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
      axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last <= axi_sdramCtrl_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
    end
    if(_zz_84)begin
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_addr;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_id;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_len;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_size;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_burst;
      axi_apbBridge_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write <= axi_apbBridge_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(_zz_85)begin
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_data <= axi_apbBridge_io_axi_arbiter_io_output_w_payload_data;
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_strb <= axi_apbBridge_io_axi_arbiter_io_output_w_payload_strb;
      axi_apbBridge_io_axi_arbiter_io_output_w_halfPipe_regs_payload_last <= axi_apbBridge_io_axi_arbiter_io_output_w_payload_last;
    end
  end


endmodule

module Apb3Router (
  input      [19:0]   io_input_PADDR,
  input      [5:0]    io_input_PSEL,
  input               io_input_PENABLE,
  output              io_input_PREADY,
  input               io_input_PWRITE,
  input      [31:0]   io_input_PWDATA,
  output     [31:0]   io_input_PRDATA,
  output              io_input_PSLVERROR,
  output     [19:0]   io_outputs_0_PADDR,
  output     [0:0]    io_outputs_0_PSEL,
  output              io_outputs_0_PENABLE,
  input               io_outputs_0_PREADY,
  output              io_outputs_0_PWRITE,
  output     [31:0]   io_outputs_0_PWDATA,
  input      [31:0]   io_outputs_0_PRDATA,
  input               io_outputs_0_PSLVERROR,
  output     [19:0]   io_outputs_1_PADDR,
  output     [0:0]    io_outputs_1_PSEL,
  output              io_outputs_1_PENABLE,
  input               io_outputs_1_PREADY,
  output              io_outputs_1_PWRITE,
  output     [31:0]   io_outputs_1_PWDATA,
  input      [31:0]   io_outputs_1_PRDATA,
  input               io_outputs_1_PSLVERROR,
  output     [19:0]   io_outputs_2_PADDR,
  output     [0:0]    io_outputs_2_PSEL,
  output              io_outputs_2_PENABLE,
  input               io_outputs_2_PREADY,
  output              io_outputs_2_PWRITE,
  output     [31:0]   io_outputs_2_PWDATA,
  input      [31:0]   io_outputs_2_PRDATA,
  input               io_outputs_2_PSLVERROR,
  output     [19:0]   io_outputs_3_PADDR,
  output     [0:0]    io_outputs_3_PSEL,
  output              io_outputs_3_PENABLE,
  input               io_outputs_3_PREADY,
  output              io_outputs_3_PWRITE,
  output     [31:0]   io_outputs_3_PWDATA,
  input      [31:0]   io_outputs_3_PRDATA,
  input               io_outputs_3_PSLVERROR,
  output     [19:0]   io_outputs_4_PADDR,
  output     [0:0]    io_outputs_4_PSEL,
  output              io_outputs_4_PENABLE,
  input               io_outputs_4_PREADY,
  output              io_outputs_4_PWRITE,
  output     [31:0]   io_outputs_4_PWDATA,
  input      [31:0]   io_outputs_4_PRDATA,
  input               io_outputs_4_PSLVERROR,
  output     [19:0]   io_outputs_5_PADDR,
  output     [0:0]    io_outputs_5_PSEL,
  output              io_outputs_5_PENABLE,
  input               io_outputs_5_PREADY,
  output              io_outputs_5_PWRITE,
  output     [31:0]   io_outputs_5_PWDATA,
  input      [31:0]   io_outputs_5_PRDATA,
  input               io_outputs_5_PSLVERROR,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_6;
  reg        [31:0]   _zz_7;
  reg                 _zz_8;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  reg        [2:0]    selIndex;

  always @(*) begin
    case(selIndex)
      3'b000 : begin
        _zz_6 = io_outputs_0_PREADY;
        _zz_7 = io_outputs_0_PRDATA;
        _zz_8 = io_outputs_0_PSLVERROR;
      end
      3'b001 : begin
        _zz_6 = io_outputs_1_PREADY;
        _zz_7 = io_outputs_1_PRDATA;
        _zz_8 = io_outputs_1_PSLVERROR;
      end
      3'b010 : begin
        _zz_6 = io_outputs_2_PREADY;
        _zz_7 = io_outputs_2_PRDATA;
        _zz_8 = io_outputs_2_PSLVERROR;
      end
      3'b011 : begin
        _zz_6 = io_outputs_3_PREADY;
        _zz_7 = io_outputs_3_PRDATA;
        _zz_8 = io_outputs_3_PSLVERROR;
      end
      3'b100 : begin
        _zz_6 = io_outputs_4_PREADY;
        _zz_7 = io_outputs_4_PRDATA;
        _zz_8 = io_outputs_4_PSLVERROR;
      end
      default : begin
        _zz_6 = io_outputs_5_PREADY;
        _zz_7 = io_outputs_5_PRDATA;
        _zz_8 = io_outputs_5_PSLVERROR;
      end
    endcase
  end

  assign io_outputs_0_PADDR = io_input_PADDR;
  assign io_outputs_0_PENABLE = io_input_PENABLE;
  assign io_outputs_0_PSEL[0] = io_input_PSEL[0];
  assign io_outputs_0_PWRITE = io_input_PWRITE;
  assign io_outputs_0_PWDATA = io_input_PWDATA;
  assign io_outputs_1_PADDR = io_input_PADDR;
  assign io_outputs_1_PENABLE = io_input_PENABLE;
  assign io_outputs_1_PSEL[0] = io_input_PSEL[1];
  assign io_outputs_1_PWRITE = io_input_PWRITE;
  assign io_outputs_1_PWDATA = io_input_PWDATA;
  assign io_outputs_2_PADDR = io_input_PADDR;
  assign io_outputs_2_PENABLE = io_input_PENABLE;
  assign io_outputs_2_PSEL[0] = io_input_PSEL[2];
  assign io_outputs_2_PWRITE = io_input_PWRITE;
  assign io_outputs_2_PWDATA = io_input_PWDATA;
  assign io_outputs_3_PADDR = io_input_PADDR;
  assign io_outputs_3_PENABLE = io_input_PENABLE;
  assign io_outputs_3_PSEL[0] = io_input_PSEL[3];
  assign io_outputs_3_PWRITE = io_input_PWRITE;
  assign io_outputs_3_PWDATA = io_input_PWDATA;
  assign io_outputs_4_PADDR = io_input_PADDR;
  assign io_outputs_4_PENABLE = io_input_PENABLE;
  assign io_outputs_4_PSEL[0] = io_input_PSEL[4];
  assign io_outputs_4_PWRITE = io_input_PWRITE;
  assign io_outputs_4_PWDATA = io_input_PWDATA;
  assign io_outputs_5_PADDR = io_input_PADDR;
  assign io_outputs_5_PENABLE = io_input_PENABLE;
  assign io_outputs_5_PSEL[0] = io_input_PSEL[5];
  assign io_outputs_5_PWRITE = io_input_PWRITE;
  assign io_outputs_5_PWDATA = io_input_PWDATA;
  assign _zz_1 = io_input_PSEL[3];
  assign _zz_2 = io_input_PSEL[5];
  assign _zz_3 = ((io_input_PSEL[1] || _zz_1) || _zz_2);
  assign _zz_4 = (io_input_PSEL[2] || _zz_1);
  assign _zz_5 = (io_input_PSEL[4] || _zz_2);
  assign io_input_PREADY = _zz_6;
  assign io_input_PRDATA = _zz_7;
  assign io_input_PSLVERROR = _zz_8;
  always @ (posedge io_axiClk) begin
    selIndex <= {_zz_5,{_zz_4,_zz_3}};
  end


endmodule

module Apb3Decoder (
  input      [19:0]   io_input_PADDR,
  input      [0:0]    io_input_PSEL,
  input               io_input_PENABLE,
  output reg          io_input_PREADY,
  input               io_input_PWRITE,
  input      [31:0]   io_input_PWDATA,
  output     [31:0]   io_input_PRDATA,
  output reg          io_input_PSLVERROR,
  output     [19:0]   io_output_PADDR,
  output reg [5:0]    io_output_PSEL,
  output              io_output_PENABLE,
  input               io_output_PREADY,
  output              io_output_PWRITE,
  output     [31:0]   io_output_PWDATA,
  input      [31:0]   io_output_PRDATA,
  input               io_output_PSLVERROR
);
  wire                _zz_1;

  assign _zz_1 = (io_input_PSEL[0] && (io_output_PSEL == 6'h0));
  assign io_output_PADDR = io_input_PADDR;
  assign io_output_PENABLE = io_input_PENABLE;
  assign io_output_PWRITE = io_input_PWRITE;
  assign io_output_PWDATA = io_input_PWDATA;
  always @ (*) begin
    io_output_PSEL[0] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h0) && io_input_PSEL[0]);
    io_output_PSEL[1] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h01000) && io_input_PSEL[0]);
    io_output_PSEL[2] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h10000) && io_input_PSEL[0]);
    io_output_PSEL[3] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h20000) && io_input_PSEL[0]);
    io_output_PSEL[4] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h30000) && io_input_PSEL[0]);
    io_output_PSEL[5] = (((io_input_PADDR & (~ 20'h00fff)) == 20'hf0000) && io_input_PSEL[0]);
  end

  always @ (*) begin
    io_input_PREADY = io_output_PREADY;
    if(_zz_1)begin
      io_input_PREADY = 1'b1;
    end
  end

  assign io_input_PRDATA = io_output_PRDATA;
  always @ (*) begin
    io_input_PSLVERROR = io_output_PSLVERROR;
    if(_zz_1)begin
      io_input_PSLVERROR = 1'b1;
    end
  end


endmodule

module Axi4SharedArbiter_2 (
  input               io_sharedInputs_0_arw_valid,
  output              io_sharedInputs_0_arw_ready,
  input      [19:0]   io_sharedInputs_0_arw_payload_addr,
  input      [2:0]    io_sharedInputs_0_arw_payload_id,
  input      [7:0]    io_sharedInputs_0_arw_payload_len,
  input      [2:0]    io_sharedInputs_0_arw_payload_size,
  input      [1:0]    io_sharedInputs_0_arw_payload_burst,
  input               io_sharedInputs_0_arw_payload_write,
  input               io_sharedInputs_0_w_valid,
  output              io_sharedInputs_0_w_ready,
  input      [31:0]   io_sharedInputs_0_w_payload_data,
  input      [3:0]    io_sharedInputs_0_w_payload_strb,
  input               io_sharedInputs_0_w_payload_last,
  output              io_sharedInputs_0_b_valid,
  input               io_sharedInputs_0_b_ready,
  output     [2:0]    io_sharedInputs_0_b_payload_id,
  output     [1:0]    io_sharedInputs_0_b_payload_resp,
  output              io_sharedInputs_0_r_valid,
  input               io_sharedInputs_0_r_ready,
  output     [31:0]   io_sharedInputs_0_r_payload_data,
  output     [2:0]    io_sharedInputs_0_r_payload_id,
  output     [1:0]    io_sharedInputs_0_r_payload_resp,
  output              io_sharedInputs_0_r_payload_last,
  input               io_sharedInputs_1_arw_valid,
  output              io_sharedInputs_1_arw_ready,
  input      [19:0]   io_sharedInputs_1_arw_payload_addr,
  input      [2:0]    io_sharedInputs_1_arw_payload_id,
  input      [7:0]    io_sharedInputs_1_arw_payload_len,
  input      [2:0]    io_sharedInputs_1_arw_payload_size,
  input      [1:0]    io_sharedInputs_1_arw_payload_burst,
  input               io_sharedInputs_1_arw_payload_write,
  input               io_sharedInputs_1_w_valid,
  output              io_sharedInputs_1_w_ready,
  input      [31:0]   io_sharedInputs_1_w_payload_data,
  input      [3:0]    io_sharedInputs_1_w_payload_strb,
  input               io_sharedInputs_1_w_payload_last,
  output              io_sharedInputs_1_b_valid,
  input               io_sharedInputs_1_b_ready,
  output     [2:0]    io_sharedInputs_1_b_payload_id,
  output     [1:0]    io_sharedInputs_1_b_payload_resp,
  output              io_sharedInputs_1_r_valid,
  input               io_sharedInputs_1_r_ready,
  output     [31:0]   io_sharedInputs_1_r_payload_data,
  output     [2:0]    io_sharedInputs_1_r_payload_id,
  output     [1:0]    io_sharedInputs_1_r_payload_resp,
  output              io_sharedInputs_1_r_payload_last,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [19:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  reg                 _zz_7;
  reg                 _zz_8;
  reg        [31:0]   _zz_9;
  reg        [3:0]    _zz_10;
  reg                 _zz_11;
  reg                 _zz_12;
  reg                 _zz_13;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [19:0]   cmdArbiter_io_output_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdArbiter_io_output_fork_io_input_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_0_valid;
  wire       [19:0]   cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_valid;
  wire       [19:0]   cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire                _zz_14;
  wire       [1:0]    _zz_15;
  wire       [1:0]    _zz_16;
  wire       [1:0]    _zz_17;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [19:0]   inputsCmd_0_payload_addr;
  wire       [2:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [19:0]   inputsCmd_1_payload_addr;
  wire       [2:0]    inputsCmd_1_payload_id;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire                inputsCmd_1_payload_write;
  wire                _zz_1;
  wire                _zz_2;
  reg                 cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
  wire       [19:0]   cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write;
  wire                _zz_3;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_payload;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire       [0:0]    writeLogic_writeRspIndex;
  wire                writeLogic_writeRspSels_0;
  wire                writeLogic_writeRspSels_1;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  assign _zz_14 = (! cmdArbiter_io_output_fork_io_outputs_1_payload_write);
  assign _zz_15 = cmdArbiter_io_chosenOH[1 : 0];
  assign _zz_16 = cmdArbiter_io_chosenOH[1 : 0];
  assign _zz_17 = cmdArbiter_io_chosenOH[1 : 0];
  StreamArbiter_2 cmdArbiter (
    .io_inputs_0_valid            (inputsCmd_0_valid                         ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr[19:0]            ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id[2:0]               ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len[7:0]              ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size[2:0]             ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst[1:0]            ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                 ), //i
    .io_inputs_1_valid            (inputsCmd_1_valid                         ), //i
    .io_inputs_1_ready            (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr     (inputsCmd_1_payload_addr[19:0]            ), //i
    .io_inputs_1_payload_id       (inputsCmd_1_payload_id[2:0]               ), //i
    .io_inputs_1_payload_len      (inputsCmd_1_payload_len[7:0]              ), //i
    .io_inputs_1_payload_size     (inputsCmd_1_payload_size[2:0]             ), //i
    .io_inputs_1_payload_burst    (inputsCmd_1_payload_burst[1:0]            ), //i
    .io_inputs_1_payload_write    (inputsCmd_1_payload_write                 ), //i
    .io_output_valid              (cmdArbiter_io_output_valid                ), //o
    .io_output_ready              (cmdArbiter_io_output_fork_io_input_ready  ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr[19:0]   ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id[2:0]      ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len[7:0]     ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size[2:0]    ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst[1:0]   ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write        ), //o
    .io_chosen                    (cmdArbiter_io_chosen                      ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH[1:0]               ), //o
    .io_axiClk                    (io_axiClk                                 ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset                        )  //i
  );
  StreamFork_4 cmdArbiter_io_output_fork (
    .io_input_valid                (cmdArbiter_io_output_valid                                 ), //i
    .io_input_ready                (cmdArbiter_io_output_fork_io_input_ready                   ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr[19:0]                    ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id[2:0]                       ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len[7:0]                      ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size[2:0]                     ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst[1:0]                    ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write                         ), //i
    .io_outputs_0_valid            (cmdArbiter_io_output_fork_io_outputs_0_valid               ), //o
    .io_outputs_0_ready            (io_output_arw_ready                                        ), //i
    .io_outputs_0_payload_addr     (cmdArbiter_io_output_fork_io_outputs_0_payload_addr[19:0]  ), //o
    .io_outputs_0_payload_id       (cmdArbiter_io_output_fork_io_outputs_0_payload_id[2:0]     ), //o
    .io_outputs_0_payload_len      (cmdArbiter_io_output_fork_io_outputs_0_payload_len[7:0]    ), //o
    .io_outputs_0_payload_size     (cmdArbiter_io_output_fork_io_outputs_0_payload_size[2:0]   ), //o
    .io_outputs_0_payload_burst    (cmdArbiter_io_output_fork_io_outputs_0_payload_burst[1:0]  ), //o
    .io_outputs_0_payload_write    (cmdArbiter_io_output_fork_io_outputs_0_payload_write       ), //o
    .io_outputs_1_valid            (cmdArbiter_io_output_fork_io_outputs_1_valid               ), //o
    .io_outputs_1_ready            (_zz_4                                                      ), //i
    .io_outputs_1_payload_addr     (cmdArbiter_io_output_fork_io_outputs_1_payload_addr[19:0]  ), //o
    .io_outputs_1_payload_id       (cmdArbiter_io_output_fork_io_outputs_1_payload_id[2:0]     ), //o
    .io_outputs_1_payload_len      (cmdArbiter_io_output_fork_io_outputs_1_payload_len[7:0]    ), //o
    .io_outputs_1_payload_size     (cmdArbiter_io_output_fork_io_outputs_1_payload_size[2:0]   ), //o
    .io_outputs_1_payload_burst    (cmdArbiter_io_output_fork_io_outputs_1_payload_burst[1:0]  ), //o
    .io_outputs_1_payload_write    (cmdArbiter_io_output_fork_io_outputs_1_payload_write       ), //o
    .io_axiClk                     (io_axiClk                                                  ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                                         )  //i
  );
  StreamFifoLowLatency_1 cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo (
    .io_push_valid         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid                   ), //i
    .io_push_ready         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready      ), //o
    .io_push_payload       (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_payload                 ), //i
    .io_pop_valid          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid       ), //o
    .io_pop_ready          (_zz_5                                                                            ), //i
    .io_pop_payload        (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload     ), //o
    .io_flush              (_zz_6                                                                            ), //i
    .io_occupancy          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy[2:0]  ), //o
    .io_axiClk             (io_axiClk                                                                        ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                               )  //i
  );
  always @(*) begin
    case(cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload)
      1'b0 : begin
        _zz_7 = io_sharedInputs_0_w_valid;
        _zz_8 = io_sharedInputs_0_w_ready;
        _zz_9 = io_sharedInputs_0_w_payload_data;
        _zz_10 = io_sharedInputs_0_w_payload_strb;
        _zz_11 = io_sharedInputs_0_w_payload_last;
      end
      default : begin
        _zz_7 = io_sharedInputs_1_w_valid;
        _zz_8 = io_sharedInputs_1_w_ready;
        _zz_9 = io_sharedInputs_1_w_payload_data;
        _zz_10 = io_sharedInputs_1_w_payload_strb;
        _zz_11 = io_sharedInputs_1_w_payload_last;
      end
    endcase
  end

  always @(*) begin
    case(writeLogic_writeRspIndex)
      1'b0 : begin
        _zz_12 = io_sharedInputs_0_b_ready;
      end
      default : begin
        _zz_12 = io_sharedInputs_1_b_ready;
      end
    endcase
  end

  always @(*) begin
    case(readRspIndex)
      1'b0 : begin
        _zz_13 = io_sharedInputs_0_r_ready;
      end
      default : begin
        _zz_13 = io_sharedInputs_1_r_ready;
      end
    endcase
  end

  assign inputsCmd_0_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_0_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_0_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_0_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_0_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_0_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_1_valid = io_sharedInputs_1_arw_valid;
  assign io_sharedInputs_1_arw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_sharedInputs_1_arw_payload_addr;
  assign inputsCmd_1_payload_id = io_sharedInputs_1_arw_payload_id;
  assign inputsCmd_1_payload_len = io_sharedInputs_1_arw_payload_len;
  assign inputsCmd_1_payload_size = io_sharedInputs_1_arw_payload_size;
  assign inputsCmd_1_payload_burst = io_sharedInputs_1_arw_payload_burst;
  assign inputsCmd_1_payload_write = io_sharedInputs_1_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  assign io_output_arw_valid = cmdArbiter_io_output_fork_io_outputs_0_valid;
  assign io_output_arw_payload_addr = cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  assign io_output_arw_payload_size = cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  assign _zz_1 = _zz_15[1];
  assign _zz_2 = _zz_16[1];
  assign io_output_arw_payload_id = (cmdArbiter_io_output_fork_io_outputs_0_payload_write ? {_zz_1,cmdArbiter_io_output_fork_io_outputs_0_payload_id} : {_zz_2,cmdArbiter_io_output_fork_io_outputs_0_payload_id});
  always @ (*) begin
    cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = cmdArbiter_io_output_fork_io_outputs_1_valid;
    if(_zz_14)begin
      cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_4 = cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
    if(_zz_14)begin
      _zz_4 = 1'b1;
    end
  end

  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr = cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id = cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len = cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size = cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst = cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write = cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  assign _zz_3 = _zz_17[1];
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid = cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_payload = _zz_3;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = _zz_7;
  assign writeLogic_routeDataInput_ready = _zz_8;
  assign writeLogic_routeDataInput_payload_data = _zz_9;
  assign writeLogic_routeDataInput_payload_strb = _zz_10;
  assign writeLogic_routeDataInput_payload_last = _zz_11;
  assign io_output_w_valid = (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload == 1'b0));
  assign io_sharedInputs_1_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload == 1'b1));
  assign _zz_5 = ((io_output_w_valid && io_output_w_ready) && io_output_w_payload_last);
  assign writeLogic_writeRspIndex = io_output_b_payload_id[3 : 3];
  assign writeLogic_writeRspSels_0 = (writeLogic_writeRspIndex == 1'b0);
  assign writeLogic_writeRspSels_1 = (writeLogic_writeRspIndex == 1'b1);
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[2:0];
  assign io_sharedInputs_1_b_valid = (io_output_b_valid && writeLogic_writeRspSels_1);
  assign io_sharedInputs_1_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_1_b_payload_id = io_output_b_payload_id[2:0];
  assign io_output_b_ready = _zz_12;
  assign readRspIndex = io_output_r_payload_id[3 : 3];
  assign readRspSels_0 = (readRspIndex == 1'b0);
  assign readRspSels_1 = (readRspIndex == 1'b1);
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_sharedInputs_1_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_sharedInputs_1_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_1_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_1_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_1_r_payload_id = io_output_r_payload_id[2:0];
  assign io_output_r_ready = _zz_13;
  assign _zz_6 = 1'b0;

endmodule

module Axi4SharedArbiter_1 (
  input               io_readInputs_0_ar_valid,
  output              io_readInputs_0_ar_ready,
  input      [25:0]   io_readInputs_0_ar_payload_addr,
  input      [1:0]    io_readInputs_0_ar_payload_id,
  input      [7:0]    io_readInputs_0_ar_payload_len,
  input      [2:0]    io_readInputs_0_ar_payload_size,
  input      [1:0]    io_readInputs_0_ar_payload_burst,
  output              io_readInputs_0_r_valid,
  input               io_readInputs_0_r_ready,
  output     [31:0]   io_readInputs_0_r_payload_data,
  output     [1:0]    io_readInputs_0_r_payload_id,
  output     [1:0]    io_readInputs_0_r_payload_resp,
  output              io_readInputs_0_r_payload_last,
  input               io_readInputs_1_ar_valid,
  output              io_readInputs_1_ar_ready,
  input      [25:0]   io_readInputs_1_ar_payload_addr,
  input      [1:0]    io_readInputs_1_ar_payload_id,
  input      [7:0]    io_readInputs_1_ar_payload_len,
  input      [2:0]    io_readInputs_1_ar_payload_size,
  input      [1:0]    io_readInputs_1_ar_payload_burst,
  output              io_readInputs_1_r_valid,
  input               io_readInputs_1_r_ready,
  output     [31:0]   io_readInputs_1_r_payload_data,
  output     [1:0]    io_readInputs_1_r_payload_id,
  output     [1:0]    io_readInputs_1_r_payload_resp,
  output              io_readInputs_1_r_payload_last,
  input               io_sharedInputs_0_arw_valid,
  output              io_sharedInputs_0_arw_ready,
  input      [25:0]   io_sharedInputs_0_arw_payload_addr,
  input      [1:0]    io_sharedInputs_0_arw_payload_id,
  input      [7:0]    io_sharedInputs_0_arw_payload_len,
  input      [2:0]    io_sharedInputs_0_arw_payload_size,
  input      [1:0]    io_sharedInputs_0_arw_payload_burst,
  input               io_sharedInputs_0_arw_payload_write,
  input               io_sharedInputs_0_w_valid,
  output              io_sharedInputs_0_w_ready,
  input      [31:0]   io_sharedInputs_0_w_payload_data,
  input      [3:0]    io_sharedInputs_0_w_payload_strb,
  input               io_sharedInputs_0_w_payload_last,
  output              io_sharedInputs_0_b_valid,
  input               io_sharedInputs_0_b_ready,
  output     [1:0]    io_sharedInputs_0_b_payload_id,
  output     [1:0]    io_sharedInputs_0_b_payload_resp,
  output              io_sharedInputs_0_r_valid,
  input               io_sharedInputs_0_r_ready,
  output     [31:0]   io_sharedInputs_0_r_payload_data,
  output     [1:0]    io_sharedInputs_0_r_payload_id,
  output     [1:0]    io_sharedInputs_0_r_payload_resp,
  output              io_sharedInputs_0_r_payload_last,
  input               io_sharedInputs_1_arw_valid,
  output              io_sharedInputs_1_arw_ready,
  input      [25:0]   io_sharedInputs_1_arw_payload_addr,
  input      [1:0]    io_sharedInputs_1_arw_payload_id,
  input      [7:0]    io_sharedInputs_1_arw_payload_len,
  input      [2:0]    io_sharedInputs_1_arw_payload_size,
  input      [1:0]    io_sharedInputs_1_arw_payload_burst,
  input               io_sharedInputs_1_arw_payload_write,
  input               io_sharedInputs_1_w_valid,
  output              io_sharedInputs_1_w_ready,
  input      [31:0]   io_sharedInputs_1_w_payload_data,
  input      [3:0]    io_sharedInputs_1_w_payload_strb,
  input               io_sharedInputs_1_w_payload_last,
  output              io_sharedInputs_1_b_valid,
  input               io_sharedInputs_1_b_ready,
  output     [1:0]    io_sharedInputs_1_b_payload_id,
  output     [1:0]    io_sharedInputs_1_b_payload_resp,
  output              io_sharedInputs_1_r_valid,
  input               io_sharedInputs_1_r_ready,
  output     [31:0]   io_sharedInputs_1_r_payload_data,
  output     [1:0]    io_sharedInputs_1_r_payload_id,
  output     [1:0]    io_sharedInputs_1_r_payload_resp,
  output              io_sharedInputs_1_r_payload_last,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [25:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  reg                 _zz_10;
  reg                 _zz_11;
  reg        [31:0]   _zz_12;
  reg        [3:0]    _zz_13;
  reg                 _zz_14;
  reg                 _zz_15;
  reg                 _zz_16;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_inputs_2_ready;
  wire                cmdArbiter_io_inputs_3_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [25:0]   cmdArbiter_io_output_payload_addr;
  wire       [1:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [1:0]    cmdArbiter_io_chosen;
  wire       [3:0]    cmdArbiter_io_chosenOH;
  wire                cmdArbiter_io_output_fork_io_input_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_0_valid;
  wire       [25:0]   cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_valid;
  wire       [25:0]   cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire                _zz_17;
  wire       [1:0]    _zz_18;
  wire       [2:0]    _zz_19;
  wire       [3:0]    _zz_20;
  wire       [1:0]    _zz_21;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [25:0]   inputsCmd_0_payload_addr;
  wire       [1:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [25:0]   inputsCmd_1_payload_addr;
  wire       [1:0]    inputsCmd_1_payload_id;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire                inputsCmd_1_payload_write;
  wire                inputsCmd_2_valid;
  wire                inputsCmd_2_ready;
  wire       [25:0]   inputsCmd_2_payload_addr;
  wire       [1:0]    inputsCmd_2_payload_id;
  wire       [7:0]    inputsCmd_2_payload_len;
  wire       [2:0]    inputsCmd_2_payload_size;
  wire       [1:0]    inputsCmd_2_payload_burst;
  wire                inputsCmd_2_payload_write;
  wire                inputsCmd_3_valid;
  wire                inputsCmd_3_ready;
  wire       [25:0]   inputsCmd_3_payload_addr;
  wire       [1:0]    inputsCmd_3_payload_id;
  wire       [7:0]    inputsCmd_3_payload_len;
  wire       [2:0]    inputsCmd_3_payload_size;
  wire       [1:0]    inputsCmd_3_payload_burst;
  wire                inputsCmd_3_payload_write;
  wire                _zz_1;
  wire       [3:0]    _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  reg                 cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
  wire       [25:0]   cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write;
  wire                _zz_6;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_payload;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire       [0:0]    writeLogic_writeRspIndex;
  wire                writeLogic_writeRspSels_0;
  wire                writeLogic_writeRspSels_1;
  wire       [1:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;
  wire                readRspSels_2;
  wire                readRspSels_3;

  assign _zz_17 = (! cmdArbiter_io_output_fork_io_outputs_1_payload_write);
  assign _zz_18 = cmdArbiter_io_chosenOH[3 : 2];
  assign _zz_19 = {_zz_1,cmdArbiter_io_output_fork_io_outputs_0_payload_id};
  assign _zz_20 = {1'd0, _zz_19};
  assign _zz_21 = cmdArbiter_io_chosenOH[3 : 2];
  StreamArbiter_1 cmdArbiter (
    .io_inputs_0_valid            (inputsCmd_0_valid                         ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr[25:0]            ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id[1:0]               ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len[7:0]              ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size[2:0]             ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst[1:0]            ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                 ), //i
    .io_inputs_1_valid            (inputsCmd_1_valid                         ), //i
    .io_inputs_1_ready            (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr     (inputsCmd_1_payload_addr[25:0]            ), //i
    .io_inputs_1_payload_id       (inputsCmd_1_payload_id[1:0]               ), //i
    .io_inputs_1_payload_len      (inputsCmd_1_payload_len[7:0]              ), //i
    .io_inputs_1_payload_size     (inputsCmd_1_payload_size[2:0]             ), //i
    .io_inputs_1_payload_burst    (inputsCmd_1_payload_burst[1:0]            ), //i
    .io_inputs_1_payload_write    (inputsCmd_1_payload_write                 ), //i
    .io_inputs_2_valid            (inputsCmd_2_valid                         ), //i
    .io_inputs_2_ready            (cmdArbiter_io_inputs_2_ready              ), //o
    .io_inputs_2_payload_addr     (inputsCmd_2_payload_addr[25:0]            ), //i
    .io_inputs_2_payload_id       (inputsCmd_2_payload_id[1:0]               ), //i
    .io_inputs_2_payload_len      (inputsCmd_2_payload_len[7:0]              ), //i
    .io_inputs_2_payload_size     (inputsCmd_2_payload_size[2:0]             ), //i
    .io_inputs_2_payload_burst    (inputsCmd_2_payload_burst[1:0]            ), //i
    .io_inputs_2_payload_write    (inputsCmd_2_payload_write                 ), //i
    .io_inputs_3_valid            (inputsCmd_3_valid                         ), //i
    .io_inputs_3_ready            (cmdArbiter_io_inputs_3_ready              ), //o
    .io_inputs_3_payload_addr     (inputsCmd_3_payload_addr[25:0]            ), //i
    .io_inputs_3_payload_id       (inputsCmd_3_payload_id[1:0]               ), //i
    .io_inputs_3_payload_len      (inputsCmd_3_payload_len[7:0]              ), //i
    .io_inputs_3_payload_size     (inputsCmd_3_payload_size[2:0]             ), //i
    .io_inputs_3_payload_burst    (inputsCmd_3_payload_burst[1:0]            ), //i
    .io_inputs_3_payload_write    (inputsCmd_3_payload_write                 ), //i
    .io_output_valid              (cmdArbiter_io_output_valid                ), //o
    .io_output_ready              (cmdArbiter_io_output_fork_io_input_ready  ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr[25:0]   ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id[1:0]      ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len[7:0]     ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size[2:0]    ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst[1:0]   ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write        ), //o
    .io_chosen                    (cmdArbiter_io_chosen[1:0]                 ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH[3:0]               ), //o
    .io_axiClk                    (io_axiClk                                 ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset                        )  //i
  );
  StreamFork_3 cmdArbiter_io_output_fork (
    .io_input_valid                (cmdArbiter_io_output_valid                                 ), //i
    .io_input_ready                (cmdArbiter_io_output_fork_io_input_ready                   ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr[25:0]                    ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id[1:0]                       ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len[7:0]                      ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size[2:0]                     ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst[1:0]                    ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write                         ), //i
    .io_outputs_0_valid            (cmdArbiter_io_output_fork_io_outputs_0_valid               ), //o
    .io_outputs_0_ready            (io_output_arw_ready                                        ), //i
    .io_outputs_0_payload_addr     (cmdArbiter_io_output_fork_io_outputs_0_payload_addr[25:0]  ), //o
    .io_outputs_0_payload_id       (cmdArbiter_io_output_fork_io_outputs_0_payload_id[1:0]     ), //o
    .io_outputs_0_payload_len      (cmdArbiter_io_output_fork_io_outputs_0_payload_len[7:0]    ), //o
    .io_outputs_0_payload_size     (cmdArbiter_io_output_fork_io_outputs_0_payload_size[2:0]   ), //o
    .io_outputs_0_payload_burst    (cmdArbiter_io_output_fork_io_outputs_0_payload_burst[1:0]  ), //o
    .io_outputs_0_payload_write    (cmdArbiter_io_output_fork_io_outputs_0_payload_write       ), //o
    .io_outputs_1_valid            (cmdArbiter_io_output_fork_io_outputs_1_valid               ), //o
    .io_outputs_1_ready            (_zz_7                                                      ), //i
    .io_outputs_1_payload_addr     (cmdArbiter_io_output_fork_io_outputs_1_payload_addr[25:0]  ), //o
    .io_outputs_1_payload_id       (cmdArbiter_io_output_fork_io_outputs_1_payload_id[1:0]     ), //o
    .io_outputs_1_payload_len      (cmdArbiter_io_output_fork_io_outputs_1_payload_len[7:0]    ), //o
    .io_outputs_1_payload_size     (cmdArbiter_io_output_fork_io_outputs_1_payload_size[2:0]   ), //o
    .io_outputs_1_payload_burst    (cmdArbiter_io_output_fork_io_outputs_1_payload_burst[1:0]  ), //o
    .io_outputs_1_payload_write    (cmdArbiter_io_output_fork_io_outputs_1_payload_write       ), //o
    .io_axiClk                     (io_axiClk                                                  ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                                         )  //i
  );
  StreamFifoLowLatency_1 cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo (
    .io_push_valid         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid                   ), //i
    .io_push_ready         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready      ), //o
    .io_push_payload       (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_payload                 ), //i
    .io_pop_valid          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid       ), //o
    .io_pop_ready          (_zz_8                                                                            ), //i
    .io_pop_payload        (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload     ), //o
    .io_flush              (_zz_9                                                                            ), //i
    .io_occupancy          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy[2:0]  ), //o
    .io_axiClk             (io_axiClk                                                                        ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                               )  //i
  );
  always @(*) begin
    case(cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload)
      1'b0 : begin
        _zz_10 = io_sharedInputs_0_w_valid;
        _zz_11 = io_sharedInputs_0_w_ready;
        _zz_12 = io_sharedInputs_0_w_payload_data;
        _zz_13 = io_sharedInputs_0_w_payload_strb;
        _zz_14 = io_sharedInputs_0_w_payload_last;
      end
      default : begin
        _zz_10 = io_sharedInputs_1_w_valid;
        _zz_11 = io_sharedInputs_1_w_ready;
        _zz_12 = io_sharedInputs_1_w_payload_data;
        _zz_13 = io_sharedInputs_1_w_payload_strb;
        _zz_14 = io_sharedInputs_1_w_payload_last;
      end
    endcase
  end

  always @(*) begin
    case(writeLogic_writeRspIndex)
      1'b0 : begin
        _zz_15 = io_sharedInputs_0_b_ready;
      end
      default : begin
        _zz_15 = io_sharedInputs_1_b_ready;
      end
    endcase
  end

  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_16 = io_readInputs_0_r_ready;
      end
      2'b01 : begin
        _zz_16 = io_readInputs_1_r_ready;
      end
      2'b10 : begin
        _zz_16 = io_sharedInputs_0_r_ready;
      end
      default : begin
        _zz_16 = io_sharedInputs_1_r_ready;
      end
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_readInputs_1_ar_valid;
  assign io_readInputs_1_ar_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_readInputs_1_ar_payload_addr;
  assign inputsCmd_1_payload_id = io_readInputs_1_ar_payload_id;
  assign inputsCmd_1_payload_len = io_readInputs_1_ar_payload_len;
  assign inputsCmd_1_payload_size = io_readInputs_1_ar_payload_size;
  assign inputsCmd_1_payload_burst = io_readInputs_1_ar_payload_burst;
  assign inputsCmd_1_payload_write = 1'b0;
  assign inputsCmd_2_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_2_ready;
  assign inputsCmd_2_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_2_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_2_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_2_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_2_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_2_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_3_valid = io_sharedInputs_1_arw_valid;
  assign io_sharedInputs_1_arw_ready = inputsCmd_3_ready;
  assign inputsCmd_3_payload_addr = io_sharedInputs_1_arw_payload_addr;
  assign inputsCmd_3_payload_id = io_sharedInputs_1_arw_payload_id;
  assign inputsCmd_3_payload_len = io_sharedInputs_1_arw_payload_len;
  assign inputsCmd_3_payload_size = io_sharedInputs_1_arw_payload_size;
  assign inputsCmd_3_payload_burst = io_sharedInputs_1_arw_payload_burst;
  assign inputsCmd_3_payload_write = io_sharedInputs_1_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  assign inputsCmd_2_ready = cmdArbiter_io_inputs_2_ready;
  assign inputsCmd_3_ready = cmdArbiter_io_inputs_3_ready;
  assign io_output_arw_valid = cmdArbiter_io_output_fork_io_outputs_0_valid;
  assign io_output_arw_payload_addr = cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  assign io_output_arw_payload_size = cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  assign _zz_1 = _zz_18[1];
  assign _zz_2 = {cmdArbiter_io_chosenOH[3 : 2],cmdArbiter_io_chosenOH[1 : 0]};
  assign _zz_3 = _zz_2[3];
  assign _zz_4 = (_zz_2[1] || _zz_3);
  assign _zz_5 = (_zz_2[2] || _zz_3);
  assign io_output_arw_payload_id = (cmdArbiter_io_output_fork_io_outputs_0_payload_write ? _zz_20 : {{_zz_5,_zz_4},cmdArbiter_io_output_fork_io_outputs_0_payload_id});
  always @ (*) begin
    cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = cmdArbiter_io_output_fork_io_outputs_1_valid;
    if(_zz_17)begin
      cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_7 = cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
    if(_zz_17)begin
      _zz_7 = 1'b1;
    end
  end

  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr = cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id = cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len = cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size = cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst = cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write = cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  assign _zz_6 = _zz_21[1];
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid = cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_payload = _zz_6;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = _zz_10;
  assign writeLogic_routeDataInput_ready = _zz_11;
  assign writeLogic_routeDataInput_payload_data = _zz_12;
  assign writeLogic_routeDataInput_payload_strb = _zz_13;
  assign writeLogic_routeDataInput_payload_last = _zz_14;
  assign io_output_w_valid = (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload == 1'b0));
  assign io_sharedInputs_1_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload == 1'b1));
  assign _zz_8 = ((io_output_w_valid && io_output_w_ready) && io_output_w_payload_last);
  assign writeLogic_writeRspIndex = io_output_b_payload_id[2 : 2];
  assign writeLogic_writeRspSels_0 = (writeLogic_writeRspIndex == 1'b0);
  assign writeLogic_writeRspSels_1 = (writeLogic_writeRspIndex == 1'b1);
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[1:0];
  assign io_sharedInputs_1_b_valid = (io_output_b_valid && writeLogic_writeRspSels_1);
  assign io_sharedInputs_1_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_1_b_payload_id = io_output_b_payload_id[1:0];
  assign io_output_b_ready = _zz_15;
  assign readRspIndex = io_output_r_payload_id[3 : 2];
  assign readRspSels_0 = (readRspIndex == 2'b00);
  assign readRspSels_1 = (readRspIndex == 2'b01);
  assign readRspSels_2 = (readRspIndex == 2'b10);
  assign readRspSels_3 = (readRspIndex == 2'b11);
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[1:0];
  assign io_readInputs_1_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_readInputs_1_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_1_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_1_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_1_r_payload_id = io_output_r_payload_id[1:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_2);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[1:0];
  assign io_sharedInputs_1_r_valid = (io_output_r_valid && readRspSels_3);
  assign io_sharedInputs_1_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_1_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_1_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_1_r_payload_id = io_output_r_payload_id[1:0];
  assign io_output_r_ready = _zz_16;
  assign _zz_9 = 1'b0;

endmodule

module Axi4SharedArbiter (
  input               io_readInputs_0_ar_valid,
  output              io_readInputs_0_ar_ready,
  input      [11:0]   io_readInputs_0_ar_payload_addr,
  input      [1:0]    io_readInputs_0_ar_payload_id,
  input      [7:0]    io_readInputs_0_ar_payload_len,
  input      [2:0]    io_readInputs_0_ar_payload_size,
  input      [1:0]    io_readInputs_0_ar_payload_burst,
  output              io_readInputs_0_r_valid,
  input               io_readInputs_0_r_ready,
  output     [31:0]   io_readInputs_0_r_payload_data,
  output     [1:0]    io_readInputs_0_r_payload_id,
  output     [1:0]    io_readInputs_0_r_payload_resp,
  output              io_readInputs_0_r_payload_last,
  input               io_sharedInputs_0_arw_valid,
  output              io_sharedInputs_0_arw_ready,
  input      [11:0]   io_sharedInputs_0_arw_payload_addr,
  input      [1:0]    io_sharedInputs_0_arw_payload_id,
  input      [7:0]    io_sharedInputs_0_arw_payload_len,
  input      [2:0]    io_sharedInputs_0_arw_payload_size,
  input      [1:0]    io_sharedInputs_0_arw_payload_burst,
  input               io_sharedInputs_0_arw_payload_write,
  input               io_sharedInputs_0_w_valid,
  output              io_sharedInputs_0_w_ready,
  input      [31:0]   io_sharedInputs_0_w_payload_data,
  input      [3:0]    io_sharedInputs_0_w_payload_strb,
  input               io_sharedInputs_0_w_payload_last,
  output              io_sharedInputs_0_b_valid,
  input               io_sharedInputs_0_b_ready,
  output     [1:0]    io_sharedInputs_0_b_payload_id,
  output     [1:0]    io_sharedInputs_0_b_payload_resp,
  output              io_sharedInputs_0_r_valid,
  input               io_sharedInputs_0_r_ready,
  output     [31:0]   io_sharedInputs_0_r_payload_data,
  output     [1:0]    io_sharedInputs_0_r_payload_id,
  output     [1:0]    io_sharedInputs_0_r_payload_resp,
  output              io_sharedInputs_0_r_payload_last,
  input               io_sharedInputs_1_arw_valid,
  output              io_sharedInputs_1_arw_ready,
  input      [11:0]   io_sharedInputs_1_arw_payload_addr,
  input      [1:0]    io_sharedInputs_1_arw_payload_id,
  input      [7:0]    io_sharedInputs_1_arw_payload_len,
  input      [2:0]    io_sharedInputs_1_arw_payload_size,
  input      [1:0]    io_sharedInputs_1_arw_payload_burst,
  input               io_sharedInputs_1_arw_payload_write,
  input               io_sharedInputs_1_w_valid,
  output              io_sharedInputs_1_w_ready,
  input      [31:0]   io_sharedInputs_1_w_payload_data,
  input      [3:0]    io_sharedInputs_1_w_payload_strb,
  input               io_sharedInputs_1_w_payload_last,
  output              io_sharedInputs_1_b_valid,
  input               io_sharedInputs_1_b_ready,
  output     [1:0]    io_sharedInputs_1_b_payload_id,
  output     [1:0]    io_sharedInputs_1_b_payload_resp,
  output              io_sharedInputs_1_r_valid,
  input               io_sharedInputs_1_r_ready,
  output     [31:0]   io_sharedInputs_1_r_payload_data,
  output     [1:0]    io_sharedInputs_1_r_payload_id,
  output     [1:0]    io_sharedInputs_1_r_payload_resp,
  output              io_sharedInputs_1_r_payload_last,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [11:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  reg                 _zz_9;
  reg                 _zz_10;
  reg        [31:0]   _zz_11;
  reg        [3:0]    _zz_12;
  reg                 _zz_13;
  reg                 _zz_14;
  reg                 _zz_15;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_inputs_2_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [11:0]   cmdArbiter_io_output_payload_addr;
  wire       [1:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [1:0]    cmdArbiter_io_chosen;
  wire       [2:0]    cmdArbiter_io_chosenOH;
  wire                cmdArbiter_io_output_fork_io_input_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_0_valid;
  wire       [11:0]   cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_valid;
  wire       [11:0]   cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire                _zz_16;
  wire       [1:0]    _zz_17;
  wire       [2:0]    _zz_18;
  wire       [3:0]    _zz_19;
  wire       [1:0]    _zz_20;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [11:0]   inputsCmd_0_payload_addr;
  wire       [1:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [11:0]   inputsCmd_1_payload_addr;
  wire       [1:0]    inputsCmd_1_payload_id;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire                inputsCmd_1_payload_write;
  wire                inputsCmd_2_valid;
  wire                inputsCmd_2_ready;
  wire       [11:0]   inputsCmd_2_payload_addr;
  wire       [1:0]    inputsCmd_2_payload_id;
  wire       [7:0]    inputsCmd_2_payload_len;
  wire       [2:0]    inputsCmd_2_payload_size;
  wire       [1:0]    inputsCmd_2_payload_burst;
  wire                inputsCmd_2_payload_write;
  wire                _zz_1;
  wire       [2:0]    _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  reg                 cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
  wire       [11:0]   cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write;
  wire                _zz_5;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_payload;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire       [0:0]    writeLogic_writeRspIndex;
  wire                writeLogic_writeRspSels_0;
  wire                writeLogic_writeRspSels_1;
  wire       [1:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;
  wire                readRspSels_2;

  assign _zz_16 = (! cmdArbiter_io_output_fork_io_outputs_1_payload_write);
  assign _zz_17 = cmdArbiter_io_chosenOH[2 : 1];
  assign _zz_18 = {_zz_1,cmdArbiter_io_output_fork_io_outputs_0_payload_id};
  assign _zz_19 = {1'd0, _zz_18};
  assign _zz_20 = cmdArbiter_io_chosenOH[2 : 1];
  StreamArbiter cmdArbiter (
    .io_inputs_0_valid            (inputsCmd_0_valid                         ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr[11:0]            ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id[1:0]               ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len[7:0]              ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size[2:0]             ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst[1:0]            ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                 ), //i
    .io_inputs_1_valid            (inputsCmd_1_valid                         ), //i
    .io_inputs_1_ready            (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr     (inputsCmd_1_payload_addr[11:0]            ), //i
    .io_inputs_1_payload_id       (inputsCmd_1_payload_id[1:0]               ), //i
    .io_inputs_1_payload_len      (inputsCmd_1_payload_len[7:0]              ), //i
    .io_inputs_1_payload_size     (inputsCmd_1_payload_size[2:0]             ), //i
    .io_inputs_1_payload_burst    (inputsCmd_1_payload_burst[1:0]            ), //i
    .io_inputs_1_payload_write    (inputsCmd_1_payload_write                 ), //i
    .io_inputs_2_valid            (inputsCmd_2_valid                         ), //i
    .io_inputs_2_ready            (cmdArbiter_io_inputs_2_ready              ), //o
    .io_inputs_2_payload_addr     (inputsCmd_2_payload_addr[11:0]            ), //i
    .io_inputs_2_payload_id       (inputsCmd_2_payload_id[1:0]               ), //i
    .io_inputs_2_payload_len      (inputsCmd_2_payload_len[7:0]              ), //i
    .io_inputs_2_payload_size     (inputsCmd_2_payload_size[2:0]             ), //i
    .io_inputs_2_payload_burst    (inputsCmd_2_payload_burst[1:0]            ), //i
    .io_inputs_2_payload_write    (inputsCmd_2_payload_write                 ), //i
    .io_output_valid              (cmdArbiter_io_output_valid                ), //o
    .io_output_ready              (cmdArbiter_io_output_fork_io_input_ready  ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr[11:0]   ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id[1:0]      ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len[7:0]     ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size[2:0]    ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst[1:0]   ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write        ), //o
    .io_chosen                    (cmdArbiter_io_chosen[1:0]                 ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH[2:0]               ), //o
    .io_axiClk                    (io_axiClk                                 ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset                        )  //i
  );
  StreamFork_2 cmdArbiter_io_output_fork (
    .io_input_valid                (cmdArbiter_io_output_valid                                 ), //i
    .io_input_ready                (cmdArbiter_io_output_fork_io_input_ready                   ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr[11:0]                    ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id[1:0]                       ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len[7:0]                      ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size[2:0]                     ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst[1:0]                    ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write                         ), //i
    .io_outputs_0_valid            (cmdArbiter_io_output_fork_io_outputs_0_valid               ), //o
    .io_outputs_0_ready            (io_output_arw_ready                                        ), //i
    .io_outputs_0_payload_addr     (cmdArbiter_io_output_fork_io_outputs_0_payload_addr[11:0]  ), //o
    .io_outputs_0_payload_id       (cmdArbiter_io_output_fork_io_outputs_0_payload_id[1:0]     ), //o
    .io_outputs_0_payload_len      (cmdArbiter_io_output_fork_io_outputs_0_payload_len[7:0]    ), //o
    .io_outputs_0_payload_size     (cmdArbiter_io_output_fork_io_outputs_0_payload_size[2:0]   ), //o
    .io_outputs_0_payload_burst    (cmdArbiter_io_output_fork_io_outputs_0_payload_burst[1:0]  ), //o
    .io_outputs_0_payload_write    (cmdArbiter_io_output_fork_io_outputs_0_payload_write       ), //o
    .io_outputs_1_valid            (cmdArbiter_io_output_fork_io_outputs_1_valid               ), //o
    .io_outputs_1_ready            (_zz_6                                                      ), //i
    .io_outputs_1_payload_addr     (cmdArbiter_io_output_fork_io_outputs_1_payload_addr[11:0]  ), //o
    .io_outputs_1_payload_id       (cmdArbiter_io_output_fork_io_outputs_1_payload_id[1:0]     ), //o
    .io_outputs_1_payload_len      (cmdArbiter_io_output_fork_io_outputs_1_payload_len[7:0]    ), //o
    .io_outputs_1_payload_size     (cmdArbiter_io_output_fork_io_outputs_1_payload_size[2:0]   ), //o
    .io_outputs_1_payload_burst    (cmdArbiter_io_output_fork_io_outputs_1_payload_burst[1:0]  ), //o
    .io_outputs_1_payload_write    (cmdArbiter_io_output_fork_io_outputs_1_payload_write       ), //o
    .io_axiClk                     (io_axiClk                                                  ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                                         )  //i
  );
  StreamFifoLowLatency_1 cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo (
    .io_push_valid         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid                   ), //i
    .io_push_ready         (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready      ), //o
    .io_push_payload       (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_payload                 ), //i
    .io_pop_valid          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid       ), //o
    .io_pop_ready          (_zz_7                                                                            ), //i
    .io_pop_payload        (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload     ), //o
    .io_flush              (_zz_8                                                                            ), //i
    .io_occupancy          (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy[2:0]  ), //o
    .io_axiClk             (io_axiClk                                                                        ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                               )  //i
  );
  always @(*) begin
    case(cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload)
      1'b0 : begin
        _zz_9 = io_sharedInputs_0_w_valid;
        _zz_10 = io_sharedInputs_0_w_ready;
        _zz_11 = io_sharedInputs_0_w_payload_data;
        _zz_12 = io_sharedInputs_0_w_payload_strb;
        _zz_13 = io_sharedInputs_0_w_payload_last;
      end
      default : begin
        _zz_9 = io_sharedInputs_1_w_valid;
        _zz_10 = io_sharedInputs_1_w_ready;
        _zz_11 = io_sharedInputs_1_w_payload_data;
        _zz_12 = io_sharedInputs_1_w_payload_strb;
        _zz_13 = io_sharedInputs_1_w_payload_last;
      end
    endcase
  end

  always @(*) begin
    case(writeLogic_writeRspIndex)
      1'b0 : begin
        _zz_14 = io_sharedInputs_0_b_ready;
      end
      default : begin
        _zz_14 = io_sharedInputs_1_b_ready;
      end
    endcase
  end

  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_15 = io_readInputs_0_r_ready;
      end
      2'b01 : begin
        _zz_15 = io_sharedInputs_0_r_ready;
      end
      default : begin
        _zz_15 = io_sharedInputs_1_r_ready;
      end
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_1_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_1_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_1_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_1_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_1_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_2_valid = io_sharedInputs_1_arw_valid;
  assign io_sharedInputs_1_arw_ready = inputsCmd_2_ready;
  assign inputsCmd_2_payload_addr = io_sharedInputs_1_arw_payload_addr;
  assign inputsCmd_2_payload_id = io_sharedInputs_1_arw_payload_id;
  assign inputsCmd_2_payload_len = io_sharedInputs_1_arw_payload_len;
  assign inputsCmd_2_payload_size = io_sharedInputs_1_arw_payload_size;
  assign inputsCmd_2_payload_burst = io_sharedInputs_1_arw_payload_burst;
  assign inputsCmd_2_payload_write = io_sharedInputs_1_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  assign inputsCmd_2_ready = cmdArbiter_io_inputs_2_ready;
  assign io_output_arw_valid = cmdArbiter_io_output_fork_io_outputs_0_valid;
  assign io_output_arw_payload_addr = cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  assign io_output_arw_payload_size = cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  assign _zz_1 = _zz_17[1];
  assign _zz_2 = {cmdArbiter_io_chosenOH[2 : 1],cmdArbiter_io_chosenOH[0 : 0]};
  assign _zz_3 = _zz_2[1];
  assign _zz_4 = _zz_2[2];
  assign io_output_arw_payload_id = (cmdArbiter_io_output_fork_io_outputs_0_payload_write ? _zz_19 : {{_zz_4,_zz_3},cmdArbiter_io_output_fork_io_outputs_0_payload_id});
  always @ (*) begin
    cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = cmdArbiter_io_output_fork_io_outputs_1_valid;
    if(_zz_16)begin
      cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_6 = cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
    if(_zz_16)begin
      _zz_6 = 1'b1;
    end
  end

  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr = cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id = cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len = cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size = cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst = cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write = cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  assign _zz_5 = _zz_20[1];
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid = cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_payload = _zz_5;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = _zz_9;
  assign writeLogic_routeDataInput_ready = _zz_10;
  assign writeLogic_routeDataInput_payload_data = _zz_11;
  assign writeLogic_routeDataInput_payload_strb = _zz_12;
  assign writeLogic_routeDataInput_payload_last = _zz_13;
  assign io_output_w_valid = (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload == 1'b0));
  assign io_sharedInputs_1_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_payload == 1'b1));
  assign _zz_7 = ((io_output_w_valid && io_output_w_ready) && io_output_w_payload_last);
  assign writeLogic_writeRspIndex = io_output_b_payload_id[2 : 2];
  assign writeLogic_writeRspSels_0 = (writeLogic_writeRspIndex == 1'b0);
  assign writeLogic_writeRspSels_1 = (writeLogic_writeRspIndex == 1'b1);
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[1:0];
  assign io_sharedInputs_1_b_valid = (io_output_b_valid && writeLogic_writeRspSels_1);
  assign io_sharedInputs_1_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_1_b_payload_id = io_output_b_payload_id[1:0];
  assign io_output_b_ready = _zz_14;
  assign readRspIndex = io_output_r_payload_id[3 : 2];
  assign readRspSels_0 = (readRspIndex == 2'b00);
  assign readRspSels_1 = (readRspIndex == 2'b01);
  assign readRspSels_2 = (readRspIndex == 2'b10);
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[1:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[1:0];
  assign io_sharedInputs_1_r_valid = (io_output_r_valid && readRspSels_2);
  assign io_sharedInputs_1_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_1_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_1_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_1_r_payload_id = io_output_r_payload_id[1:0];
  assign io_output_r_ready = _zz_15;
  assign _zz_8 = 1'b0;

endmodule

module Axi4ReadOnlyDecoder_1 (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [31:0]   io_input_ar_payload_addr,
  input      [7:0]    io_input_ar_payload_len,
  input      [2:0]    io_input_ar_payload_size,
  input      [3:0]    io_input_ar_payload_cache,
  input      [2:0]    io_input_ar_payload_prot,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [31:0]   io_outputs_0_ar_payload_addr,
  output     [7:0]    io_outputs_0_ar_payload_len,
  output     [2:0]    io_outputs_0_ar_payload_size,
  output     [3:0]    io_outputs_0_ar_payload_cache,
  output     [2:0]    io_outputs_0_ar_payload_prot,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [31:0]   io_outputs_0_r_payload_data,
  input               io_outputs_0_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_1;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire                errorSlave_io_axi_r_payload_last;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire       [0:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [0:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;

  Axi4ReadOnlyErrorSlave_1 errorSlave (
    .io_axi_ar_valid            (_zz_1                                   ), //i
    .io_axi_ar_ready            (errorSlave_io_axi_ar_ready              ), //o
    .io_axi_ar_payload_addr     (io_input_ar_payload_addr[31:0]          ), //i
    .io_axi_ar_payload_len      (io_input_ar_payload_len[7:0]            ), //i
    .io_axi_ar_payload_size     (io_input_ar_payload_size[2:0]           ), //i
    .io_axi_ar_payload_cache    (io_input_ar_payload_cache[3:0]          ), //i
    .io_axi_ar_payload_prot     (io_input_ar_payload_prot[2:0]           ), //i
    .io_axi_r_valid             (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready             (io_input_r_ready                        ), //i
    .io_axi_r_payload_data      (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_last      (errorSlave_io_axi_r_payload_last        ), //o
    .io_axiClk                  (io_axiClk                               ), //i
    .resetCtrl_axiReset         (resetCtrl_axiReset                      )  //i
  );
  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_ar_valid && io_input_ar_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = (((io_input_ar_payload_addr & (~ 32'h03ffffff)) == 32'h40000000) && io_input_ar_valid);
  assign decodedCmdError = (decodedCmdSels == 1'b0);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = ((((decodedCmdSels & io_outputs_0_ar_ready) != 1'b0) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign _zz_1 = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_0_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  always @ (*) begin
    io_input_r_valid = (io_outputs_0_r_valid != 1'b0);
    if(errorSlave_io_axi_r_valid)begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = io_outputs_0_r_payload_data;
  always @ (*) begin
    io_input_r_payload_last = io_outputs_0_r_payload_last;
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingSels <= 1'b0;
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready)begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready)begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module Axi4SharedDecoder_1 (
  input               io_input_arw_valid,
  output              io_input_arw_ready,
  input      [31:0]   io_input_arw_payload_addr,
  input      [2:0]    io_input_arw_payload_size,
  input               io_input_arw_payload_write,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [31:0]   io_input_w_payload_data,
  input      [3:0]    io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output              io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg          io_input_r_payload_last,
  output              io_sharedOutputs_0_arw_valid,
  input               io_sharedOutputs_0_arw_ready,
  output     [31:0]   io_sharedOutputs_0_arw_payload_addr,
  output     [2:0]    io_sharedOutputs_0_arw_payload_size,
  output              io_sharedOutputs_0_arw_payload_write,
  output              io_sharedOutputs_0_w_valid,
  input               io_sharedOutputs_0_w_ready,
  output     [31:0]   io_sharedOutputs_0_w_payload_data,
  output     [3:0]    io_sharedOutputs_0_w_payload_strb,
  output              io_sharedOutputs_0_w_payload_last,
  input               io_sharedOutputs_0_b_valid,
  output              io_sharedOutputs_0_b_ready,
  input               io_sharedOutputs_0_r_valid,
  output              io_sharedOutputs_0_r_ready,
  input      [31:0]   io_sharedOutputs_0_r_payload_data,
  input               io_sharedOutputs_0_r_payload_last,
  output              io_sharedOutputs_1_arw_valid,
  input               io_sharedOutputs_1_arw_ready,
  output     [31:0]   io_sharedOutputs_1_arw_payload_addr,
  output     [2:0]    io_sharedOutputs_1_arw_payload_size,
  output              io_sharedOutputs_1_arw_payload_write,
  output              io_sharedOutputs_1_w_valid,
  input               io_sharedOutputs_1_w_ready,
  output     [31:0]   io_sharedOutputs_1_w_payload_data,
  output     [3:0]    io_sharedOutputs_1_w_payload_strb,
  output              io_sharedOutputs_1_w_payload_last,
  input               io_sharedOutputs_1_b_valid,
  output              io_sharedOutputs_1_b_ready,
  input               io_sharedOutputs_1_r_valid,
  output              io_sharedOutputs_1_r_ready,
  input      [31:0]   io_sharedOutputs_1_r_payload_data,
  input               io_sharedOutputs_1_r_payload_last,
  output              io_sharedOutputs_2_arw_valid,
  input               io_sharedOutputs_2_arw_ready,
  output     [31:0]   io_sharedOutputs_2_arw_payload_addr,
  output     [2:0]    io_sharedOutputs_2_arw_payload_size,
  output              io_sharedOutputs_2_arw_payload_write,
  output              io_sharedOutputs_2_w_valid,
  input               io_sharedOutputs_2_w_ready,
  output     [31:0]   io_sharedOutputs_2_w_payload_data,
  output     [3:0]    io_sharedOutputs_2_w_payload_strb,
  output              io_sharedOutputs_2_w_payload_last,
  input               io_sharedOutputs_2_b_valid,
  output              io_sharedOutputs_2_b_ready,
  input               io_sharedOutputs_2_r_valid,
  output              io_sharedOutputs_2_r_ready,
  input      [31:0]   io_sharedOutputs_2_r_payload_data,
  input               io_sharedOutputs_2_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_14;
  wire                _zz_15;
  reg        [31:0]   _zz_16;
  reg                 _zz_17;
  wire                errorSlave_io_axi_arw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire                errorSlave_io_axi_r_payload_last;
  reg        [2:0]    _zz_1;
  reg        [2:0]    _zz_2;
  reg        [2:0]    _zz_3;
  wire                cmdAllowedStart;
  reg        [2:0]    pendingCmdCounter;
  wire       [2:0]    _zz_4;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire       [2:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [2:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_5;
  wire       [2:0]    _zz_6;
  wire       [2:0]    _zz_7;
  wire       [2:0]    _zz_8;
  wire                _zz_9;
  wire                _zz_10;
  wire       [1:0]    writeRspIndex;
  wire       [2:0]    _zz_11;
  wire                _zz_12;
  wire                _zz_13;
  wire       [1:0]    readRspIndex;

  Axi4SharedErrorSlave_1 errorSlave (
    .io_axi_arw_valid            (_zz_14                                  ), //i
    .io_axi_arw_ready            (errorSlave_io_axi_arw_ready             ), //o
    .io_axi_arw_payload_addr     (io_input_arw_payload_addr[31:0]         ), //i
    .io_axi_arw_payload_size     (io_input_arw_payload_size[2:0]          ), //i
    .io_axi_arw_payload_write    (io_input_arw_payload_write              ), //i
    .io_axi_w_valid              (_zz_15                                  ), //i
    .io_axi_w_ready              (errorSlave_io_axi_w_ready               ), //o
    .io_axi_w_payload_data       (io_input_w_payload_data[31:0]           ), //i
    .io_axi_w_payload_strb       (io_input_w_payload_strb[3:0]            ), //i
    .io_axi_w_payload_last       (io_input_w_payload_last                 ), //i
    .io_axi_b_valid              (errorSlave_io_axi_b_valid               ), //o
    .io_axi_b_ready              (io_input_b_ready                        ), //i
    .io_axi_r_valid              (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready              (io_input_r_ready                        ), //i
    .io_axi_r_payload_data       (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_last       (errorSlave_io_axi_r_payload_last        ), //o
    .io_axiClk                   (io_axiClk                               ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                      )  //i
  );
  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_16 = io_sharedOutputs_0_r_payload_data;
        _zz_17 = io_sharedOutputs_0_r_payload_last;
      end
      2'b01 : begin
        _zz_16 = io_sharedOutputs_1_r_payload_data;
        _zz_17 = io_sharedOutputs_1_r_payload_last;
      end
      default : begin
        _zz_16 = io_sharedOutputs_2_r_payload_data;
        _zz_17 = io_sharedOutputs_2_r_payload_last;
      end
    endcase
  end

  always @ (*) begin
    _zz_1 = _zz_2;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      _zz_1 = (_zz_2 - 3'b001);
    end
  end

  always @ (*) begin
    _zz_2 = _zz_3;
    if((io_input_b_valid && io_input_b_ready))begin
      _zz_2 = (_zz_3 - 3'b001);
    end
  end

  always @ (*) begin
    _zz_3 = _zz_4;
    if((io_input_arw_valid && io_input_arw_ready))begin
      _zz_3 = (_zz_4 + 3'b001);
    end
  end

  assign _zz_4 = pendingCmdCounter;
  always @ (*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if((cmdAllowedStart && io_input_arw_payload_write))begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(((io_input_w_valid && io_input_w_ready) && io_input_w_payload_last))begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_willOverflowIfInc = ((pendingDataCounter_value == 3'b111) && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  always @ (*) begin
    if((pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt)))begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt))begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {((io_input_arw_payload_addr & (~ 32'h000fffff)) == 32'hf0000000),{((io_input_arw_payload_addr & (~ 32'h03ffffff)) == 32'h40000000),((io_input_arw_payload_addr & (~ 32'h00000fff)) == 32'h0)}};
  assign decodedCmdError = (decodedCmdSels == 3'b000);
  assign allowCmd = ((pendingCmdCounter == 3'b000) || ((pendingCmdCounter != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_arw_valid && allowCmd) && _zz_5);
  assign io_input_arw_ready = ((((decodedCmdSels & {io_sharedOutputs_2_arw_ready,{io_sharedOutputs_1_arw_ready,io_sharedOutputs_0_arw_ready}}) != 3'b000) || (decodedCmdError && errorSlave_io_axi_arw_ready)) && allowCmd);
  assign _zz_14 = ((io_input_arw_valid && decodedCmdError) && allowCmd);
  assign _zz_6 = decodedCmdSels[2 : 0];
  assign io_sharedOutputs_0_arw_valid = ((io_input_arw_valid && _zz_6[0]) && allowCmd);
  assign io_sharedOutputs_0_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_0_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_0_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_1_arw_valid = ((io_input_arw_valid && _zz_6[1]) && allowCmd);
  assign io_sharedOutputs_1_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_1_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_1_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_2_arw_valid = ((io_input_arw_valid && _zz_6[2]) && allowCmd);
  assign io_sharedOutputs_2_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_2_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_2_arw_payload_write = io_input_arw_payload_write;
  assign io_input_w_ready = ((((pendingSels[2 : 0] & {io_sharedOutputs_2_w_ready,{io_sharedOutputs_1_w_ready,io_sharedOutputs_0_w_ready}}) != 3'b000) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign _zz_15 = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_7 = pendingSels[2 : 0];
  assign io_sharedOutputs_0_w_valid = ((io_input_w_valid && _zz_7[0]) && allowData);
  assign io_sharedOutputs_0_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_0_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_1_w_valid = ((io_input_w_valid && _zz_7[1]) && allowData);
  assign io_sharedOutputs_1_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_1_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_2_w_valid = ((io_input_w_valid && _zz_7[2]) && allowData);
  assign io_sharedOutputs_2_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_2_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_2_w_payload_last = io_input_w_payload_last;
  assign _zz_8 = pendingSels[2 : 0];
  assign _zz_9 = _zz_8[1];
  assign _zz_10 = _zz_8[2];
  assign writeRspIndex = {_zz_10,_zz_9};
  assign io_input_b_valid = (({io_sharedOutputs_2_b_valid,{io_sharedOutputs_1_b_valid,io_sharedOutputs_0_b_valid}} != 3'b000) || errorSlave_io_axi_b_valid);
  assign io_sharedOutputs_0_b_ready = io_input_b_ready;
  assign io_sharedOutputs_1_b_ready = io_input_b_ready;
  assign io_sharedOutputs_2_b_ready = io_input_b_ready;
  assign _zz_11 = pendingSels[2 : 0];
  assign _zz_12 = _zz_11[1];
  assign _zz_13 = _zz_11[2];
  assign readRspIndex = {_zz_13,_zz_12};
  assign io_input_r_valid = (({io_sharedOutputs_2_r_valid,{io_sharedOutputs_1_r_valid,io_sharedOutputs_0_r_valid}} != 3'b000) || errorSlave_io_axi_r_valid);
  assign io_input_r_payload_data = _zz_16;
  always @ (*) begin
    io_input_r_payload_last = _zz_17;
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_sharedOutputs_0_r_ready = io_input_r_ready;
  assign io_sharedOutputs_1_r_ready = io_input_r_ready;
  assign io_sharedOutputs_2_r_ready = io_input_r_ready;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendingCmdCounter <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 3'b000;
      pendingError <= 1'b0;
      _zz_5 <= 1'b1;
    end else begin
      pendingCmdCounter <= _zz_1;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart)begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart)begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart)begin
        _zz_5 <= 1'b0;
      end
      if(io_input_arw_ready)begin
        _zz_5 <= 1'b1;
      end
    end
  end


endmodule

module Axi4SharedDecoder (
  input               io_input_arw_valid,
  output              io_input_arw_ready,
  input      [31:0]   io_input_arw_payload_addr,
  input      [2:0]    io_input_arw_payload_size,
  input      [3:0]    io_input_arw_payload_cache,
  input      [2:0]    io_input_arw_payload_prot,
  input               io_input_arw_payload_write,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [31:0]   io_input_w_payload_data,
  input      [3:0]    io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output              io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg          io_input_r_payload_last,
  output              io_sharedOutputs_0_arw_valid,
  input               io_sharedOutputs_0_arw_ready,
  output     [31:0]   io_sharedOutputs_0_arw_payload_addr,
  output     [2:0]    io_sharedOutputs_0_arw_payload_size,
  output     [3:0]    io_sharedOutputs_0_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_0_arw_payload_prot,
  output              io_sharedOutputs_0_arw_payload_write,
  output              io_sharedOutputs_0_w_valid,
  input               io_sharedOutputs_0_w_ready,
  output     [31:0]   io_sharedOutputs_0_w_payload_data,
  output     [3:0]    io_sharedOutputs_0_w_payload_strb,
  output              io_sharedOutputs_0_w_payload_last,
  input               io_sharedOutputs_0_b_valid,
  output              io_sharedOutputs_0_b_ready,
  input               io_sharedOutputs_0_r_valid,
  output              io_sharedOutputs_0_r_ready,
  input      [31:0]   io_sharedOutputs_0_r_payload_data,
  input               io_sharedOutputs_0_r_payload_last,
  output              io_sharedOutputs_1_arw_valid,
  input               io_sharedOutputs_1_arw_ready,
  output     [31:0]   io_sharedOutputs_1_arw_payload_addr,
  output     [2:0]    io_sharedOutputs_1_arw_payload_size,
  output     [3:0]    io_sharedOutputs_1_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_1_arw_payload_prot,
  output              io_sharedOutputs_1_arw_payload_write,
  output              io_sharedOutputs_1_w_valid,
  input               io_sharedOutputs_1_w_ready,
  output     [31:0]   io_sharedOutputs_1_w_payload_data,
  output     [3:0]    io_sharedOutputs_1_w_payload_strb,
  output              io_sharedOutputs_1_w_payload_last,
  input               io_sharedOutputs_1_b_valid,
  output              io_sharedOutputs_1_b_ready,
  input               io_sharedOutputs_1_r_valid,
  output              io_sharedOutputs_1_r_ready,
  input      [31:0]   io_sharedOutputs_1_r_payload_data,
  input               io_sharedOutputs_1_r_payload_last,
  output              io_sharedOutputs_2_arw_valid,
  input               io_sharedOutputs_2_arw_ready,
  output     [31:0]   io_sharedOutputs_2_arw_payload_addr,
  output     [2:0]    io_sharedOutputs_2_arw_payload_size,
  output     [3:0]    io_sharedOutputs_2_arw_payload_cache,
  output     [2:0]    io_sharedOutputs_2_arw_payload_prot,
  output              io_sharedOutputs_2_arw_payload_write,
  output              io_sharedOutputs_2_w_valid,
  input               io_sharedOutputs_2_w_ready,
  output     [31:0]   io_sharedOutputs_2_w_payload_data,
  output     [3:0]    io_sharedOutputs_2_w_payload_strb,
  output              io_sharedOutputs_2_w_payload_last,
  input               io_sharedOutputs_2_b_valid,
  output              io_sharedOutputs_2_b_ready,
  input               io_sharedOutputs_2_r_valid,
  output              io_sharedOutputs_2_r_ready,
  input      [31:0]   io_sharedOutputs_2_r_payload_data,
  input               io_sharedOutputs_2_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_14;
  wire                _zz_15;
  reg        [31:0]   _zz_16;
  reg                 _zz_17;
  wire                errorSlave_io_axi_arw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire                errorSlave_io_axi_r_payload_last;
  reg        [2:0]    _zz_1;
  reg        [2:0]    _zz_2;
  reg        [2:0]    _zz_3;
  wire                cmdAllowedStart;
  reg        [2:0]    pendingCmdCounter;
  wire       [2:0]    _zz_4;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire       [2:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [2:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_5;
  wire       [2:0]    _zz_6;
  wire       [2:0]    _zz_7;
  wire       [2:0]    _zz_8;
  wire                _zz_9;
  wire                _zz_10;
  wire       [1:0]    writeRspIndex;
  wire       [2:0]    _zz_11;
  wire                _zz_12;
  wire                _zz_13;
  wire       [1:0]    readRspIndex;

  Axi4SharedErrorSlave errorSlave (
    .io_axi_arw_valid            (_zz_14                                  ), //i
    .io_axi_arw_ready            (errorSlave_io_axi_arw_ready             ), //o
    .io_axi_arw_payload_addr     (io_input_arw_payload_addr[31:0]         ), //i
    .io_axi_arw_payload_size     (io_input_arw_payload_size[2:0]          ), //i
    .io_axi_arw_payload_cache    (io_input_arw_payload_cache[3:0]         ), //i
    .io_axi_arw_payload_prot     (io_input_arw_payload_prot[2:0]          ), //i
    .io_axi_arw_payload_write    (io_input_arw_payload_write              ), //i
    .io_axi_w_valid              (_zz_15                                  ), //i
    .io_axi_w_ready              (errorSlave_io_axi_w_ready               ), //o
    .io_axi_w_payload_data       (io_input_w_payload_data[31:0]           ), //i
    .io_axi_w_payload_strb       (io_input_w_payload_strb[3:0]            ), //i
    .io_axi_w_payload_last       (io_input_w_payload_last                 ), //i
    .io_axi_b_valid              (errorSlave_io_axi_b_valid               ), //o
    .io_axi_b_ready              (io_input_b_ready                        ), //i
    .io_axi_r_valid              (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready              (io_input_r_ready                        ), //i
    .io_axi_r_payload_data       (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_last       (errorSlave_io_axi_r_payload_last        ), //o
    .io_axiClk                   (io_axiClk                               ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                      )  //i
  );
  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_16 = io_sharedOutputs_0_r_payload_data;
        _zz_17 = io_sharedOutputs_0_r_payload_last;
      end
      2'b01 : begin
        _zz_16 = io_sharedOutputs_1_r_payload_data;
        _zz_17 = io_sharedOutputs_1_r_payload_last;
      end
      default : begin
        _zz_16 = io_sharedOutputs_2_r_payload_data;
        _zz_17 = io_sharedOutputs_2_r_payload_last;
      end
    endcase
  end

  always @ (*) begin
    _zz_1 = _zz_2;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      _zz_1 = (_zz_2 - 3'b001);
    end
  end

  always @ (*) begin
    _zz_2 = _zz_3;
    if((io_input_b_valid && io_input_b_ready))begin
      _zz_2 = (_zz_3 - 3'b001);
    end
  end

  always @ (*) begin
    _zz_3 = _zz_4;
    if((io_input_arw_valid && io_input_arw_ready))begin
      _zz_3 = (_zz_4 + 3'b001);
    end
  end

  assign _zz_4 = pendingCmdCounter;
  always @ (*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if((cmdAllowedStart && io_input_arw_payload_write))begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(((io_input_w_valid && io_input_w_ready) && io_input_w_payload_last))begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_willOverflowIfInc = ((pendingDataCounter_value == 3'b111) && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  always @ (*) begin
    if((pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt)))begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt))begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {((io_input_arw_payload_addr & (~ 32'h000fffff)) == 32'hf0000000),{((io_input_arw_payload_addr & (~ 32'h03ffffff)) == 32'h40000000),((io_input_arw_payload_addr & (~ 32'h00000fff)) == 32'h0)}};
  assign decodedCmdError = (decodedCmdSels == 3'b000);
  assign allowCmd = ((pendingCmdCounter == 3'b000) || ((pendingCmdCounter != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_arw_valid && allowCmd) && _zz_5);
  assign io_input_arw_ready = ((((decodedCmdSels & {io_sharedOutputs_2_arw_ready,{io_sharedOutputs_1_arw_ready,io_sharedOutputs_0_arw_ready}}) != 3'b000) || (decodedCmdError && errorSlave_io_axi_arw_ready)) && allowCmd);
  assign _zz_14 = ((io_input_arw_valid && decodedCmdError) && allowCmd);
  assign _zz_6 = decodedCmdSels[2 : 0];
  assign io_sharedOutputs_0_arw_valid = ((io_input_arw_valid && _zz_6[0]) && allowCmd);
  assign io_sharedOutputs_0_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_0_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_0_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_0_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_0_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_1_arw_valid = ((io_input_arw_valid && _zz_6[1]) && allowCmd);
  assign io_sharedOutputs_1_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_1_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_1_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_1_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_1_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_2_arw_valid = ((io_input_arw_valid && _zz_6[2]) && allowCmd);
  assign io_sharedOutputs_2_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_2_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_2_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_2_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_2_arw_payload_write = io_input_arw_payload_write;
  assign io_input_w_ready = ((((pendingSels[2 : 0] & {io_sharedOutputs_2_w_ready,{io_sharedOutputs_1_w_ready,io_sharedOutputs_0_w_ready}}) != 3'b000) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign _zz_15 = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_7 = pendingSels[2 : 0];
  assign io_sharedOutputs_0_w_valid = ((io_input_w_valid && _zz_7[0]) && allowData);
  assign io_sharedOutputs_0_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_0_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_1_w_valid = ((io_input_w_valid && _zz_7[1]) && allowData);
  assign io_sharedOutputs_1_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_1_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_2_w_valid = ((io_input_w_valid && _zz_7[2]) && allowData);
  assign io_sharedOutputs_2_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_2_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_2_w_payload_last = io_input_w_payload_last;
  assign _zz_8 = pendingSels[2 : 0];
  assign _zz_9 = _zz_8[1];
  assign _zz_10 = _zz_8[2];
  assign writeRspIndex = {_zz_10,_zz_9};
  assign io_input_b_valid = (({io_sharedOutputs_2_b_valid,{io_sharedOutputs_1_b_valid,io_sharedOutputs_0_b_valid}} != 3'b000) || errorSlave_io_axi_b_valid);
  assign io_sharedOutputs_0_b_ready = io_input_b_ready;
  assign io_sharedOutputs_1_b_ready = io_input_b_ready;
  assign io_sharedOutputs_2_b_ready = io_input_b_ready;
  assign _zz_11 = pendingSels[2 : 0];
  assign _zz_12 = _zz_11[1];
  assign _zz_13 = _zz_11[2];
  assign readRspIndex = {_zz_13,_zz_12};
  assign io_input_r_valid = (({io_sharedOutputs_2_r_valid,{io_sharedOutputs_1_r_valid,io_sharedOutputs_0_r_valid}} != 3'b000) || errorSlave_io_axi_r_valid);
  assign io_input_r_payload_data = _zz_16;
  always @ (*) begin
    io_input_r_payload_last = _zz_17;
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_sharedOutputs_0_r_ready = io_input_r_ready;
  assign io_sharedOutputs_1_r_ready = io_input_r_ready;
  assign io_sharedOutputs_2_r_ready = io_input_r_ready;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendingCmdCounter <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 3'b000;
      pendingError <= 1'b0;
      _zz_5 <= 1'b1;
    end else begin
      pendingCmdCounter <= _zz_1;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart)begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart)begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart)begin
        _zz_5 <= 1'b0;
      end
      if(io_input_arw_ready)begin
        _zz_5 <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [31:0]   io_input_ar_payload_addr,
  input      [7:0]    io_input_ar_payload_len,
  input      [1:0]    io_input_ar_payload_burst,
  input      [3:0]    io_input_ar_payload_cache,
  input      [2:0]    io_input_ar_payload_prot,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [31:0]   io_outputs_0_ar_payload_addr,
  output     [7:0]    io_outputs_0_ar_payload_len,
  output     [1:0]    io_outputs_0_ar_payload_burst,
  output     [3:0]    io_outputs_0_ar_payload_cache,
  output     [2:0]    io_outputs_0_ar_payload_prot,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [31:0]   io_outputs_0_r_payload_data,
  input               io_outputs_0_r_payload_last,
  output              io_outputs_1_ar_valid,
  input               io_outputs_1_ar_ready,
  output     [31:0]   io_outputs_1_ar_payload_addr,
  output     [7:0]    io_outputs_1_ar_payload_len,
  output     [1:0]    io_outputs_1_ar_payload_burst,
  output     [3:0]    io_outputs_1_ar_payload_cache,
  output     [2:0]    io_outputs_1_ar_payload_prot,
  input               io_outputs_1_r_valid,
  output              io_outputs_1_r_ready,
  input      [31:0]   io_outputs_1_r_payload_data,
  input               io_outputs_1_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_3;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire                errorSlave_io_axi_r_payload_last;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire       [1:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [1:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                _zz_1;
  wire                _zz_2;
  wire       [0:0]    readRspIndex;

  Axi4ReadOnlyErrorSlave errorSlave (
    .io_axi_ar_valid            (_zz_3                                   ), //i
    .io_axi_ar_ready            (errorSlave_io_axi_ar_ready              ), //o
    .io_axi_ar_payload_addr     (io_input_ar_payload_addr[31:0]          ), //i
    .io_axi_ar_payload_len      (io_input_ar_payload_len[7:0]            ), //i
    .io_axi_ar_payload_burst    (io_input_ar_payload_burst[1:0]          ), //i
    .io_axi_ar_payload_cache    (io_input_ar_payload_cache[3:0]          ), //i
    .io_axi_ar_payload_prot     (io_input_ar_payload_prot[2:0]           ), //i
    .io_axi_r_valid             (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready             (io_input_r_ready                        ), //i
    .io_axi_r_payload_data      (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_last      (errorSlave_io_axi_r_payload_last        ), //o
    .io_axiClk                  (io_axiClk                               ), //i
    .resetCtrl_axiReset         (resetCtrl_axiReset                      )  //i
  );
  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_ar_valid && io_input_ar_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_ar_payload_addr & (~ 32'h03ffffff)) == 32'h40000000) && io_input_ar_valid),(((io_input_ar_payload_addr & (~ 32'h00000fff)) == 32'h0) && io_input_ar_valid)};
  assign decodedCmdError = (decodedCmdSels == 2'b00);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = ((((decodedCmdSels & {io_outputs_1_ar_ready,io_outputs_0_ar_ready}) != 2'b00) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign _zz_3 = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_0_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_1_ar_valid = ((io_input_ar_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_1_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_1_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_1_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_1_ar_payload_prot = io_input_ar_payload_prot;
  assign _zz_1 = pendingSels[0];
  assign _zz_2 = pendingSels[1];
  assign readRspIndex = _zz_2;
  always @ (*) begin
    io_input_r_valid = ({io_outputs_1_r_valid,io_outputs_0_r_valid} != 2'b00);
    if(errorSlave_io_axi_r_valid)begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = (_zz_1 ? io_outputs_0_r_payload_data : io_outputs_1_r_payload_data);
  always @ (*) begin
    io_input_r_payload_last = (_zz_1 ? io_outputs_0_r_payload_last : io_outputs_1_r_payload_last);
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  assign io_outputs_1_r_ready = io_input_r_ready;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingSels <= 2'b00;
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready)begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready)begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module Axi4VgaCtrl (
  output              io_axi_ar_valid,
  input               io_axi_ar_ready,
  output     [31:0]   io_axi_ar_payload_addr,
  output     [7:0]    io_axi_ar_payload_len,
  output     [2:0]    io_axi_ar_payload_size,
  output     [3:0]    io_axi_ar_payload_cache,
  output     [2:0]    io_axi_ar_payload_prot,
  input               io_axi_r_valid,
  output              io_axi_r_ready,
  input      [31:0]   io_axi_r_payload_data,
  input               io_axi_r_payload_last,
  input      [7:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_vga_vSync,
  output              io_vga_hSync,
  output              io_vga_colorEn,
  output     [4:0]    io_vga_color_r,
  output     [5:0]    io_vga_color_g,
  output     [4:0]    io_vga_color_b,
  input               io_axiClk,
  input               resetCtrl_axiReset,
  input               io_vgaClk,
  input               resetCtrl_vgaReset
);
  wire                _zz_16;
  reg                 _zz_17;
  wire                _zz_18;
  wire                _zz_19;
  wire                dma_io_busy;
  wire                dma_io_mem_cmd_valid;
  wire       [26:0]   dma_io_mem_cmd_payload;
  wire                dma_io_frame_valid;
  wire                dma_io_frame_payload_last;
  wire       [4:0]    dma_io_frame_payload_fragment_r;
  wire       [5:0]    dma_io_frame_payload_fragment_g;
  wire       [4:0]    dma_io_frame_payload_fragment_b;
  wire                run_buffercc_io_dataOut;
  wire                vga_ctrl_io_frameStart;
  wire                vga_ctrl_io_pixels_ready;
  wire                vga_ctrl_io_vga_vSync;
  wire                vga_ctrl_io_vga_hSync;
  wire                vga_ctrl_io_vga_colorEn;
  wire       [4:0]    vga_ctrl_io_vga_color_r;
  wire       [5:0]    vga_ctrl_io_vga_color_g;
  wire       [4:0]    vga_ctrl_io_vga_color_b;
  wire                vga_ctrl_io_error;
  wire                pulseCCByToggle_1_io_pulseOut;
  wire       [0:0]    _zz_20;
  wire       [0:0]    _zz_21;
  wire       [0:0]    _zz_22;
  wire                apbCtrl_askWrite;
  wire                apbCtrl_askRead;
  wire                apbCtrl_doWrite;
  wire                apbCtrl_doRead;
  reg                 run;
  reg        [17:0]   _zz_1;
  reg        [26:0]   _zz_2;
  wire                vga_run;
  reg                 vga_run_regNext;
  reg                 _zz_3;
  reg                 _zz_4;
  wire                dma_io_frame_translated_valid;
  reg                 dma_io_frame_translated_ready;
  wire       [4:0]    dma_io_frame_translated_payload_r;
  wire       [5:0]    dma_io_frame_translated_payload_g;
  wire       [4:0]    dma_io_frame_translated_payload_b;
  reg                 dma_io_frame_translated_thrown_valid;
  wire                dma_io_frame_translated_thrown_ready;
  wire       [4:0]    dma_io_frame_translated_thrown_payload_r;
  wire       [5:0]    dma_io_frame_translated_thrown_payload_g;
  wire       [4:0]    dma_io_frame_translated_thrown_payload_b;
  wire                _zz_5;
  reg        [11:0]   _zz_6;
  reg        [11:0]   _zz_7;
  reg        [11:0]   _zz_8;
  reg        [11:0]   _zz_9;
  reg        [11:0]   _zz_10;
  reg        [11:0]   _zz_11;
  reg        [11:0]   _zz_12;
  reg        [11:0]   _zz_13;
  reg                 _zz_14;
  reg                 _zz_15;

  assign _zz_20 = io_apb_PWDATA[0 : 0];
  assign _zz_21 = io_apb_PWDATA[0 : 0];
  assign _zz_22 = io_apb_PWDATA[1 : 1];
  VideoDma dma (
    .io_start                       (_zz_16                                ), //i
    .io_busy                        (dma_io_busy                           ), //o
    .io_base                        (_zz_2[26:0]                           ), //i
    .io_size                        (_zz_1[17:0]                           ), //i
    .io_mem_cmd_valid               (dma_io_mem_cmd_valid                  ), //o
    .io_mem_cmd_ready               (io_axi_ar_ready                       ), //i
    .io_mem_cmd_payload             (dma_io_mem_cmd_payload[26:0]          ), //o
    .io_mem_rsp_valid               (io_axi_r_valid                        ), //i
    .io_mem_rsp_payload_last        (io_axi_r_payload_last                 ), //i
    .io_mem_rsp_payload_fragment    (io_axi_r_payload_data[31:0]           ), //i
    .io_frame_valid                 (dma_io_frame_valid                    ), //o
    .io_frame_ready                 (_zz_17                                ), //i
    .io_frame_payload_last          (dma_io_frame_payload_last             ), //o
    .io_frame_payload_fragment_r    (dma_io_frame_payload_fragment_r[4:0]  ), //o
    .io_frame_payload_fragment_g    (dma_io_frame_payload_fragment_g[5:0]  ), //o
    .io_frame_payload_fragment_b    (dma_io_frame_payload_fragment_b[4:0]  ), //o
    .io_axiClk                      (io_axiClk                             ), //i
    .resetCtrl_axiReset             (resetCtrl_axiReset                    ), //i
    .io_vgaClk                      (io_vgaClk                             ), //i
    .resetCtrl_vgaReset             (resetCtrl_vgaReset                    )  //i
  );
  BufferCC_9 run_buffercc (
    .io_dataIn             (run                      ), //i
    .io_dataOut            (run_buffercc_io_dataOut  ), //o
    .io_vgaClk             (io_vgaClk                ), //i
    .resetCtrl_vgaReset    (resetCtrl_vgaReset       )  //i
  );
  VgaCtrl vga_ctrl (
    .io_softReset               (_zz_18                                         ), //i
    .io_timings_h_syncStart     (_zz_6[11:0]                                    ), //i
    .io_timings_h_syncEnd       (_zz_7[11:0]                                    ), //i
    .io_timings_h_colorStart    (_zz_8[11:0]                                    ), //i
    .io_timings_h_colorEnd      (_zz_9[11:0]                                    ), //i
    .io_timings_h_polarity      (_zz_14                                         ), //i
    .io_timings_v_syncStart     (_zz_10[11:0]                                   ), //i
    .io_timings_v_syncEnd       (_zz_11[11:0]                                   ), //i
    .io_timings_v_colorStart    (_zz_12[11:0]                                   ), //i
    .io_timings_v_colorEnd      (_zz_13[11:0]                                   ), //i
    .io_timings_v_polarity      (_zz_15                                         ), //i
    .io_frameStart              (vga_ctrl_io_frameStart                         ), //o
    .io_pixels_valid            (_zz_19                                         ), //i
    .io_pixels_ready            (vga_ctrl_io_pixels_ready                       ), //o
    .io_pixels_payload_r        (dma_io_frame_translated_thrown_payload_r[4:0]  ), //i
    .io_pixels_payload_g        (dma_io_frame_translated_thrown_payload_g[5:0]  ), //i
    .io_pixels_payload_b        (dma_io_frame_translated_thrown_payload_b[4:0]  ), //i
    .io_vga_vSync               (vga_ctrl_io_vga_vSync                          ), //o
    .io_vga_hSync               (vga_ctrl_io_vga_hSync                          ), //o
    .io_vga_colorEn             (vga_ctrl_io_vga_colorEn                        ), //o
    .io_vga_color_r             (vga_ctrl_io_vga_color_r[4:0]                   ), //o
    .io_vga_color_g             (vga_ctrl_io_vga_color_g[5:0]                   ), //o
    .io_vga_color_b             (vga_ctrl_io_vga_color_b[4:0]                   ), //o
    .io_error                   (vga_ctrl_io_error                              ), //o
    .io_vgaClk                  (io_vgaClk                                      ), //i
    .resetCtrl_vgaReset         (resetCtrl_vgaReset                             )  //i
  );
  PulseCCByToggle pulseCCByToggle_1 (
    .io_pulseIn            (vga_ctrl_io_frameStart         ), //i
    .io_pulseOut           (pulseCCByToggle_1_io_pulseOut  ), //o
    .io_vgaClk             (io_vgaClk                      ), //i
    .resetCtrl_vgaReset    (resetCtrl_vgaReset             ), //i
    .io_axiClk             (io_axiClk                      ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset             )  //i
  );
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      8'h0 : begin
        io_apb_PRDATA[0 : 0] = run;
        io_apb_PRDATA[1 : 1] = dma_io_busy;
      end
      default : begin
      end
    endcase
  end

  assign apbCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign apbCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign apbCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign apbCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  assign io_axi_ar_valid = dma_io_mem_cmd_valid;
  assign io_axi_ar_payload_addr = ({5'd0,dma_io_mem_cmd_payload} <<< 5);
  assign io_axi_ar_payload_len = 8'h07;
  assign io_axi_ar_payload_size = 3'b010;
  assign io_axi_ar_payload_cache = 4'b1111;
  assign io_axi_ar_payload_prot = 3'b010;
  assign io_axi_r_ready = 1'b1;
  assign vga_run = run_buffercc_io_dataOut;
  assign dma_io_frame_translated_valid = dma_io_frame_valid;
  always @ (*) begin
    _zz_17 = dma_io_frame_translated_ready;
    if((! vga_run))begin
      _zz_17 = 1'b1;
    end
  end

  assign dma_io_frame_translated_payload_r = dma_io_frame_payload_fragment_r;
  assign dma_io_frame_translated_payload_g = dma_io_frame_payload_fragment_g;
  assign dma_io_frame_translated_payload_b = dma_io_frame_payload_fragment_b;
  always @ (*) begin
    dma_io_frame_translated_thrown_valid = dma_io_frame_translated_valid;
    if(_zz_3)begin
      dma_io_frame_translated_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    dma_io_frame_translated_ready = dma_io_frame_translated_thrown_ready;
    if(_zz_3)begin
      dma_io_frame_translated_ready = 1'b1;
    end
  end

  assign dma_io_frame_translated_thrown_payload_r = dma_io_frame_translated_payload_r;
  assign dma_io_frame_translated_thrown_payload_g = dma_io_frame_translated_payload_g;
  assign dma_io_frame_translated_thrown_payload_b = dma_io_frame_translated_payload_b;
  assign _zz_5 = (! _zz_4);
  assign dma_io_frame_translated_thrown_ready = (vga_ctrl_io_pixels_ready && _zz_5);
  assign _zz_19 = (dma_io_frame_translated_thrown_valid && _zz_5);
  assign _zz_18 = (! vga_run);
  assign io_vga_vSync = vga_ctrl_io_vga_vSync;
  assign io_vga_hSync = vga_ctrl_io_vga_hSync;
  assign io_vga_colorEn = vga_ctrl_io_vga_colorEn;
  assign io_vga_color_r = vga_ctrl_io_vga_color_r;
  assign io_vga_color_g = vga_ctrl_io_vga_color_g;
  assign io_vga_color_b = vga_ctrl_io_vga_color_b;
  assign _zz_16 = (pulseCCByToggle_1_io_pulseOut && run);
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      run <= 1'b0;
      _zz_14 <= 1'b0;
      _zz_15 <= 1'b0;
    end else begin
      case(io_apb_PADDR)
        8'h0 : begin
          if(apbCtrl_doWrite)begin
            run <= _zz_20[0];
          end
        end
        8'h60 : begin
          if(apbCtrl_doWrite)begin
            _zz_14 <= _zz_21[0];
            _zz_15 <= _zz_22[0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge io_vgaClk) begin
    vga_run_regNext <= vga_run;
  end

  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      _zz_3 <= 1'b0;
      _zz_4 <= 1'b0;
    end else begin
      if(vga_ctrl_io_frameStart)begin
        _zz_4 <= 1'b0;
      end
      if(((dma_io_frame_valid && _zz_17) && dma_io_frame_payload_last))begin
        _zz_3 <= 1'b0;
        _zz_4 <= _zz_3;
      end
      if(((! _zz_4) && (! _zz_3)))begin
        if((vga_ctrl_io_error || (vga_run && (! vga_run_regNext))))begin
          _zz_3 <= 1'b1;
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    case(io_apb_PADDR)
      8'h04 : begin
        if(apbCtrl_doWrite)begin
          _zz_1 <= io_apb_PWDATA[22 : 5];
        end
      end
      8'h08 : begin
        if(apbCtrl_doWrite)begin
          _zz_2 <= io_apb_PWDATA[31 : 5];
        end
      end
      8'h40 : begin
        if(apbCtrl_doWrite)begin
          _zz_6 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h44 : begin
        if(apbCtrl_doWrite)begin
          _zz_7 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h48 : begin
        if(apbCtrl_doWrite)begin
          _zz_8 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h4c : begin
        if(apbCtrl_doWrite)begin
          _zz_9 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h50 : begin
        if(apbCtrl_doWrite)begin
          _zz_10 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h54 : begin
        if(apbCtrl_doWrite)begin
          _zz_11 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h58 : begin
        if(apbCtrl_doWrite)begin
          _zz_12 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h5c : begin
        if(apbCtrl_doWrite)begin
          _zz_13 <= io_apb_PWDATA[11 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module Apb3UartCtrl (
  input      [4:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_interrupt,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_9;
  reg                 _zz_10;
  wire                _zz_11;
  wire                uartCtrl_1_io_write_ready;
  wire                uartCtrl_1_io_read_valid;
  wire       [7:0]    uartCtrl_1_io_read_payload;
  wire                uartCtrl_1_io_uart_txd;
  wire                uartCtrl_1_io_readError;
  wire                uartCtrl_1_io_readBreak;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload;
  wire       [4:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy;
  wire       [4:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_availability;
  wire                uartCtrl_1_io_read_queueWithOccupancy_io_push_ready;
  wire                uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload;
  wire       [4:0]    uartCtrl_1_io_read_queueWithOccupancy_io_occupancy;
  wire       [4:0]    uartCtrl_1_io_read_queueWithOccupancy_io_availability;
  wire       [0:0]    _zz_12;
  wire       [0:0]    _zz_13;
  wire       [0:0]    _zz_14;
  wire       [0:0]    _zz_15;
  wire       [0:0]    _zz_16;
  wire       [0:0]    _zz_17;
  wire       [0:0]    _zz_18;
  wire       [0:0]    _zz_19;
  wire       [0:0]    _zz_20;
  wire       [0:0]    _zz_21;
  wire       [19:0]   _zz_22;
  wire       [19:0]   _zz_23;
  wire       [0:0]    _zz_24;
  wire       [0:0]    _zz_25;
  wire       [4:0]    _zz_26;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  reg        [2:0]    bridge_uartConfigReg_frame_dataLength;
  reg        `UartStopType_binary_sequential_type bridge_uartConfigReg_frame_stop;
  reg        `UartParityType_binary_sequential_type bridge_uartConfigReg_frame_parity;
  reg        [19:0]   bridge_uartConfigReg_clockDivider;
  reg                 _zz_1;
  wire                bridge_write_streamUnbuffered_valid;
  wire                bridge_write_streamUnbuffered_ready;
  wire       [7:0]    bridge_write_streamUnbuffered_payload;
  reg                 bridge_read_streamBreaked_valid;
  reg                 bridge_read_streamBreaked_ready;
  wire       [7:0]    bridge_read_streamBreaked_payload;
  reg                 bridge_interruptCtrl_writeIntEnable;
  reg                 bridge_interruptCtrl_readIntEnable;
  wire                bridge_interruptCtrl_readInt;
  wire                bridge_interruptCtrl_writeInt;
  wire                bridge_interruptCtrl_interrupt;
  reg                 bridge_misc_readError;
  reg                 _zz_2;
  reg                 bridge_misc_readOverflowError;
  reg                 _zz_3;
  reg                 bridge_misc_breakDetected;
  reg                 uartCtrl_1_io_readBreak_regNext;
  reg                 _zz_4;
  reg                 bridge_misc_doBreak;
  reg                 _zz_5;
  reg                 _zz_6;
  wire       `UartParityType_binary_sequential_type _zz_7;
  wire       `UartStopType_binary_sequential_type _zz_8;
  `ifndef SYNTHESIS
  reg [23:0] bridge_uartConfigReg_frame_stop_string;
  reg [31:0] bridge_uartConfigReg_frame_parity_string;
  reg [31:0] _zz_7_string;
  reg [23:0] _zz_8_string;
  `endif


  assign _zz_12 = io_apb_PWDATA[0 : 0];
  assign _zz_13 = 1'b0;
  assign _zz_14 = io_apb_PWDATA[1 : 1];
  assign _zz_15 = 1'b0;
  assign _zz_16 = io_apb_PWDATA[9 : 9];
  assign _zz_17 = 1'b0;
  assign _zz_18 = io_apb_PWDATA[10 : 10];
  assign _zz_19 = 1'b1;
  assign _zz_20 = io_apb_PWDATA[11 : 11];
  assign _zz_21 = 1'b0;
  assign _zz_22 = io_apb_PWDATA[19 : 0];
  assign _zz_23 = _zz_22;
  assign _zz_24 = io_apb_PWDATA[0 : 0];
  assign _zz_25 = io_apb_PWDATA[1 : 1];
  assign _zz_26 = (5'h10 - bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy);
  UartCtrl uartCtrl_1 (
    .io_config_frame_dataLength    (bridge_uartConfigReg_frame_dataLength[2:0]                            ), //i
    .io_config_frame_stop          (bridge_uartConfigReg_frame_stop                                       ), //i
    .io_config_frame_parity        (bridge_uartConfigReg_frame_parity[1:0]                                ), //i
    .io_config_clockDivider        (bridge_uartConfigReg_clockDivider[19:0]                               ), //i
    .io_write_valid                (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid         ), //i
    .io_write_ready                (uartCtrl_1_io_write_ready                                             ), //o
    .io_write_payload              (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload[7:0]  ), //i
    .io_read_valid                 (uartCtrl_1_io_read_valid                                              ), //o
    .io_read_ready                 (uartCtrl_1_io_read_queueWithOccupancy_io_push_ready                   ), //i
    .io_read_payload               (uartCtrl_1_io_read_payload[7:0]                                       ), //o
    .io_uart_txd                   (uartCtrl_1_io_uart_txd                                                ), //o
    .io_uart_rxd                   (io_uart_rxd                                                           ), //i
    .io_readError                  (uartCtrl_1_io_readError                                               ), //o
    .io_writeBreak                 (bridge_misc_doBreak                                                   ), //i
    .io_readBreak                  (uartCtrl_1_io_readBreak                                               ), //o
    .io_axiClk                     (io_axiClk                                                             ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                                                    )  //i
  );
  StreamFifo bridge_write_streamUnbuffered_queueWithOccupancy (
    .io_push_valid         (bridge_write_streamUnbuffered_valid                                    ), //i
    .io_push_ready         (bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready         ), //o
    .io_push_payload       (bridge_write_streamUnbuffered_payload[7:0]                             ), //i
    .io_pop_valid          (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid          ), //o
    .io_pop_ready          (uartCtrl_1_io_write_ready                                              ), //i
    .io_pop_payload        (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload[7:0]   ), //o
    .io_flush              (_zz_9                                                                  ), //i
    .io_occupancy          (bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy[4:0]     ), //o
    .io_availability       (bridge_write_streamUnbuffered_queueWithOccupancy_io_availability[4:0]  ), //o
    .io_axiClk             (io_axiClk                                                              ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                                     )  //i
  );
  StreamFifo uartCtrl_1_io_read_queueWithOccupancy (
    .io_push_valid         (uartCtrl_1_io_read_valid                                    ), //i
    .io_push_ready         (uartCtrl_1_io_read_queueWithOccupancy_io_push_ready         ), //o
    .io_push_payload       (uartCtrl_1_io_read_payload[7:0]                             ), //i
    .io_pop_valid          (uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid          ), //o
    .io_pop_ready          (_zz_10                                                      ), //i
    .io_pop_payload        (uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload[7:0]   ), //o
    .io_flush              (_zz_11                                                      ), //i
    .io_occupancy          (uartCtrl_1_io_read_queueWithOccupancy_io_occupancy[4:0]     ), //o
    .io_availability       (uartCtrl_1_io_read_queueWithOccupancy_io_availability[4:0]  ), //o
    .io_axiClk             (io_axiClk                                                   ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                          )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(bridge_uartConfigReg_frame_stop)
      `UartStopType_binary_sequential_ONE : bridge_uartConfigReg_frame_stop_string = "ONE";
      `UartStopType_binary_sequential_TWO : bridge_uartConfigReg_frame_stop_string = "TWO";
      default : bridge_uartConfigReg_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(bridge_uartConfigReg_frame_parity)
      `UartParityType_binary_sequential_NONE : bridge_uartConfigReg_frame_parity_string = "NONE";
      `UartParityType_binary_sequential_EVEN : bridge_uartConfigReg_frame_parity_string = "EVEN";
      `UartParityType_binary_sequential_ODD : bridge_uartConfigReg_frame_parity_string = "ODD ";
      default : bridge_uartConfigReg_frame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_7)
      `UartParityType_binary_sequential_NONE : _zz_7_string = "NONE";
      `UartParityType_binary_sequential_EVEN : _zz_7_string = "EVEN";
      `UartParityType_binary_sequential_ODD : _zz_7_string = "ODD ";
      default : _zz_7_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_8)
      `UartStopType_binary_sequential_ONE : _zz_8_string = "ONE";
      `UartStopType_binary_sequential_TWO : _zz_8_string = "TWO";
      default : _zz_8_string = "???";
    endcase
  end
  `endif

  assign io_uart_txd = uartCtrl_1_io_uart_txd;
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      5'h0 : begin
        io_apb_PRDATA[16 : 16] = (bridge_read_streamBreaked_valid ^ 1'b0);
        io_apb_PRDATA[7 : 0] = bridge_read_streamBreaked_payload;
      end
      5'h04 : begin
        io_apb_PRDATA[20 : 16] = _zz_26;
        io_apb_PRDATA[15 : 15] = bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
        io_apb_PRDATA[28 : 24] = uartCtrl_1_io_read_queueWithOccupancy_io_occupancy;
        io_apb_PRDATA[0 : 0] = bridge_interruptCtrl_writeIntEnable;
        io_apb_PRDATA[1 : 1] = bridge_interruptCtrl_readIntEnable;
        io_apb_PRDATA[8 : 8] = bridge_interruptCtrl_writeInt;
        io_apb_PRDATA[9 : 9] = bridge_interruptCtrl_readInt;
      end
      5'h10 : begin
        io_apb_PRDATA[0 : 0] = bridge_misc_readError;
        io_apb_PRDATA[1 : 1] = bridge_misc_readOverflowError;
        io_apb_PRDATA[8 : 8] = uartCtrl_1_io_readBreak;
        io_apb_PRDATA[9 : 9] = bridge_misc_breakDetected;
      end
      default : begin
      end
    endcase
  end

  assign busCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign busCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign busCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign busCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  always @ (*) begin
    _zz_1 = 1'b0;
    case(io_apb_PADDR)
      5'h0 : begin
        if(busCtrl_doWrite)begin
          _zz_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_write_streamUnbuffered_valid = _zz_1;
  assign bridge_write_streamUnbuffered_payload = io_apb_PWDATA[7 : 0];
  assign bridge_write_streamUnbuffered_ready = bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  always @ (*) begin
    bridge_read_streamBreaked_valid = uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid;
    if(uartCtrl_1_io_readBreak)begin
      bridge_read_streamBreaked_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_10 = bridge_read_streamBreaked_ready;
    if(uartCtrl_1_io_readBreak)begin
      _zz_10 = 1'b1;
    end
  end

  assign bridge_read_streamBreaked_payload = uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload;
  always @ (*) begin
    bridge_read_streamBreaked_ready = 1'b0;
    case(io_apb_PADDR)
      5'h0 : begin
        if(busCtrl_doRead)begin
          bridge_read_streamBreaked_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_interruptCtrl_readInt = (bridge_interruptCtrl_readIntEnable && bridge_read_streamBreaked_valid);
  assign bridge_interruptCtrl_writeInt = (bridge_interruptCtrl_writeIntEnable && (! bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid));
  assign bridge_interruptCtrl_interrupt = (bridge_interruptCtrl_readInt || bridge_interruptCtrl_writeInt);
  always @ (*) begin
    _zz_2 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite)begin
          _zz_2 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_3 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite)begin
          _zz_3 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_4 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite)begin
          _zz_4 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_5 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite)begin
          _zz_5 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_6 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite)begin
          _zz_6 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign io_interrupt = bridge_interruptCtrl_interrupt;
  assign _zz_7 = io_apb_PWDATA[9 : 8];
  assign _zz_8 = io_apb_PWDATA[16 : 16];
  assign _zz_9 = 1'b0;
  assign _zz_11 = 1'b0;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      bridge_uartConfigReg_clockDivider <= 20'h0;
      bridge_interruptCtrl_writeIntEnable <= 1'b0;
      bridge_interruptCtrl_readIntEnable <= 1'b0;
      bridge_misc_readError <= 1'b0;
      bridge_misc_readOverflowError <= 1'b0;
      bridge_misc_breakDetected <= 1'b0;
      bridge_misc_doBreak <= 1'b0;
    end else begin
      if(_zz_2)begin
        if(_zz_12[0])begin
          bridge_misc_readError <= _zz_13[0];
        end
      end
      if(uartCtrl_1_io_readError)begin
        bridge_misc_readError <= 1'b1;
      end
      if(_zz_3)begin
        if(_zz_14[0])begin
          bridge_misc_readOverflowError <= _zz_15[0];
        end
      end
      if((uartCtrl_1_io_read_valid && (! uartCtrl_1_io_read_queueWithOccupancy_io_push_ready)))begin
        bridge_misc_readOverflowError <= 1'b1;
      end
      if((uartCtrl_1_io_readBreak && (! uartCtrl_1_io_readBreak_regNext)))begin
        bridge_misc_breakDetected <= 1'b1;
      end
      if(_zz_4)begin
        if(_zz_16[0])begin
          bridge_misc_breakDetected <= _zz_17[0];
        end
      end
      if(_zz_5)begin
        if(_zz_18[0])begin
          bridge_misc_doBreak <= _zz_19[0];
        end
      end
      if(_zz_6)begin
        if(_zz_20[0])begin
          bridge_misc_doBreak <= _zz_21[0];
        end
      end
      case(io_apb_PADDR)
        5'h08 : begin
          if(busCtrl_doWrite)begin
            bridge_uartConfigReg_clockDivider[19 : 0] <= _zz_23;
          end
        end
        5'h04 : begin
          if(busCtrl_doWrite)begin
            bridge_interruptCtrl_writeIntEnable <= _zz_24[0];
            bridge_interruptCtrl_readIntEnable <= _zz_25[0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    uartCtrl_1_io_readBreak_regNext <= uartCtrl_1_io_readBreak;
    case(io_apb_PADDR)
      5'h0c : begin
        if(busCtrl_doWrite)begin
          bridge_uartConfigReg_frame_dataLength <= io_apb_PWDATA[2 : 0];
          bridge_uartConfigReg_frame_parity <= _zz_7;
          bridge_uartConfigReg_frame_stop <= _zz_8;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module PinsecTimerCtrl (
  input      [7:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_apb_PSLVERROR,
  input               io_external_clear,
  input               io_external_tick,
  output              io_interrupt,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_11;
  wire                _zz_12;
  wire                _zz_13;
  wire                _zz_14;
  wire                _zz_15;
  wire                _zz_16;
  wire                _zz_17;
  wire                _zz_18;
  reg        [3:0]    _zz_19;
  reg        [3:0]    _zz_20;
  wire                io_external_buffercc_io_dataOut_clear;
  wire                io_external_buffercc_io_dataOut_tick;
  wire                prescaler_1_io_overflow;
  wire                timerA_io_full;
  wire       [31:0]   timerA_io_value;
  wire                timerB_io_full;
  wire       [15:0]   timerB_io_value;
  wire                timerC_io_full;
  wire       [15:0]   timerC_io_value;
  wire                timerD_io_full;
  wire       [15:0]   timerD_io_value;
  wire       [3:0]    interruptCtrl_1_io_pendings;
  wire                external_clear;
  wire                external_tick;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  reg        [15:0]   _zz_1;
  reg                 _zz_2;
  reg        [1:0]    timerABridge_ticksEnable;
  reg        [0:0]    timerABridge_clearsEnable;
  reg                 timerABridge_busClearing;
  reg        [31:0]   timerA_io_limit_driver;
  reg                 _zz_3;
  reg                 _zz_4;
  reg        [2:0]    timerBBridge_ticksEnable;
  reg        [1:0]    timerBBridge_clearsEnable;
  reg                 timerBBridge_busClearing;
  reg        [15:0]   timerB_io_limit_driver;
  reg                 _zz_5;
  reg                 _zz_6;
  reg        [2:0]    timerCBridge_ticksEnable;
  reg        [1:0]    timerCBridge_clearsEnable;
  reg                 timerCBridge_busClearing;
  reg        [15:0]   timerC_io_limit_driver;
  reg                 _zz_7;
  reg                 _zz_8;
  reg        [2:0]    timerDBridge_ticksEnable;
  reg        [1:0]    timerDBridge_clearsEnable;
  reg                 timerDBridge_busClearing;
  reg        [15:0]   timerD_io_limit_driver;
  reg                 _zz_9;
  reg                 _zz_10;
  reg        [3:0]    interruptCtrl_1_io_masks_driver;

  BufferCC_8 io_external_buffercc (
    .io_dataIn_clear       (io_external_clear                      ), //i
    .io_dataIn_tick        (io_external_tick                       ), //i
    .io_dataOut_clear      (io_external_buffercc_io_dataOut_clear  ), //o
    .io_dataOut_tick       (io_external_buffercc_io_dataOut_tick   ), //o
    .io_axiClk             (io_axiClk                              ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                     )  //i
  );
  Prescaler prescaler_1 (
    .io_clear              (_zz_2                    ), //i
    .io_limit              (_zz_1[15:0]              ), //i
    .io_overflow           (prescaler_1_io_overflow  ), //o
    .io_axiClk             (io_axiClk                ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset       )  //i
  );
  Timer timerA (
    .io_tick               (_zz_11                        ), //i
    .io_clear              (_zz_12                        ), //i
    .io_limit              (timerA_io_limit_driver[31:0]  ), //i
    .io_full               (timerA_io_full                ), //o
    .io_value              (timerA_io_value[31:0]         ), //o
    .io_axiClk             (io_axiClk                     ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset            )  //i
  );
  Timer_1 timerB (
    .io_tick               (_zz_13                        ), //i
    .io_clear              (_zz_14                        ), //i
    .io_limit              (timerB_io_limit_driver[15:0]  ), //i
    .io_full               (timerB_io_full                ), //o
    .io_value              (timerB_io_value[15:0]         ), //o
    .io_axiClk             (io_axiClk                     ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset            )  //i
  );
  Timer_1 timerC (
    .io_tick               (_zz_15                        ), //i
    .io_clear              (_zz_16                        ), //i
    .io_limit              (timerC_io_limit_driver[15:0]  ), //i
    .io_full               (timerC_io_full                ), //o
    .io_value              (timerC_io_value[15:0]         ), //o
    .io_axiClk             (io_axiClk                     ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset            )  //i
  );
  Timer_1 timerD (
    .io_tick               (_zz_17                        ), //i
    .io_clear              (_zz_18                        ), //i
    .io_limit              (timerD_io_limit_driver[15:0]  ), //i
    .io_full               (timerD_io_full                ), //o
    .io_value              (timerD_io_value[15:0]         ), //o
    .io_axiClk             (io_axiClk                     ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset            )  //i
  );
  InterruptCtrl interruptCtrl_1 (
    .io_inputs             (_zz_19[3:0]                           ), //i
    .io_clears             (_zz_20[3:0]                           ), //i
    .io_masks              (interruptCtrl_1_io_masks_driver[3:0]  ), //i
    .io_pendings           (interruptCtrl_1_io_pendings[3:0]      ), //o
    .io_axiClk             (io_axiClk                             ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                    )  //i
  );
  assign external_clear = io_external_buffercc_io_dataOut_clear;
  assign external_tick = io_external_buffercc_io_dataOut_tick;
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      8'h0 : begin
        io_apb_PRDATA[15 : 0] = _zz_1;
      end
      8'h40 : begin
        io_apb_PRDATA[1 : 0] = timerABridge_ticksEnable;
        io_apb_PRDATA[16 : 16] = timerABridge_clearsEnable;
      end
      8'h44 : begin
        io_apb_PRDATA[31 : 0] = timerA_io_limit_driver;
      end
      8'h48 : begin
        io_apb_PRDATA[31 : 0] = timerA_io_value;
      end
      8'h50 : begin
        io_apb_PRDATA[2 : 0] = timerBBridge_ticksEnable;
        io_apb_PRDATA[17 : 16] = timerBBridge_clearsEnable;
      end
      8'h54 : begin
        io_apb_PRDATA[15 : 0] = timerB_io_limit_driver;
      end
      8'h58 : begin
        io_apb_PRDATA[15 : 0] = timerB_io_value;
      end
      8'h60 : begin
        io_apb_PRDATA[2 : 0] = timerCBridge_ticksEnable;
        io_apb_PRDATA[17 : 16] = timerCBridge_clearsEnable;
      end
      8'h64 : begin
        io_apb_PRDATA[15 : 0] = timerC_io_limit_driver;
      end
      8'h68 : begin
        io_apb_PRDATA[15 : 0] = timerC_io_value;
      end
      8'h70 : begin
        io_apb_PRDATA[2 : 0] = timerDBridge_ticksEnable;
        io_apb_PRDATA[17 : 16] = timerDBridge_clearsEnable;
      end
      8'h74 : begin
        io_apb_PRDATA[15 : 0] = timerD_io_limit_driver;
      end
      8'h78 : begin
        io_apb_PRDATA[15 : 0] = timerD_io_value;
      end
      8'h10 : begin
        io_apb_PRDATA[3 : 0] = interruptCtrl_1_io_pendings;
      end
      8'h14 : begin
        io_apb_PRDATA[3 : 0] = interruptCtrl_1_io_masks_driver;
      end
      default : begin
      end
    endcase
  end

  assign io_apb_PSLVERROR = 1'b0;
  assign busCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign busCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign busCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign busCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  always @ (*) begin
    _zz_2 = 1'b0;
    case(io_apb_PADDR)
      8'h0 : begin
        if(busCtrl_doWrite)begin
          _zz_2 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    timerABridge_busClearing = 1'b0;
    if(_zz_3)begin
      timerABridge_busClearing = 1'b1;
    end
    if(_zz_4)begin
      timerABridge_busClearing = 1'b1;
    end
  end

  always @ (*) begin
    _zz_3 = 1'b0;
    case(io_apb_PADDR)
      8'h44 : begin
        if(busCtrl_doWrite)begin
          _zz_3 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_4 = 1'b0;
    case(io_apb_PADDR)
      8'h48 : begin
        if(busCtrl_doWrite)begin
          _zz_4 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign _zz_12 = (((timerABridge_clearsEnable & timerA_io_full) != 1'b0) || timerABridge_busClearing);
  assign _zz_11 = ((timerABridge_ticksEnable & {prescaler_1_io_overflow,1'b1}) != 2'b00);
  always @ (*) begin
    timerBBridge_busClearing = 1'b0;
    if(_zz_5)begin
      timerBBridge_busClearing = 1'b1;
    end
    if(_zz_6)begin
      timerBBridge_busClearing = 1'b1;
    end
  end

  always @ (*) begin
    _zz_5 = 1'b0;
    case(io_apb_PADDR)
      8'h54 : begin
        if(busCtrl_doWrite)begin
          _zz_5 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_6 = 1'b0;
    case(io_apb_PADDR)
      8'h58 : begin
        if(busCtrl_doWrite)begin
          _zz_6 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign _zz_14 = (((timerBBridge_clearsEnable & {external_clear,timerB_io_full}) != 2'b00) || timerBBridge_busClearing);
  assign _zz_13 = ((timerBBridge_ticksEnable & {external_tick,{prescaler_1_io_overflow,1'b1}}) != 3'b000);
  always @ (*) begin
    timerCBridge_busClearing = 1'b0;
    if(_zz_7)begin
      timerCBridge_busClearing = 1'b1;
    end
    if(_zz_8)begin
      timerCBridge_busClearing = 1'b1;
    end
  end

  always @ (*) begin
    _zz_7 = 1'b0;
    case(io_apb_PADDR)
      8'h64 : begin
        if(busCtrl_doWrite)begin
          _zz_7 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_8 = 1'b0;
    case(io_apb_PADDR)
      8'h68 : begin
        if(busCtrl_doWrite)begin
          _zz_8 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign _zz_16 = (((timerCBridge_clearsEnable & {external_clear,timerC_io_full}) != 2'b00) || timerCBridge_busClearing);
  assign _zz_15 = ((timerCBridge_ticksEnable & {external_tick,{prescaler_1_io_overflow,1'b1}}) != 3'b000);
  always @ (*) begin
    timerDBridge_busClearing = 1'b0;
    if(_zz_9)begin
      timerDBridge_busClearing = 1'b1;
    end
    if(_zz_10)begin
      timerDBridge_busClearing = 1'b1;
    end
  end

  always @ (*) begin
    _zz_9 = 1'b0;
    case(io_apb_PADDR)
      8'h74 : begin
        if(busCtrl_doWrite)begin
          _zz_9 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_10 = 1'b0;
    case(io_apb_PADDR)
      8'h78 : begin
        if(busCtrl_doWrite)begin
          _zz_10 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign _zz_18 = (((timerDBridge_clearsEnable & {external_clear,timerD_io_full}) != 2'b00) || timerDBridge_busClearing);
  assign _zz_17 = ((timerDBridge_ticksEnable & {external_tick,{prescaler_1_io_overflow,1'b1}}) != 3'b000);
  always @ (*) begin
    _zz_20 = 4'b0000;
    case(io_apb_PADDR)
      8'h10 : begin
        if(busCtrl_doWrite)begin
          _zz_20 = io_apb_PWDATA[3 : 0];
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_19[0] = timerA_io_full;
    _zz_19[1] = timerB_io_full;
    _zz_19[2] = timerC_io_full;
    _zz_19[3] = timerD_io_full;
  end

  assign io_interrupt = (interruptCtrl_1_io_pendings != 4'b0000);
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      timerABridge_ticksEnable <= 2'b00;
      timerABridge_clearsEnable <= 1'b0;
      timerBBridge_ticksEnable <= 3'b000;
      timerBBridge_clearsEnable <= 2'b00;
      timerCBridge_ticksEnable <= 3'b000;
      timerCBridge_clearsEnable <= 2'b00;
      timerDBridge_ticksEnable <= 3'b000;
      timerDBridge_clearsEnable <= 2'b00;
      interruptCtrl_1_io_masks_driver <= 4'b0000;
    end else begin
      case(io_apb_PADDR)
        8'h40 : begin
          if(busCtrl_doWrite)begin
            timerABridge_ticksEnable <= io_apb_PWDATA[1 : 0];
            timerABridge_clearsEnable <= io_apb_PWDATA[16 : 16];
          end
        end
        8'h50 : begin
          if(busCtrl_doWrite)begin
            timerBBridge_ticksEnable <= io_apb_PWDATA[2 : 0];
            timerBBridge_clearsEnable <= io_apb_PWDATA[17 : 16];
          end
        end
        8'h60 : begin
          if(busCtrl_doWrite)begin
            timerCBridge_ticksEnable <= io_apb_PWDATA[2 : 0];
            timerCBridge_clearsEnable <= io_apb_PWDATA[17 : 16];
          end
        end
        8'h70 : begin
          if(busCtrl_doWrite)begin
            timerDBridge_ticksEnable <= io_apb_PWDATA[2 : 0];
            timerDBridge_clearsEnable <= io_apb_PWDATA[17 : 16];
          end
        end
        8'h14 : begin
          if(busCtrl_doWrite)begin
            interruptCtrl_1_io_masks_driver <= io_apb_PWDATA[3 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    case(io_apb_PADDR)
      8'h0 : begin
        if(busCtrl_doWrite)begin
          _zz_1 <= io_apb_PWDATA[15 : 0];
        end
      end
      8'h44 : begin
        if(busCtrl_doWrite)begin
          timerA_io_limit_driver <= io_apb_PWDATA[31 : 0];
        end
      end
      8'h54 : begin
        if(busCtrl_doWrite)begin
          timerB_io_limit_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      8'h64 : begin
        if(busCtrl_doWrite)begin
          timerC_io_limit_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      8'h74 : begin
        if(busCtrl_doWrite)begin
          timerD_io_limit_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

//Apb3Gpio replaced by Apb3Gpio

module Apb3Gpio (
  input      [3:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_apb_PSLVERROR,
  input      [31:0]   io_gpio_read,
  output     [31:0]   io_gpio_write,
  output     [31:0]   io_gpio_writeEnable,
  output     [31:0]   io_value,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [31:0]   io_gpio_read_buffercc_io_dataOut;
  wire                ctrl_askWrite;
  wire                ctrl_askRead;
  wire                ctrl_doWrite;
  wire                ctrl_doRead;
  reg        [31:0]   io_gpio_write_driver;
  reg        [31:0]   io_gpio_writeEnable_driver;

  BufferCC_6 io_gpio_read_buffercc (
    .io_dataIn             (io_gpio_read[31:0]                      ), //i
    .io_dataOut            (io_gpio_read_buffercc_io_dataOut[31:0]  ), //o
    .io_axiClk             (io_axiClk                               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                      )  //i
  );
  assign io_value = io_gpio_read_buffercc_io_dataOut;
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      4'b0000 : begin
        io_apb_PRDATA[31 : 0] = io_value;
      end
      4'b0100 : begin
        io_apb_PRDATA[31 : 0] = io_gpio_write_driver;
      end
      4'b1000 : begin
        io_apb_PRDATA[31 : 0] = io_gpio_writeEnable_driver;
      end
      default : begin
      end
    endcase
  end

  assign io_apb_PSLVERROR = 1'b0;
  assign ctrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign ctrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign ctrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign ctrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  assign io_gpio_write = io_gpio_write_driver;
  assign io_gpio_writeEnable = io_gpio_writeEnable_driver;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      io_gpio_writeEnable_driver <= 32'h0;
    end else begin
      case(io_apb_PADDR)
        4'b1000 : begin
          if(ctrl_doWrite)begin
            io_gpio_writeEnable_driver <= io_apb_PWDATA[31 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    case(io_apb_PADDR)
      4'b0100 : begin
        if(ctrl_doWrite)begin
          io_gpio_write_driver <= io_apb_PWDATA[31 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module Axi4SharedToApb3Bridge (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [19:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output reg          io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output reg          io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output reg          io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  output     [19:0]   io_apb_PADDR,
  output reg [0:0]    io_apb_PSEL,
  output reg          io_apb_PENABLE,
  input               io_apb_PREADY,
  output              io_apb_PWRITE,
  output     [31:0]   io_apb_PWDATA,
  input      [31:0]   io_apb_PRDATA,
  input               io_apb_PSLVERROR,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_1;
  reg        `Axi4ToApb3BridgePhase_binary_sequential_type phase;
  reg                 write;
  reg        [31:0]   readedData;
  reg        [3:0]    id;
  `ifndef SYNTHESIS
  reg [63:0] phase_string;
  `endif


  assign _zz_1 = (io_axi_arw_valid && ((! io_axi_arw_payload_write) || io_axi_w_valid));
  `ifndef SYNTHESIS
  always @(*) begin
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : phase_string = "SETUP   ";
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : phase_string = "ACCESS_1";
      `Axi4ToApb3BridgePhase_binary_sequential_RESPONSE : phase_string = "RESPONSE";
      default : phase_string = "????????";
    endcase
  end
  `endif

  always @ (*) begin
    io_axi_arw_ready = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        if(io_apb_PREADY)begin
          io_axi_arw_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_axi_w_ready = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        if(io_apb_PREADY)begin
          io_axi_w_ready = write;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_axi_b_valid = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
      end
      default : begin
        if(write)begin
          io_axi_b_valid = 1'b1;
        end
      end
    endcase
  end

  always @ (*) begin
    io_axi_r_valid = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
      end
      default : begin
        if(! write) begin
          io_axi_r_valid = 1'b1;
        end
      end
    endcase
  end

  always @ (*) begin
    io_apb_PSEL[0] = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
        if(_zz_1)begin
          io_apb_PSEL[0] = 1'b1;
        end
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        io_apb_PSEL[0] = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_apb_PENABLE = 1'b0;
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        io_apb_PENABLE = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign io_apb_PADDR = io_axi_arw_payload_addr;
  assign io_apb_PWDATA = io_axi_w_payload_data;
  assign io_apb_PWRITE = io_axi_arw_payload_write;
  assign io_axi_r_payload_resp = {io_apb_PSLVERROR,1'b0};
  assign io_axi_b_payload_resp = {io_apb_PSLVERROR,1'b0};
  assign io_axi_r_payload_id = id;
  assign io_axi_b_payload_id = id;
  assign io_axi_r_payload_data = readedData;
  assign io_axi_r_payload_last = 1'b1;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      phase <= `Axi4ToApb3BridgePhase_binary_sequential_SETUP;
    end else begin
      case(phase)
        `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
          if(_zz_1)begin
            phase <= `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1;
          end
        end
        `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
          if(io_apb_PREADY)begin
            phase <= `Axi4ToApb3BridgePhase_binary_sequential_RESPONSE;
          end
        end
        default : begin
          if(write)begin
            if(io_axi_b_ready)begin
              phase <= `Axi4ToApb3BridgePhase_binary_sequential_SETUP;
            end
          end else begin
            if(io_axi_r_ready)begin
              phase <= `Axi4ToApb3BridgePhase_binary_sequential_SETUP;
            end
          end
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    case(phase)
      `Axi4ToApb3BridgePhase_binary_sequential_SETUP : begin
        write <= io_axi_arw_payload_write;
        id <= io_axi_arw_payload_id;
      end
      `Axi4ToApb3BridgePhase_binary_sequential_ACCESS_1 : begin
        if(io_apb_PREADY)begin
          readedData <= io_apb_PRDATA;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module JtagAxi4SharedDebugger (
  input               io_jtag_tms,
  input               io_jtag_tdi,
  output              io_jtag_tdo,
  input               io_jtag_tck,
  output              io_axi_arw_valid,
  input               io_axi_arw_ready,
  output     [31:0]   io_axi_arw_payload_addr,
  output     [2:0]    io_axi_arw_payload_size,
  output              io_axi_arw_payload_write,
  output              io_axi_w_valid,
  input               io_axi_w_ready,
  output     [31:0]   io_axi_w_payload_data,
  output     [3:0]    io_axi_w_payload_strb,
  output              io_axi_w_payload_last,
  input               io_axi_b_valid,
  output              io_axi_b_ready,
  input               io_axi_r_valid,
  output              io_axi_r_ready,
  input      [31:0]   io_axi_r_payload_data,
  input               io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [31:0]   _zz_4;
  reg                 _zz_5;
  wire                jtagBridge_1_io_jtag_tdo;
  wire                jtagBridge_1_io_remote_cmd_valid;
  wire                jtagBridge_1_io_remote_cmd_payload_last;
  wire       [0:0]    jtagBridge_1_io_remote_cmd_payload_fragment;
  wire                jtagBridge_1_io_remote_rsp_ready;
  wire                debugger_io_remote_cmd_ready;
  wire                debugger_io_remote_rsp_valid;
  wire                debugger_io_remote_rsp_payload_error;
  wire       [31:0]   debugger_io_remote_rsp_payload_data;
  wire                debugger_io_mem_cmd_valid;
  wire       [31:0]   debugger_io_mem_cmd_payload_address;
  wire       [31:0]   debugger_io_mem_cmd_payload_data;
  wire                debugger_io_mem_cmd_payload_wr;
  wire       [1:0]    debugger_io_mem_cmd_payload_size;
  wire                debugger_io_mem_cmd_fork_io_input_ready;
  wire                debugger_io_mem_cmd_fork_io_outputs_0_valid;
  wire       [31:0]   debugger_io_mem_cmd_fork_io_outputs_0_payload_address;
  wire       [31:0]   debugger_io_mem_cmd_fork_io_outputs_0_payload_data;
  wire                debugger_io_mem_cmd_fork_io_outputs_0_payload_wr;
  wire       [1:0]    debugger_io_mem_cmd_fork_io_outputs_0_payload_size;
  wire                debugger_io_mem_cmd_fork_io_outputs_1_valid;
  wire       [31:0]   debugger_io_mem_cmd_fork_io_outputs_1_payload_address;
  wire       [31:0]   debugger_io_mem_cmd_fork_io_outputs_1_payload_data;
  wire                debugger_io_mem_cmd_fork_io_outputs_1_payload_wr;
  wire       [1:0]    debugger_io_mem_cmd_fork_io_outputs_1_payload_size;
  wire                _zz_6;
  wire                _zz_7;
  wire       [5:0]    _zz_8;
  wire       [6:0]    _zz_9;
  reg                 debugger_io_mem_cmd_fork_io_outputs_1_thrown_valid;
  wire                debugger_io_mem_cmd_fork_io_outputs_1_thrown_ready;
  wire       [31:0]   debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_address;
  wire       [31:0]   debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_data;
  wire                debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_wr;
  wire       [1:0]    debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_size;
  reg        [3:0]    _zz_1;
  reg                 _zz_2;
  reg        [1:0]    _zz_3;

  assign _zz_6 = (! debugger_io_mem_cmd_fork_io_outputs_1_payload_wr);
  assign _zz_7 = ((1'b1 && (! _zz_2)) || io_axi_r_valid);
  assign _zz_8 = (_zz_3 * 4'b1000);
  assign _zz_9 = ({3'd0,_zz_1} <<< debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_address[1 : 0]);
  JtagBridge jtagBridge_1 (
    .io_jtag_tms                       (io_jtag_tms                                  ), //i
    .io_jtag_tdi                       (io_jtag_tdi                                  ), //i
    .io_jtag_tdo                       (jtagBridge_1_io_jtag_tdo                     ), //o
    .io_jtag_tck                       (io_jtag_tck                                  ), //i
    .io_remote_cmd_valid               (jtagBridge_1_io_remote_cmd_valid             ), //o
    .io_remote_cmd_ready               (debugger_io_remote_cmd_ready                 ), //i
    .io_remote_cmd_payload_last        (jtagBridge_1_io_remote_cmd_payload_last      ), //o
    .io_remote_cmd_payload_fragment    (jtagBridge_1_io_remote_cmd_payload_fragment  ), //o
    .io_remote_rsp_valid               (debugger_io_remote_rsp_valid                 ), //i
    .io_remote_rsp_ready               (jtagBridge_1_io_remote_rsp_ready             ), //o
    .io_remote_rsp_payload_error       (debugger_io_remote_rsp_payload_error         ), //i
    .io_remote_rsp_payload_data        (debugger_io_remote_rsp_payload_data[31:0]    ), //i
    .io_axiClk                         (io_axiClk                                    ), //i
    .resetCtrl_axiReset                (resetCtrl_axiReset                           )  //i
  );
  SystemDebugger debugger (
    .io_remote_cmd_valid               (jtagBridge_1_io_remote_cmd_valid             ), //i
    .io_remote_cmd_ready               (debugger_io_remote_cmd_ready                 ), //o
    .io_remote_cmd_payload_last        (jtagBridge_1_io_remote_cmd_payload_last      ), //i
    .io_remote_cmd_payload_fragment    (jtagBridge_1_io_remote_cmd_payload_fragment  ), //i
    .io_remote_rsp_valid               (debugger_io_remote_rsp_valid                 ), //o
    .io_remote_rsp_ready               (jtagBridge_1_io_remote_rsp_ready             ), //i
    .io_remote_rsp_payload_error       (debugger_io_remote_rsp_payload_error         ), //o
    .io_remote_rsp_payload_data        (debugger_io_remote_rsp_payload_data[31:0]    ), //o
    .io_mem_cmd_valid                  (debugger_io_mem_cmd_valid                    ), //o
    .io_mem_cmd_ready                  (debugger_io_mem_cmd_fork_io_input_ready      ), //i
    .io_mem_cmd_payload_address        (debugger_io_mem_cmd_payload_address[31:0]    ), //o
    .io_mem_cmd_payload_data           (debugger_io_mem_cmd_payload_data[31:0]       ), //o
    .io_mem_cmd_payload_wr             (debugger_io_mem_cmd_payload_wr               ), //o
    .io_mem_cmd_payload_size           (debugger_io_mem_cmd_payload_size[1:0]        ), //o
    .io_mem_rsp_valid                  (io_axi_r_valid                               ), //i
    .io_mem_rsp_payload                (_zz_4[31:0]                                  ), //i
    .io_axiClk                         (io_axiClk                                    ), //i
    .resetCtrl_axiReset                (resetCtrl_axiReset                           )  //i
  );
  StreamFork_1 debugger_io_mem_cmd_fork (
    .io_input_valid                  (debugger_io_mem_cmd_valid                                    ), //i
    .io_input_ready                  (debugger_io_mem_cmd_fork_io_input_ready                      ), //o
    .io_input_payload_address        (debugger_io_mem_cmd_payload_address[31:0]                    ), //i
    .io_input_payload_data           (debugger_io_mem_cmd_payload_data[31:0]                       ), //i
    .io_input_payload_wr             (debugger_io_mem_cmd_payload_wr                               ), //i
    .io_input_payload_size           (debugger_io_mem_cmd_payload_size[1:0]                        ), //i
    .io_outputs_0_valid              (debugger_io_mem_cmd_fork_io_outputs_0_valid                  ), //o
    .io_outputs_0_ready              (io_axi_arw_ready                                             ), //i
    .io_outputs_0_payload_address    (debugger_io_mem_cmd_fork_io_outputs_0_payload_address[31:0]  ), //o
    .io_outputs_0_payload_data       (debugger_io_mem_cmd_fork_io_outputs_0_payload_data[31:0]     ), //o
    .io_outputs_0_payload_wr         (debugger_io_mem_cmd_fork_io_outputs_0_payload_wr             ), //o
    .io_outputs_0_payload_size       (debugger_io_mem_cmd_fork_io_outputs_0_payload_size[1:0]      ), //o
    .io_outputs_1_valid              (debugger_io_mem_cmd_fork_io_outputs_1_valid                  ), //o
    .io_outputs_1_ready              (_zz_5                                                        ), //i
    .io_outputs_1_payload_address    (debugger_io_mem_cmd_fork_io_outputs_1_payload_address[31:0]  ), //o
    .io_outputs_1_payload_data       (debugger_io_mem_cmd_fork_io_outputs_1_payload_data[31:0]     ), //o
    .io_outputs_1_payload_wr         (debugger_io_mem_cmd_fork_io_outputs_1_payload_wr             ), //o
    .io_outputs_1_payload_size       (debugger_io_mem_cmd_fork_io_outputs_1_payload_size[1:0]      ), //o
    .io_axiClk                       (io_axiClk                                                    ), //i
    .resetCtrl_axiReset              (resetCtrl_axiReset                                           )  //i
  );
  assign io_jtag_tdo = jtagBridge_1_io_jtag_tdo;
  always @ (*) begin
    debugger_io_mem_cmd_fork_io_outputs_1_thrown_valid = debugger_io_mem_cmd_fork_io_outputs_1_valid;
    if(_zz_6)begin
      debugger_io_mem_cmd_fork_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_5 = debugger_io_mem_cmd_fork_io_outputs_1_thrown_ready;
    if(_zz_6)begin
      _zz_5 = 1'b1;
    end
  end

  assign debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_address = debugger_io_mem_cmd_fork_io_outputs_1_payload_address;
  assign debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_data = debugger_io_mem_cmd_fork_io_outputs_1_payload_data;
  assign debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_wr = debugger_io_mem_cmd_fork_io_outputs_1_payload_wr;
  assign debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_size = debugger_io_mem_cmd_fork_io_outputs_1_payload_size;
  always @ (*) begin
    case(debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_size)
      2'b00 : begin
        _zz_1 = 4'b0001;
      end
      2'b01 : begin
        _zz_1 = 4'b0011;
      end
      default : begin
        _zz_1 = 4'b1111;
      end
    endcase
  end

  assign debugger_io_mem_cmd_fork_io_outputs_1_thrown_ready = io_axi_w_ready;
  assign _zz_4 = (io_axi_r_payload_data >>> _zz_8);
  assign io_axi_arw_valid = debugger_io_mem_cmd_fork_io_outputs_0_valid;
  assign io_axi_arw_payload_addr = debugger_io_mem_cmd_fork_io_outputs_0_payload_address;
  assign io_axi_arw_payload_size = {1'd0, debugger_io_mem_cmd_fork_io_outputs_0_payload_size};
  assign io_axi_arw_payload_write = debugger_io_mem_cmd_fork_io_outputs_0_payload_wr;
  assign io_axi_w_valid = debugger_io_mem_cmd_fork_io_outputs_1_thrown_valid;
  assign io_axi_w_payload_data = debugger_io_mem_cmd_fork_io_outputs_1_thrown_payload_data;
  assign io_axi_w_payload_strb = _zz_9[3:0];
  assign io_axi_w_payload_last = 1'b1;
  assign io_axi_b_ready = 1'b1;
  assign io_axi_r_ready = 1'b1;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_2 <= 1'b0;
    end else begin
      if(_zz_7)begin
        _zz_2 <= ((debugger_io_mem_cmd_fork_io_outputs_0_valid && io_axi_arw_ready) && (! debugger_io_mem_cmd_fork_io_outputs_0_payload_wr));
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_7)begin
      _zz_3 <= debugger_io_mem_cmd_fork_io_outputs_0_payload_address[1 : 0];
    end
  end


endmodule

module Axi4SharedSdramCtrl (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [25:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [24:0]   _zz_11;
  wire       [15:0]   _zz_12;
  wire       [1:0]    _zz_13;
  wire                _zz_14;
  reg        [15:0]   _zz_15;
  reg        [1:0]    _zz_16;
  reg        [11:0]   _zz_17;
  wire                ctrl_io_bus_cmd_ready;
  wire                ctrl_io_bus_rsp_valid;
  wire       [15:0]   ctrl_io_bus_rsp_payload_data;
  wire       [3:0]    ctrl_io_bus_rsp_payload_context_id;
  wire                ctrl_io_bus_rsp_payload_context_last;
  wire       [12:0]   ctrl_io_sdram_ADDR;
  wire       [1:0]    ctrl_io_sdram_BA;
  wire                ctrl_io_sdram_CASn;
  wire                ctrl_io_sdram_CKE;
  wire                ctrl_io_sdram_CSn;
  wire       [1:0]    ctrl_io_sdram_DQM;
  wire                ctrl_io_sdram_RASn;
  wire                ctrl_io_sdram_WEn;
  wire       [15:0]   ctrl_io_sdram_DQ_write;
  wire       [15:0]   ctrl_io_sdram_DQ_writeEnable;
  wire                _zz_18;
  wire       [1:0]    _zz_19;
  wire       [11:0]   _zz_20;
  wire       [11:0]   _zz_21;
  wire       [11:0]   _zz_22;
  wire       [2:0]    _zz_23;
  wire       [2:0]    _zz_24;
  wire                ctrlBusAdapted_cmd_valid;
  wire                ctrlBusAdapted_cmd_ready;
  wire       [23:0]   ctrlBusAdapted_cmd_payload_address;
  wire                ctrlBusAdapted_cmd_payload_write;
  wire       [31:0]   ctrlBusAdapted_cmd_payload_data;
  wire       [3:0]    ctrlBusAdapted_cmd_payload_mask;
  wire       [3:0]    ctrlBusAdapted_cmd_payload_context_id;
  wire                ctrlBusAdapted_cmd_payload_context_last;
  wire                ctrlBusAdapted_rsp_valid;
  wire                ctrlBusAdapted_rsp_ready;
  wire       [31:0]   ctrlBusAdapted_rsp_payload_data;
  wire       [3:0]    ctrlBusAdapted_rsp_payload_context_id;
  wire                ctrlBusAdapted_rsp_payload_context_last;
  reg                 _zz_1;
  reg        [0:0]    _zz_2;
  reg        [0:0]    _zz_3;
  wire                _zz_4;
  reg                 _zz_5;
  reg        [0:0]    _zz_6;
  reg        [0:0]    _zz_7;
  wire                _zz_8;
  reg        [15:0]   ctrl_io_bus_rsp_payload_data_regNextWhen;
  reg                 unburstify_result_valid;
  wire                unburstify_result_ready;
  reg                 unburstify_result_payload_last;
  reg        [25:0]   unburstify_result_payload_fragment_addr;
  reg        [3:0]    unburstify_result_payload_fragment_id;
  reg        [2:0]    unburstify_result_payload_fragment_size;
  reg        [1:0]    unburstify_result_payload_fragment_burst;
  reg                 unburstify_result_payload_fragment_write;
  wire                unburstify_doResult;
  reg                 unburstify_buffer_valid;
  reg        [7:0]    unburstify_buffer_len;
  reg        [7:0]    unburstify_buffer_beat;
  reg        [25:0]   unburstify_buffer_transaction_addr;
  reg        [3:0]    unburstify_buffer_transaction_id;
  reg        [2:0]    unburstify_buffer_transaction_size;
  reg        [1:0]    unburstify_buffer_transaction_burst;
  reg                 unburstify_buffer_transaction_write;
  wire                unburstify_buffer_last;
  wire       [1:0]    Axi4Incr_validSize;
  reg        [25:0]   Axi4Incr_result;
  wire       [13:0]   Axi4Incr_highCat;
  wire       [2:0]    Axi4Incr_sizeValue;
  wire       [11:0]   Axi4Incr_alignMask;
  wire       [11:0]   Axi4Incr_base;
  wire       [11:0]   Axi4Incr_baseIncr;
  reg        [1:0]    _zz_9;
  wire       [2:0]    Axi4Incr_wrapCase;
  wire                _zz_10;
  wire                bridge_axiCmd_valid;
  wire                bridge_axiCmd_ready;
  wire                bridge_axiCmd_payload_last;
  wire       [25:0]   bridge_axiCmd_payload_fragment_addr;
  wire       [3:0]    bridge_axiCmd_payload_fragment_id;
  wire       [2:0]    bridge_axiCmd_payload_fragment_size;
  wire       [1:0]    bridge_axiCmd_payload_fragment_burst;
  wire                bridge_axiCmd_payload_fragment_write;
  wire                bridge_writeRsp_valid;
  wire                bridge_writeRsp_ready;
  wire       [3:0]    bridge_writeRsp_payload_id;
  wire       [1:0]    bridge_writeRsp_payload_resp;
  wire                bridge_writeRsp_m2sPipe_valid;
  wire                bridge_writeRsp_m2sPipe_ready;
  wire       [3:0]    bridge_writeRsp_m2sPipe_payload_id;
  wire       [1:0]    bridge_writeRsp_m2sPipe_payload_resp;
  reg                 bridge_writeRsp_m2sPipe_rValid;
  reg        [3:0]    bridge_writeRsp_m2sPipe_rData_id;
  reg        [1:0]    bridge_writeRsp_m2sPipe_rData_resp;

  assign _zz_18 = (io_axi_arw_payload_len == 8'h0);
  assign _zz_19 = {(2'b01 < Axi4Incr_validSize),(2'b00 < Axi4Incr_validSize)};
  assign _zz_20 = unburstify_buffer_transaction_addr[11 : 0];
  assign _zz_21 = _zz_20;
  assign _zz_22 = {9'd0, Axi4Incr_sizeValue};
  assign _zz_23 = {1'd0, Axi4Incr_validSize};
  assign _zz_24 = {1'd0, _zz_9};
  SdramCtrl ctrl (
    .io_bus_cmd_valid                   (ctrlBusAdapted_cmd_valid                    ), //i
    .io_bus_cmd_ready                   (ctrl_io_bus_cmd_ready                       ), //o
    .io_bus_cmd_payload_address         (_zz_11[24:0]                                ), //i
    .io_bus_cmd_payload_write           (ctrlBusAdapted_cmd_payload_write            ), //i
    .io_bus_cmd_payload_data            (_zz_12[15:0]                                ), //i
    .io_bus_cmd_payload_mask            (_zz_13[1:0]                                 ), //i
    .io_bus_cmd_payload_context_id      (ctrlBusAdapted_cmd_payload_context_id[3:0]  ), //i
    .io_bus_cmd_payload_context_last    (ctrlBusAdapted_cmd_payload_context_last     ), //i
    .io_bus_rsp_valid                   (ctrl_io_bus_rsp_valid                       ), //o
    .io_bus_rsp_ready                   (_zz_14                                      ), //i
    .io_bus_rsp_payload_data            (ctrl_io_bus_rsp_payload_data[15:0]          ), //o
    .io_bus_rsp_payload_context_id      (ctrl_io_bus_rsp_payload_context_id[3:0]     ), //o
    .io_bus_rsp_payload_context_last    (ctrl_io_bus_rsp_payload_context_last        ), //o
    .io_sdram_ADDR                      (ctrl_io_sdram_ADDR[12:0]                    ), //o
    .io_sdram_BA                        (ctrl_io_sdram_BA[1:0]                       ), //o
    .io_sdram_DQ_read                   (io_sdram_DQ_read[15:0]                      ), //i
    .io_sdram_DQ_write                  (ctrl_io_sdram_DQ_write[15:0]                ), //o
    .io_sdram_DQ_writeEnable            (ctrl_io_sdram_DQ_writeEnable[15:0]          ), //o
    .io_sdram_DQM                       (ctrl_io_sdram_DQM[1:0]                      ), //o
    .io_sdram_CASn                      (ctrl_io_sdram_CASn                          ), //o
    .io_sdram_CKE                       (ctrl_io_sdram_CKE                           ), //o
    .io_sdram_CSn                       (ctrl_io_sdram_CSn                           ), //o
    .io_sdram_RASn                      (ctrl_io_sdram_RASn                          ), //o
    .io_sdram_WEn                       (ctrl_io_sdram_WEn                           ), //o
    .io_axiClk                          (io_axiClk                                   ), //i
    .resetCtrl_axiReset                 (resetCtrl_axiReset                          )  //i
  );
  always @(*) begin
    case(_zz_3)
      1'b0 : begin
        _zz_15 = ctrlBusAdapted_cmd_payload_data[15 : 0];
        _zz_16 = ctrlBusAdapted_cmd_payload_mask[1 : 0];
      end
      default : begin
        _zz_15 = ctrlBusAdapted_cmd_payload_data[31 : 16];
        _zz_16 = ctrlBusAdapted_cmd_payload_mask[3 : 2];
      end
    endcase
  end

  always @(*) begin
    case(Axi4Incr_wrapCase)
      3'b000 : begin
        _zz_17 = {Axi4Incr_base[11 : 1],Axi4Incr_baseIncr[0 : 0]};
      end
      3'b001 : begin
        _zz_17 = {Axi4Incr_base[11 : 2],Axi4Incr_baseIncr[1 : 0]};
      end
      3'b010 : begin
        _zz_17 = {Axi4Incr_base[11 : 3],Axi4Incr_baseIncr[2 : 0]};
      end
      3'b011 : begin
        _zz_17 = {Axi4Incr_base[11 : 4],Axi4Incr_baseIncr[3 : 0]};
      end
      3'b100 : begin
        _zz_17 = {Axi4Incr_base[11 : 5],Axi4Incr_baseIncr[4 : 0]};
      end
      default : begin
        _zz_17 = {Axi4Incr_base[11 : 6],Axi4Incr_baseIncr[5 : 0]};
      end
    endcase
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if((ctrlBusAdapted_cmd_valid && ctrl_io_bus_cmd_ready))begin
      _zz_1 = 1'b1;
    end
  end

  assign _zz_4 = (_zz_3 == 1'b1);
  always @ (*) begin
    _zz_2 = (_zz_3 + _zz_1);
    if(1'b0)begin
      _zz_2 = 1'b0;
    end
  end

  assign _zz_11 = {ctrlBusAdapted_cmd_payload_address,_zz_3};
  assign _zz_12 = _zz_15;
  assign _zz_13 = _zz_16;
  assign ctrlBusAdapted_cmd_ready = (ctrl_io_bus_cmd_ready && _zz_4);
  always @ (*) begin
    _zz_5 = 1'b0;
    if((ctrl_io_bus_rsp_valid && _zz_14))begin
      _zz_5 = 1'b1;
    end
  end

  assign _zz_8 = (_zz_7 == 1'b1);
  always @ (*) begin
    _zz_6 = (_zz_7 + _zz_5);
    if(1'b0)begin
      _zz_6 = 1'b0;
    end
  end

  assign ctrlBusAdapted_rsp_valid = (ctrl_io_bus_rsp_valid && _zz_8);
  assign ctrlBusAdapted_rsp_payload_data = {ctrl_io_bus_rsp_payload_data,ctrl_io_bus_rsp_payload_data_regNextWhen};
  assign ctrlBusAdapted_rsp_payload_context_id = ctrl_io_bus_rsp_payload_context_id;
  assign ctrlBusAdapted_rsp_payload_context_last = ctrl_io_bus_rsp_payload_context_last;
  assign _zz_14 = (ctrlBusAdapted_rsp_ready || (! _zz_8));
  assign unburstify_buffer_last = (unburstify_buffer_beat == 8'h01);
  assign Axi4Incr_validSize = unburstify_buffer_transaction_size[1 : 0];
  assign Axi4Incr_highCat = unburstify_buffer_transaction_addr[25 : 12];
  assign Axi4Incr_sizeValue = {(2'b10 == Axi4Incr_validSize),{(2'b01 == Axi4Incr_validSize),(2'b00 == Axi4Incr_validSize)}};
  assign Axi4Incr_alignMask = {10'd0, _zz_19};
  assign Axi4Incr_base = (_zz_21 & (~ Axi4Incr_alignMask));
  assign Axi4Incr_baseIncr = (Axi4Incr_base + _zz_22);
  always @ (*) begin
    if((((unburstify_buffer_len & 8'h08) == 8'h08))) begin
        _zz_9 = 2'b11;
    end else if((((unburstify_buffer_len & 8'h04) == 8'h04))) begin
        _zz_9 = 2'b10;
    end else if((((unburstify_buffer_len & 8'h02) == 8'h02))) begin
        _zz_9 = 2'b01;
    end else begin
        _zz_9 = 2'b00;
    end
  end

  assign Axi4Incr_wrapCase = (_zz_23 + _zz_24);
  always @ (*) begin
    case(unburstify_buffer_transaction_burst)
      2'b00 : begin
        Axi4Incr_result = unburstify_buffer_transaction_addr;
      end
      2'b10 : begin
        Axi4Incr_result = {Axi4Incr_highCat,_zz_17};
      end
      default : begin
        Axi4Incr_result = {Axi4Incr_highCat,Axi4Incr_baseIncr};
      end
    endcase
  end

  always @ (*) begin
    io_axi_arw_ready = 1'b0;
    if(! unburstify_buffer_valid) begin
      io_axi_arw_ready = unburstify_result_ready;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_valid = 1'b1;
    end else begin
      unburstify_result_valid = io_axi_arw_valid;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_last = unburstify_buffer_last;
    end else begin
      if(_zz_18)begin
        unburstify_result_payload_last = 1'b1;
      end else begin
        unburstify_result_payload_last = 1'b0;
      end
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_id = unburstify_buffer_transaction_id;
    end else begin
      unburstify_result_payload_fragment_id = io_axi_arw_payload_id;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_size = unburstify_buffer_transaction_size;
    end else begin
      unburstify_result_payload_fragment_size = io_axi_arw_payload_size;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_burst = unburstify_buffer_transaction_burst;
    end else begin
      unburstify_result_payload_fragment_burst = io_axi_arw_payload_burst;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_write = unburstify_buffer_transaction_write;
    end else begin
      unburstify_result_payload_fragment_write = io_axi_arw_payload_write;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_addr = Axi4Incr_result;
    end else begin
      unburstify_result_payload_fragment_addr = io_axi_arw_payload_addr;
    end
  end

  assign _zz_10 = (! (unburstify_result_payload_fragment_write && (! io_axi_w_valid)));
  assign bridge_axiCmd_valid = (unburstify_result_valid && _zz_10);
  assign unburstify_result_ready = (bridge_axiCmd_ready && _zz_10);
  assign bridge_axiCmd_payload_last = unburstify_result_payload_last;
  assign bridge_axiCmd_payload_fragment_addr = unburstify_result_payload_fragment_addr;
  assign bridge_axiCmd_payload_fragment_id = unburstify_result_payload_fragment_id;
  assign bridge_axiCmd_payload_fragment_size = unburstify_result_payload_fragment_size;
  assign bridge_axiCmd_payload_fragment_burst = unburstify_result_payload_fragment_burst;
  assign bridge_axiCmd_payload_fragment_write = unburstify_result_payload_fragment_write;
  assign ctrlBusAdapted_cmd_valid = bridge_axiCmd_valid;
  assign ctrlBusAdapted_cmd_payload_address = bridge_axiCmd_payload_fragment_addr[25 : 2];
  assign ctrlBusAdapted_cmd_payload_write = bridge_axiCmd_payload_fragment_write;
  assign ctrlBusAdapted_cmd_payload_data = io_axi_w_payload_data;
  assign ctrlBusAdapted_cmd_payload_mask = io_axi_w_payload_strb;
  assign ctrlBusAdapted_cmd_payload_context_id = bridge_axiCmd_payload_fragment_id;
  assign ctrlBusAdapted_cmd_payload_context_last = bridge_axiCmd_payload_last;
  assign bridge_writeRsp_valid = (((bridge_axiCmd_valid && bridge_axiCmd_ready) && bridge_axiCmd_payload_fragment_write) && bridge_axiCmd_payload_last);
  assign bridge_writeRsp_payload_resp = 2'b00;
  assign bridge_writeRsp_payload_id = bridge_axiCmd_payload_fragment_id;
  assign bridge_writeRsp_ready = ((1'b1 && (! bridge_writeRsp_m2sPipe_valid)) || bridge_writeRsp_m2sPipe_ready);
  assign bridge_writeRsp_m2sPipe_valid = bridge_writeRsp_m2sPipe_rValid;
  assign bridge_writeRsp_m2sPipe_payload_id = bridge_writeRsp_m2sPipe_rData_id;
  assign bridge_writeRsp_m2sPipe_payload_resp = bridge_writeRsp_m2sPipe_rData_resp;
  assign io_axi_b_valid = bridge_writeRsp_m2sPipe_valid;
  assign bridge_writeRsp_m2sPipe_ready = io_axi_b_ready;
  assign io_axi_b_payload_id = bridge_writeRsp_m2sPipe_payload_id;
  assign io_axi_b_payload_resp = bridge_writeRsp_m2sPipe_payload_resp;
  assign io_axi_r_valid = ctrlBusAdapted_rsp_valid;
  assign io_axi_r_payload_id = ctrlBusAdapted_rsp_payload_context_id;
  assign io_axi_r_payload_data = ctrlBusAdapted_rsp_payload_data;
  assign io_axi_r_payload_last = ctrlBusAdapted_rsp_payload_context_last;
  assign io_axi_r_payload_resp = 2'b00;
  assign io_axi_w_ready = ((unburstify_result_valid && unburstify_result_payload_fragment_write) && bridge_axiCmd_ready);
  assign ctrlBusAdapted_rsp_ready = io_axi_r_ready;
  assign bridge_axiCmd_ready = (ctrlBusAdapted_cmd_ready && (! (bridge_axiCmd_payload_fragment_write && (! bridge_writeRsp_ready))));
  assign io_sdram_ADDR = ctrl_io_sdram_ADDR;
  assign io_sdram_BA = ctrl_io_sdram_BA;
  assign io_sdram_DQ_write = ctrl_io_sdram_DQ_write;
  assign io_sdram_DQ_writeEnable = ctrl_io_sdram_DQ_writeEnable;
  assign io_sdram_DQM = ctrl_io_sdram_DQM;
  assign io_sdram_CASn = ctrl_io_sdram_CASn;
  assign io_sdram_CKE = ctrl_io_sdram_CKE;
  assign io_sdram_CSn = ctrl_io_sdram_CSn;
  assign io_sdram_RASn = ctrl_io_sdram_RASn;
  assign io_sdram_WEn = ctrl_io_sdram_WEn;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_3 <= 1'b0;
      _zz_7 <= 1'b0;
      unburstify_buffer_valid <= 1'b0;
      bridge_writeRsp_m2sPipe_rValid <= 1'b0;
    end else begin
      _zz_3 <= _zz_2;
      _zz_7 <= _zz_6;
      if(unburstify_result_ready)begin
        if(unburstify_buffer_last)begin
          unburstify_buffer_valid <= 1'b0;
        end
      end
      if(! unburstify_buffer_valid) begin
        if(! _zz_18) begin
          if(unburstify_result_ready)begin
            unburstify_buffer_valid <= io_axi_arw_valid;
          end
        end
      end
      if(bridge_writeRsp_ready)begin
        bridge_writeRsp_m2sPipe_rValid <= bridge_writeRsp_valid;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if((ctrl_io_bus_rsp_valid && _zz_14))begin
      ctrl_io_bus_rsp_payload_data_regNextWhen <= ctrl_io_bus_rsp_payload_data;
    end
    if(unburstify_result_ready)begin
      unburstify_buffer_beat <= (unburstify_buffer_beat - 8'h01);
      unburstify_buffer_transaction_addr[11 : 0] <= Axi4Incr_result[11 : 0];
    end
    if(! unburstify_buffer_valid) begin
      if(! _zz_18) begin
        if(unburstify_result_ready)begin
          unburstify_buffer_transaction_addr <= io_axi_arw_payload_addr;
          unburstify_buffer_transaction_id <= io_axi_arw_payload_id;
          unburstify_buffer_transaction_size <= io_axi_arw_payload_size;
          unburstify_buffer_transaction_burst <= io_axi_arw_payload_burst;
          unburstify_buffer_transaction_write <= io_axi_arw_payload_write;
          unburstify_buffer_beat <= io_axi_arw_payload_len;
          unburstify_buffer_len <= io_axi_arw_payload_len;
        end
      end
    end
    if(bridge_writeRsp_ready)begin
      bridge_writeRsp_m2sPipe_rData_id <= bridge_writeRsp_payload_id;
      bridge_writeRsp_m2sPipe_rData_resp <= bridge_writeRsp_payload_resp;
    end
  end


endmodule

module Axi4SharedOnChipRam (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [11:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [31:0]   _zz_7;
  reg        [11:0]   _zz_8;
  wire                _zz_9;
  wire       [1:0]    _zz_10;
  wire       [11:0]   _zz_11;
  wire       [11:0]   _zz_12;
  wire       [11:0]   _zz_13;
  wire       [2:0]    _zz_14;
  wire       [2:0]    _zz_15;
  reg                 _zz_1;
  reg                 unburstify_result_valid;
  wire                unburstify_result_ready;
  reg                 unburstify_result_payload_last;
  reg        [11:0]   unburstify_result_payload_fragment_addr;
  reg        [3:0]    unburstify_result_payload_fragment_id;
  reg        [2:0]    unburstify_result_payload_fragment_size;
  reg        [1:0]    unburstify_result_payload_fragment_burst;
  reg                 unburstify_result_payload_fragment_write;
  wire                unburstify_doResult;
  reg                 unburstify_buffer_valid;
  reg        [7:0]    unburstify_buffer_len;
  reg        [7:0]    unburstify_buffer_beat;
  reg        [11:0]   unburstify_buffer_transaction_addr;
  reg        [3:0]    unburstify_buffer_transaction_id;
  reg        [2:0]    unburstify_buffer_transaction_size;
  reg        [1:0]    unburstify_buffer_transaction_burst;
  reg                 unburstify_buffer_transaction_write;
  wire                unburstify_buffer_last;
  wire       [1:0]    Axi4Incr_validSize;
  reg        [11:0]   Axi4Incr_result;
  wire       [2:0]    Axi4Incr_sizeValue;
  wire       [11:0]   Axi4Incr_alignMask;
  wire       [11:0]   Axi4Incr_base;
  wire       [11:0]   Axi4Incr_baseIncr;
  reg        [1:0]    _zz_2;
  wire       [2:0]    Axi4Incr_wrapCase;
  wire                _zz_3;
  wire                stage0_valid;
  wire                stage0_ready;
  wire                stage0_payload_last;
  wire       [11:0]   stage0_payload_fragment_addr;
  wire       [3:0]    stage0_payload_fragment_id;
  wire       [2:0]    stage0_payload_fragment_size;
  wire       [1:0]    stage0_payload_fragment_burst;
  wire                stage0_payload_fragment_write;
  wire       [9:0]    _zz_4;
  wire                _zz_5;
  wire       [31:0]   _zz_6;
  wire                stage1_valid;
  wire                stage1_ready;
  wire                stage1_payload_last;
  wire       [11:0]   stage1_payload_fragment_addr;
  wire       [3:0]    stage1_payload_fragment_id;
  wire       [2:0]    stage1_payload_fragment_size;
  wire       [1:0]    stage1_payload_fragment_burst;
  wire                stage1_payload_fragment_write;
  reg                 stage0_m2sPipe_rValid;
  reg                 stage0_m2sPipe_rData_last;
  reg        [11:0]   stage0_m2sPipe_rData_fragment_addr;
  reg        [3:0]    stage0_m2sPipe_rData_fragment_id;
  reg        [2:0]    stage0_m2sPipe_rData_fragment_size;
  reg        [1:0]    stage0_m2sPipe_rData_fragment_burst;
  reg                 stage0_m2sPipe_rData_fragment_write;
  wire                ram_port0_write;
  wire       [9:0]    ram_port0_address;
  wire       [31:0]   ram_port0_writeData;
  wire                ram_port0_enable;
  wire       [3:0]    ram_port0_mask;
  reg [7:0] ram_symbol0 [0:1023];
  reg [7:0] ram_symbol1 [0:1023];
  reg [7:0] ram_symbol2 [0:1023];
  reg [7:0] ram_symbol3 [0:1023];
  reg [7:0] _zz_16;
  reg [7:0] _zz_17;
  reg [7:0] _zz_18;
  reg [7:0] _zz_19;

  assign _zz_9 = (io_axi_arw_payload_len == 8'h0);
  assign _zz_10 = {(2'b01 < Axi4Incr_validSize),(2'b00 < Axi4Incr_validSize)};
  assign _zz_11 = unburstify_buffer_transaction_addr[11 : 0];
  assign _zz_12 = _zz_11;
  assign _zz_13 = {9'd0, Axi4Incr_sizeValue};
  assign _zz_14 = {1'd0, Axi4Incr_validSize};
  assign _zz_15 = {1'd0, _zz_2};
integer verilogIndex;

initial begin
  for (verilogIndex = 0; verilogIndex < 1024; verilogIndex = verilogIndex + 1)begin
    ram_symbol0[verilogIndex] = -1;
    ram_symbol1[verilogIndex] = -1;
    ram_symbol2[verilogIndex] = -1;
    ram_symbol3[verilogIndex] = -1;
  end
end
  always @ (*) begin
    _zz_7 = {_zz_19, _zz_18, _zz_17, _zz_16};
  end
  always @ (posedge io_axiClk) begin
    if(_zz_5) begin
      _zz_16 <= ram_symbol0[_zz_4];
      _zz_17 <= ram_symbol1[_zz_4];
      _zz_18 <= ram_symbol2[_zz_4];
      _zz_19 <= ram_symbol3[_zz_4];
    end
  end

  always @ (posedge io_axiClk) begin
    if(io_axi_w_payload_strb[0] && _zz_5 && stage0_payload_fragment_write ) begin
      ram_symbol0[_zz_4] <= _zz_6[7 : 0];
    end
    if(io_axi_w_payload_strb[1] && _zz_5 && stage0_payload_fragment_write ) begin
      ram_symbol1[_zz_4] <= _zz_6[15 : 8];
    end
    if(io_axi_w_payload_strb[2] && _zz_5 && stage0_payload_fragment_write ) begin
      ram_symbol2[_zz_4] <= _zz_6[23 : 16];
    end
    if(io_axi_w_payload_strb[3] && _zz_5 && stage0_payload_fragment_write ) begin
      ram_symbol3[_zz_4] <= _zz_6[31 : 24];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1) begin
      ram_symbol0[ram_port0_address] <= ram_port0_writeData[7 : 0];
    end
    if(_zz_1) begin
      ram_symbol1[ram_port0_address] <= ram_port0_writeData[15 : 8];
    end
    if(_zz_1) begin
      ram_symbol2[ram_port0_address] <= ram_port0_writeData[23 : 16];
    end
    if(_zz_1) begin
      ram_symbol3[ram_port0_address] <= ram_port0_writeData[31 : 24];
    end
  end

  always @(*) begin
    case(Axi4Incr_wrapCase)
      3'b000 : begin
        _zz_8 = {Axi4Incr_base[11 : 1],Axi4Incr_baseIncr[0 : 0]};
      end
      3'b001 : begin
        _zz_8 = {Axi4Incr_base[11 : 2],Axi4Incr_baseIncr[1 : 0]};
      end
      3'b010 : begin
        _zz_8 = {Axi4Incr_base[11 : 3],Axi4Incr_baseIncr[2 : 0]};
      end
      3'b011 : begin
        _zz_8 = {Axi4Incr_base[11 : 4],Axi4Incr_baseIncr[3 : 0]};
      end
      3'b100 : begin
        _zz_8 = {Axi4Incr_base[11 : 5],Axi4Incr_baseIncr[4 : 0]};
      end
      default : begin
        _zz_8 = {Axi4Incr_base[11 : 6],Axi4Incr_baseIncr[5 : 0]};
      end
    endcase
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(ram_port0_write)begin
      _zz_1 = 1'b1;
    end
  end

  assign unburstify_buffer_last = (unburstify_buffer_beat == 8'h01);
  assign Axi4Incr_validSize = unburstify_buffer_transaction_size[1 : 0];
  assign Axi4Incr_sizeValue = {(2'b10 == Axi4Incr_validSize),{(2'b01 == Axi4Incr_validSize),(2'b00 == Axi4Incr_validSize)}};
  assign Axi4Incr_alignMask = {10'd0, _zz_10};
  assign Axi4Incr_base = (_zz_12 & (~ Axi4Incr_alignMask));
  assign Axi4Incr_baseIncr = (Axi4Incr_base + _zz_13);
  always @ (*) begin
    if((((unburstify_buffer_len & 8'h08) == 8'h08))) begin
        _zz_2 = 2'b11;
    end else if((((unburstify_buffer_len & 8'h04) == 8'h04))) begin
        _zz_2 = 2'b10;
    end else if((((unburstify_buffer_len & 8'h02) == 8'h02))) begin
        _zz_2 = 2'b01;
    end else begin
        _zz_2 = 2'b00;
    end
  end

  assign Axi4Incr_wrapCase = (_zz_14 + _zz_15);
  always @ (*) begin
    case(unburstify_buffer_transaction_burst)
      2'b00 : begin
        Axi4Incr_result = unburstify_buffer_transaction_addr;
      end
      2'b10 : begin
        Axi4Incr_result = _zz_8;
      end
      default : begin
        Axi4Incr_result = Axi4Incr_baseIncr;
      end
    endcase
  end

  always @ (*) begin
    io_axi_arw_ready = 1'b0;
    if(! unburstify_buffer_valid) begin
      io_axi_arw_ready = unburstify_result_ready;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_valid = 1'b1;
    end else begin
      unburstify_result_valid = io_axi_arw_valid;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_last = unburstify_buffer_last;
    end else begin
      if(_zz_9)begin
        unburstify_result_payload_last = 1'b1;
      end else begin
        unburstify_result_payload_last = 1'b0;
      end
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_id = unburstify_buffer_transaction_id;
    end else begin
      unburstify_result_payload_fragment_id = io_axi_arw_payload_id;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_size = unburstify_buffer_transaction_size;
    end else begin
      unburstify_result_payload_fragment_size = io_axi_arw_payload_size;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_burst = unburstify_buffer_transaction_burst;
    end else begin
      unburstify_result_payload_fragment_burst = io_axi_arw_payload_burst;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_write = unburstify_buffer_transaction_write;
    end else begin
      unburstify_result_payload_fragment_write = io_axi_arw_payload_write;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_addr = Axi4Incr_result;
    end else begin
      unburstify_result_payload_fragment_addr = io_axi_arw_payload_addr;
    end
  end

  assign _zz_3 = (! (unburstify_result_payload_fragment_write && (! io_axi_w_valid)));
  assign stage0_valid = (unburstify_result_valid && _zz_3);
  assign unburstify_result_ready = (stage0_ready && _zz_3);
  assign stage0_payload_last = unburstify_result_payload_last;
  assign stage0_payload_fragment_addr = unburstify_result_payload_fragment_addr;
  assign stage0_payload_fragment_id = unburstify_result_payload_fragment_id;
  assign stage0_payload_fragment_size = unburstify_result_payload_fragment_size;
  assign stage0_payload_fragment_burst = unburstify_result_payload_fragment_burst;
  assign stage0_payload_fragment_write = unburstify_result_payload_fragment_write;
  assign _zz_4 = stage0_payload_fragment_addr[11 : 2];
  assign _zz_5 = (stage0_valid && stage0_ready);
  assign _zz_6 = io_axi_w_payload_data;
  assign io_axi_r_payload_data = _zz_7;
  assign io_axi_w_ready = ((unburstify_result_valid && unburstify_result_payload_fragment_write) && stage0_ready);
  assign stage0_ready = ((1'b1 && (! stage1_valid)) || stage1_ready);
  assign stage1_valid = stage0_m2sPipe_rValid;
  assign stage1_payload_last = stage0_m2sPipe_rData_last;
  assign stage1_payload_fragment_addr = stage0_m2sPipe_rData_fragment_addr;
  assign stage1_payload_fragment_id = stage0_m2sPipe_rData_fragment_id;
  assign stage1_payload_fragment_size = stage0_m2sPipe_rData_fragment_size;
  assign stage1_payload_fragment_burst = stage0_m2sPipe_rData_fragment_burst;
  assign stage1_payload_fragment_write = stage0_m2sPipe_rData_fragment_write;
  assign stage1_ready = ((io_axi_r_ready && (! stage1_payload_fragment_write)) || ((io_axi_b_ready || (! stage1_payload_last)) && stage1_payload_fragment_write));
  assign io_axi_r_valid = (stage1_valid && (! stage1_payload_fragment_write));
  assign io_axi_r_payload_id = stage1_payload_fragment_id;
  assign io_axi_r_payload_last = stage1_payload_last;
  assign io_axi_r_payload_resp = 2'b00;
  assign io_axi_b_valid = ((stage1_valid && stage1_payload_fragment_write) && stage1_payload_last);
  assign io_axi_b_payload_resp = 2'b00;
  assign io_axi_b_payload_id = stage1_payload_fragment_id;
  assign ram_port0_write = 1'b0;
  assign ram_port0_address = 10'h0;
  assign ram_port0_writeData = 32'h0;
  assign ram_port0_enable = 1'b0;
  assign ram_port0_mask = 4'b0000;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      unburstify_buffer_valid <= 1'b0;
      stage0_m2sPipe_rValid <= 1'b0;
    end else begin
      if(unburstify_result_ready)begin
        if(unburstify_buffer_last)begin
          unburstify_buffer_valid <= 1'b0;
        end
      end
      if(! unburstify_buffer_valid) begin
        if(! _zz_9) begin
          if(unburstify_result_ready)begin
            unburstify_buffer_valid <= io_axi_arw_valid;
          end
        end
      end
      if(stage0_ready)begin
        stage0_m2sPipe_rValid <= stage0_valid;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(unburstify_result_ready)begin
      unburstify_buffer_beat <= (unburstify_buffer_beat - 8'h01);
      unburstify_buffer_transaction_addr[11 : 0] <= Axi4Incr_result[11 : 0];
    end
    if(! unburstify_buffer_valid) begin
      if(! _zz_9) begin
        if(unburstify_result_ready)begin
          unburstify_buffer_transaction_addr <= io_axi_arw_payload_addr;
          unburstify_buffer_transaction_id <= io_axi_arw_payload_id;
          unburstify_buffer_transaction_size <= io_axi_arw_payload_size;
          unburstify_buffer_transaction_burst <= io_axi_arw_payload_burst;
          unburstify_buffer_transaction_write <= io_axi_arw_payload_write;
          unburstify_buffer_beat <= io_axi_arw_payload_len;
          unburstify_buffer_len <= io_axi_arw_payload_len;
        end
      end
    end
    if(stage0_ready)begin
      stage0_m2sPipe_rData_last <= stage0_payload_last;
      stage0_m2sPipe_rData_fragment_addr <= stage0_payload_fragment_addr;
      stage0_m2sPipe_rData_fragment_id <= stage0_payload_fragment_id;
      stage0_m2sPipe_rData_fragment_size <= stage0_payload_fragment_size;
      stage0_m2sPipe_rData_fragment_burst <= stage0_payload_fragment_burst;
      stage0_m2sPipe_rData_fragment_write <= stage0_payload_fragment_write;
    end
  end


endmodule

module RiscvAxi4 (
  output              io_i_ar_valid,
  input               io_i_ar_ready,
  output     [31:0]   io_i_ar_payload_addr,
  output     [7:0]    io_i_ar_payload_len,
  output     [1:0]    io_i_ar_payload_burst,
  output     [3:0]    io_i_ar_payload_cache,
  output     [2:0]    io_i_ar_payload_prot,
  input               io_i_r_valid,
  output              io_i_r_ready,
  input      [31:0]   io_i_r_payload_data,
  input               io_i_r_payload_last,
  output              io_d_arw_valid,
  input               io_d_arw_ready,
  output     [31:0]   io_d_arw_payload_addr,
  output     [2:0]    io_d_arw_payload_size,
  output     [3:0]    io_d_arw_payload_cache,
  output     [2:0]    io_d_arw_payload_prot,
  output              io_d_arw_payload_write,
  output              io_d_w_valid,
  input               io_d_w_ready,
  output     [31:0]   io_d_w_payload_data,
  output     [3:0]    io_d_w_payload_strb,
  output              io_d_w_payload_last,
  input               io_d_b_valid,
  output              io_d_b_ready,
  input               io_d_r_valid,
  output              io_d_r_ready,
  input      [31:0]   io_d_r_payload_data,
  input               io_d_r_payload_last,
  input      [3:0]    io_interrupt,
  input               io_debugResetIn,
  output              io_debugResetOut,
  input      [11:0]   io_debugBus_PADDR,
  input      [0:0]    io_debugBus_PSEL,
  input               io_debugBus_PENABLE,
  output              io_debugBus_PREADY,
  input               io_debugBus_PWRITE,
  input      [31:0]   io_debugBus_PWDATA,
  output     [31:0]   io_debugBus_PRDATA,
  output              io_debugBus_PSLVERROR,
  input               io_axiClk,
  input               resetCtrl_coreReset
);
  wire                _zz_12;
  wire                _zz_13;
  wire                _zz_14;
  wire                _zz_15;
  wire                _zz_16;
  wire                _zz_17;
  wire       [7:0]    _zz_18;
  wire                _zz_19;
  reg                 _zz_20;
  wire                core_io_i_cmd_valid;
  wire       [31:0]   core_io_i_cmd_payload_address;
  wire                core_io_d_cmd_valid;
  wire                core_io_d_cmd_payload_wr;
  wire       [31:0]   core_io_d_cmd_payload_address;
  wire       [31:0]   core_io_d_cmd_payload_data;
  wire       [1:0]    core_io_d_cmd_payload_size;
  wire                core_io_d_rsp_ready;
  wire       [31:0]   core__zz_44;
  wire                core__zz_45;
  wire                streamFork_5_io_input_ready;
  wire                streamFork_5_io_outputs_0_valid;
  wire                streamFork_5_io_outputs_0_payload_wr;
  wire       [31:0]   streamFork_5_io_outputs_0_payload_address;
  wire       [31:0]   streamFork_5_io_outputs_0_payload_data;
  wire       [1:0]    streamFork_5_io_outputs_0_payload_size;
  wire                streamFork_5_io_outputs_1_valid;
  wire                streamFork_5_io_outputs_1_payload_wr;
  wire       [31:0]   streamFork_5_io_outputs_1_payload_address;
  wire       [31:0]   streamFork_5_io_outputs_1_payload_data;
  wire       [1:0]    streamFork_5_io_outputs_1_payload_size;
  wire                _zz_21;
  wire                _zz_22;
  wire                _zz_23;
  wire                _zz_24;
  wire       [9:0]    _zz_25;
  wire       [6:0]    _zz_26;
  wire                core_io_i_cmd_halfPipe_valid;
  wire                core_io_i_cmd_halfPipe_ready;
  wire       [31:0]   core_io_i_cmd_halfPipe_payload_address;
  reg                 core_io_i_cmd_halfPipe_regs_valid;
  reg                 core_io_i_cmd_halfPipe_regs_ready;
  reg        [31:0]   core_io_i_cmd_halfPipe_regs_payload_address;
  wire                _zz_1;
  wire                _zz_2;
  reg        [31:0]   _zz_3;
  wire                core_io_d_cmd_s2mPipe_valid;
  wire                core_io_d_cmd_s2mPipe_ready;
  wire                core_io_d_cmd_s2mPipe_payload_wr;
  wire       [31:0]   core_io_d_cmd_s2mPipe_payload_address;
  wire       [31:0]   core_io_d_cmd_s2mPipe_payload_data;
  wire       [1:0]    core_io_d_cmd_s2mPipe_payload_size;
  reg                 core_io_d_cmd_s2mPipe_rValid;
  reg                 core_io_d_cmd_s2mPipe_rData_wr;
  reg        [31:0]   core_io_d_cmd_s2mPipe_rData_address;
  reg        [31:0]   core_io_d_cmd_s2mPipe_rData_data;
  reg        [1:0]    core_io_d_cmd_s2mPipe_rData_size;
  wire                dBridge_mm_arw_valid;
  wire                dBridge_mm_arw_ready;
  wire       [31:0]   dBridge_mm_arw_payload_addr;
  wire       [2:0]    dBridge_mm_arw_payload_size;
  wire       [3:0]    dBridge_mm_arw_payload_cache;
  wire       [2:0]    dBridge_mm_arw_payload_prot;
  wire                dBridge_mm_arw_payload_write;
  wire                dBridge_mm_w_valid;
  wire                dBridge_mm_w_ready;
  wire       [31:0]   dBridge_mm_w_payload_data;
  wire       [3:0]    dBridge_mm_w_payload_strb;
  wire                dBridge_mm_w_payload_last;
  wire                dBridge_mm_b_valid;
  wire                dBridge_mm_b_ready;
  wire                dBridge_mm_r_valid;
  wire                dBridge_mm_r_ready;
  wire       [31:0]   dBridge_mm_r_payload_data;
  wire                dBridge_mm_r_payload_last;
  reg                 dBridge_pendingCmd_incrementIt;
  reg                 dBridge_pendingCmd_decrementIt;
  wire       [2:0]    dBridge_pendingCmd_valueNext;
  reg        [2:0]    dBridge_pendingCmd_value;
  wire                dBridge_pendingCmd_willOverflowIfInc;
  wire                dBridge_pendingCmd_willOverflow;
  reg        [2:0]    dBridge_pendingCmd_finalIncrement;
  reg                 dBridge_pendingIsWrite = 0;
  wire                dBridge_cmdPreFork_valid;
  wire                dBridge_cmdPreFork_ready;
  wire                dBridge_cmdPreFork_payload_wr;
  wire       [31:0]   dBridge_cmdPreFork_payload_address;
  wire       [31:0]   dBridge_cmdPreFork_payload_data;
  wire       [1:0]    dBridge_cmdPreFork_payload_size;
  reg                 _zz_4;
  reg                 _zz_5;
  reg        [31:0]   _zz_6;
  reg        [31:0]   _zz_7;
  reg        [1:0]    _zz_8;
  wire                _zz_9;
  reg                 dBridge_dataStage_valid;
  wire                dBridge_dataStage_ready;
  wire                dBridge_dataStage_payload_wr;
  wire       [31:0]   dBridge_dataStage_payload_address;
  wire       [31:0]   dBridge_dataStage_payload_data;
  wire       [1:0]    dBridge_dataStage_payload_size;
  reg        [31:0]   _zz_10;
  reg        [3:0]    _zz_11;
  wire                dBridge_contextIn_valid;
  wire                dBridge_contextIn_ready;
  wire       [1:0]    dBridge_contextIn_payload;
  wire                dBridge_contextIn_m2sPipe_valid;
  wire                dBridge_contextIn_m2sPipe_ready;
  wire       [1:0]    dBridge_contextIn_m2sPipe_payload;
  reg                 dBridge_contextIn_m2sPipe_rValid;
  reg        [1:0]    dBridge_contextIn_m2sPipe_rData;
  wire                dBridge_contextOut_valid;
  wire                dBridge_contextOut_ready;
  wire       [1:0]    dBridge_contextOut_payload;
  reg                 dBridge_contextIn_m2sPipe_s2mPipe_rValid;
  reg        [1:0]    dBridge_contextIn_m2sPipe_s2mPipe_rData;

  assign _zz_21 = (! streamFork_5_io_outputs_1_payload_wr);
  assign _zz_22 = (! core_io_i_cmd_halfPipe_regs_valid);
  assign _zz_23 = (_zz_16 && (! core_io_d_cmd_s2mPipe_ready));
  assign _zz_24 = (dBridge_contextIn_m2sPipe_ready && (! dBridge_contextOut_ready));
  assign _zz_25 = (io_debugBus_PADDR >>> 2);
  assign _zz_26 = ({3'd0,_zz_11} <<< dBridge_dataStage_payload_address[1 : 0]);
  RiscvCore core (
    .io_interrupt_1              (_zz_12                               ), //i
    .io_interrupt_0              (_zz_13                               ), //i
    .io_interrupt_3              (_zz_14                               ), //i
    .io_interrupt_2              (_zz_15                               ), //i
    .io_i_cmd_valid              (core_io_i_cmd_valid                  ), //o
    .io_i_cmd_ready              (core_io_i_cmd_halfPipe_regs_ready    ), //i
    .io_i_cmd_payload_address    (core_io_i_cmd_payload_address[31:0]  ), //o
    .io_i_rsp_valid              (io_i_r_valid                         ), //i
    .io_i_rsp_payload_data       (io_i_r_payload_data[31:0]            ), //i
    .io_d_cmd_valid              (core_io_d_cmd_valid                  ), //o
    .io_d_cmd_ready              (_zz_16                               ), //i
    .io_d_cmd_payload_wr         (core_io_d_cmd_payload_wr             ), //o
    .io_d_cmd_payload_address    (core_io_d_cmd_payload_address[31:0]  ), //o
    .io_d_cmd_payload_data       (core_io_d_cmd_payload_data[31:0]     ), //o
    .io_d_cmd_payload_size       (core_io_d_cmd_payload_size[1:0]      ), //o
    .io_d_rsp_valid              (_zz_2                                ), //i
    .io_d_rsp_ready              (core_io_d_rsp_ready                  ), //o
    .io_d_rsp_payload            (_zz_3[31:0]                          ), //i
    ._zz_40                      (_zz_17                               ), //i
    ._zz_41                      (io_debugBus_PWRITE                   ), //i
    ._zz_42                      (_zz_18[7:0]                          ), //i
    ._zz_43                      (io_debugBus_PWDATA[31:0]             ), //i
    ._zz_44                      (core__zz_44[31:0]                    ), //o
    ._zz_45                      (core__zz_45                          ), //o
    .io_axiClk                   (io_axiClk                            ), //i
    .resetCtrl_coreReset         (resetCtrl_coreReset                  ), //i
    .io_debugResetIn             (io_debugResetIn                      )  //i
  );
  StreamFork streamFork_5 (
    .io_input_valid                  (_zz_19                                           ), //i
    .io_input_ready                  (streamFork_5_io_input_ready                      ), //o
    .io_input_payload_wr             (dBridge_cmdPreFork_payload_wr                    ), //i
    .io_input_payload_address        (dBridge_cmdPreFork_payload_address[31:0]         ), //i
    .io_input_payload_data           (dBridge_cmdPreFork_payload_data[31:0]            ), //i
    .io_input_payload_size           (dBridge_cmdPreFork_payload_size[1:0]             ), //i
    .io_outputs_0_valid              (streamFork_5_io_outputs_0_valid                  ), //o
    .io_outputs_0_ready              (dBridge_mm_arw_ready                             ), //i
    .io_outputs_0_payload_wr         (streamFork_5_io_outputs_0_payload_wr             ), //o
    .io_outputs_0_payload_address    (streamFork_5_io_outputs_0_payload_address[31:0]  ), //o
    .io_outputs_0_payload_data       (streamFork_5_io_outputs_0_payload_data[31:0]     ), //o
    .io_outputs_0_payload_size       (streamFork_5_io_outputs_0_payload_size[1:0]      ), //o
    .io_outputs_1_valid              (streamFork_5_io_outputs_1_valid                  ), //o
    .io_outputs_1_ready              (_zz_20                                           ), //i
    .io_outputs_1_payload_wr         (streamFork_5_io_outputs_1_payload_wr             ), //o
    .io_outputs_1_payload_address    (streamFork_5_io_outputs_1_payload_address[31:0]  ), //o
    .io_outputs_1_payload_data       (streamFork_5_io_outputs_1_payload_data[31:0]     ), //o
    .io_outputs_1_payload_size       (streamFork_5_io_outputs_1_payload_size[1:0]      ), //o
    .io_axiClk                       (io_axiClk                                        ), //i
    .resetCtrl_coreReset             (resetCtrl_coreReset                              )  //i
  );
  assign _zz_12 = io_interrupt[1];
  assign _zz_13 = io_interrupt[0];
  assign _zz_14 = io_interrupt[3];
  assign _zz_15 = io_interrupt[2];
  assign _zz_17 = (io_debugBus_PSEL[0] && (! io_debugBus_PENABLE));
  assign _zz_18 = _zz_25[7:0];
  assign io_debugBus_PSLVERROR = 1'b0;
  assign io_debugBus_PREADY = 1'b1;
  assign io_debugBus_PRDATA = core__zz_44;
  assign io_debugResetOut = core__zz_45;
  assign core_io_i_cmd_halfPipe_valid = core_io_i_cmd_halfPipe_regs_valid;
  assign core_io_i_cmd_halfPipe_payload_address = core_io_i_cmd_halfPipe_regs_payload_address;
  assign core_io_i_cmd_halfPipe_ready = io_i_ar_ready;
  assign io_i_ar_valid = core_io_i_cmd_halfPipe_valid;
  assign io_i_ar_payload_addr = core_io_i_cmd_halfPipe_payload_address;
  assign io_i_ar_payload_len = 8'h07;
  assign io_i_ar_payload_burst = 2'b10;
  assign io_i_ar_payload_cache = 4'b1111;
  assign io_i_ar_payload_prot = 3'b110;
  assign io_i_r_ready = 1'b1;
  assign core_io_d_cmd_s2mPipe_valid = (core_io_d_cmd_valid || core_io_d_cmd_s2mPipe_rValid);
  assign _zz_16 = (! core_io_d_cmd_s2mPipe_rValid);
  assign core_io_d_cmd_s2mPipe_payload_wr = (core_io_d_cmd_s2mPipe_rValid ? core_io_d_cmd_s2mPipe_rData_wr : core_io_d_cmd_payload_wr);
  assign core_io_d_cmd_s2mPipe_payload_address = (core_io_d_cmd_s2mPipe_rValid ? core_io_d_cmd_s2mPipe_rData_address : core_io_d_cmd_payload_address);
  assign core_io_d_cmd_s2mPipe_payload_data = (core_io_d_cmd_s2mPipe_rValid ? core_io_d_cmd_s2mPipe_rData_data : core_io_d_cmd_payload_data);
  assign core_io_d_cmd_s2mPipe_payload_size = (core_io_d_cmd_s2mPipe_rValid ? core_io_d_cmd_s2mPipe_rData_size : core_io_d_cmd_payload_size);
  assign core_io_d_cmd_s2mPipe_ready = _zz_1;
  always @ (*) begin
    dBridge_pendingCmd_incrementIt = 1'b0;
    if((dBridge_mm_arw_valid && dBridge_mm_arw_ready))begin
      dBridge_pendingCmd_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    dBridge_pendingCmd_decrementIt = 1'b0;
    if((((dBridge_mm_r_valid && dBridge_mm_r_ready) && dBridge_mm_r_payload_last) || (dBridge_mm_b_valid && dBridge_mm_b_ready)))begin
      dBridge_pendingCmd_decrementIt = 1'b1;
    end
  end

  assign dBridge_pendingCmd_willOverflowIfInc = ((dBridge_pendingCmd_value == 3'b111) && (! dBridge_pendingCmd_decrementIt));
  assign dBridge_pendingCmd_willOverflow = (dBridge_pendingCmd_willOverflowIfInc && dBridge_pendingCmd_incrementIt);
  always @ (*) begin
    if((dBridge_pendingCmd_incrementIt && (! dBridge_pendingCmd_decrementIt)))begin
      dBridge_pendingCmd_finalIncrement = 3'b001;
    end else begin
      if(((! dBridge_pendingCmd_incrementIt) && dBridge_pendingCmd_decrementIt))begin
        dBridge_pendingCmd_finalIncrement = 3'b111;
      end else begin
        dBridge_pendingCmd_finalIncrement = 3'b000;
      end
    end
  end

  assign dBridge_pendingCmd_valueNext = (dBridge_pendingCmd_value + dBridge_pendingCmd_finalIncrement);
  assign _zz_1 = ((1'b1 && (! dBridge_cmdPreFork_valid)) || dBridge_cmdPreFork_ready);
  assign dBridge_cmdPreFork_valid = _zz_4;
  assign dBridge_cmdPreFork_payload_wr = _zz_5;
  assign dBridge_cmdPreFork_payload_address = _zz_6;
  assign dBridge_cmdPreFork_payload_data = _zz_7;
  assign dBridge_cmdPreFork_payload_size = _zz_8;
  assign _zz_9 = (! (((dBridge_pendingCmd_value != 3'b000) && (dBridge_pendingIsWrite ^ dBridge_cmdPreFork_payload_wr)) || (dBridge_pendingCmd_value == 3'b111)));
  assign dBridge_cmdPreFork_ready = (streamFork_5_io_input_ready && _zz_9);
  assign _zz_19 = (dBridge_cmdPreFork_valid && _zz_9);
  assign dBridge_mm_arw_valid = streamFork_5_io_outputs_0_valid;
  assign dBridge_mm_arw_payload_write = streamFork_5_io_outputs_0_payload_wr;
  assign dBridge_mm_arw_payload_prot = 3'b010;
  assign dBridge_mm_arw_payload_cache = 4'b1111;
  assign dBridge_mm_arw_payload_size = {1'd0, streamFork_5_io_outputs_0_payload_size};
  assign dBridge_mm_arw_payload_addr = streamFork_5_io_outputs_0_payload_address;
  always @ (*) begin
    dBridge_dataStage_valid = streamFork_5_io_outputs_1_valid;
    if(_zz_21)begin
      dBridge_dataStage_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_20 = dBridge_dataStage_ready;
    if(_zz_21)begin
      _zz_20 = 1'b1;
    end
  end

  assign dBridge_dataStage_payload_wr = streamFork_5_io_outputs_1_payload_wr;
  assign dBridge_dataStage_payload_address = streamFork_5_io_outputs_1_payload_address;
  assign dBridge_dataStage_payload_data = streamFork_5_io_outputs_1_payload_data;
  assign dBridge_dataStage_payload_size = streamFork_5_io_outputs_1_payload_size;
  assign dBridge_mm_w_valid = dBridge_dataStage_valid;
  assign dBridge_dataStage_ready = dBridge_mm_w_ready;
  assign dBridge_mm_w_payload_last = 1'b1;
  always @ (*) begin
    case(dBridge_dataStage_payload_size)
      2'b00 : begin
        _zz_10 = {{{dBridge_dataStage_payload_data[7 : 0],dBridge_dataStage_payload_data[7 : 0]},dBridge_dataStage_payload_data[7 : 0]},dBridge_dataStage_payload_data[7 : 0]};
      end
      2'b01 : begin
        _zz_10 = {dBridge_dataStage_payload_data[15 : 0],dBridge_dataStage_payload_data[15 : 0]};
      end
      default : begin
        _zz_10 = dBridge_dataStage_payload_data[31 : 0];
      end
    endcase
  end

  assign dBridge_mm_w_payload_data = _zz_10;
  always @ (*) begin
    case(dBridge_dataStage_payload_size)
      2'b00 : begin
        _zz_11 = 4'b0001;
      end
      2'b01 : begin
        _zz_11 = 4'b0011;
      end
      default : begin
        _zz_11 = 4'b1111;
      end
    endcase
  end

  assign dBridge_mm_w_payload_strb = _zz_26[3:0];
  assign dBridge_contextIn_valid = ((streamFork_5_io_outputs_0_valid && dBridge_mm_arw_ready) && (! streamFork_5_io_outputs_0_payload_wr));
  assign dBridge_contextIn_payload = streamFork_5_io_outputs_0_payload_address[1 : 0];
  assign dBridge_contextIn_ready = ((1'b1 && (! dBridge_contextIn_m2sPipe_valid)) || dBridge_contextIn_m2sPipe_ready);
  assign dBridge_contextIn_m2sPipe_valid = dBridge_contextIn_m2sPipe_rValid;
  assign dBridge_contextIn_m2sPipe_payload = dBridge_contextIn_m2sPipe_rData;
  assign dBridge_contextOut_valid = (dBridge_contextIn_m2sPipe_valid || dBridge_contextIn_m2sPipe_s2mPipe_rValid);
  assign dBridge_contextIn_m2sPipe_ready = (! dBridge_contextIn_m2sPipe_s2mPipe_rValid);
  assign dBridge_contextOut_payload = (dBridge_contextIn_m2sPipe_s2mPipe_rValid ? dBridge_contextIn_m2sPipe_s2mPipe_rData : dBridge_contextIn_m2sPipe_payload);
  assign dBridge_contextOut_ready = (_zz_2 && core_io_d_rsp_ready);
  assign _zz_2 = dBridge_mm_r_valid;
  always @ (*) begin
    _zz_3 = dBridge_mm_r_payload_data;
    case(dBridge_contextOut_payload)
      2'b01 : begin
        _zz_3[7 : 0] = dBridge_mm_r_payload_data[15 : 8];
      end
      2'b10 : begin
        _zz_3[15 : 0] = dBridge_mm_r_payload_data[31 : 16];
      end
      2'b11 : begin
        _zz_3[7 : 0] = dBridge_mm_r_payload_data[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign dBridge_mm_b_ready = 1'b1;
  assign dBridge_mm_r_ready = 1'b1;
  assign io_d_arw_valid = dBridge_mm_arw_valid;
  assign dBridge_mm_arw_ready = io_d_arw_ready;
  assign io_d_arw_payload_addr = dBridge_mm_arw_payload_addr;
  assign io_d_arw_payload_size = dBridge_mm_arw_payload_size;
  assign io_d_arw_payload_cache = dBridge_mm_arw_payload_cache;
  assign io_d_arw_payload_prot = dBridge_mm_arw_payload_prot;
  assign io_d_arw_payload_write = dBridge_mm_arw_payload_write;
  assign io_d_w_valid = dBridge_mm_w_valid;
  assign dBridge_mm_w_ready = io_d_w_ready;
  assign io_d_w_payload_data = dBridge_mm_w_payload_data;
  assign io_d_w_payload_strb = dBridge_mm_w_payload_strb;
  assign io_d_w_payload_last = dBridge_mm_w_payload_last;
  assign dBridge_mm_b_valid = io_d_b_valid;
  assign io_d_b_ready = dBridge_mm_b_ready;
  assign dBridge_mm_r_valid = io_d_r_valid;
  assign io_d_r_ready = dBridge_mm_r_ready;
  assign dBridge_mm_r_payload_data = io_d_r_payload_data;
  assign dBridge_mm_r_payload_last = io_d_r_payload_last;
  always @ (posedge io_axiClk or posedge resetCtrl_coreReset) begin
    if (resetCtrl_coreReset) begin
      core_io_i_cmd_halfPipe_regs_valid <= 1'b0;
      core_io_i_cmd_halfPipe_regs_ready <= 1'b1;
      core_io_d_cmd_s2mPipe_rValid <= 1'b0;
      dBridge_pendingCmd_value <= 3'b000;
      _zz_4 <= 1'b0;
      dBridge_contextIn_m2sPipe_rValid <= 1'b0;
      dBridge_contextIn_m2sPipe_s2mPipe_rValid <= 1'b0;
    end else begin
      if(_zz_22)begin
        core_io_i_cmd_halfPipe_regs_valid <= core_io_i_cmd_valid;
        core_io_i_cmd_halfPipe_regs_ready <= (! core_io_i_cmd_valid);
      end else begin
        core_io_i_cmd_halfPipe_regs_valid <= (! core_io_i_cmd_halfPipe_ready);
        core_io_i_cmd_halfPipe_regs_ready <= core_io_i_cmd_halfPipe_ready;
      end
      if(core_io_d_cmd_s2mPipe_ready)begin
        core_io_d_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_23)begin
        core_io_d_cmd_s2mPipe_rValid <= core_io_d_cmd_valid;
      end
      dBridge_pendingCmd_value <= dBridge_pendingCmd_valueNext;
      if(_zz_1)begin
        _zz_4 <= core_io_d_cmd_s2mPipe_valid;
      end
      if(dBridge_contextIn_ready)begin
        dBridge_contextIn_m2sPipe_rValid <= dBridge_contextIn_valid;
      end
      if(dBridge_contextOut_ready)begin
        dBridge_contextIn_m2sPipe_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_24)begin
        dBridge_contextIn_m2sPipe_s2mPipe_rValid <= dBridge_contextIn_m2sPipe_valid;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_22)begin
      core_io_i_cmd_halfPipe_regs_payload_address <= core_io_i_cmd_payload_address;
    end
    if(_zz_23)begin
      core_io_d_cmd_s2mPipe_rData_wr <= core_io_d_cmd_payload_wr;
      core_io_d_cmd_s2mPipe_rData_address <= core_io_d_cmd_payload_address;
      core_io_d_cmd_s2mPipe_rData_data <= core_io_d_cmd_payload_data;
      core_io_d_cmd_s2mPipe_rData_size <= core_io_d_cmd_payload_size;
    end
    if((dBridge_mm_arw_valid && dBridge_mm_arw_ready))begin
      dBridge_pendingIsWrite <= dBridge_mm_arw_payload_write;
    end
    if(_zz_1)begin
      _zz_5 <= core_io_d_cmd_s2mPipe_payload_wr;
      _zz_6 <= core_io_d_cmd_s2mPipe_payload_address;
      _zz_7 <= core_io_d_cmd_s2mPipe_payload_data;
      _zz_8 <= core_io_d_cmd_s2mPipe_payload_size;
    end
    if(dBridge_contextIn_ready)begin
      dBridge_contextIn_m2sPipe_rData <= dBridge_contextIn_payload;
    end
    if(_zz_24)begin
      dBridge_contextIn_m2sPipe_s2mPipe_rData <= dBridge_contextIn_m2sPipe_payload;
    end
  end


endmodule

//BufferCC_10 replaced by BufferCC_10

module BufferCC_10 (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

//StreamFifoLowLatency_1 replaced by StreamFifoLowLatency_1

module StreamFork_4 (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [19:0]   io_input_payload_addr,
  input      [2:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [19:0]   io_outputs_0_payload_addr,
  output     [2:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [19:0]   io_outputs_1_payload_addr,
  output     [2:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

module StreamArbiter_2 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [19:0]   io_inputs_0_payload_addr,
  input      [2:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [19:0]   io_inputs_1_payload_addr,
  input      [2:0]    io_inputs_1_payload_id,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input               io_inputs_1_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [19:0]   io_output_payload_addr,
  output     [2:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [3:0]    _zz_6;
  wire       [1:0]    _zz_7;
  wire       [3:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [0:0]    _zz_10;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_1;
  wire       [3:0]    _zz_2;
  wire       [3:0]    _zz_3;
  wire       [1:0]    _zz_4;
  wire                _zz_5;

  assign _zz_6 = (_zz_2 - _zz_8);
  assign _zz_7 = {maskLocked_0,maskLocked_1};
  assign _zz_8 = {2'd0, _zz_7};
  assign _zz_9 = _zz_4[0 : 0];
  assign _zz_10 = _zz_4[1 : 1];
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_1 = {io_inputs_1_valid,io_inputs_0_valid};
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_6));
  assign _zz_4 = (_zz_3[3 : 2] | _zz_3[1 : 0]);
  assign maskProposal_0 = _zz_9[0];
  assign maskProposal_1 = _zz_10[0];
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_addr = (maskRouted_0 ? io_inputs_0_payload_addr : io_inputs_1_payload_addr);
  assign io_output_payload_id = (maskRouted_0 ? io_inputs_0_payload_id : io_inputs_1_payload_id);
  assign io_output_payload_len = (maskRouted_0 ? io_inputs_0_payload_len : io_inputs_1_payload_len);
  assign io_output_payload_size = (maskRouted_0 ? io_inputs_0_payload_size : io_inputs_1_payload_size);
  assign io_output_payload_burst = (maskRouted_0 ? io_inputs_0_payload_burst : io_inputs_1_payload_burst);
  assign io_output_payload_write = (maskRouted_0 ? io_inputs_0_payload_write : io_inputs_1_payload_write);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_5 = io_chosenOH[1];
  assign io_chosen = _zz_5;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

//StreamFifoLowLatency_1 replaced by StreamFifoLowLatency_1

module StreamFork_3 (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [25:0]   io_input_payload_addr,
  input      [1:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [25:0]   io_outputs_0_payload_addr,
  output     [1:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [25:0]   io_outputs_1_payload_addr,
  output     [1:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

module StreamArbiter_1 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [25:0]   io_inputs_0_payload_addr,
  input      [1:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [25:0]   io_inputs_1_payload_addr,
  input      [1:0]    io_inputs_1_payload_id,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input               io_inputs_1_payload_write,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input      [25:0]   io_inputs_2_payload_addr,
  input      [1:0]    io_inputs_2_payload_id,
  input      [7:0]    io_inputs_2_payload_len,
  input      [2:0]    io_inputs_2_payload_size,
  input      [1:0]    io_inputs_2_payload_burst,
  input               io_inputs_2_payload_write,
  input               io_inputs_3_valid,
  output              io_inputs_3_ready,
  input      [25:0]   io_inputs_3_payload_addr,
  input      [1:0]    io_inputs_3_payload_id,
  input      [7:0]    io_inputs_3_payload_len,
  input      [2:0]    io_inputs_3_payload_size,
  input      [1:0]    io_inputs_3_payload_burst,
  input               io_inputs_3_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [25:0]   io_output_payload_addr,
  output     [1:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [1:0]    io_chosen,
  output     [3:0]    io_chosenOH,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [25:0]   _zz_11;
  reg        [1:0]    _zz_12;
  reg        [7:0]    _zz_13;
  reg        [2:0]    _zz_14;
  reg        [1:0]    _zz_15;
  reg                 _zz_16;
  wire       [7:0]    _zz_17;
  wire       [3:0]    _zz_18;
  wire       [7:0]    _zz_19;
  wire       [0:0]    _zz_20;
  wire       [0:0]    _zz_21;
  wire       [0:0]    _zz_22;
  wire       [0:0]    _zz_23;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  wire                maskProposal_2;
  wire                maskProposal_3;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  reg                 maskLocked_3;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  wire                maskRouted_3;
  wire       [3:0]    _zz_1;
  wire       [7:0]    _zz_2;
  wire       [7:0]    _zz_3;
  wire       [3:0]    _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire       [1:0]    _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire                _zz_10;

  assign _zz_17 = (_zz_2 - _zz_19);
  assign _zz_18 = {maskLocked_2,{maskLocked_1,{maskLocked_0,maskLocked_3}}};
  assign _zz_19 = {4'd0, _zz_18};
  assign _zz_20 = _zz_4[0 : 0];
  assign _zz_21 = _zz_4[1 : 1];
  assign _zz_22 = _zz_4[2 : 2];
  assign _zz_23 = _zz_4[3 : 3];
  always @(*) begin
    case(_zz_7)
      2'b00 : begin
        _zz_11 = io_inputs_0_payload_addr;
        _zz_12 = io_inputs_0_payload_id;
        _zz_13 = io_inputs_0_payload_len;
        _zz_14 = io_inputs_0_payload_size;
        _zz_15 = io_inputs_0_payload_burst;
        _zz_16 = io_inputs_0_payload_write;
      end
      2'b01 : begin
        _zz_11 = io_inputs_1_payload_addr;
        _zz_12 = io_inputs_1_payload_id;
        _zz_13 = io_inputs_1_payload_len;
        _zz_14 = io_inputs_1_payload_size;
        _zz_15 = io_inputs_1_payload_burst;
        _zz_16 = io_inputs_1_payload_write;
      end
      2'b10 : begin
        _zz_11 = io_inputs_2_payload_addr;
        _zz_12 = io_inputs_2_payload_id;
        _zz_13 = io_inputs_2_payload_len;
        _zz_14 = io_inputs_2_payload_size;
        _zz_15 = io_inputs_2_payload_burst;
        _zz_16 = io_inputs_2_payload_write;
      end
      default : begin
        _zz_11 = io_inputs_3_payload_addr;
        _zz_12 = io_inputs_3_payload_id;
        _zz_13 = io_inputs_3_payload_len;
        _zz_14 = io_inputs_3_payload_size;
        _zz_15 = io_inputs_3_payload_burst;
        _zz_16 = io_inputs_3_payload_write;
      end
    endcase
  end

  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  assign maskRouted_3 = (locked ? maskLocked_3 : maskProposal_3);
  assign _zz_1 = {io_inputs_3_valid,{io_inputs_2_valid,{io_inputs_1_valid,io_inputs_0_valid}}};
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_17));
  assign _zz_4 = (_zz_3[7 : 4] | _zz_3[3 : 0]);
  assign maskProposal_0 = _zz_20[0];
  assign maskProposal_1 = _zz_21[0];
  assign maskProposal_2 = _zz_22[0];
  assign maskProposal_3 = _zz_23[0];
  assign io_output_valid = ((((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2)) || (io_inputs_3_valid && maskRouted_3));
  assign _zz_5 = (maskRouted_1 || maskRouted_3);
  assign _zz_6 = (maskRouted_2 || maskRouted_3);
  assign _zz_7 = {_zz_6,_zz_5};
  assign io_output_payload_addr = _zz_11;
  assign io_output_payload_id = _zz_12;
  assign io_output_payload_len = _zz_13;
  assign io_output_payload_size = _zz_14;
  assign io_output_payload_burst = _zz_15;
  assign io_output_payload_write = _zz_16;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_inputs_3_ready = (maskRouted_3 && io_output_ready);
  assign io_chosenOH = {maskRouted_3,{maskRouted_2,{maskRouted_1,maskRouted_0}}};
  assign _zz_8 = io_chosenOH[3];
  assign _zz_9 = (io_chosenOH[1] || _zz_8);
  assign _zz_10 = (io_chosenOH[2] || _zz_8);
  assign io_chosen = {_zz_10,_zz_9};
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b0;
      maskLocked_2 <= 1'b0;
      maskLocked_3 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
        maskLocked_2 <= maskRouted_2;
        maskLocked_3 <= maskRouted_3;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module StreamFifoLowLatency_1 (
  input               io_push_valid,
  output              io_push_ready,
  input      [0:0]    io_push_payload,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg [0:0]    io_pop_payload,
  input               io_flush,
  output     [2:0]    io_occupancy,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [0:0]    _zz_2;
  wire                _zz_3;
  wire       [0:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire       [0:0]    _zz_6;
  wire       [1:0]    _zz_7;
  wire       [0:0]    _zz_8;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [1:0]    pushPtr_valueNext;
  reg        [1:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [1:0]    popPtr_valueNext;
  reg        [1:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [1:0]    ptrDif;
  (* ram_style = "distributed" *) reg [0:0] ram [0:3];

  assign _zz_3 = (! empty);
  assign _zz_4 = pushPtr_willIncrement;
  assign _zz_5 = {1'd0, _zz_4};
  assign _zz_6 = popPtr_willIncrement;
  assign _zz_7 = {1'd0, _zz_6};
  assign _zz_8 = io_push_payload;
  assign _zz_2 = ram[popPtr_value];
  always @ (posedge io_axiClk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_8;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 2'b11);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_5);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = 2'b00;
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 2'b11);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + _zz_7);
    if(popPtr_willClear)begin
      popPtr_valueNext = 2'b00;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  always @ (*) begin
    if(_zz_3)begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  always @ (*) begin
    if(_zz_3)begin
      io_pop_payload = _zz_2;
    end else begin
      io_pop_payload = io_push_payload;
    end
  end

  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pushPtr_value <= 2'b00;
      popPtr_value <= 2'b00;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFork_2 (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [11:0]   io_input_payload_addr,
  input      [1:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [11:0]   io_outputs_0_payload_addr,
  output     [1:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [11:0]   io_outputs_1_payload_addr,
  output     [1:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [11:0]   io_inputs_0_payload_addr,
  input      [1:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [11:0]   io_inputs_1_payload_addr,
  input      [1:0]    io_inputs_1_payload_id,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input               io_inputs_1_payload_write,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input      [11:0]   io_inputs_2_payload_addr,
  input      [1:0]    io_inputs_2_payload_id,
  input      [7:0]    io_inputs_2_payload_len,
  input      [2:0]    io_inputs_2_payload_size,
  input      [1:0]    io_inputs_2_payload_burst,
  input               io_inputs_2_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [11:0]   io_output_payload_addr,
  output     [1:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [1:0]    io_chosen,
  output     [2:0]    io_chosenOH,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [11:0]   _zz_8;
  reg        [1:0]    _zz_9;
  reg        [7:0]    _zz_10;
  reg        [2:0]    _zz_11;
  reg        [1:0]    _zz_12;
  reg                 _zz_13;
  wire       [5:0]    _zz_14;
  wire       [2:0]    _zz_15;
  wire       [5:0]    _zz_16;
  wire       [0:0]    _zz_17;
  wire       [0:0]    _zz_18;
  wire       [0:0]    _zz_19;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  wire                maskProposal_2;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  wire       [2:0]    _zz_1;
  wire       [5:0]    _zz_2;
  wire       [5:0]    _zz_3;
  wire       [2:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire                _zz_6;
  wire                _zz_7;

  assign _zz_14 = (_zz_2 - _zz_16);
  assign _zz_15 = {maskLocked_1,{maskLocked_0,maskLocked_2}};
  assign _zz_16 = {3'd0, _zz_15};
  assign _zz_17 = _zz_4[0 : 0];
  assign _zz_18 = _zz_4[1 : 1];
  assign _zz_19 = _zz_4[2 : 2];
  always @(*) begin
    case(_zz_5)
      2'b00 : begin
        _zz_8 = io_inputs_0_payload_addr;
        _zz_9 = io_inputs_0_payload_id;
        _zz_10 = io_inputs_0_payload_len;
        _zz_11 = io_inputs_0_payload_size;
        _zz_12 = io_inputs_0_payload_burst;
        _zz_13 = io_inputs_0_payload_write;
      end
      2'b01 : begin
        _zz_8 = io_inputs_1_payload_addr;
        _zz_9 = io_inputs_1_payload_id;
        _zz_10 = io_inputs_1_payload_len;
        _zz_11 = io_inputs_1_payload_size;
        _zz_12 = io_inputs_1_payload_burst;
        _zz_13 = io_inputs_1_payload_write;
      end
      default : begin
        _zz_8 = io_inputs_2_payload_addr;
        _zz_9 = io_inputs_2_payload_id;
        _zz_10 = io_inputs_2_payload_len;
        _zz_11 = io_inputs_2_payload_size;
        _zz_12 = io_inputs_2_payload_burst;
        _zz_13 = io_inputs_2_payload_write;
      end
    endcase
  end

  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  assign _zz_1 = {io_inputs_2_valid,{io_inputs_1_valid,io_inputs_0_valid}};
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_14));
  assign _zz_4 = (_zz_3[5 : 3] | _zz_3[2 : 0]);
  assign maskProposal_0 = _zz_17[0];
  assign maskProposal_1 = _zz_18[0];
  assign maskProposal_2 = _zz_19[0];
  assign io_output_valid = (((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2));
  assign _zz_5 = {maskRouted_2,maskRouted_1};
  assign io_output_payload_addr = _zz_8;
  assign io_output_payload_id = _zz_9;
  assign io_output_payload_len = _zz_10;
  assign io_output_payload_size = _zz_11;
  assign io_output_payload_burst = _zz_12;
  assign io_output_payload_write = _zz_13;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_chosenOH = {maskRouted_2,{maskRouted_1,maskRouted_0}};
  assign _zz_6 = io_chosenOH[1];
  assign _zz_7 = io_chosenOH[2];
  assign io_chosen = {_zz_7,_zz_6};
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b0;
      maskLocked_2 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
        maskLocked_2 <= maskRouted_2;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module Axi4ReadOnlyErrorSlave_1 (
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [31:0]   io_axi_ar_payload_addr,
  input      [7:0]    io_axi_ar_payload_len,
  input      [2:0]    io_axi_ar_payload_size,
  input      [3:0]    io_axi_ar_payload_cache,
  input      [2:0]    io_axi_ar_payload_prot,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_1;
  reg                 sendRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;

  assign _zz_1 = (io_axi_ar_valid && io_axi_ar_ready);
  assign remainingZero = (remaining == 8'h0);
  assign io_axi_ar_ready = (! sendRsp);
  assign io_axi_r_valid = sendRsp;
  assign io_axi_r_payload_last = remainingZero;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      sendRsp <= 1'b0;
    end else begin
      if(_zz_1)begin
        sendRsp <= 1'b1;
      end
      if(sendRsp)begin
        if(io_axi_r_ready)begin
          if(remainingZero)begin
            sendRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1)begin
      remaining <= io_axi_ar_payload_len;
    end
    if(sendRsp)begin
      if(io_axi_r_ready)begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module Axi4SharedErrorSlave_1 (
  input               io_axi_arw_valid,
  output              io_axi_arw_ready,
  input      [31:0]   io_axi_arw_payload_addr,
  input      [2:0]    io_axi_arw_payload_size,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_1;
  reg                 consumeData;
  reg                 sendReadRsp;
  reg                 sendWriteRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;

  assign _zz_1 = (io_axi_arw_valid && io_axi_arw_ready);
  assign remainingZero = (remaining == 8'h0);
  assign io_axi_arw_ready = (! ((consumeData || sendWriteRsp) || sendReadRsp));
  assign io_axi_w_ready = consumeData;
  assign io_axi_b_valid = sendWriteRsp;
  assign io_axi_r_valid = sendReadRsp;
  assign io_axi_r_payload_last = remainingZero;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      consumeData <= 1'b0;
      sendReadRsp <= 1'b0;
      sendWriteRsp <= 1'b0;
    end else begin
      if(_zz_1)begin
        consumeData <= io_axi_arw_payload_write;
        sendReadRsp <= (! io_axi_arw_payload_write);
      end
      if(((io_axi_w_valid && io_axi_w_ready) && io_axi_w_payload_last))begin
        consumeData <= 1'b0;
        sendWriteRsp <= 1'b1;
      end
      if((io_axi_b_valid && io_axi_b_ready))begin
        sendWriteRsp <= 1'b0;
      end
      if(sendReadRsp)begin
        if(io_axi_r_ready)begin
          if(remainingZero)begin
            sendReadRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1)begin
      remaining <= 8'h0;
    end
    if(sendReadRsp)begin
      if(io_axi_r_ready)begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module Axi4SharedErrorSlave (
  input               io_axi_arw_valid,
  output              io_axi_arw_ready,
  input      [31:0]   io_axi_arw_payload_addr,
  input      [2:0]    io_axi_arw_payload_size,
  input      [3:0]    io_axi_arw_payload_cache,
  input      [2:0]    io_axi_arw_payload_prot,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_1;
  reg                 consumeData;
  reg                 sendReadRsp;
  reg                 sendWriteRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;

  assign _zz_1 = (io_axi_arw_valid && io_axi_arw_ready);
  assign remainingZero = (remaining == 8'h0);
  assign io_axi_arw_ready = (! ((consumeData || sendWriteRsp) || sendReadRsp));
  assign io_axi_w_ready = consumeData;
  assign io_axi_b_valid = sendWriteRsp;
  assign io_axi_r_valid = sendReadRsp;
  assign io_axi_r_payload_last = remainingZero;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      consumeData <= 1'b0;
      sendReadRsp <= 1'b0;
      sendWriteRsp <= 1'b0;
    end else begin
      if(_zz_1)begin
        consumeData <= io_axi_arw_payload_write;
        sendReadRsp <= (! io_axi_arw_payload_write);
      end
      if(((io_axi_w_valid && io_axi_w_ready) && io_axi_w_payload_last))begin
        consumeData <= 1'b0;
        sendWriteRsp <= 1'b1;
      end
      if((io_axi_b_valid && io_axi_b_ready))begin
        sendWriteRsp <= 1'b0;
      end
      if(sendReadRsp)begin
        if(io_axi_r_ready)begin
          if(remainingZero)begin
            sendReadRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1)begin
      remaining <= 8'h0;
    end
    if(sendReadRsp)begin
      if(io_axi_r_ready)begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module Axi4ReadOnlyErrorSlave (
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [31:0]   io_axi_ar_payload_addr,
  input      [7:0]    io_axi_ar_payload_len,
  input      [1:0]    io_axi_ar_payload_burst,
  input      [3:0]    io_axi_ar_payload_cache,
  input      [2:0]    io_axi_ar_payload_prot,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output              io_axi_r_payload_last,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_1;
  reg                 sendRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;

  assign _zz_1 = (io_axi_ar_valid && io_axi_ar_ready);
  assign remainingZero = (remaining == 8'h0);
  assign io_axi_ar_ready = (! sendRsp);
  assign io_axi_r_valid = sendRsp;
  assign io_axi_r_payload_last = remainingZero;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      sendRsp <= 1'b0;
    end else begin
      if(_zz_1)begin
        sendRsp <= 1'b1;
      end
      if(sendRsp)begin
        if(io_axi_r_ready)begin
          if(remainingZero)begin
            sendRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1)begin
      remaining <= io_axi_ar_payload_len;
    end
    if(sendRsp)begin
      if(io_axi_r_ready)begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module PulseCCByToggle (
  input               io_pulseIn,
  output              io_pulseOut,
  input               io_vgaClk,
  input               resetCtrl_vgaReset,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                inArea_target_buffercc_io_dataOut;
  reg                 inArea_target;
  wire                outArea_target;
  reg                 outArea_hit;

  BufferCC_1 inArea_target_buffercc (
    .io_dataIn             (inArea_target                      ), //i
    .io_dataOut            (inArea_target_buffercc_io_dataOut  ), //o
    .io_axiClk             (io_axiClk                          ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                 )  //i
  );
  assign outArea_target = inArea_target_buffercc_io_dataOut;
  assign io_pulseOut = (outArea_target != outArea_hit);
  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      inArea_target <= 1'b0;
    end else begin
      if(io_pulseIn)begin
        inArea_target <= (! inArea_target);
      end
    end
  end

  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      outArea_hit <= 1'b0;
    end else begin
      if((outArea_target != outArea_hit))begin
        outArea_hit <= (! outArea_hit);
      end
    end
  end


endmodule

module VgaCtrl (
  input               io_softReset,
  input      [11:0]   io_timings_h_syncStart,
  input      [11:0]   io_timings_h_syncEnd,
  input      [11:0]   io_timings_h_colorStart,
  input      [11:0]   io_timings_h_colorEnd,
  input               io_timings_h_polarity,
  input      [11:0]   io_timings_v_syncStart,
  input      [11:0]   io_timings_v_syncEnd,
  input      [11:0]   io_timings_v_colorStart,
  input      [11:0]   io_timings_v_colorEnd,
  input               io_timings_v_polarity,
  output              io_frameStart,
  input               io_pixels_valid,
  output              io_pixels_ready,
  input      [4:0]    io_pixels_payload_r,
  input      [5:0]    io_pixels_payload_g,
  input      [4:0]    io_pixels_payload_b,
  output              io_vga_vSync,
  output              io_vga_hSync,
  output              io_vga_colorEn,
  output     [4:0]    io_vga_color_r,
  output     [5:0]    io_vga_color_g,
  output     [4:0]    io_vga_color_b,
  output              io_error,
  input               io_vgaClk,
  input               resetCtrl_vgaReset
);
  reg        [11:0]   h_counter;
  wire                h_syncStart;
  wire                h_syncEnd;
  wire                h_colorStart;
  wire                h_colorEnd;
  reg                 h_sync;
  reg                 h_colorEn;
  reg        [11:0]   v_counter;
  wire                v_syncStart;
  wire                v_syncEnd;
  wire                v_colorStart;
  wire                v_colorEnd;
  reg                 v_sync;
  reg                 v_colorEn;
  wire                colorEn;

  assign h_syncStart = (h_counter == io_timings_h_syncStart);
  assign h_syncEnd = (h_counter == io_timings_h_syncEnd);
  assign h_colorStart = (h_counter == io_timings_h_colorStart);
  assign h_colorEnd = (h_counter == io_timings_h_colorEnd);
  assign v_syncStart = (v_counter == io_timings_v_syncStart);
  assign v_syncEnd = (v_counter == io_timings_v_syncEnd);
  assign v_colorStart = (v_counter == io_timings_v_colorStart);
  assign v_colorEnd = (v_counter == io_timings_v_colorEnd);
  assign colorEn = (h_colorEn && v_colorEn);
  assign io_pixels_ready = colorEn;
  assign io_error = (colorEn && (! io_pixels_valid));
  assign io_frameStart = (v_syncStart && h_syncStart);
  assign io_vga_hSync = (h_sync ^ io_timings_h_polarity);
  assign io_vga_vSync = (v_sync ^ io_timings_v_polarity);
  assign io_vga_colorEn = colorEn;
  assign io_vga_color_r = io_pixels_payload_r;
  assign io_vga_color_g = io_pixels_payload_g;
  assign io_vga_color_b = io_pixels_payload_b;
  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      h_counter <= 12'h0;
      h_sync <= 1'b0;
      h_colorEn <= 1'b0;
      v_counter <= 12'h0;
      v_sync <= 1'b0;
      v_colorEn <= 1'b0;
    end else begin
      if(1'b1)begin
        h_counter <= (h_counter + 12'h001);
        if(h_syncEnd)begin
          h_counter <= 12'h0;
        end
      end
      if(h_syncStart)begin
        h_sync <= 1'b1;
      end
      if(h_syncEnd)begin
        h_sync <= 1'b0;
      end
      if(h_colorStart)begin
        h_colorEn <= 1'b1;
      end
      if(h_colorEnd)begin
        h_colorEn <= 1'b0;
      end
      if(io_softReset)begin
        h_counter <= 12'h0;
        h_sync <= 1'b0;
        h_colorEn <= 1'b0;
      end
      if(h_syncEnd)begin
        v_counter <= (v_counter + 12'h001);
        if(v_syncEnd)begin
          v_counter <= 12'h0;
        end
      end
      if(v_syncStart)begin
        v_sync <= 1'b1;
      end
      if(v_syncEnd)begin
        v_sync <= 1'b0;
      end
      if(v_colorStart)begin
        v_colorEn <= 1'b1;
      end
      if(v_colorEnd)begin
        v_colorEn <= 1'b0;
      end
      if(io_softReset)begin
        v_counter <= 12'h0;
        v_sync <= 1'b0;
        v_colorEn <= 1'b0;
      end
    end
  end


endmodule

module BufferCC_9 (
  input               io_dataIn,
  output              io_dataOut,
  input               io_vgaClk,
  input               resetCtrl_vgaReset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_vgaClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module VideoDma (
  input               io_start,
  output              io_busy,
  input      [26:0]   io_base,
  input      [17:0]   io_size,
  output reg          io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [26:0]   io_mem_cmd_payload,
  input               io_mem_rsp_valid,
  input               io_mem_rsp_payload_last,
  input      [31:0]   io_mem_rsp_payload_fragment,
  output              io_frame_valid,
  input               io_frame_ready,
  output              io_frame_payload_last,
  output     [4:0]    io_frame_payload_fragment_r,
  output     [5:0]    io_frame_payload_fragment_g,
  output     [4:0]    io_frame_payload_fragment_b,
  input               io_axiClk,
  input               resetCtrl_axiReset,
  input               io_vgaClk,
  input               resetCtrl_vgaReset
);
  reg        [15:0]   _zz_26;
  wire                rspArea_fifo_io_push_ready;
  wire                rspArea_fifo_io_pop_valid;
  wire                rspArea_fifo_io_pop_payload_last;
  wire       [31:0]   rspArea_fifo_io_pop_payload_fragment;
  wire       [9:0]    rspArea_fifo_io_pushOccupancy;
  wire       [9:0]    rspArea_fifo_io_popOccupancy;
  wire       [6:0]    rspArea_frameClockArea_popCmdGray_buffercc_io_dataOut;
  wire                _zz_27;
  wire                _zz_28;
  wire                _zz_29;
  wire                _zz_30;
  wire                _zz_31;
  wire                _zz_32;
  wire                _zz_33;
  wire                _zz_34;
  wire                _zz_35;
  wire                _zz_36;
  wire                _zz_37;
  wire                _zz_38;
  wire                _zz_39;
  wire                _zz_40;
  wire       [26:0]   _zz_41;
  wire       [0:0]    _zz_42;
  wire       [2:0]    _zz_43;
  reg        [5:0]    _zz_1;
  reg        [5:0]    _zz_2;
  reg                 pendingMemCmd_incrementIt;
  reg                 pendingMemCmd_decrementIt;
  wire       [2:0]    pendingMemCmd_valueNext;
  reg        [2:0]    pendingMemCmd_value;
  wire                pendingMemCmd_willOverflowIfInc;
  wire                pendingMemCmd_willOverflow;
  reg        [2:0]    pendingMemCmd_finalIncrement;
  reg        [5:0]    pendingMemRsp;
  wire       [5:0]    _zz_3;
  wire                toManyPendingCmd;
  wire                toManyPendingRsp;
  reg                 isActive;
  reg                 cmdActive;
  reg        [17:0]   memCmdCounter;
  wire                memCmdLast;
  wire                memRsp_valid;
  wire                memRsp_payload_last;
  wire       [31:0]   memRsp_payload_fragment;
  wire                fifoPop_valid;
  wire                fifoPop_ready;
  wire                fifoPop_payload_last;
  wire       [31:0]   fifoPop_payload_fragment;
  reg                 rspArea_frameClockArea_popBeatCounter_willIncrement;
  wire                rspArea_frameClockArea_popBeatCounter_willClear;
  reg        [2:0]    rspArea_frameClockArea_popBeatCounter_valueNext;
  reg        [2:0]    rspArea_frameClockArea_popBeatCounter_value;
  wire                rspArea_frameClockArea_popBeatCounter_willOverflowIfInc;
  wire                rspArea_frameClockArea_popBeatCounter_willOverflow;
  reg        [6:0]    rspArea_frameClockArea_popCmdGray;
  reg                 _zz_4;
  wire       [6:0]    _zz_5;
  reg                 _zz_6;
  reg                 _zz_7;
  reg                 _zz_8;
  reg                 _zz_9;
  reg                 _zz_10;
  reg                 _zz_11;
  wire       [6:0]    rspArea_popCmdGray;
  reg        [6:0]    rspArea_pushCmdGray;
  reg                 _zz_12;
  wire       [6:0]    _zz_13;
  reg                 _zz_14;
  reg                 _zz_15;
  reg                 _zz_16;
  reg                 _zz_17;
  reg                 _zz_18;
  reg                 _zz_19;
  reg                 _zz_20;
  reg        [0:0]    _zz_21;
  reg        [0:0]    _zz_22;
  wire                _zz_23;
  wire       [31:0]   _zz_24;
  wire       [15:0]   _zz_25;

  assign _zz_27 = (! isActive);
  assign _zz_28 = ((! toManyPendingCmd) && (! toManyPendingRsp));
  assign _zz_29 = (_zz_5[5] && (! _zz_7));
  assign _zz_30 = (_zz_5[4] && (! _zz_8));
  assign _zz_31 = (_zz_5[3] && (! _zz_9));
  assign _zz_32 = (_zz_5[2] && (! _zz_10));
  assign _zz_33 = (_zz_5[1] && (! _zz_11));
  assign _zz_34 = (_zz_5[0] && (! 1'b0));
  assign _zz_35 = (_zz_13[5] && (! _zz_15));
  assign _zz_36 = (_zz_13[4] && (! _zz_16));
  assign _zz_37 = (_zz_13[3] && (! _zz_17));
  assign _zz_38 = (_zz_13[2] && (! _zz_18));
  assign _zz_39 = (_zz_13[1] && (! _zz_19));
  assign _zz_40 = (_zz_13[0] && (! 1'b0));
  assign _zz_41 = {9'd0, memCmdCounter};
  assign _zz_42 = rspArea_frameClockArea_popBeatCounter_willIncrement;
  assign _zz_43 = {2'd0, _zz_42};
  StreamFifoCC rspArea_fifo (
    .io_push_valid               (memRsp_valid                                ), //i
    .io_push_ready               (rspArea_fifo_io_push_ready                  ), //o
    .io_push_payload_last        (memRsp_payload_last                         ), //i
    .io_push_payload_fragment    (memRsp_payload_fragment[31:0]               ), //i
    .io_pop_valid                (rspArea_fifo_io_pop_valid                   ), //o
    .io_pop_ready                (fifoPop_ready                               ), //i
    .io_pop_payload_last         (rspArea_fifo_io_pop_payload_last            ), //o
    .io_pop_payload_fragment     (rspArea_fifo_io_pop_payload_fragment[31:0]  ), //o
    .io_pushOccupancy            (rspArea_fifo_io_pushOccupancy[9:0]          ), //o
    .io_popOccupancy             (rspArea_fifo_io_popOccupancy[9:0]           ), //o
    .io_axiClk                   (io_axiClk                                   ), //i
    .resetCtrl_axiReset          (resetCtrl_axiReset                          ), //i
    .io_vgaClk                   (io_vgaClk                                   ), //i
    .resetCtrl_vgaReset          (resetCtrl_vgaReset                          )  //i
  );
  BufferCC_4 rspArea_frameClockArea_popCmdGray_buffercc (
    .io_dataIn             (rspArea_frameClockArea_popCmdGray[6:0]                      ), //i
    .io_dataOut            (rspArea_frameClockArea_popCmdGray_buffercc_io_dataOut[6:0]  ), //o
    .io_axiClk             (io_axiClk                                                   ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                                          )  //i
  );
  always @(*) begin
    case(_zz_22)
      1'b0 : begin
        _zz_26 = _zz_24[15 : 0];
      end
      default : begin
        _zz_26 = _zz_24[31 : 16];
      end
    endcase
  end

  always @ (*) begin
    _zz_1 = _zz_2;
    if(io_mem_rsp_valid)begin
      _zz_1 = (_zz_2 - 6'h01);
    end
  end

  always @ (*) begin
    _zz_2 = _zz_3;
    if((io_mem_cmd_valid && io_mem_cmd_ready))begin
      _zz_2 = (_zz_3 + 6'h08);
    end
  end

  always @ (*) begin
    pendingMemCmd_incrementIt = 1'b0;
    if((io_mem_cmd_valid && io_mem_cmd_ready))begin
      pendingMemCmd_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingMemCmd_decrementIt = 1'b0;
    if((io_mem_rsp_valid && io_mem_rsp_payload_last))begin
      pendingMemCmd_decrementIt = 1'b1;
    end
  end

  assign pendingMemCmd_willOverflowIfInc = ((pendingMemCmd_value == 3'b111) && (! pendingMemCmd_decrementIt));
  assign pendingMemCmd_willOverflow = (pendingMemCmd_willOverflowIfInc && pendingMemCmd_incrementIt);
  always @ (*) begin
    if((pendingMemCmd_incrementIt && (! pendingMemCmd_decrementIt)))begin
      pendingMemCmd_finalIncrement = 3'b001;
    end else begin
      if(((! pendingMemCmd_incrementIt) && pendingMemCmd_decrementIt))begin
        pendingMemCmd_finalIncrement = 3'b111;
      end else begin
        pendingMemCmd_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingMemCmd_valueNext = (pendingMemCmd_value + pendingMemCmd_finalIncrement);
  assign _zz_3 = pendingMemRsp;
  assign toManyPendingCmd = (3'b110 < pendingMemCmd_value);
  assign io_busy = isActive;
  assign memCmdLast = (memCmdCounter == io_size);
  always @ (*) begin
    io_mem_cmd_valid = 1'b0;
    if(! _zz_27) begin
      if(cmdActive)begin
        if(_zz_28)begin
          io_mem_cmd_valid = 1'b1;
        end
      end
    end
  end

  assign io_mem_cmd_payload = (io_base + _zz_41);
  assign memRsp_valid = io_mem_rsp_valid;
  assign memRsp_payload_last = ((! cmdActive) && (pendingMemRsp == 6'h01));
  assign memRsp_payload_fragment = io_mem_rsp_payload_fragment;
  assign fifoPop_valid = rspArea_fifo_io_pop_valid;
  assign fifoPop_payload_last = rspArea_fifo_io_pop_payload_last;
  assign fifoPop_payload_fragment = rspArea_fifo_io_pop_payload_fragment;
  always @ (*) begin
    rspArea_frameClockArea_popBeatCounter_willIncrement = 1'b0;
    if((rspArea_fifo_io_pop_valid && fifoPop_ready))begin
      rspArea_frameClockArea_popBeatCounter_willIncrement = 1'b1;
    end
  end

  assign rspArea_frameClockArea_popBeatCounter_willClear = 1'b0;
  assign rspArea_frameClockArea_popBeatCounter_willOverflowIfInc = (rspArea_frameClockArea_popBeatCounter_value == 3'b111);
  assign rspArea_frameClockArea_popBeatCounter_willOverflow = (rspArea_frameClockArea_popBeatCounter_willOverflowIfInc && rspArea_frameClockArea_popBeatCounter_willIncrement);
  always @ (*) begin
    rspArea_frameClockArea_popBeatCounter_valueNext = (rspArea_frameClockArea_popBeatCounter_value + _zz_43);
    if(rspArea_frameClockArea_popBeatCounter_willClear)begin
      rspArea_frameClockArea_popBeatCounter_valueNext = 3'b000;
    end
  end

  assign _zz_5 = {1'b1,{rspArea_frameClockArea_popCmdGray[4 : 0],_zz_4}};
  always @ (*) begin
    _zz_6 = _zz_7;
    if(_zz_29)begin
      _zz_6 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_7 = _zz_8;
    if(_zz_30)begin
      _zz_7 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_8 = _zz_9;
    if(_zz_31)begin
      _zz_8 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_9 = _zz_10;
    if(_zz_32)begin
      _zz_9 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_10 = _zz_11;
    if(_zz_33)begin
      _zz_10 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_11 = 1'b0;
    if(_zz_34)begin
      _zz_11 = 1'b1;
    end
  end

  assign rspArea_popCmdGray = rspArea_frameClockArea_popCmdGray_buffercc_io_dataOut;
  assign _zz_13 = {1'b1,{rspArea_pushCmdGray[4 : 0],_zz_12}};
  always @ (*) begin
    _zz_14 = _zz_15;
    if(_zz_35)begin
      _zz_14 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_15 = _zz_16;
    if(_zz_36)begin
      _zz_15 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_16 = _zz_17;
    if(_zz_37)begin
      _zz_16 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_17 = _zz_18;
    if(_zz_38)begin
      _zz_17 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_18 = _zz_19;
    if(_zz_39)begin
      _zz_18 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_19 = 1'b0;
    if(_zz_40)begin
      _zz_19 = 1'b1;
    end
  end

  assign toManyPendingRsp = ((rspArea_pushCmdGray[6 : 5] == (~ rspArea_popCmdGray[6 : 5])) && (rspArea_pushCmdGray[4 : 0] == rspArea_popCmdGray[4 : 0]));
  always @ (*) begin
    _zz_20 = 1'b0;
    if((io_frame_valid && io_frame_ready))begin
      _zz_20 = 1'b1;
    end
  end

  assign _zz_23 = (_zz_22 == 1'b1);
  always @ (*) begin
    _zz_21 = (_zz_22 + _zz_20);
    if(1'b0)begin
      _zz_21 = 1'b0;
    end
  end

  assign io_frame_valid = fifoPop_valid;
  assign _zz_24 = fifoPop_payload_fragment;
  assign _zz_25 = _zz_26;
  assign io_frame_payload_fragment_r = _zz_25[4 : 0];
  assign io_frame_payload_fragment_g = _zz_25[10 : 5];
  assign io_frame_payload_fragment_b = _zz_25[15 : 11];
  assign io_frame_payload_last = (fifoPop_payload_last && _zz_23);
  assign fifoPop_ready = (io_frame_ready && _zz_23);
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendingMemCmd_value <= 3'b000;
      pendingMemRsp <= 6'h0;
      isActive <= 1'b0;
      cmdActive <= 1'b0;
      rspArea_pushCmdGray <= 7'h0;
      _zz_12 <= 1'b1;
    end else begin
      pendingMemCmd_value <= pendingMemCmd_valueNext;
      pendingMemRsp <= _zz_1;
      if(_zz_27)begin
        if(io_start)begin
          isActive <= 1'b1;
          cmdActive <= 1'b1;
        end
      end else begin
        if(cmdActive)begin
          if(_zz_28)begin
            if((memCmdLast && io_mem_cmd_ready))begin
              cmdActive <= 1'b0;
            end
          end
        end else begin
          if((pendingMemRsp == 6'h0))begin
            isActive <= 1'b0;
          end
        end
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        if(_zz_40)begin
          rspArea_pushCmdGray[0] <= (! rspArea_pushCmdGray[0]);
        end
        if(_zz_39)begin
          rspArea_pushCmdGray[1] <= (! rspArea_pushCmdGray[1]);
        end
        if(_zz_38)begin
          rspArea_pushCmdGray[2] <= (! rspArea_pushCmdGray[2]);
        end
        if(_zz_37)begin
          rspArea_pushCmdGray[3] <= (! rspArea_pushCmdGray[3]);
        end
        if(_zz_36)begin
          rspArea_pushCmdGray[4] <= (! rspArea_pushCmdGray[4]);
        end
        if(_zz_35)begin
          rspArea_pushCmdGray[5] <= (! rspArea_pushCmdGray[5]);
        end
        if((_zz_13[6] && (! _zz_14)))begin
          rspArea_pushCmdGray[6] <= (! rspArea_pushCmdGray[6]);
        end
        _zz_12 <= (! _zz_12);
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_27)begin
      if(io_start)begin
        memCmdCounter <= 18'h0;
      end
    end
    if((io_mem_cmd_valid && io_mem_cmd_ready))begin
      memCmdCounter <= (memCmdCounter + 18'h00001);
    end
  end

  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      rspArea_frameClockArea_popBeatCounter_value <= 3'b000;
      rspArea_frameClockArea_popCmdGray <= 7'h0;
      _zz_4 <= 1'b1;
      _zz_22 <= 1'b0;
    end else begin
      rspArea_frameClockArea_popBeatCounter_value <= rspArea_frameClockArea_popBeatCounter_valueNext;
      if(rspArea_frameClockArea_popBeatCounter_willOverflow)begin
        if(_zz_34)begin
          rspArea_frameClockArea_popCmdGray[0] <= (! rspArea_frameClockArea_popCmdGray[0]);
        end
        if(_zz_33)begin
          rspArea_frameClockArea_popCmdGray[1] <= (! rspArea_frameClockArea_popCmdGray[1]);
        end
        if(_zz_32)begin
          rspArea_frameClockArea_popCmdGray[2] <= (! rspArea_frameClockArea_popCmdGray[2]);
        end
        if(_zz_31)begin
          rspArea_frameClockArea_popCmdGray[3] <= (! rspArea_frameClockArea_popCmdGray[3]);
        end
        if(_zz_30)begin
          rspArea_frameClockArea_popCmdGray[4] <= (! rspArea_frameClockArea_popCmdGray[4]);
        end
        if(_zz_29)begin
          rspArea_frameClockArea_popCmdGray[5] <= (! rspArea_frameClockArea_popCmdGray[5]);
        end
        if((_zz_5[6] && (! _zz_6)))begin
          rspArea_frameClockArea_popCmdGray[6] <= (! rspArea_frameClockArea_popCmdGray[6]);
        end
        _zz_4 <= (! _zz_4);
      end
      _zz_22 <= _zz_21;
    end
  end


endmodule

//StreamFifo replaced by StreamFifo

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload,
  input               io_flush,
  output     [4:0]    io_occupancy,
  output     [4:0]    io_availability,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [7:0]    _zz_3;
  wire       [0:0]    _zz_4;
  wire       [3:0]    _zz_5;
  wire       [0:0]    _zz_6;
  wire       [3:0]    _zz_7;
  wire       [3:0]    _zz_8;
  wire                _zz_9;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [3:0]    logic_pushPtr_valueNext;
  reg        [3:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [3:0]    logic_popPtr_valueNext;
  reg        [3:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_2;
  wire       [3:0]    logic_ptrDif;
  reg [7:0] logic_ram [0:15];

  assign _zz_4 = logic_pushPtr_willIncrement;
  assign _zz_5 = {3'd0, _zz_4};
  assign _zz_6 = logic_popPtr_willIncrement;
  assign _zz_7 = {3'd0, _zz_6};
  assign _zz_8 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_9 = 1'b1;
  always @ (posedge io_axiClk) begin
    if(_zz_9) begin
      _zz_3 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= io_push_payload;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(logic_pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing)begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 4'b1111);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @ (*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_5);
    if(logic_pushPtr_willClear)begin
      logic_pushPtr_valueNext = 4'b0000;
    end
  end

  always @ (*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping)begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 4'b1111);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @ (*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_7);
    if(logic_popPtr_willClear)begin
      logic_popPtr_valueNext = 4'b0000;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_2 && (! logic_full))));
  assign io_pop_payload = _zz_3;
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_8};
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      logic_pushPtr_value <= 4'b0000;
      logic_popPtr_value <= 4'b0000;
      logic_risingOccupancy <= 1'b0;
      _zz_2 <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_2 <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if((logic_pushing != logic_popping))begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush)begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module UartCtrl (
  input      [2:0]    io_config_frame_dataLength,
  input      `UartStopType_binary_sequential_type io_config_frame_stop,
  input      `UartParityType_binary_sequential_type io_config_frame_parity,
  input      [19:0]   io_config_clockDivider,
  input               io_write_valid,
  output reg          io_write_ready,
  input      [7:0]    io_write_payload,
  output              io_read_valid,
  input               io_read_ready,
  output     [7:0]    io_read_payload,
  output              io_uart_txd,
  input               io_uart_rxd,
  output              io_readError,
  input               io_writeBreak,
  output              io_readBreak,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_1;
  wire                tx_io_write_ready;
  wire                tx_io_txd;
  wire                rx_io_read_valid;
  wire       [7:0]    rx_io_read_payload;
  wire                rx_io_rts;
  wire                rx_io_error;
  wire                rx_io_break;
  reg        [19:0]   clockDivider_counter;
  wire                clockDivider_tick;
  reg                 io_write_thrown_valid;
  wire                io_write_thrown_ready;
  wire       [7:0]    io_write_thrown_payload;
  `ifndef SYNTHESIS
  reg [23:0] io_config_frame_stop_string;
  reg [31:0] io_config_frame_parity_string;
  `endif


  UartCtrlTx tx (
    .io_configFrame_dataLength    (io_config_frame_dataLength[2:0]  ), //i
    .io_configFrame_stop          (io_config_frame_stop             ), //i
    .io_configFrame_parity        (io_config_frame_parity[1:0]      ), //i
    .io_samplingTick              (clockDivider_tick                ), //i
    .io_write_valid               (io_write_thrown_valid            ), //i
    .io_write_ready               (tx_io_write_ready                ), //o
    .io_write_payload             (io_write_thrown_payload[7:0]     ), //i
    .io_cts                       (_zz_1                            ), //i
    .io_txd                       (tx_io_txd                        ), //o
    .io_break                     (io_writeBreak                    ), //i
    .io_axiClk                    (io_axiClk                        ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset               )  //i
  );
  UartCtrlRx rx (
    .io_configFrame_dataLength    (io_config_frame_dataLength[2:0]  ), //i
    .io_configFrame_stop          (io_config_frame_stop             ), //i
    .io_configFrame_parity        (io_config_frame_parity[1:0]      ), //i
    .io_samplingTick              (clockDivider_tick                ), //i
    .io_read_valid                (rx_io_read_valid                 ), //o
    .io_read_ready                (io_read_ready                    ), //i
    .io_read_payload              (rx_io_read_payload[7:0]          ), //o
    .io_rxd                       (io_uart_rxd                      ), //i
    .io_rts                       (rx_io_rts                        ), //o
    .io_error                     (rx_io_error                      ), //o
    .io_break                     (rx_io_break                      ), //o
    .io_axiClk                    (io_axiClk                        ), //i
    .resetCtrl_axiReset           (resetCtrl_axiReset               )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_config_frame_stop)
      `UartStopType_binary_sequential_ONE : io_config_frame_stop_string = "ONE";
      `UartStopType_binary_sequential_TWO : io_config_frame_stop_string = "TWO";
      default : io_config_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_config_frame_parity)
      `UartParityType_binary_sequential_NONE : io_config_frame_parity_string = "NONE";
      `UartParityType_binary_sequential_EVEN : io_config_frame_parity_string = "EVEN";
      `UartParityType_binary_sequential_ODD : io_config_frame_parity_string = "ODD ";
      default : io_config_frame_parity_string = "????";
    endcase
  end
  `endif

  assign clockDivider_tick = (clockDivider_counter == 20'h0);
  always @ (*) begin
    io_write_thrown_valid = io_write_valid;
    if(rx_io_break)begin
      io_write_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_write_ready = io_write_thrown_ready;
    if(rx_io_break)begin
      io_write_ready = 1'b1;
    end
  end

  assign io_write_thrown_payload = io_write_payload;
  assign io_write_thrown_ready = tx_io_write_ready;
  assign io_read_valid = rx_io_read_valid;
  assign io_read_payload = rx_io_read_payload;
  assign io_uart_txd = tx_io_txd;
  assign io_readError = rx_io_error;
  assign _zz_1 = 1'b0;
  assign io_readBreak = rx_io_break;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      clockDivider_counter <= 20'h0;
    end else begin
      clockDivider_counter <= (clockDivider_counter - 20'h00001);
      if(clockDivider_tick)begin
        clockDivider_counter <= io_config_clockDivider;
      end
    end
  end


endmodule

module InterruptCtrl (
  input      [3:0]    io_inputs,
  input      [3:0]    io_clears,
  input      [3:0]    io_masks,
  output     [3:0]    io_pendings,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [3:0]    pendings;

  assign io_pendings = (pendings & io_masks);
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pendings <= 4'b0000;
    end else begin
      pendings <= ((pendings & (~ io_clears)) | io_inputs);
    end
  end


endmodule

//Timer_1 replaced by Timer_1

//Timer_1 replaced by Timer_1

module Timer_1 (
  input               io_tick,
  input               io_clear,
  input      [15:0]   io_limit,
  output              io_full,
  output     [15:0]   io_value,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [0:0]    _zz_1;
  wire       [15:0]   _zz_2;
  reg        [15:0]   counter;
  wire                limitHit;
  reg                 inhibitFull;

  assign _zz_1 = (! limitHit);
  assign _zz_2 = {15'd0, _zz_1};
  assign limitHit = (counter == io_limit);
  assign io_full = ((limitHit && io_tick) && (! inhibitFull));
  assign io_value = counter;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      inhibitFull <= 1'b0;
    end else begin
      if(io_tick)begin
        inhibitFull <= limitHit;
      end
      if(io_clear)begin
        inhibitFull <= 1'b0;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(io_tick)begin
      counter <= (counter + _zz_2);
    end
    if(io_clear)begin
      counter <= 16'h0;
    end
  end


endmodule

module Timer (
  input               io_tick,
  input               io_clear,
  input      [31:0]   io_limit,
  output              io_full,
  output     [31:0]   io_value,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [0:0]    _zz_1;
  wire       [31:0]   _zz_2;
  reg        [31:0]   counter;
  wire                limitHit;
  reg                 inhibitFull;

  assign _zz_1 = (! limitHit);
  assign _zz_2 = {31'd0, _zz_1};
  assign limitHit = (counter == io_limit);
  assign io_full = ((limitHit && io_tick) && (! inhibitFull));
  assign io_value = counter;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      inhibitFull <= 1'b0;
    end else begin
      if(io_tick)begin
        inhibitFull <= limitHit;
      end
      if(io_clear)begin
        inhibitFull <= 1'b0;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(io_tick)begin
      counter <= (counter + _zz_2);
    end
    if(io_clear)begin
      counter <= 32'h0;
    end
  end


endmodule

module Prescaler (
  input               io_clear,
  input      [15:0]   io_limit,
  output              io_overflow,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg        [15:0]   counter;

  assign io_overflow = (counter == io_limit);
  always @ (posedge io_axiClk) begin
    counter <= (counter + 16'h0001);
    if((io_clear || io_overflow))begin
      counter <= 16'h0;
    end
  end


endmodule

module BufferCC_8 (
  input               io_dataIn_clear,
  input               io_dataIn_tick,
  output              io_dataOut_clear,
  output              io_dataOut_tick,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  (* async_reg = "true" *) reg                 buffers_0_clear;
  (* async_reg = "true" *) reg                 buffers_0_tick;
  (* async_reg = "true" *) reg                 buffers_1_clear;
  (* async_reg = "true" *) reg                 buffers_1_tick;

  assign io_dataOut_clear = buffers_1_clear;
  assign io_dataOut_tick = buffers_1_tick;
  always @ (posedge io_axiClk) begin
    buffers_0_clear <= io_dataIn_clear;
    buffers_0_tick <= io_dataIn_tick;
    buffers_1_clear <= buffers_0_clear;
    buffers_1_tick <= buffers_0_tick;
  end


endmodule

//BufferCC_6 replaced by BufferCC_6

module BufferCC_6 (
  input      [31:0]   io_dataIn,
  output     [31:0]   io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  (* async_reg = "true" *) reg        [31:0]   buffers_0;
  (* async_reg = "true" *) reg        [31:0]   buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module StreamFork_1 (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [31:0]   io_input_payload_address,
  input      [31:0]   io_input_payload_data,
  input               io_input_payload_wr,
  input      [1:0]    io_input_payload_size,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [31:0]   io_outputs_0_payload_address,
  output     [31:0]   io_outputs_0_payload_data,
  output              io_outputs_0_payload_wr,
  output     [1:0]    io_outputs_0_payload_size,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [31:0]   io_outputs_1_payload_address,
  output     [31:0]   io_outputs_1_payload_data,
  output              io_outputs_1_payload_wr,
  output     [1:0]    io_outputs_1_payload_size,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_address = io_input_payload_address;
  assign io_outputs_0_payload_data = io_input_payload_data;
  assign io_outputs_0_payload_wr = io_input_payload_wr;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_address = io_input_payload_address;
  assign io_outputs_1_payload_data = io_input_payload_data;
  assign io_outputs_1_payload_wr = io_input_payload_wr;
  assign io_outputs_1_payload_size = io_input_payload_size;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

module SystemDebugger (
  input               io_remote_cmd_valid,
  output              io_remote_cmd_ready,
  input               io_remote_cmd_payload_last,
  input      [0:0]    io_remote_cmd_payload_fragment,
  output              io_remote_rsp_valid,
  input               io_remote_rsp_ready,
  output              io_remote_rsp_payload_error,
  output     [31:0]   io_remote_rsp_payload_data,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output              io_mem_cmd_payload_wr,
  output     [1:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_2;
  wire       [0:0]    _zz_3;
  reg        [66:0]   dispatcher_dataShifter;
  reg                 dispatcher_dataLoaded;
  reg        [7:0]    dispatcher_headerShifter;
  wire       [7:0]    dispatcher_header;
  reg                 dispatcher_headerLoaded;
  reg        [2:0]    dispatcher_counter;
  wire       [66:0]   _zz_1;

  assign _zz_2 = (dispatcher_headerLoaded == 1'b0);
  assign _zz_3 = _zz_1[64 : 64];
  assign dispatcher_header = dispatcher_headerShifter[7 : 0];
  assign io_remote_cmd_ready = (! dispatcher_dataLoaded);
  assign _zz_1 = dispatcher_dataShifter[66 : 0];
  assign io_mem_cmd_payload_address = _zz_1[31 : 0];
  assign io_mem_cmd_payload_data = _zz_1[63 : 32];
  assign io_mem_cmd_payload_wr = _zz_3[0];
  assign io_mem_cmd_payload_size = _zz_1[66 : 65];
  assign io_mem_cmd_valid = (dispatcher_dataLoaded && (dispatcher_header == 8'h0));
  assign io_remote_rsp_valid = io_mem_rsp_valid;
  assign io_remote_rsp_payload_error = 1'b0;
  assign io_remote_rsp_payload_data = io_mem_rsp_payload;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      dispatcher_dataLoaded <= 1'b0;
      dispatcher_headerLoaded <= 1'b0;
      dispatcher_counter <= 3'b000;
    end else begin
      if(io_remote_cmd_valid)begin
        if(_zz_2)begin
          dispatcher_counter <= (dispatcher_counter + 3'b001);
          if((dispatcher_counter == 3'b111))begin
            dispatcher_headerLoaded <= 1'b1;
          end
        end
        if(io_remote_cmd_payload_last)begin
          dispatcher_headerLoaded <= 1'b1;
          dispatcher_dataLoaded <= 1'b1;
          dispatcher_counter <= 3'b000;
        end
      end
      if(((dispatcher_headerLoaded && dispatcher_dataLoaded) && (! (io_mem_cmd_valid && (! io_mem_cmd_ready)))))begin
        dispatcher_headerLoaded <= 1'b0;
        dispatcher_dataLoaded <= 1'b0;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(io_remote_cmd_valid)begin
      if(_zz_2)begin
        dispatcher_headerShifter <= ({io_remote_cmd_payload_fragment,dispatcher_headerShifter} >>> 1);
      end else begin
        dispatcher_dataShifter <= ({io_remote_cmd_payload_fragment,dispatcher_dataShifter} >>> 1);
      end
    end
  end


endmodule

module JtagBridge (
  input               io_jtag_tms,
  input               io_jtag_tdi,
  output              io_jtag_tdo,
  input               io_jtag_tck,
  output              io_remote_cmd_valid,
  input               io_remote_cmd_ready,
  output              io_remote_cmd_payload_last,
  output     [0:0]    io_remote_cmd_payload_fragment,
  input               io_remote_rsp_valid,
  output              io_remote_rsp_ready,
  input               io_remote_rsp_payload_error,
  input      [31:0]   io_remote_rsp_payload_data,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_11;
  wire                flowCCByToggle_1_io_output_valid;
  wire                flowCCByToggle_1_io_output_payload_last;
  wire       [0:0]    flowCCByToggle_1_io_output_payload_fragment;
  wire                system_cmd_valid;
  wire                system_cmd_payload_last;
  wire       [0:0]    system_cmd_payload_fragment;
  (* async_reg = "true" *) reg                 system_rsp_valid;
  (* async_reg = "true" *) reg                 system_rsp_payload_error;
  (* async_reg = "true" *) reg        [31:0]   system_rsp_payload_data;
  wire       `JtagState_binary_sequential_type jtag_tap_fsm_stateNext;
  reg        `JtagState_binary_sequential_type jtag_tap_fsm_state = `JtagState_binary_sequential_RESET;
  reg        `JtagState_binary_sequential_type _zz_1;
  reg        [3:0]    jtag_tap_instruction;
  reg        [3:0]    jtag_tap_instructionShift;
  reg                 jtag_tap_bypass;
  reg                 jtag_tap_tdoUnbufferd;
  reg                 jtag_tap_tdoDr;
  wire                jtag_tap_tdoIr;
  reg                 jtag_tap_tdoUnbufferd_regNext;
  wire                _zz_2;
  reg        [31:0]   _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire       [0:0]    _zz_6;
  reg                 _zz_7;
  reg                 _zz_8;
  wire                _zz_9;
  reg        [33:0]   _zz_10;
  `ifndef SYNTHESIS
  reg [79:0] jtag_tap_fsm_stateNext_string;
  reg [79:0] jtag_tap_fsm_state_string;
  reg [79:0] _zz_1_string;
  `endif


  FlowCCByToggle flowCCByToggle_1 (
    .io_input_valid                (_zz_7                                        ), //i
    .io_input_payload_last         (_zz_11                                       ), //i
    .io_input_payload_fragment     (_zz_6                                        ), //i
    .io_output_valid               (flowCCByToggle_1_io_output_valid             ), //o
    .io_output_payload_last        (flowCCByToggle_1_io_output_payload_last      ), //o
    .io_output_payload_fragment    (flowCCByToggle_1_io_output_payload_fragment  ), //o
    .io_jtag_tck                   (io_jtag_tck                                  ), //i
    .io_axiClk                     (io_axiClk                                    ), //i
    .resetCtrl_axiReset            (resetCtrl_axiReset                           )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(jtag_tap_fsm_stateNext)
      `JtagState_binary_sequential_RESET : jtag_tap_fsm_stateNext_string = "RESET     ";
      `JtagState_binary_sequential_IDLE : jtag_tap_fsm_stateNext_string = "IDLE      ";
      `JtagState_binary_sequential_IR_SELECT : jtag_tap_fsm_stateNext_string = "IR_SELECT ";
      `JtagState_binary_sequential_IR_CAPTURE : jtag_tap_fsm_stateNext_string = "IR_CAPTURE";
      `JtagState_binary_sequential_IR_SHIFT : jtag_tap_fsm_stateNext_string = "IR_SHIFT  ";
      `JtagState_binary_sequential_IR_EXIT1 : jtag_tap_fsm_stateNext_string = "IR_EXIT1  ";
      `JtagState_binary_sequential_IR_PAUSE : jtag_tap_fsm_stateNext_string = "IR_PAUSE  ";
      `JtagState_binary_sequential_IR_EXIT2 : jtag_tap_fsm_stateNext_string = "IR_EXIT2  ";
      `JtagState_binary_sequential_IR_UPDATE : jtag_tap_fsm_stateNext_string = "IR_UPDATE ";
      `JtagState_binary_sequential_DR_SELECT : jtag_tap_fsm_stateNext_string = "DR_SELECT ";
      `JtagState_binary_sequential_DR_CAPTURE : jtag_tap_fsm_stateNext_string = "DR_CAPTURE";
      `JtagState_binary_sequential_DR_SHIFT : jtag_tap_fsm_stateNext_string = "DR_SHIFT  ";
      `JtagState_binary_sequential_DR_EXIT1 : jtag_tap_fsm_stateNext_string = "DR_EXIT1  ";
      `JtagState_binary_sequential_DR_PAUSE : jtag_tap_fsm_stateNext_string = "DR_PAUSE  ";
      `JtagState_binary_sequential_DR_EXIT2 : jtag_tap_fsm_stateNext_string = "DR_EXIT2  ";
      `JtagState_binary_sequential_DR_UPDATE : jtag_tap_fsm_stateNext_string = "DR_UPDATE ";
      default : jtag_tap_fsm_stateNext_string = "??????????";
    endcase
  end
  always @(*) begin
    case(jtag_tap_fsm_state)
      `JtagState_binary_sequential_RESET : jtag_tap_fsm_state_string = "RESET     ";
      `JtagState_binary_sequential_IDLE : jtag_tap_fsm_state_string = "IDLE      ";
      `JtagState_binary_sequential_IR_SELECT : jtag_tap_fsm_state_string = "IR_SELECT ";
      `JtagState_binary_sequential_IR_CAPTURE : jtag_tap_fsm_state_string = "IR_CAPTURE";
      `JtagState_binary_sequential_IR_SHIFT : jtag_tap_fsm_state_string = "IR_SHIFT  ";
      `JtagState_binary_sequential_IR_EXIT1 : jtag_tap_fsm_state_string = "IR_EXIT1  ";
      `JtagState_binary_sequential_IR_PAUSE : jtag_tap_fsm_state_string = "IR_PAUSE  ";
      `JtagState_binary_sequential_IR_EXIT2 : jtag_tap_fsm_state_string = "IR_EXIT2  ";
      `JtagState_binary_sequential_IR_UPDATE : jtag_tap_fsm_state_string = "IR_UPDATE ";
      `JtagState_binary_sequential_DR_SELECT : jtag_tap_fsm_state_string = "DR_SELECT ";
      `JtagState_binary_sequential_DR_CAPTURE : jtag_tap_fsm_state_string = "DR_CAPTURE";
      `JtagState_binary_sequential_DR_SHIFT : jtag_tap_fsm_state_string = "DR_SHIFT  ";
      `JtagState_binary_sequential_DR_EXIT1 : jtag_tap_fsm_state_string = "DR_EXIT1  ";
      `JtagState_binary_sequential_DR_PAUSE : jtag_tap_fsm_state_string = "DR_PAUSE  ";
      `JtagState_binary_sequential_DR_EXIT2 : jtag_tap_fsm_state_string = "DR_EXIT2  ";
      `JtagState_binary_sequential_DR_UPDATE : jtag_tap_fsm_state_string = "DR_UPDATE ";
      default : jtag_tap_fsm_state_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_1)
      `JtagState_binary_sequential_RESET : _zz_1_string = "RESET     ";
      `JtagState_binary_sequential_IDLE : _zz_1_string = "IDLE      ";
      `JtagState_binary_sequential_IR_SELECT : _zz_1_string = "IR_SELECT ";
      `JtagState_binary_sequential_IR_CAPTURE : _zz_1_string = "IR_CAPTURE";
      `JtagState_binary_sequential_IR_SHIFT : _zz_1_string = "IR_SHIFT  ";
      `JtagState_binary_sequential_IR_EXIT1 : _zz_1_string = "IR_EXIT1  ";
      `JtagState_binary_sequential_IR_PAUSE : _zz_1_string = "IR_PAUSE  ";
      `JtagState_binary_sequential_IR_EXIT2 : _zz_1_string = "IR_EXIT2  ";
      `JtagState_binary_sequential_IR_UPDATE : _zz_1_string = "IR_UPDATE ";
      `JtagState_binary_sequential_DR_SELECT : _zz_1_string = "DR_SELECT ";
      `JtagState_binary_sequential_DR_CAPTURE : _zz_1_string = "DR_CAPTURE";
      `JtagState_binary_sequential_DR_SHIFT : _zz_1_string = "DR_SHIFT  ";
      `JtagState_binary_sequential_DR_EXIT1 : _zz_1_string = "DR_EXIT1  ";
      `JtagState_binary_sequential_DR_PAUSE : _zz_1_string = "DR_PAUSE  ";
      `JtagState_binary_sequential_DR_EXIT2 : _zz_1_string = "DR_EXIT2  ";
      `JtagState_binary_sequential_DR_UPDATE : _zz_1_string = "DR_UPDATE ";
      default : _zz_1_string = "??????????";
    endcase
  end
  `endif

  assign io_remote_cmd_valid = system_cmd_valid;
  assign io_remote_cmd_payload_last = system_cmd_payload_last;
  assign io_remote_cmd_payload_fragment = system_cmd_payload_fragment;
  assign io_remote_rsp_ready = 1'b1;
  always @ (*) begin
    case(jtag_tap_fsm_state)
      `JtagState_binary_sequential_IDLE : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_DR_SELECT : `JtagState_binary_sequential_IDLE);
      end
      `JtagState_binary_sequential_IR_SELECT : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_RESET : `JtagState_binary_sequential_IR_CAPTURE);
      end
      `JtagState_binary_sequential_IR_CAPTURE : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_IR_EXIT1 : `JtagState_binary_sequential_IR_SHIFT);
      end
      `JtagState_binary_sequential_IR_SHIFT : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_IR_EXIT1 : `JtagState_binary_sequential_IR_SHIFT);
      end
      `JtagState_binary_sequential_IR_EXIT1 : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_IR_UPDATE : `JtagState_binary_sequential_IR_PAUSE);
      end
      `JtagState_binary_sequential_IR_PAUSE : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_IR_EXIT2 : `JtagState_binary_sequential_IR_PAUSE);
      end
      `JtagState_binary_sequential_IR_EXIT2 : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_IR_UPDATE : `JtagState_binary_sequential_IR_SHIFT);
      end
      `JtagState_binary_sequential_IR_UPDATE : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_DR_SELECT : `JtagState_binary_sequential_IDLE);
      end
      `JtagState_binary_sequential_DR_SELECT : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_IR_SELECT : `JtagState_binary_sequential_DR_CAPTURE);
      end
      `JtagState_binary_sequential_DR_CAPTURE : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_DR_EXIT1 : `JtagState_binary_sequential_DR_SHIFT);
      end
      `JtagState_binary_sequential_DR_SHIFT : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_DR_EXIT1 : `JtagState_binary_sequential_DR_SHIFT);
      end
      `JtagState_binary_sequential_DR_EXIT1 : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_DR_UPDATE : `JtagState_binary_sequential_DR_PAUSE);
      end
      `JtagState_binary_sequential_DR_PAUSE : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_DR_EXIT2 : `JtagState_binary_sequential_DR_PAUSE);
      end
      `JtagState_binary_sequential_DR_EXIT2 : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_DR_UPDATE : `JtagState_binary_sequential_DR_SHIFT);
      end
      `JtagState_binary_sequential_DR_UPDATE : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_DR_SELECT : `JtagState_binary_sequential_IDLE);
      end
      default : begin
        _zz_1 = (io_jtag_tms ? `JtagState_binary_sequential_RESET : `JtagState_binary_sequential_IDLE);
      end
    endcase
  end

  assign jtag_tap_fsm_stateNext = _zz_1;
  always @ (*) begin
    jtag_tap_tdoUnbufferd = jtag_tap_bypass;
    case(jtag_tap_fsm_state)
      `JtagState_binary_sequential_IR_SHIFT : begin
        jtag_tap_tdoUnbufferd = jtag_tap_tdoIr;
      end
      `JtagState_binary_sequential_DR_SHIFT : begin
        jtag_tap_tdoUnbufferd = jtag_tap_tdoDr;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    jtag_tap_tdoDr = 1'b0;
    if(_zz_2)begin
      jtag_tap_tdoDr = _zz_3[0];
    end
    if(_zz_4)begin
      jtag_tap_tdoDr = 1'b0;
    end
    if(_zz_9)begin
      jtag_tap_tdoDr = _zz_10[0];
    end
  end

  assign jtag_tap_tdoIr = jtag_tap_instructionShift[0];
  assign io_jtag_tdo = jtag_tap_tdoUnbufferd_regNext;
  assign _zz_2 = (jtag_tap_instruction == 4'b0001);
  assign _zz_6[0] = _zz_8;
  assign _zz_11 = (! (_zz_4 && _zz_5));
  assign system_cmd_valid = flowCCByToggle_1_io_output_valid;
  assign system_cmd_payload_last = flowCCByToggle_1_io_output_payload_last;
  assign system_cmd_payload_fragment = flowCCByToggle_1_io_output_payload_fragment;
  assign _zz_4 = (jtag_tap_instruction == 4'b0010);
  assign _zz_5 = (jtag_tap_fsm_state == `JtagState_binary_sequential_DR_SHIFT);
  assign _zz_9 = (jtag_tap_instruction == 4'b0011);
  always @ (posedge io_axiClk) begin
    if(io_remote_cmd_valid)begin
      system_rsp_valid <= 1'b0;
    end
    if((io_remote_rsp_valid && io_remote_rsp_ready))begin
      system_rsp_valid <= 1'b1;
      system_rsp_payload_error <= io_remote_rsp_payload_error;
      system_rsp_payload_data <= io_remote_rsp_payload_data;
    end
  end

  always @ (posedge io_jtag_tck) begin
    jtag_tap_fsm_state <= jtag_tap_fsm_stateNext;
    jtag_tap_bypass <= io_jtag_tdi;
    case(jtag_tap_fsm_state)
      `JtagState_binary_sequential_IR_CAPTURE : begin
        jtag_tap_instructionShift <= jtag_tap_instruction;
      end
      `JtagState_binary_sequential_IR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1);
      end
      `JtagState_binary_sequential_IR_UPDATE : begin
        jtag_tap_instruction <= jtag_tap_instructionShift;
      end
      `JtagState_binary_sequential_DR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1);
      end
      default : begin
      end
    endcase
    if(_zz_2)begin
      if((jtag_tap_fsm_state == `JtagState_binary_sequential_DR_SHIFT))begin
        _zz_3 <= ({io_jtag_tdi,_zz_3} >>> 1);
      end
    end
    if((jtag_tap_fsm_state == `JtagState_binary_sequential_RESET))begin
      _zz_3 <= 32'h10001fff;
    end
    if((jtag_tap_fsm_state == `JtagState_binary_sequential_RESET))begin
      jtag_tap_instruction <= 4'b0001;
    end
    _zz_7 <= (_zz_4 && _zz_5);
    _zz_8 <= io_jtag_tdi;
    if(_zz_9)begin
      if((jtag_tap_fsm_state == `JtagState_binary_sequential_DR_CAPTURE))begin
        _zz_10 <= {{system_rsp_payload_data,system_rsp_payload_error},system_rsp_valid};
      end
      if((jtag_tap_fsm_state == `JtagState_binary_sequential_DR_SHIFT))begin
        _zz_10 <= ({io_jtag_tdi,_zz_10} >>> 1);
      end
    end
  end

  always @ (negedge io_jtag_tck) begin
    jtag_tap_tdoUnbufferd_regNext <= jtag_tap_tdoUnbufferd;
  end


endmodule

module SdramCtrl (
  input               io_bus_cmd_valid,
  output reg          io_bus_cmd_ready,
  input      [24:0]   io_bus_cmd_payload_address,
  input               io_bus_cmd_payload_write,
  input      [15:0]   io_bus_cmd_payload_data,
  input      [1:0]    io_bus_cmd_payload_mask,
  input      [3:0]    io_bus_cmd_payload_context_id,
  input               io_bus_cmd_payload_context_last,
  output              io_bus_rsp_valid,
  input               io_bus_rsp_ready,
  output     [15:0]   io_bus_rsp_payload_data,
  output     [3:0]    io_bus_rsp_payload_context_id,
  output              io_bus_rsp_payload_context_last,
  output     [12:0]   io_sdram_ADDR,
  output     [1:0]    io_sdram_BA,
  input      [15:0]   io_sdram_DQ_read,
  output     [15:0]   io_sdram_DQ_write,
  output     [15:0]   io_sdram_DQ_writeEnable,
  output     [1:0]    io_sdram_DQM,
  output              io_sdram_CASn,
  output              io_sdram_CKE,
  output              io_sdram_CSn,
  output              io_sdram_RASn,
  output              io_sdram_WEn,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_18;
  reg                 _zz_19;
  reg        [12:0]   _zz_20;
  reg                 _zz_21;
  reg                 _zz_22;
  wire                chip_backupIn_fifo_io_push_ready;
  wire                chip_backupIn_fifo_io_pop_valid;
  wire       [15:0]   chip_backupIn_fifo_io_pop_payload_data;
  wire       [3:0]    chip_backupIn_fifo_io_pop_payload_context_id;
  wire                chip_backupIn_fifo_io_pop_payload_context_last;
  wire       [1:0]    chip_backupIn_fifo_io_occupancy;
  wire                _zz_23;
  wire                _zz_24;
  wire                _zz_25;
  wire       [0:0]    _zz_26;
  wire       [10:0]   _zz_27;
  wire       [0:0]    _zz_28;
  wire       [2:0]    _zz_29;
  wire                refresh_counter_willIncrement;
  wire                refresh_counter_willClear;
  reg        [10:0]   refresh_counter_valueNext;
  reg        [10:0]   refresh_counter_value;
  wire                refresh_counter_willOverflowIfInc;
  wire                refresh_counter_willOverflow;
  reg                 refresh_pending;
  reg        [13:0]   powerup_counter;
  reg                 powerup_done;
  wire       [13:0]   _zz_1;
  reg                 frontend_banks_0_active;
  reg        [12:0]   frontend_banks_0_row;
  reg                 frontend_banks_1_active;
  reg        [12:0]   frontend_banks_1_row;
  reg                 frontend_banks_2_active;
  reg        [12:0]   frontend_banks_2_row;
  reg                 frontend_banks_3_active;
  reg        [12:0]   frontend_banks_3_row;
  wire       [9:0]    frontend_address_column;
  wire       [1:0]    frontend_address_bank;
  wire       [12:0]   frontend_address_row;
  wire       [24:0]   _zz_2;
  reg                 frontend_rsp_valid;
  wire                frontend_rsp_ready;
  reg        `SdramCtrlBackendTask_binary_sequential_type frontend_rsp_payload_task;
  wire       [1:0]    frontend_rsp_payload_bank;
  reg        [12:0]   frontend_rsp_payload_rowColumn;
  wire       [15:0]   frontend_rsp_payload_data;
  wire       [1:0]    frontend_rsp_payload_mask;
  wire       [3:0]    frontend_rsp_payload_context_id;
  wire                frontend_rsp_payload_context_last;
  reg        `SdramCtrlFrontendState_binary_sequential_type frontend_state;
  reg                 frontend_bootRefreshCounter_willIncrement;
  wire                frontend_bootRefreshCounter_willClear;
  reg        [2:0]    frontend_bootRefreshCounter_valueNext;
  reg        [2:0]    frontend_bootRefreshCounter_value;
  wire                frontend_bootRefreshCounter_willOverflowIfInc;
  wire                frontend_bootRefreshCounter_willOverflow;
  wire                _zz_3;
  wire       [3:0]    _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  wire                bubbleInserter_cmd_valid;
  wire                bubbleInserter_cmd_ready;
  wire       `SdramCtrlBackendTask_binary_sequential_type bubbleInserter_cmd_payload_task;
  wire       [1:0]    bubbleInserter_cmd_payload_bank;
  wire       [12:0]   bubbleInserter_cmd_payload_rowColumn;
  wire       [15:0]   bubbleInserter_cmd_payload_data;
  wire       [1:0]    bubbleInserter_cmd_payload_mask;
  wire       [3:0]    bubbleInserter_cmd_payload_context_id;
  wire                bubbleInserter_cmd_payload_context_last;
  reg                 frontend_rsp_m2sPipe_rValid;
  reg        `SdramCtrlBackendTask_binary_sequential_type frontend_rsp_m2sPipe_rData_task;
  reg        [1:0]    frontend_rsp_m2sPipe_rData_bank;
  reg        [12:0]   frontend_rsp_m2sPipe_rData_rowColumn;
  reg        [15:0]   frontend_rsp_m2sPipe_rData_data;
  reg        [1:0]    frontend_rsp_m2sPipe_rData_mask;
  reg        [3:0]    frontend_rsp_m2sPipe_rData_context_id;
  reg                 frontend_rsp_m2sPipe_rData_context_last;
  wire                bubbleInserter_rsp_valid;
  wire                bubbleInserter_rsp_ready;
  wire       `SdramCtrlBackendTask_binary_sequential_type bubbleInserter_rsp_payload_task;
  wire       [1:0]    bubbleInserter_rsp_payload_bank;
  wire       [12:0]   bubbleInserter_rsp_payload_rowColumn;
  wire       [15:0]   bubbleInserter_rsp_payload_data;
  wire       [1:0]    bubbleInserter_rsp_payload_mask;
  wire       [3:0]    bubbleInserter_rsp_payload_context_id;
  wire                bubbleInserter_rsp_payload_context_last;
  reg                 bubbleInserter_insertBubble;
  wire                _zz_9;
  wire       `SdramCtrlBackendTask_binary_sequential_type _zz_10;
  reg        [0:0]    bubbleInserter_timings_read_counter;
  wire                bubbleInserter_timings_read_busy;
  reg        [2:0]    bubbleInserter_timings_write_counter;
  wire                bubbleInserter_timings_write_busy;
  reg        [2:0]    bubbleInserter_timings_banks_0_precharge_counter;
  wire                bubbleInserter_timings_banks_0_precharge_busy;
  reg        [2:0]    bubbleInserter_timings_banks_0_active_counter;
  wire                bubbleInserter_timings_banks_0_active_busy;
  reg        [2:0]    bubbleInserter_timings_banks_1_precharge_counter;
  wire                bubbleInserter_timings_banks_1_precharge_busy;
  reg        [2:0]    bubbleInserter_timings_banks_1_active_counter;
  wire                bubbleInserter_timings_banks_1_active_busy;
  reg        [2:0]    bubbleInserter_timings_banks_2_precharge_counter;
  wire                bubbleInserter_timings_banks_2_precharge_busy;
  reg        [2:0]    bubbleInserter_timings_banks_2_active_counter;
  wire                bubbleInserter_timings_banks_2_active_busy;
  reg        [2:0]    bubbleInserter_timings_banks_3_precharge_counter;
  wire                bubbleInserter_timings_banks_3_precharge_busy;
  reg        [2:0]    bubbleInserter_timings_banks_3_active_counter;
  wire                bubbleInserter_timings_banks_3_active_busy;
  wire                chip_cmd_valid;
  wire                chip_cmd_ready;
  wire       `SdramCtrlBackendTask_binary_sequential_type chip_cmd_payload_task;
  wire       [1:0]    chip_cmd_payload_bank;
  wire       [12:0]   chip_cmd_payload_rowColumn;
  wire       [15:0]   chip_cmd_payload_data;
  wire       [1:0]    chip_cmd_payload_mask;
  wire       [3:0]    chip_cmd_payload_context_id;
  wire                chip_cmd_payload_context_last;
  reg        [12:0]   chip_sdram_ADDR;
  reg        [1:0]    chip_sdram_BA;
  reg        [15:0]   chip_sdram_DQ_read;
  reg        [15:0]   chip_sdram_DQ_write;
  reg        [15:0]   chip_sdram_DQ_writeEnable;
  reg        [1:0]    chip_sdram_DQM;
  reg                 chip_sdram_CASn;
  reg                 chip_sdram_CKE;
  reg                 chip_sdram_CSn;
  reg                 chip_sdram_RASn;
  reg                 chip_sdram_WEn;
  wire                chip_remoteCke;
  wire                chip_readHistory_0;
  wire                chip_readHistory_1;
  wire                chip_readHistory_2;
  wire                chip_readHistory_3;
  wire                chip_readHistory_4;
  wire                chip_readHistory_5;
  wire                _zz_11;
  reg                 _zz_12;
  reg                 _zz_13;
  reg                 _zz_14;
  reg                 _zz_15;
  reg                 _zz_16;
  reg        [3:0]    chip_cmd_payload_context_delay_1_id;
  reg                 chip_cmd_payload_context_delay_1_last;
  reg        [3:0]    chip_cmd_payload_context_delay_2_id;
  reg                 chip_cmd_payload_context_delay_2_last;
  reg        [3:0]    chip_cmd_payload_context_delay_3_id;
  reg                 chip_cmd_payload_context_delay_3_last;
  reg        [3:0]    chip_cmd_payload_context_delay_4_id;
  reg                 chip_cmd_payload_context_delay_4_last;
  reg        [3:0]    chip_contextDelayed_id;
  reg                 chip_contextDelayed_last;
  wire                chip_sdramCkeNext;
  reg                 chip_sdramCkeInternal;
  reg                 chip_sdramCkeInternal_regNext;
  wire                _zz_17;
  wire                chip_backupIn_valid;
  wire                chip_backupIn_ready;
  wire       [15:0]   chip_backupIn_payload_data;
  wire       [3:0]    chip_backupIn_payload_context_id;
  wire                chip_backupIn_payload_context_last;
  `ifndef SYNTHESIS
  reg [127:0] frontend_rsp_payload_task_string;
  reg [111:0] frontend_state_string;
  reg [127:0] bubbleInserter_cmd_payload_task_string;
  reg [127:0] frontend_rsp_m2sPipe_rData_task_string;
  reg [127:0] bubbleInserter_rsp_payload_task_string;
  reg [127:0] _zz_10_string;
  reg [127:0] chip_cmd_payload_task_string;
  `endif


  assign _zz_23 = (((frontend_banks_0_active || frontend_banks_1_active) || frontend_banks_2_active) || frontend_banks_3_active);
  assign _zz_24 = (_zz_3 && (_zz_20 != frontend_address_row));
  assign _zz_25 = (! _zz_3);
  assign _zz_26 = refresh_counter_willIncrement;
  assign _zz_27 = {10'd0, _zz_26};
  assign _zz_28 = frontend_bootRefreshCounter_willIncrement;
  assign _zz_29 = {2'd0, _zz_28};
  StreamFifoLowLatency chip_backupIn_fifo (
    .io_push_valid                   (chip_backupIn_valid                                ), //i
    .io_push_ready                   (chip_backupIn_fifo_io_push_ready                   ), //o
    .io_push_payload_data            (chip_backupIn_payload_data[15:0]                   ), //i
    .io_push_payload_context_id      (chip_backupIn_payload_context_id[3:0]              ), //i
    .io_push_payload_context_last    (chip_backupIn_payload_context_last                 ), //i
    .io_pop_valid                    (chip_backupIn_fifo_io_pop_valid                    ), //o
    .io_pop_ready                    (io_bus_rsp_ready                                   ), //i
    .io_pop_payload_data             (chip_backupIn_fifo_io_pop_payload_data[15:0]       ), //o
    .io_pop_payload_context_id       (chip_backupIn_fifo_io_pop_payload_context_id[3:0]  ), //o
    .io_pop_payload_context_last     (chip_backupIn_fifo_io_pop_payload_context_last     ), //o
    .io_flush                        (_zz_18                                             ), //i
    .io_occupancy                    (chip_backupIn_fifo_io_occupancy[1:0]               ), //o
    .io_axiClk                       (io_axiClk                                          ), //i
    .resetCtrl_axiReset              (resetCtrl_axiReset                                 )  //i
  );
  always @(*) begin
    case(frontend_address_bank)
      2'b00 : begin
        _zz_19 = frontend_banks_0_active;
        _zz_20 = frontend_banks_0_row;
      end
      2'b01 : begin
        _zz_19 = frontend_banks_1_active;
        _zz_20 = frontend_banks_1_row;
      end
      2'b10 : begin
        _zz_19 = frontend_banks_2_active;
        _zz_20 = frontend_banks_2_row;
      end
      default : begin
        _zz_19 = frontend_banks_3_active;
        _zz_20 = frontend_banks_3_row;
      end
    endcase
  end

  always @(*) begin
    case(bubbleInserter_cmd_payload_bank)
      2'b00 : begin
        _zz_21 = bubbleInserter_timings_banks_0_precharge_busy;
        _zz_22 = bubbleInserter_timings_banks_0_active_busy;
      end
      2'b01 : begin
        _zz_21 = bubbleInserter_timings_banks_1_precharge_busy;
        _zz_22 = bubbleInserter_timings_banks_1_active_busy;
      end
      2'b10 : begin
        _zz_21 = bubbleInserter_timings_banks_2_precharge_busy;
        _zz_22 = bubbleInserter_timings_banks_2_active_busy;
      end
      default : begin
        _zz_21 = bubbleInserter_timings_banks_3_precharge_busy;
        _zz_22 = bubbleInserter_timings_banks_3_active_busy;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(frontend_rsp_payload_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : frontend_rsp_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : frontend_rsp_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : frontend_rsp_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : frontend_rsp_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : frontend_rsp_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : frontend_rsp_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : frontend_rsp_payload_task_string = "WRITE           ";
      default : frontend_rsp_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : frontend_state_string = "BOOT_PRECHARGE";
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : frontend_state_string = "BOOT_REFRESH  ";
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : frontend_state_string = "BOOT_MODE     ";
      `SdramCtrlFrontendState_binary_sequential_RUN : frontend_state_string = "RUN           ";
      default : frontend_state_string = "??????????????";
    endcase
  end
  always @(*) begin
    case(bubbleInserter_cmd_payload_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : bubbleInserter_cmd_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : bubbleInserter_cmd_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : bubbleInserter_cmd_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : bubbleInserter_cmd_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : bubbleInserter_cmd_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : bubbleInserter_cmd_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : bubbleInserter_cmd_payload_task_string = "WRITE           ";
      default : bubbleInserter_cmd_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(frontend_rsp_m2sPipe_rData_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : frontend_rsp_m2sPipe_rData_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : frontend_rsp_m2sPipe_rData_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : frontend_rsp_m2sPipe_rData_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : frontend_rsp_m2sPipe_rData_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : frontend_rsp_m2sPipe_rData_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : frontend_rsp_m2sPipe_rData_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : frontend_rsp_m2sPipe_rData_task_string = "WRITE           ";
      default : frontend_rsp_m2sPipe_rData_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(bubbleInserter_rsp_payload_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : bubbleInserter_rsp_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : bubbleInserter_rsp_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : bubbleInserter_rsp_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : bubbleInserter_rsp_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : bubbleInserter_rsp_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : bubbleInserter_rsp_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : bubbleInserter_rsp_payload_task_string = "WRITE           ";
      default : bubbleInserter_rsp_payload_task_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(_zz_10)
      `SdramCtrlBackendTask_binary_sequential_MODE : _zz_10_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : _zz_10_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : _zz_10_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : _zz_10_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : _zz_10_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : _zz_10_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : _zz_10_string = "WRITE           ";
      default : _zz_10_string = "????????????????";
    endcase
  end
  always @(*) begin
    case(chip_cmd_payload_task)
      `SdramCtrlBackendTask_binary_sequential_MODE : chip_cmd_payload_task_string = "MODE            ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : chip_cmd_payload_task_string = "PRECHARGE_ALL   ";
      `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : chip_cmd_payload_task_string = "PRECHARGE_SINGLE";
      `SdramCtrlBackendTask_binary_sequential_REFRESH : chip_cmd_payload_task_string = "REFRESH         ";
      `SdramCtrlBackendTask_binary_sequential_ACTIVE : chip_cmd_payload_task_string = "ACTIVE          ";
      `SdramCtrlBackendTask_binary_sequential_READ : chip_cmd_payload_task_string = "READ            ";
      `SdramCtrlBackendTask_binary_sequential_WRITE : chip_cmd_payload_task_string = "WRITE           ";
      default : chip_cmd_payload_task_string = "????????????????";
    endcase
  end
  `endif

  assign refresh_counter_willClear = 1'b0;
  assign refresh_counter_willOverflowIfInc = (refresh_counter_value == 11'h40f);
  assign refresh_counter_willOverflow = (refresh_counter_willOverflowIfInc && refresh_counter_willIncrement);
  always @ (*) begin
    if(refresh_counter_willOverflow)begin
      refresh_counter_valueNext = 11'h0;
    end else begin
      refresh_counter_valueNext = (refresh_counter_value + _zz_27);
    end
    if(refresh_counter_willClear)begin
      refresh_counter_valueNext = 11'h0;
    end
  end

  assign refresh_counter_willIncrement = 1'b1;
  assign _zz_1[13 : 0] = 14'h3fff;
  assign _zz_2 = io_bus_cmd_payload_address;
  assign frontend_address_column = _zz_2[9 : 0];
  assign frontend_address_bank = _zz_2[11 : 10];
  assign frontend_address_row = _zz_2[24 : 12];
  always @ (*) begin
    frontend_rsp_valid = 1'b0;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
        if(powerup_done)begin
          frontend_rsp_valid = 1'b1;
        end
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
        frontend_rsp_valid = 1'b1;
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
        frontend_rsp_valid = 1'b1;
      end
      default : begin
        if(refresh_pending)begin
          frontend_rsp_valid = 1'b1;
        end else begin
          if(io_bus_cmd_valid)begin
            frontend_rsp_valid = 1'b1;
          end
        end
      end
    endcase
  end

  always @ (*) begin
    frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_REFRESH;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
        frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL;
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
        frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_REFRESH;
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
        frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_MODE;
      end
      default : begin
        if(refresh_pending)begin
          if(_zz_23)begin
            frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL;
          end else begin
            frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_REFRESH;
          end
        end else begin
          if(io_bus_cmd_valid)begin
            if(_zz_24)begin
              frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE;
            end else begin
              if(_zz_25)begin
                frontend_rsp_payload_task = `SdramCtrlBackendTask_binary_sequential_ACTIVE;
              end else begin
                frontend_rsp_payload_task = (io_bus_cmd_payload_write ? `SdramCtrlBackendTask_binary_sequential_WRITE : `SdramCtrlBackendTask_binary_sequential_READ);
              end
            end
          end
        end
      end
    endcase
  end

  assign frontend_rsp_payload_bank = frontend_address_bank;
  always @ (*) begin
    frontend_rsp_payload_rowColumn = frontend_address_row;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
      end
      default : begin
        if(! refresh_pending) begin
          if(io_bus_cmd_valid)begin
            if(! _zz_24) begin
              if(! _zz_25) begin
                frontend_rsp_payload_rowColumn = {3'd0, frontend_address_column};
              end
            end
          end
        end
      end
    endcase
  end

  assign frontend_rsp_payload_data = io_bus_cmd_payload_data;
  assign frontend_rsp_payload_mask = io_bus_cmd_payload_mask;
  assign frontend_rsp_payload_context_id = io_bus_cmd_payload_context_id;
  assign frontend_rsp_payload_context_last = io_bus_cmd_payload_context_last;
  always @ (*) begin
    io_bus_cmd_ready = 1'b0;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
      end
      default : begin
        if(! refresh_pending) begin
          if(io_bus_cmd_valid)begin
            if(! _zz_24) begin
              if(! _zz_25) begin
                io_bus_cmd_ready = frontend_rsp_ready;
              end
            end
          end
        end
      end
    endcase
  end

  always @ (*) begin
    frontend_bootRefreshCounter_willIncrement = 1'b0;
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
        if(frontend_rsp_ready)begin
          frontend_bootRefreshCounter_willIncrement = 1'b1;
        end
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
      end
      default : begin
      end
    endcase
  end

  assign frontend_bootRefreshCounter_willClear = 1'b0;
  assign frontend_bootRefreshCounter_willOverflowIfInc = (frontend_bootRefreshCounter_value == 3'b111);
  assign frontend_bootRefreshCounter_willOverflow = (frontend_bootRefreshCounter_willOverflowIfInc && frontend_bootRefreshCounter_willIncrement);
  always @ (*) begin
    frontend_bootRefreshCounter_valueNext = (frontend_bootRefreshCounter_value + _zz_29);
    if(frontend_bootRefreshCounter_willClear)begin
      frontend_bootRefreshCounter_valueNext = 3'b000;
    end
  end

  assign _zz_3 = _zz_19;
  assign _zz_4 = ({3'd0,1'b1} <<< frontend_address_bank);
  assign _zz_5 = _zz_4[0];
  assign _zz_6 = _zz_4[1];
  assign _zz_7 = _zz_4[2];
  assign _zz_8 = _zz_4[3];
  assign frontend_rsp_ready = ((1'b1 && (! bubbleInserter_cmd_valid)) || bubbleInserter_cmd_ready);
  assign bubbleInserter_cmd_valid = frontend_rsp_m2sPipe_rValid;
  assign bubbleInserter_cmd_payload_task = frontend_rsp_m2sPipe_rData_task;
  assign bubbleInserter_cmd_payload_bank = frontend_rsp_m2sPipe_rData_bank;
  assign bubbleInserter_cmd_payload_rowColumn = frontend_rsp_m2sPipe_rData_rowColumn;
  assign bubbleInserter_cmd_payload_data = frontend_rsp_m2sPipe_rData_data;
  assign bubbleInserter_cmd_payload_mask = frontend_rsp_m2sPipe_rData_mask;
  assign bubbleInserter_cmd_payload_context_id = frontend_rsp_m2sPipe_rData_context_id;
  assign bubbleInserter_cmd_payload_context_last = frontend_rsp_m2sPipe_rData_context_last;
  always @ (*) begin
    bubbleInserter_insertBubble = 1'b0;
    if(bubbleInserter_cmd_valid)begin
      case(bubbleInserter_cmd_payload_task)
        `SdramCtrlBackendTask_binary_sequential_MODE : begin
          bubbleInserter_insertBubble = bubbleInserter_timings_banks_0_active_busy;
        end
        `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : begin
          bubbleInserter_insertBubble = ({bubbleInserter_timings_banks_3_precharge_busy,{bubbleInserter_timings_banks_2_precharge_busy,{bubbleInserter_timings_banks_1_precharge_busy,bubbleInserter_timings_banks_0_precharge_busy}}} != 4'b0000);
        end
        `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : begin
          bubbleInserter_insertBubble = _zz_21;
        end
        `SdramCtrlBackendTask_binary_sequential_REFRESH : begin
          bubbleInserter_insertBubble = ({bubbleInserter_timings_banks_3_active_busy,{bubbleInserter_timings_banks_2_active_busy,{bubbleInserter_timings_banks_1_active_busy,bubbleInserter_timings_banks_0_active_busy}}} != 4'b0000);
        end
        `SdramCtrlBackendTask_binary_sequential_ACTIVE : begin
          bubbleInserter_insertBubble = _zz_22;
        end
        `SdramCtrlBackendTask_binary_sequential_READ : begin
          bubbleInserter_insertBubble = bubbleInserter_timings_read_busy;
        end
        default : begin
          bubbleInserter_insertBubble = bubbleInserter_timings_write_busy;
        end
      endcase
    end
  end

  assign _zz_9 = (! bubbleInserter_insertBubble);
  assign bubbleInserter_cmd_ready = (bubbleInserter_rsp_ready && _zz_9);
  assign _zz_10 = bubbleInserter_cmd_payload_task;
  assign bubbleInserter_rsp_valid = (bubbleInserter_cmd_valid && _zz_9);
  assign bubbleInserter_rsp_payload_task = _zz_10;
  assign bubbleInserter_rsp_payload_bank = bubbleInserter_cmd_payload_bank;
  assign bubbleInserter_rsp_payload_rowColumn = bubbleInserter_cmd_payload_rowColumn;
  assign bubbleInserter_rsp_payload_data = bubbleInserter_cmd_payload_data;
  assign bubbleInserter_rsp_payload_mask = bubbleInserter_cmd_payload_mask;
  assign bubbleInserter_rsp_payload_context_id = bubbleInserter_cmd_payload_context_id;
  assign bubbleInserter_rsp_payload_context_last = bubbleInserter_cmd_payload_context_last;
  assign bubbleInserter_timings_read_busy = (bubbleInserter_timings_read_counter != 1'b0);
  assign bubbleInserter_timings_write_busy = (bubbleInserter_timings_write_counter != 3'b000);
  assign bubbleInserter_timings_banks_0_precharge_busy = (bubbleInserter_timings_banks_0_precharge_counter != 3'b000);
  assign bubbleInserter_timings_banks_0_active_busy = (bubbleInserter_timings_banks_0_active_counter != 3'b000);
  assign bubbleInserter_timings_banks_1_precharge_busy = (bubbleInserter_timings_banks_1_precharge_counter != 3'b000);
  assign bubbleInserter_timings_banks_1_active_busy = (bubbleInserter_timings_banks_1_active_counter != 3'b000);
  assign bubbleInserter_timings_banks_2_precharge_busy = (bubbleInserter_timings_banks_2_precharge_counter != 3'b000);
  assign bubbleInserter_timings_banks_2_active_busy = (bubbleInserter_timings_banks_2_active_counter != 3'b000);
  assign bubbleInserter_timings_banks_3_precharge_busy = (bubbleInserter_timings_banks_3_precharge_counter != 3'b000);
  assign bubbleInserter_timings_banks_3_active_busy = (bubbleInserter_timings_banks_3_active_counter != 3'b000);
  assign chip_cmd_valid = bubbleInserter_rsp_valid;
  assign bubbleInserter_rsp_ready = chip_cmd_ready;
  assign chip_cmd_payload_task = bubbleInserter_rsp_payload_task;
  assign chip_cmd_payload_bank = bubbleInserter_rsp_payload_bank;
  assign chip_cmd_payload_rowColumn = bubbleInserter_rsp_payload_rowColumn;
  assign chip_cmd_payload_data = bubbleInserter_rsp_payload_data;
  assign chip_cmd_payload_mask = bubbleInserter_rsp_payload_mask;
  assign chip_cmd_payload_context_id = bubbleInserter_rsp_payload_context_id;
  assign chip_cmd_payload_context_last = bubbleInserter_rsp_payload_context_last;
  assign io_sdram_ADDR = chip_sdram_ADDR;
  assign io_sdram_BA = chip_sdram_BA;
  assign io_sdram_DQ_write = chip_sdram_DQ_write;
  assign io_sdram_DQ_writeEnable = chip_sdram_DQ_writeEnable;
  assign io_sdram_DQM = chip_sdram_DQM;
  assign io_sdram_CASn = chip_sdram_CASn;
  assign io_sdram_CKE = chip_sdram_CKE;
  assign io_sdram_CSn = chip_sdram_CSn;
  assign io_sdram_RASn = chip_sdram_RASn;
  assign io_sdram_WEn = chip_sdram_WEn;
  assign _zz_11 = (chip_cmd_valid && ((chip_cmd_payload_task == `SdramCtrlBackendTask_binary_sequential_READ) || 1'b0));
  assign chip_readHistory_0 = _zz_11;
  assign chip_readHistory_1 = _zz_12;
  assign chip_readHistory_2 = _zz_13;
  assign chip_readHistory_3 = _zz_14;
  assign chip_readHistory_4 = _zz_15;
  assign chip_readHistory_5 = _zz_16;
  assign chip_sdramCkeNext = (! (({chip_readHistory_5,{chip_readHistory_4,{chip_readHistory_3,{chip_readHistory_2,{chip_readHistory_1,chip_readHistory_0}}}}} != 6'h0) && (! io_bus_rsp_ready)));
  assign chip_remoteCke = chip_sdramCkeInternal_regNext;
  assign _zz_17 = (! chip_readHistory_1);
  assign chip_backupIn_valid = (chip_readHistory_5 && chip_remoteCke);
  assign chip_backupIn_payload_data = chip_sdram_DQ_read;
  assign chip_backupIn_payload_context_id = chip_contextDelayed_id;
  assign chip_backupIn_payload_context_last = chip_contextDelayed_last;
  assign chip_backupIn_ready = chip_backupIn_fifo_io_push_ready;
  assign io_bus_rsp_valid = chip_backupIn_fifo_io_pop_valid;
  assign io_bus_rsp_payload_data = chip_backupIn_fifo_io_pop_payload_data;
  assign io_bus_rsp_payload_context_id = chip_backupIn_fifo_io_pop_payload_context_id;
  assign io_bus_rsp_payload_context_last = chip_backupIn_fifo_io_pop_payload_context_last;
  assign chip_cmd_ready = chip_remoteCke;
  assign _zz_18 = 1'b0;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      refresh_counter_value <= 11'h0;
      refresh_pending <= 1'b0;
      powerup_counter <= 14'h0;
      powerup_done <= 1'b0;
      frontend_banks_0_active <= 1'b0;
      frontend_banks_1_active <= 1'b0;
      frontend_banks_2_active <= 1'b0;
      frontend_banks_3_active <= 1'b0;
      frontend_state <= `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE;
      frontend_bootRefreshCounter_value <= 3'b000;
      frontend_rsp_m2sPipe_rValid <= 1'b0;
      bubbleInserter_timings_read_counter <= 1'b0;
      bubbleInserter_timings_write_counter <= 3'b000;
      bubbleInserter_timings_banks_0_precharge_counter <= 3'b000;
      bubbleInserter_timings_banks_0_active_counter <= 3'b000;
      bubbleInserter_timings_banks_1_precharge_counter <= 3'b000;
      bubbleInserter_timings_banks_1_active_counter <= 3'b000;
      bubbleInserter_timings_banks_2_precharge_counter <= 3'b000;
      bubbleInserter_timings_banks_2_active_counter <= 3'b000;
      bubbleInserter_timings_banks_3_precharge_counter <= 3'b000;
      bubbleInserter_timings_banks_3_active_counter <= 3'b000;
      _zz_12 <= 1'b0;
      _zz_13 <= 1'b0;
      _zz_14 <= 1'b0;
      _zz_15 <= 1'b0;
      _zz_16 <= 1'b0;
      chip_sdramCkeInternal <= 1'b1;
      chip_sdramCkeInternal_regNext <= 1'b1;
      powerup_counter <= 14'h3f9b;
    end else begin
      refresh_counter_value <= refresh_counter_valueNext;
      if(refresh_counter_willOverflow)begin
        refresh_pending <= 1'b1;
      end
      if((! powerup_done))begin
        powerup_counter <= (powerup_counter + 14'h0001);
        if((powerup_counter == _zz_1))begin
          powerup_done <= 1'b1;
        end
      end
      frontend_bootRefreshCounter_value <= frontend_bootRefreshCounter_valueNext;
      case(frontend_state)
        `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
          if(powerup_done)begin
            if(frontend_rsp_ready)begin
              frontend_state <= `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH;
            end
          end
        end
        `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
          if(frontend_rsp_ready)begin
            if(frontend_bootRefreshCounter_willOverflowIfInc)begin
              frontend_state <= `SdramCtrlFrontendState_binary_sequential_BOOT_MODE;
            end
          end
        end
        `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
          if(frontend_rsp_ready)begin
            frontend_state <= `SdramCtrlFrontendState_binary_sequential_RUN;
          end
        end
        default : begin
          if(refresh_pending)begin
            if(_zz_23)begin
              if(frontend_rsp_ready)begin
                frontend_banks_0_active <= 1'b0;
                frontend_banks_1_active <= 1'b0;
                frontend_banks_2_active <= 1'b0;
                frontend_banks_3_active <= 1'b0;
              end
            end else begin
              if(frontend_rsp_ready)begin
                refresh_pending <= 1'b0;
              end
            end
          end else begin
            if(io_bus_cmd_valid)begin
              if(_zz_24)begin
                if(frontend_rsp_ready)begin
                  if(_zz_5)begin
                    frontend_banks_0_active <= 1'b0;
                  end
                  if(_zz_6)begin
                    frontend_banks_1_active <= 1'b0;
                  end
                  if(_zz_7)begin
                    frontend_banks_2_active <= 1'b0;
                  end
                  if(_zz_8)begin
                    frontend_banks_3_active <= 1'b0;
                  end
                end
              end else begin
                if(_zz_25)begin
                  if(frontend_rsp_ready)begin
                    if(_zz_5)begin
                      frontend_banks_0_active <= 1'b1;
                    end
                    if(_zz_6)begin
                      frontend_banks_1_active <= 1'b1;
                    end
                    if(_zz_7)begin
                      frontend_banks_2_active <= 1'b1;
                    end
                    if(_zz_8)begin
                      frontend_banks_3_active <= 1'b1;
                    end
                  end
                end
              end
            end
          end
        end
      endcase
      if(frontend_rsp_ready)begin
        frontend_rsp_m2sPipe_rValid <= frontend_rsp_valid;
      end
      if((bubbleInserter_timings_read_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_read_counter <= (bubbleInserter_timings_read_counter - 1'b1);
      end
      if((bubbleInserter_timings_write_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_write_counter <= (bubbleInserter_timings_write_counter - 3'b001);
      end
      if((bubbleInserter_timings_banks_0_precharge_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_0_precharge_counter <= (bubbleInserter_timings_banks_0_precharge_counter - 3'b001);
      end
      if((bubbleInserter_timings_banks_0_active_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_0_active_counter <= (bubbleInserter_timings_banks_0_active_counter - 3'b001);
      end
      if((bubbleInserter_timings_banks_1_precharge_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_1_precharge_counter <= (bubbleInserter_timings_banks_1_precharge_counter - 3'b001);
      end
      if((bubbleInserter_timings_banks_1_active_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_1_active_counter <= (bubbleInserter_timings_banks_1_active_counter - 3'b001);
      end
      if((bubbleInserter_timings_banks_2_precharge_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_2_precharge_counter <= (bubbleInserter_timings_banks_2_precharge_counter - 3'b001);
      end
      if((bubbleInserter_timings_banks_2_active_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_2_active_counter <= (bubbleInserter_timings_banks_2_active_counter - 3'b001);
      end
      if((bubbleInserter_timings_banks_3_precharge_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_3_precharge_counter <= (bubbleInserter_timings_banks_3_precharge_counter - 3'b001);
      end
      if((bubbleInserter_timings_banks_3_active_busy && bubbleInserter_rsp_ready))begin
        bubbleInserter_timings_banks_3_active_counter <= (bubbleInserter_timings_banks_3_active_counter - 3'b001);
      end
      if(bubbleInserter_cmd_valid)begin
        case(bubbleInserter_cmd_payload_task)
          `SdramCtrlBackendTask_binary_sequential_MODE : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_banks_0_active_counter <= 3'b001))begin
                bubbleInserter_timings_banks_0_active_counter <= 3'b001;
              end
              if((bubbleInserter_timings_banks_1_active_counter <= 3'b001))begin
                bubbleInserter_timings_banks_1_active_counter <= 3'b001;
              end
              if((bubbleInserter_timings_banks_2_active_counter <= 3'b001))begin
                bubbleInserter_timings_banks_2_active_counter <= 3'b001;
              end
              if((bubbleInserter_timings_banks_3_active_counter <= 3'b001))begin
                bubbleInserter_timings_banks_3_active_counter <= 3'b001;
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_banks_0_active_counter <= 3'b001))begin
                bubbleInserter_timings_banks_0_active_counter <= 3'b001;
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_PRECHARGE_SINGLE : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_cmd_payload_bank == 2'b00))begin
                if((bubbleInserter_timings_banks_0_active_counter <= 3'b001))begin
                  bubbleInserter_timings_banks_0_active_counter <= 3'b001;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b01))begin
                if((bubbleInserter_timings_banks_1_active_counter <= 3'b001))begin
                  bubbleInserter_timings_banks_1_active_counter <= 3'b001;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b10))begin
                if((bubbleInserter_timings_banks_2_active_counter <= 3'b001))begin
                  bubbleInserter_timings_banks_2_active_counter <= 3'b001;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b11))begin
                if((bubbleInserter_timings_banks_3_active_counter <= 3'b001))begin
                  bubbleInserter_timings_banks_3_active_counter <= 3'b001;
                end
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_REFRESH : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_banks_0_active_counter <= 3'b111))begin
                bubbleInserter_timings_banks_0_active_counter <= 3'b111;
              end
              if((bubbleInserter_timings_banks_1_active_counter <= 3'b111))begin
                bubbleInserter_timings_banks_1_active_counter <= 3'b111;
              end
              if((bubbleInserter_timings_banks_2_active_counter <= 3'b111))begin
                bubbleInserter_timings_banks_2_active_counter <= 3'b111;
              end
              if((bubbleInserter_timings_banks_3_active_counter <= 3'b111))begin
                bubbleInserter_timings_banks_3_active_counter <= 3'b111;
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_ACTIVE : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_write_counter <= 3'b001))begin
                bubbleInserter_timings_write_counter <= 3'b001;
              end
              bubbleInserter_timings_read_counter <= 1'b1;
              if((bubbleInserter_cmd_payload_bank == 2'b00))begin
                if((bubbleInserter_timings_banks_0_precharge_counter <= 3'b100))begin
                  bubbleInserter_timings_banks_0_precharge_counter <= 3'b100;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b01))begin
                if((bubbleInserter_timings_banks_1_precharge_counter <= 3'b100))begin
                  bubbleInserter_timings_banks_1_precharge_counter <= 3'b100;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b10))begin
                if((bubbleInserter_timings_banks_2_precharge_counter <= 3'b100))begin
                  bubbleInserter_timings_banks_2_precharge_counter <= 3'b100;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b11))begin
                if((bubbleInserter_timings_banks_3_precharge_counter <= 3'b100))begin
                  bubbleInserter_timings_banks_3_precharge_counter <= 3'b100;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b00))begin
                if((bubbleInserter_timings_banks_0_active_counter <= 3'b111))begin
                  bubbleInserter_timings_banks_0_active_counter <= 3'b111;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b01))begin
                if((bubbleInserter_timings_banks_1_active_counter <= 3'b111))begin
                  bubbleInserter_timings_banks_1_active_counter <= 3'b111;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b10))begin
                if((bubbleInserter_timings_banks_2_active_counter <= 3'b111))begin
                  bubbleInserter_timings_banks_2_active_counter <= 3'b111;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b11))begin
                if((bubbleInserter_timings_banks_3_active_counter <= 3'b111))begin
                  bubbleInserter_timings_banks_3_active_counter <= 3'b111;
                end
              end
            end
          end
          `SdramCtrlBackendTask_binary_sequential_READ : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_timings_write_counter <= 3'b100))begin
                bubbleInserter_timings_write_counter <= 3'b100;
              end
            end
          end
          default : begin
            if(bubbleInserter_cmd_ready)begin
              if((bubbleInserter_cmd_payload_bank == 2'b00))begin
                if((bubbleInserter_timings_banks_0_precharge_counter <= 3'b010))begin
                  bubbleInserter_timings_banks_0_precharge_counter <= 3'b010;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b01))begin
                if((bubbleInserter_timings_banks_1_precharge_counter <= 3'b010))begin
                  bubbleInserter_timings_banks_1_precharge_counter <= 3'b010;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b10))begin
                if((bubbleInserter_timings_banks_2_precharge_counter <= 3'b010))begin
                  bubbleInserter_timings_banks_2_precharge_counter <= 3'b010;
                end
              end
              if((bubbleInserter_cmd_payload_bank == 2'b11))begin
                if((bubbleInserter_timings_banks_3_precharge_counter <= 3'b010))begin
                  bubbleInserter_timings_banks_3_precharge_counter <= 3'b010;
                end
              end
            end
          end
        endcase
      end
      if(chip_remoteCke)begin
        _zz_12 <= _zz_11;
      end
      if(chip_remoteCke)begin
        _zz_13 <= _zz_12;
      end
      if(chip_remoteCke)begin
        _zz_14 <= _zz_13;
      end
      if(chip_remoteCke)begin
        _zz_15 <= _zz_14;
      end
      if(chip_remoteCke)begin
        _zz_16 <= _zz_15;
      end
      chip_sdramCkeInternal <= chip_sdramCkeNext;
      chip_sdramCkeInternal_regNext <= chip_sdramCkeInternal;
    end
  end

  always @ (posedge io_axiClk) begin
    case(frontend_state)
      `SdramCtrlFrontendState_binary_sequential_BOOT_PRECHARGE : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_REFRESH : begin
      end
      `SdramCtrlFrontendState_binary_sequential_BOOT_MODE : begin
      end
      default : begin
        if(! refresh_pending) begin
          if(io_bus_cmd_valid)begin
            if(! _zz_24) begin
              if(_zz_25)begin
                if(_zz_5)begin
                  frontend_banks_0_row <= frontend_address_row;
                end
                if(_zz_6)begin
                  frontend_banks_1_row <= frontend_address_row;
                end
                if(_zz_7)begin
                  frontend_banks_2_row <= frontend_address_row;
                end
                if(_zz_8)begin
                  frontend_banks_3_row <= frontend_address_row;
                end
              end
            end
          end
        end
      end
    endcase
    if(frontend_rsp_ready)begin
      frontend_rsp_m2sPipe_rData_task <= frontend_rsp_payload_task;
      frontend_rsp_m2sPipe_rData_bank <= frontend_rsp_payload_bank;
      frontend_rsp_m2sPipe_rData_rowColumn <= frontend_rsp_payload_rowColumn;
      frontend_rsp_m2sPipe_rData_data <= frontend_rsp_payload_data;
      frontend_rsp_m2sPipe_rData_mask <= frontend_rsp_payload_mask;
      frontend_rsp_m2sPipe_rData_context_id <= frontend_rsp_payload_context_id;
      frontend_rsp_m2sPipe_rData_context_last <= frontend_rsp_payload_context_last;
    end
    if(chip_remoteCke)begin
      chip_cmd_payload_context_delay_1_id <= chip_cmd_payload_context_id;
      chip_cmd_payload_context_delay_1_last <= chip_cmd_payload_context_last;
    end
    if(chip_remoteCke)begin
      chip_cmd_payload_context_delay_2_id <= chip_cmd_payload_context_delay_1_id;
      chip_cmd_payload_context_delay_2_last <= chip_cmd_payload_context_delay_1_last;
    end
    if(chip_remoteCke)begin
      chip_cmd_payload_context_delay_3_id <= chip_cmd_payload_context_delay_2_id;
      chip_cmd_payload_context_delay_3_last <= chip_cmd_payload_context_delay_2_last;
    end
    if(chip_remoteCke)begin
      chip_cmd_payload_context_delay_4_id <= chip_cmd_payload_context_delay_3_id;
      chip_cmd_payload_context_delay_4_last <= chip_cmd_payload_context_delay_3_last;
    end
    if(chip_remoteCke)begin
      chip_contextDelayed_id <= chip_cmd_payload_context_delay_4_id;
      chip_contextDelayed_last <= chip_cmd_payload_context_delay_4_last;
    end
    chip_sdram_CKE <= chip_sdramCkeNext;
    if(chip_remoteCke)begin
      chip_sdram_DQ_read <= io_sdram_DQ_read;
      chip_sdram_CSn <= 1'b0;
      chip_sdram_RASn <= 1'b1;
      chip_sdram_CASn <= 1'b1;
      chip_sdram_WEn <= 1'b1;
      chip_sdram_DQ_write <= chip_cmd_payload_data;
      chip_sdram_DQ_writeEnable <= 16'h0;
      chip_sdram_DQM[0] <= _zz_17;
      chip_sdram_DQM[1] <= _zz_17;
      if(chip_cmd_valid)begin
        case(chip_cmd_payload_task)
          `SdramCtrlBackendTask_binary_sequential_PRECHARGE_ALL : begin
            chip_sdram_ADDR[10] <= 1'b1;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b1;
            chip_sdram_WEn <= 1'b0;
          end
          `SdramCtrlBackendTask_binary_sequential_REFRESH : begin
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b1;
          end
          `SdramCtrlBackendTask_binary_sequential_MODE : begin
            chip_sdram_ADDR <= 13'h0;
            chip_sdram_ADDR[2 : 0] <= 3'b000;
            chip_sdram_ADDR[3] <= 1'b0;
            chip_sdram_ADDR[6 : 4] <= 3'b011;
            chip_sdram_ADDR[8 : 7] <= 2'b00;
            chip_sdram_ADDR[9] <= 1'b0;
            chip_sdram_BA <= 2'b00;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b0;
          end
          `SdramCtrlBackendTask_binary_sequential_ACTIVE : begin
            chip_sdram_ADDR <= chip_cmd_payload_rowColumn;
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b1;
            chip_sdram_WEn <= 1'b1;
          end
          `SdramCtrlBackendTask_binary_sequential_WRITE : begin
            chip_sdram_ADDR <= chip_cmd_payload_rowColumn;
            chip_sdram_ADDR[10] <= 1'b0;
            chip_sdram_DQ_writeEnable <= 16'hffff;
            chip_sdram_DQ_write <= chip_cmd_payload_data;
            chip_sdram_DQM <= (~ chip_cmd_payload_mask);
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b1;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b0;
          end
          `SdramCtrlBackendTask_binary_sequential_READ : begin
            chip_sdram_ADDR <= chip_cmd_payload_rowColumn;
            chip_sdram_ADDR[10] <= 1'b0;
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b1;
            chip_sdram_CASn <= 1'b0;
            chip_sdram_WEn <= 1'b1;
          end
          default : begin
            chip_sdram_BA <= chip_cmd_payload_bank;
            chip_sdram_ADDR[10] <= 1'b0;
            chip_sdram_CSn <= 1'b0;
            chip_sdram_RASn <= 1'b0;
            chip_sdram_CASn <= 1'b1;
            chip_sdram_WEn <= 1'b0;
          end
        endcase
      end
    end
  end


endmodule

module StreamFork (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_wr,
  input      [31:0]   io_input_payload_address,
  input      [31:0]   io_input_payload_data,
  input      [1:0]    io_input_payload_size,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_0_payload_wr,
  output     [31:0]   io_outputs_0_payload_address,
  output     [31:0]   io_outputs_0_payload_data,
  output     [1:0]    io_outputs_0_payload_size,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_1_payload_wr,
  output     [31:0]   io_outputs_1_payload_address,
  output     [31:0]   io_outputs_1_payload_data,
  output     [1:0]    io_outputs_1_payload_size,
  input               io_axiClk,
  input               resetCtrl_coreReset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_wr = io_input_payload_wr;
  assign io_outputs_0_payload_address = io_input_payload_address;
  assign io_outputs_0_payload_data = io_input_payload_data;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_wr = io_input_payload_wr;
  assign io_outputs_1_payload_address = io_input_payload_address;
  assign io_outputs_1_payload_data = io_input_payload_data;
  assign io_outputs_1_payload_size = io_input_payload_size;
  always @ (posedge io_axiClk or posedge resetCtrl_coreReset) begin
    if (resetCtrl_coreReset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

module RiscvCore (
  input               io_interrupt_1,
  input               io_interrupt_0,
  input               io_interrupt_3,
  input               io_interrupt_2,
  output              io_i_cmd_valid,
  input               io_i_cmd_ready,
  output     [31:0]   io_i_cmd_payload_address,
  input               io_i_rsp_valid,
  input      [31:0]   io_i_rsp_payload_data,
  output              io_d_cmd_valid,
  input               io_d_cmd_ready,
  output              io_d_cmd_payload_wr,
  output     [31:0]   io_d_cmd_payload_address,
  output     [31:0]   io_d_cmd_payload_data,
  output     [1:0]    io_d_cmd_payload_size,
  input               io_d_rsp_valid,
  output              io_d_rsp_ready,
  input      [31:0]   io_d_rsp_payload,
  input               _zz_40,
  input               _zz_41,
  input      [7:0]    _zz_42,
  input      [31:0]   _zz_43,
  output reg [31:0]   _zz_44,
  output              _zz_45,
  input               io_axiClk,
  input               resetCtrl_coreReset,
  input               io_debugResetIn
);
  reg                 _zz_47;
  wire                _zz_48;
  reg                 _zz_49;
  reg        [31:0]   _zz_50;
  reg        [31:0]   _zz_51;
  reg        [24:0]   _zz_52;
  wire       [31:0]   execute0_alu_io_result;
  wire       [31:0]   execute0_alu_io_adder;
  wire                DivExtension_divider_io_cmd_ready;
  wire                DivExtension_divider_io_rsp_valid;
  wire       [31:0]   DivExtension_divider_io_rsp_payload_quotient;
  wire       [31:0]   DivExtension_divider_io_rsp_payload_remainder;
  wire                DivExtension_divider_io_rsp_payload_error;
  wire                CachedInstructionBus_cache_io_flush_cmd_ready;
  wire                CachedInstructionBus_cache_io_flush_rsp;
  wire                CachedInstructionBus_cache_io_cpu_cmd_ready;
  wire                CachedInstructionBus_cache_io_cpu_rsp_valid;
  wire       [31:0]   CachedInstructionBus_cache_io_cpu_rsp_payload_address;
  wire       [31:0]   CachedInstructionBus_cache_io_cpu_rsp_payload_data;
  wire                CachedInstructionBus_cache_io_mem_cmd_valid;
  wire       [31:0]   CachedInstructionBus_cache_io_mem_cmd_payload_address;
  wire                _zz_53;
  wire                _zz_54;
  wire                _zz_55;
  wire                _zz_56;
  wire                _zz_57;
  wire                _zz_58;
  wire                _zz_59;
  wire                _zz_60;
  wire                _zz_61;
  wire                _zz_62;
  wire                _zz_63;
  wire                _zz_64;
  wire                _zz_65;
  wire                _zz_66;
  wire                _zz_67;
  wire                _zz_68;
  wire                _zz_69;
  wire                _zz_70;
  wire                _zz_71;
  wire                _zz_72;
  wire                _zz_73;
  wire                _zz_74;
  wire                _zz_75;
  wire                _zz_76;
  wire                _zz_77;
  wire                _zz_78;
  wire       [1:0]    _zz_79;
  wire                _zz_80;
  wire                _zz_81;
  wire                _zz_82;
  wire                _zz_83;
  wire                _zz_84;
  wire       [1:0]    _zz_85;
  wire                _zz_86;
  wire       [6:0]    _zz_87;
  wire       [1:0]    _zz_88;
  wire       [0:0]    _zz_89;
  wire       [1:0]    _zz_90;
  wire       [19:0]   _zz_91;
  wire       [11:0]   _zz_92;
  wire       [31:0]   _zz_93;
  wire       [4:0]    _zz_94;
  wire       [11:0]   _zz_95;
  wire       [11:0]   _zz_96;
  wire       [3:0]    _zz_97;
  wire       [32:0]   _zz_98;
  wire       [2:0]    _zz_99;
  wire       [1:0]    _zz_100;
  wire       [2:0]    _zz_101;
  wire       [1:0]    _zz_102;
  wire       [1:0]    _zz_103;
  wire       [0:0]    _zz_104;
  wire       [1:0]    _zz_105;
  wire       [1:0]    _zz_106;
  wire       [1:0]    _zz_107;
  wire       [1:0]    _zz_108;
  wire       [49:0]   _zz_109;
  wire       [35:0]   _zz_110;
  wire       [49:0]   _zz_111;
  wire       [35:0]   _zz_112;
  wire       [32:0]   _zz_113;
  wire       [35:0]   _zz_114;
  wire       [49:0]   _zz_115;
  wire       [49:0]   _zz_116;
  wire       [65:0]   _zz_117;
  wire       [65:0]   _zz_118;
  wire       [31:0]   _zz_119;
  wire       [31:0]   _zz_120;
  wire       [32:0]   _zz_121;
  wire       [31:0]   _zz_122;
  wire       [32:0]   _zz_123;
  wire                _zz_124;
  wire                _zz_125;
  wire       [6:0]    _zz_126;
  wire       [24:0]   _zz_127;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 iCmd_valid;
  wire                iCmd_ready;
  wire       [31:0]   iCmd_payload_pc;
  wire                iRsp_valid;
  reg                 iRsp_ready;
  wire       [31:0]   iRsp_payload_instruction;
  wire       [31:0]   iRsp_payload_pc;
  wire       [22:0]   iRsp_payload_branchCacheLine_pc;
  wire       [1:0]    iRsp_payload_branchCacheLine_history;
  wire                dCmd_valid;
  wire                dCmd_ready;
  wire                dCmd_payload_wr;
  wire       [31:0]   dCmd_payload_address;
  wire       [31:0]   dCmd_payload_data;
  wire       [1:0]    dCmd_payload_size;
  wire                dRsp_valid;
  reg                 dRsp_ready;
  wire       [31:0]   dRsp_payload;
  reg                 prefetch_halt;
  reg        [31:0]   prefetch_pc;
  reg                 prefetch_inc;
  (* keep *) wire       [31:0]   _zz_3;
  reg        [31:0]   prefetch_pcNext;
  reg                 prefetch_pcLoad_valid;
  reg        [31:0]   prefetch_pcLoad_payload;
  reg                 prefetch_resetDone;
  wire                fetch_outInst_valid;
  wire                fetch_outInst_ready;
  wire       [31:0]   fetch_outInst_payload_pc;
  wire       [31:0]   fetch_outInst_payload_instruction;
  wire       [22:0]   fetch_outInst_payload_branchCacheLine_pc;
  wire       [1:0]    fetch_outInst_payload_branchCacheLine_history;
  reg                 fetch_throwIt;
  reg                 fetch_flush;
  reg                 fetch_pendingPrefetch_incrementIt;
  reg                 fetch_pendingPrefetch_decrementIt;
  wire       [1:0]    fetch_pendingPrefetch_valueNext;
  reg        [1:0]    fetch_pendingPrefetch_value;
  wire                fetch_pendingPrefetch_willOverflowIfInc;
  wire                fetch_pendingPrefetch_willOverflow;
  reg        [1:0]    fetch_pendingPrefetch_finalIncrement;
  reg        [1:0]    fetch_throwRemaining;
  wire                fetch_throwNextIRsp;
  reg                 iRsp_thrown_valid;
  wire                iRsp_thrown_ready;
  wire       [31:0]   iRsp_thrown_payload_instruction;
  wire       [31:0]   iRsp_thrown_payload_pc;
  wire       [22:0]   iRsp_thrown_payload_branchCacheLine_pc;
  wire       [1:0]    iRsp_thrown_payload_branchCacheLine_history;
  wire                decode_inInst_valid;
  reg                 decode_inInst_ready;
  wire       [31:0]   decode_inInst_payload_pc;
  wire       [31:0]   decode_inInst_payload_instruction;
  wire       [22:0]   decode_inInst_payload_branchCacheLine_pc;
  wire       [1:0]    decode_inInst_payload_branchCacheLine_history;
  reg                 fetch_outInst_m2sPipe_rValid;
  reg        [31:0]   fetch_outInst_m2sPipe_rData_pc;
  reg        [31:0]   fetch_outInst_m2sPipe_rData_instruction;
  reg        [22:0]   fetch_outInst_m2sPipe_rData_branchCacheLine_pc;
  reg        [1:0]    fetch_outInst_m2sPipe_rData_branchCacheLine_history;
  reg                 decode_ctrl_instVal;
  reg        `BR_opt_type decode_ctrl_br;
  reg                 decode_ctrl_jmp;
  reg        `OP0_binary_sequential_type decode_ctrl_op0;
  reg        `OP1_binary_sequential_type decode_ctrl_op1;
  reg        `ALU_opt_type decode_ctrl_alu;
  reg        `WB_binary_sequential_type decode_ctrl_wb;
  reg                 decode_ctrl_rfen;
  reg                 decode_ctrl_execute0AluBypass;
  reg                 decode_ctrl_execute1AluBypass;
  wire                decode_ctrl_canInternalyStallWriteBack0;
  reg                 decode_ctrl_men;
  reg        `M_binary_sequential_type decode_ctrl_m;
  wire       `MSK_binary_sequential_type decode_ctrl_msk;
  reg        `CSR_binary_sequential_type decode_ctrl_csr;
  wire       `MFS_binary_sequential_type decode_ctrl_mfs;
  reg                 decode_ctrl_useSrc0;
  reg                 decode_ctrl_useSrc1;
  reg        [2:0]    decode_ctrl_extensionTag;
  reg                 decode_ctrl_fencei;
  wire       `MSK_binary_sequential_type _zz_4;
  wire                _zz_5;
  wire       `ALU_opt_type _zz_6;
  wire       `ALU_opt_type _zz_7;
  wire       `BR_opt_type _zz_8;
  wire       `CSR_binary_sequential_type _zz_9;
  wire                decode_hazard;
  reg                 decode_throwIt;
  reg                 decode_halt;
  wire       [4:0]    decode_addr0;
  wire       [4:0]    decode_addr1;
  wire                decode_addr0IsZero;
  wire                decode_addr1IsZero;
  wire       [31:0]   decode_srcInstruction;
  reg        [4:0]    decode_regFileReadAddress0;
  wire       [4:0]    decode_regFileReadAddress1;
  reg        [31:0]   decode_src0;
  reg        [31:0]   decode_src1;
  wire                _zz_10;
  reg        [10:0]   _zz_11;
  wire                _zz_12;
  reg        [18:0]   _zz_13;
  wire       [31:0]   decode_brjmpImm;
  wire       [31:0]   decode_brJumpPc;
  wire                decode_branchCacheHit;
  wire                decode_staticBranchPrediction;
  reg                 decode_shouldTakeBranch;
  wire                decode_outInst_valid;
  wire                decode_outInst_ready;
  wire       [31:0]   decode_outInst_payload_pc;
  wire       [31:0]   decode_outInst_payload_instruction;
  wire                decode_outInst_payload_ctrl_instVal;
  wire       `BR_opt_type decode_outInst_payload_ctrl_br;
  wire                decode_outInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type decode_outInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type decode_outInst_payload_ctrl_op1;
  wire       `ALU_opt_type decode_outInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type decode_outInst_payload_ctrl_wb;
  wire                decode_outInst_payload_ctrl_rfen;
  wire                decode_outInst_payload_ctrl_execute0AluBypass;
  wire                decode_outInst_payload_ctrl_execute1AluBypass;
  wire                decode_outInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                decode_outInst_payload_ctrl_men;
  wire       `M_binary_sequential_type decode_outInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type decode_outInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type decode_outInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type decode_outInst_payload_ctrl_mfs;
  wire                decode_outInst_payload_ctrl_useSrc0;
  wire                decode_outInst_payload_ctrl_useSrc1;
  wire       [2:0]    decode_outInst_payload_ctrl_extensionTag;
  wire                decode_outInst_payload_ctrl_fencei;
  wire       [31:0]   decode_outInst_payload_src0;
  wire       [31:0]   decode_outInst_payload_src1;
  wire       [31:0]   decode_outInst_payload_alu_op0;
  wire       [31:0]   decode_outInst_payload_alu_op1;
  wire                decode_outInst_payload_doSub;
  wire                decode_outInst_payload_predictorHasBranch;
  wire                decode_outInst_payload_branchHistory_valid;
  wire       [1:0]    decode_outInst_payload_branchHistory_payload;
  wire                decode_pcLoad_valid;
  wire       [31:0]   decode_pcLoad_payload;
  reg                 decode_inInst_thrown_valid;
  wire                decode_inInst_thrown_ready;
  wire       [31:0]   decode_inInst_thrown_payload_pc;
  wire       [31:0]   decode_inInst_thrown_payload_instruction;
  wire       [22:0]   decode_inInst_thrown_payload_branchCacheLine_pc;
  wire       [1:0]    decode_inInst_thrown_payload_branchCacheLine_history;
  wire                _zz_14;
  reg        [31:0]   _zz_15;
  wire                _zz_16;
  reg        [19:0]   _zz_17;
  wire                _zz_18;
  reg        [19:0]   _zz_19;
  reg        [31:0]   _zz_20;
  wire                decode_flush;
  wire                execute0_inInst_valid;
  reg                 execute0_inInst_ready;
  wire       [31:0]   execute0_inInst_payload_pc;
  wire       [31:0]   execute0_inInst_payload_instruction;
  wire                execute0_inInst_payload_ctrl_instVal;
  wire       `BR_opt_type execute0_inInst_payload_ctrl_br;
  wire                execute0_inInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute0_inInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute0_inInst_payload_ctrl_op1;
  wire       `ALU_opt_type execute0_inInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute0_inInst_payload_ctrl_wb;
  wire                execute0_inInst_payload_ctrl_rfen;
  wire                execute0_inInst_payload_ctrl_execute0AluBypass;
  wire                execute0_inInst_payload_ctrl_execute1AluBypass;
  wire                execute0_inInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute0_inInst_payload_ctrl_men;
  wire       `M_binary_sequential_type execute0_inInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute0_inInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute0_inInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute0_inInst_payload_ctrl_mfs;
  wire                execute0_inInst_payload_ctrl_useSrc0;
  wire                execute0_inInst_payload_ctrl_useSrc1;
  wire       [2:0]    execute0_inInst_payload_ctrl_extensionTag;
  wire                execute0_inInst_payload_ctrl_fencei;
  wire       [31:0]   execute0_inInst_payload_src0;
  wire       [31:0]   execute0_inInst_payload_src1;
  wire       [31:0]   execute0_inInst_payload_alu_op0;
  wire       [31:0]   execute0_inInst_payload_alu_op1;
  wire                execute0_inInst_payload_doSub;
  wire                execute0_inInst_payload_predictorHasBranch;
  wire                execute0_inInst_payload_branchHistory_valid;
  wire       [1:0]    execute0_inInst_payload_branchHistory_payload;
  reg                 decode_outInst_m2sPipe_rValid;
  reg        [31:0]   decode_outInst_m2sPipe_rData_pc;
  reg        [31:0]   decode_outInst_m2sPipe_rData_instruction;
  reg                 decode_outInst_m2sPipe_rData_ctrl_instVal;
  reg        `BR_opt_type decode_outInst_m2sPipe_rData_ctrl_br;
  reg                 decode_outInst_m2sPipe_rData_ctrl_jmp;
  reg        `OP0_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_op0;
  reg        `OP1_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_op1;
  reg        `ALU_opt_type decode_outInst_m2sPipe_rData_ctrl_alu;
  reg        `WB_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_wb;
  reg                 decode_outInst_m2sPipe_rData_ctrl_rfen;
  reg                 decode_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  reg                 decode_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  reg                 decode_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  reg                 decode_outInst_m2sPipe_rData_ctrl_men;
  reg        `M_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_m;
  reg        `MSK_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_msk;
  reg        `CSR_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_csr;
  reg        `MFS_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_mfs;
  reg                 decode_outInst_m2sPipe_rData_ctrl_useSrc0;
  reg                 decode_outInst_m2sPipe_rData_ctrl_useSrc1;
  reg        [2:0]    decode_outInst_m2sPipe_rData_ctrl_extensionTag;
  reg                 decode_outInst_m2sPipe_rData_ctrl_fencei;
  reg        [31:0]   decode_outInst_m2sPipe_rData_src0;
  reg        [31:0]   decode_outInst_m2sPipe_rData_src1;
  reg        [31:0]   decode_outInst_m2sPipe_rData_alu_op0;
  reg        [31:0]   decode_outInst_m2sPipe_rData_alu_op1;
  reg                 decode_outInst_m2sPipe_rData_doSub;
  reg                 decode_outInst_m2sPipe_rData_predictorHasBranch;
  reg                 decode_outInst_m2sPipe_rData_branchHistory_valid;
  reg        [1:0]    decode_outInst_m2sPipe_rData_branchHistory_payload;
  reg                 execute0_throwIt;
  reg                 execute0_halt;
  wire                execute0_haltFromDataRequest;
  wire                execute0_br_signed;
  wire       [32:0]   execute0_br_src0Ext;
  wire       [32:0]   execute0_br_src1Ext;
  wire                execute0_br_ltx;
  wire                execute0_br_eq;
  reg        `PC_binary_sequential_type execute0_br_pc_sel;
  wire                execute0_outInst_valid;
  wire                execute0_outInst_ready;
  wire       [31:0]   execute0_outInst_payload_pc;
  wire       [31:0]   execute0_outInst_payload_instruction;
  wire                execute0_outInst_payload_ctrl_instVal;
  wire       `BR_opt_type execute0_outInst_payload_ctrl_br;
  wire                execute0_outInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute0_outInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute0_outInst_payload_ctrl_op1;
  wire       `ALU_opt_type execute0_outInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute0_outInst_payload_ctrl_wb;
  wire                execute0_outInst_payload_ctrl_rfen;
  wire                execute0_outInst_payload_ctrl_execute0AluBypass;
  wire                execute0_outInst_payload_ctrl_execute1AluBypass;
  wire                execute0_outInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute0_outInst_payload_ctrl_men;
  wire       `M_binary_sequential_type execute0_outInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute0_outInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute0_outInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute0_outInst_payload_ctrl_mfs;
  wire                execute0_outInst_payload_ctrl_useSrc0;
  wire                execute0_outInst_payload_ctrl_useSrc1;
  wire       [2:0]    execute0_outInst_payload_ctrl_extensionTag;
  wire                execute0_outInst_payload_ctrl_fencei;
  wire                execute0_outInst_payload_br_eq;
  wire                execute0_outInst_payload_br_ltx;
  wire       [31:0]   execute0_outInst_payload_src1;
  wire       [31:0]   execute0_outInst_payload_result;
  wire       [31:0]   execute0_outInst_payload_adder;
  wire                execute0_outInst_payload_predictorHasBranch;
  wire                execute0_outInst_payload_branchHistory_valid;
  wire       [1:0]    execute0_outInst_payload_branchHistory_payload;
  wire       [31:0]   execute0_outInst_payload_pcPlus4;
  wire       `PC_binary_sequential_type execute0_outInst_payload_pc_sel;
  wire                execute0_outInst_payload_unalignedMemoryAccessException;
  wire                execute0_outInst_payload_needMemRsp;
  wire       [31:0]   execute0_outInst_payload_dCmdAddress;
  reg                 execute0_inInst_thrown_valid;
  wire                execute0_inInst_thrown_ready;
  wire       [31:0]   execute0_inInst_thrown_payload_pc;
  wire       [31:0]   execute0_inInst_thrown_payload_instruction;
  wire                execute0_inInst_thrown_payload_ctrl_instVal;
  wire       `BR_opt_type execute0_inInst_thrown_payload_ctrl_br;
  wire                execute0_inInst_thrown_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute0_inInst_thrown_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute0_inInst_thrown_payload_ctrl_op1;
  wire       `ALU_opt_type execute0_inInst_thrown_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute0_inInst_thrown_payload_ctrl_wb;
  wire                execute0_inInst_thrown_payload_ctrl_rfen;
  wire                execute0_inInst_thrown_payload_ctrl_execute0AluBypass;
  wire                execute0_inInst_thrown_payload_ctrl_execute1AluBypass;
  wire                execute0_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute0_inInst_thrown_payload_ctrl_men;
  wire       `M_binary_sequential_type execute0_inInst_thrown_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute0_inInst_thrown_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute0_inInst_thrown_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute0_inInst_thrown_payload_ctrl_mfs;
  wire                execute0_inInst_thrown_payload_ctrl_useSrc0;
  wire                execute0_inInst_thrown_payload_ctrl_useSrc1;
  wire       [2:0]    execute0_inInst_thrown_payload_ctrl_extensionTag;
  wire                execute0_inInst_thrown_payload_ctrl_fencei;
  wire       [31:0]   execute0_inInst_thrown_payload_src0;
  wire       [31:0]   execute0_inInst_thrown_payload_src1;
  wire       [31:0]   execute0_inInst_thrown_payload_alu_op0;
  wire       [31:0]   execute0_inInst_thrown_payload_alu_op1;
  wire                execute0_inInst_thrown_payload_doSub;
  wire                execute0_inInst_thrown_payload_predictorHasBranch;
  wire                execute0_inInst_thrown_payload_branchHistory_valid;
  wire       [1:0]    execute0_inInst_thrown_payload_branchHistory_payload;
  wire                _zz_21;
  reg                 _zz_22;
  reg        [1:0]    _zz_23;
  reg        [1:0]    execute0_pendingDataCmd_readCount;
  wire                execute0_pendingDataCmd_readCountInc;
  wire                execute0_pendingDataCmd_readCountDec;
  reg                 execute0_flush;
  wire                execute1_inInst_valid;
  reg                 execute1_inInst_ready;
  wire       [31:0]   execute1_inInst_payload_pc;
  wire       [31:0]   execute1_inInst_payload_instruction;
  wire                execute1_inInst_payload_ctrl_instVal;
  wire       `BR_opt_type execute1_inInst_payload_ctrl_br;
  wire                execute1_inInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute1_inInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute1_inInst_payload_ctrl_op1;
  wire       `ALU_opt_type execute1_inInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute1_inInst_payload_ctrl_wb;
  wire                execute1_inInst_payload_ctrl_rfen;
  wire                execute1_inInst_payload_ctrl_execute0AluBypass;
  wire                execute1_inInst_payload_ctrl_execute1AluBypass;
  wire                execute1_inInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute1_inInst_payload_ctrl_men;
  wire       `M_binary_sequential_type execute1_inInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute1_inInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute1_inInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute1_inInst_payload_ctrl_mfs;
  wire                execute1_inInst_payload_ctrl_useSrc0;
  wire                execute1_inInst_payload_ctrl_useSrc1;
  wire       [2:0]    execute1_inInst_payload_ctrl_extensionTag;
  wire                execute1_inInst_payload_ctrl_fencei;
  wire                execute1_inInst_payload_br_eq;
  wire                execute1_inInst_payload_br_ltx;
  wire       [31:0]   execute1_inInst_payload_src1;
  wire       [31:0]   execute1_inInst_payload_result;
  reg        [31:0]   execute1_inInst_payload_adder;
  wire                execute1_inInst_payload_predictorHasBranch;
  wire                execute1_inInst_payload_branchHistory_valid;
  wire       [1:0]    execute1_inInst_payload_branchHistory_payload;
  wire       [31:0]   execute1_inInst_payload_pcPlus4;
  reg        `PC_binary_sequential_type execute1_inInst_payload_pc_sel;
  wire                execute1_inInst_payload_unalignedMemoryAccessException;
  wire                execute1_inInst_payload_needMemRsp;
  wire       [31:0]   execute1_inInst_payload_dCmdAddress;
  reg                 execute0_outInst_m2sPipe_rValid;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_pc;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_instruction;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_instVal;
  reg        `BR_opt_type execute0_outInst_m2sPipe_rData_ctrl_br;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_jmp;
  reg        `OP0_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_op0;
  reg        `OP1_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_op1;
  reg        `ALU_opt_type execute0_outInst_m2sPipe_rData_ctrl_alu;
  reg        `WB_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_wb;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_rfen;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_men;
  reg        `M_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_m;
  reg        `MSK_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_msk;
  reg        `CSR_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_csr;
  reg        `MFS_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_mfs;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_useSrc0;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_useSrc1;
  reg        [2:0]    execute0_outInst_m2sPipe_rData_ctrl_extensionTag;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_fencei;
  reg                 execute0_outInst_m2sPipe_rData_br_eq;
  reg                 execute0_outInst_m2sPipe_rData_br_ltx;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_src1;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_result;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_adder;
  reg                 execute0_outInst_m2sPipe_rData_predictorHasBranch;
  reg                 execute0_outInst_m2sPipe_rData_branchHistory_valid;
  reg        [1:0]    execute0_outInst_m2sPipe_rData_branchHistory_payload;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_pcPlus4;
  reg        `PC_binary_sequential_type execute0_outInst_m2sPipe_rData_pc_sel;
  reg                 execute0_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  reg                 execute0_outInst_m2sPipe_rData_needMemRsp;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_dCmdAddress;
  reg                 execute1_halt;
  reg                 execute1_throwIt;
  wire                execute1_pcLoad_valid;
  wire       [31:0]   execute1_pcLoad_payload;
  reg                 _zz_24;
  reg        [31:0]   _zz_25;
  wire       [22:0]   execute1_line_pc;
  reg        [1:0]    execute1_line_history;
  wire       [2:0]    execute1_newHistory;
  wire                execute1_outInst_valid;
  wire                execute1_outInst_ready;
  wire       [31:0]   execute1_outInst_payload_pc;
  wire       [31:0]   execute1_outInst_payload_instruction;
  wire                execute1_outInst_payload_ctrl_instVal;
  wire       `BR_opt_type execute1_outInst_payload_ctrl_br;
  wire                execute1_outInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute1_outInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute1_outInst_payload_ctrl_op1;
  wire       `ALU_opt_type execute1_outInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute1_outInst_payload_ctrl_wb;
  wire                execute1_outInst_payload_ctrl_rfen;
  wire                execute1_outInst_payload_ctrl_execute0AluBypass;
  wire                execute1_outInst_payload_ctrl_execute1AluBypass;
  wire                execute1_outInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute1_outInst_payload_ctrl_men;
  wire       `M_binary_sequential_type execute1_outInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute1_outInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute1_outInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute1_outInst_payload_ctrl_mfs;
  wire                execute1_outInst_payload_ctrl_useSrc0;
  wire                execute1_outInst_payload_ctrl_useSrc1;
  wire       [2:0]    execute1_outInst_payload_ctrl_extensionTag;
  wire                execute1_outInst_payload_ctrl_fencei;
  reg        [31:0]   execute1_outInst_payload_result;
  wire       [4:0]    execute1_outInst_payload_regFileAddress;
  wire       [31:0]   execute1_outInst_payload_pcPlus4;
  wire                execute1_outInst_payload_unalignedMemoryAccessException;
  wire                execute1_outInst_payload_needMemRsp;
  wire       [31:0]   execute1_outInst_payload_dCmdAddress;
  reg                 execute1_inInst_thrown_valid;
  wire                execute1_inInst_thrown_ready;
  wire       [31:0]   execute1_inInst_thrown_payload_pc;
  wire       [31:0]   execute1_inInst_thrown_payload_instruction;
  wire                execute1_inInst_thrown_payload_ctrl_instVal;
  wire       `BR_opt_type execute1_inInst_thrown_payload_ctrl_br;
  wire                execute1_inInst_thrown_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute1_inInst_thrown_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute1_inInst_thrown_payload_ctrl_op1;
  wire       `ALU_opt_type execute1_inInst_thrown_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute1_inInst_thrown_payload_ctrl_wb;
  wire                execute1_inInst_thrown_payload_ctrl_rfen;
  wire                execute1_inInst_thrown_payload_ctrl_execute0AluBypass;
  wire                execute1_inInst_thrown_payload_ctrl_execute1AluBypass;
  wire                execute1_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute1_inInst_thrown_payload_ctrl_men;
  wire       `M_binary_sequential_type execute1_inInst_thrown_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute1_inInst_thrown_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute1_inInst_thrown_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute1_inInst_thrown_payload_ctrl_mfs;
  wire                execute1_inInst_thrown_payload_ctrl_useSrc0;
  wire                execute1_inInst_thrown_payload_ctrl_useSrc1;
  wire       [2:0]    execute1_inInst_thrown_payload_ctrl_extensionTag;
  wire                execute1_inInst_thrown_payload_ctrl_fencei;
  wire                execute1_inInst_thrown_payload_br_eq;
  wire                execute1_inInst_thrown_payload_br_ltx;
  wire       [31:0]   execute1_inInst_thrown_payload_src1;
  wire       [31:0]   execute1_inInst_thrown_payload_result;
  wire       [31:0]   execute1_inInst_thrown_payload_adder;
  wire                execute1_inInst_thrown_payload_predictorHasBranch;
  wire                execute1_inInst_thrown_payload_branchHistory_valid;
  wire       [1:0]    execute1_inInst_thrown_payload_branchHistory_payload;
  wire       [31:0]   execute1_inInst_thrown_payload_pcPlus4;
  wire       `PC_binary_sequential_type execute1_inInst_thrown_payload_pc_sel;
  wire                execute1_inInst_thrown_payload_unalignedMemoryAccessException;
  wire                execute1_inInst_thrown_payload_needMemRsp;
  wire       [31:0]   execute1_inInst_thrown_payload_dCmdAddress;
  wire                _zz_26;
  reg                 execute1_flush;
  wire                writeBack_inInst_valid;
  reg                 writeBack_inInst_ready;
  wire       [31:0]   writeBack_inInst_payload_pc;
  wire       [31:0]   writeBack_inInst_payload_instruction;
  wire                writeBack_inInst_payload_ctrl_instVal;
  wire       `BR_opt_type writeBack_inInst_payload_ctrl_br;
  wire                writeBack_inInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type writeBack_inInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type writeBack_inInst_payload_ctrl_op1;
  wire       `ALU_opt_type writeBack_inInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type writeBack_inInst_payload_ctrl_wb;
  wire                writeBack_inInst_payload_ctrl_rfen;
  wire                writeBack_inInst_payload_ctrl_execute0AluBypass;
  wire                writeBack_inInst_payload_ctrl_execute1AluBypass;
  wire                writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                writeBack_inInst_payload_ctrl_men;
  wire       `M_binary_sequential_type writeBack_inInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type writeBack_inInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type writeBack_inInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type writeBack_inInst_payload_ctrl_mfs;
  wire                writeBack_inInst_payload_ctrl_useSrc0;
  wire                writeBack_inInst_payload_ctrl_useSrc1;
  wire       [2:0]    writeBack_inInst_payload_ctrl_extensionTag;
  wire                writeBack_inInst_payload_ctrl_fencei;
  reg        [31:0]   writeBack_inInst_payload_result;
  wire       [4:0]    writeBack_inInst_payload_regFileAddress;
  wire       [31:0]   writeBack_inInst_payload_pcPlus4;
  wire                writeBack_inInst_payload_unalignedMemoryAccessException;
  wire                writeBack_inInst_payload_needMemRsp;
  wire       [31:0]   writeBack_inInst_payload_dCmdAddress;
  reg                 execute1_outInst_m2sPipe_rValid;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_pc;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_instruction;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_instVal;
  reg        `BR_opt_type execute1_outInst_m2sPipe_rData_ctrl_br;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_jmp;
  reg        `OP0_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_op0;
  reg        `OP1_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_op1;
  reg        `ALU_opt_type execute1_outInst_m2sPipe_rData_ctrl_alu;
  reg        `WB_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_wb;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_rfen;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_men;
  reg        `M_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_m;
  reg        `MSK_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_msk;
  reg        `CSR_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_csr;
  reg        `MFS_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_mfs;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_useSrc0;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_useSrc1;
  reg        [2:0]    execute1_outInst_m2sPipe_rData_ctrl_extensionTag;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_fencei;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_result;
  reg        [4:0]    execute1_outInst_m2sPipe_rData_regFileAddress;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_pcPlus4;
  reg                 execute1_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  reg                 execute1_outInst_m2sPipe_rData_needMemRsp;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_dCmdAddress;
  reg                 writeBack_throwIt;
  reg                 writeBack_halt;
  reg        [7:0]    writeBack_irq_sources;
  reg        [7:0]    writeBack_irq_mask;
  wire       [7:0]    writeBack_irq_masked;
  reg                 writeBack_irq_inhibate;
  reg                 writeBack_pcLoad_valid;
  reg        [31:0]   writeBack_pcLoad_payload;
  reg                 writeBack_flushMemoryResponse;
  wire                _zz_27;
  reg        [31:0]   _zz_28;
  wire                _zz_29;
  reg        [31:0]   _zz_30;
  reg        [31:0]   writeBack_dataRspFormated;
  reg        [31:0]   writeBack_regFileData;
  wire                writeBack_outInst_valid;
  wire                writeBack_outInst_ready;
  wire       [4:0]    writeBack_outInst_payload_addr;
  wire       [31:0]   writeBack_outInst_payload_data;
  reg                 writeBack_inInst_thrown_valid;
  wire                writeBack_inInst_thrown_ready;
  wire       [31:0]   writeBack_inInst_thrown_payload_pc;
  wire       [31:0]   writeBack_inInst_thrown_payload_instruction;
  wire                writeBack_inInst_thrown_payload_ctrl_instVal;
  wire       `BR_opt_type writeBack_inInst_thrown_payload_ctrl_br;
  wire                writeBack_inInst_thrown_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_op1;
  wire       `ALU_opt_type writeBack_inInst_thrown_payload_ctrl_alu;
  wire       `WB_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_wb;
  wire                writeBack_inInst_thrown_payload_ctrl_rfen;
  wire                writeBack_inInst_thrown_payload_ctrl_execute0AluBypass;
  wire                writeBack_inInst_thrown_payload_ctrl_execute1AluBypass;
  wire                writeBack_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0;
  wire                writeBack_inInst_thrown_payload_ctrl_men;
  wire       `M_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_m;
  wire       `MSK_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_mfs;
  wire                writeBack_inInst_thrown_payload_ctrl_useSrc0;
  wire                writeBack_inInst_thrown_payload_ctrl_useSrc1;
  wire       [2:0]    writeBack_inInst_thrown_payload_ctrl_extensionTag;
  wire                writeBack_inInst_thrown_payload_ctrl_fencei;
  wire       [31:0]   writeBack_inInst_thrown_payload_result;
  wire       [4:0]    writeBack_inInst_thrown_payload_regFileAddress;
  wire       [31:0]   writeBack_inInst_thrown_payload_pcPlus4;
  wire                writeBack_inInst_thrown_payload_unalignedMemoryAccessException;
  wire                writeBack_inInst_thrown_payload_needMemRsp;
  wire       [31:0]   writeBack_inInst_thrown_payload_dCmdAddress;
  wire                _zz_31;
  reg                 writeBack_regFileWrite_valid;
  reg        [4:0]    writeBack_regFileWrite_payload_address;
  reg        [31:0]   writeBack_regFileWrite_payload_data;
  reg                 writeBack_flush;
  wire                writeBackBuffer_inInst_valid;
  wire                writeBackBuffer_inInst_ready;
  wire       [4:0]    writeBackBuffer_inInst_payload_addr;
  wire       [31:0]   writeBackBuffer_inInst_payload_data;
  reg                 writeBack_outInst_m2sPipe_rValid;
  reg        [4:0]    writeBack_outInst_m2sPipe_rData_addr;
  reg        [31:0]   writeBack_outInst_m2sPipe_rData_data;
  reg                 hazardTracker_src0Hazard;
  reg                 hazardTracker_src1Hazard;
  wire                hazardTracker_W2R_addr0Match;
  wire                hazardTracker_W2R_addr1Match;
  wire                hazardTracker_A_addr0Match;
  wire                hazardTracker_A_addr1Match;
  wire                hazardTracker_E1_addr0Match;
  wire                hazardTracker_E1_addr1Match;
  wire                hazardTracker_E0_addr0Match;
  wire                hazardTracker_E0_addr1Match;
  reg                 MulExtension_s1_aSigned;
  reg                 MulExtension_s1_bSigned;
  wire       [31:0]   MulExtension_s1_a;
  wire       [31:0]   MulExtension_s1_b;
  wire       [15:0]   MulExtension_s1_aULow;
  wire       [15:0]   MulExtension_s1_bULow;
  wire       [16:0]   MulExtension_s1_aSLow;
  wire       [16:0]   MulExtension_s1_bSLow;
  wire       [16:0]   MulExtension_s1_aHigh;
  wire       [16:0]   MulExtension_s1_bHigh;
  wire       [31:0]   MulExtension_s1_mul_ll;
  wire       [33:0]   MulExtension_s1_mul_lh;
  wire       [33:0]   MulExtension_s1_mul_hl;
  wire       [33:0]   MulExtension_s1_mul_hh;
  reg        [31:0]   MulExtension_s2_mul_ll;
  reg        [33:0]   MulExtension_s2_mul_lh;
  reg        [33:0]   MulExtension_s2_mul_hl;
  reg        [33:0]   MulExtension_s2_mul_hh;
  wire       [49:0]   MulExtension_s2_low;
  reg        [49:0]   MulExtension_s3_low;
  reg        [33:0]   MulExtension_s3_mul_hh;
  wire       [65:0]   MulExtension_s3_result;
  reg                 DivExtension_rspReady;
  reg        [31:0]   DivExtension_rsp;
  wire       [4:0]    BarrelShifterFullExtension_s1_amplitude;
  reg        [31:0]   _zz_32;
  wire       [31:0]   BarrelShifterFullExtension_s1_reversed;
  wire       [31:0]   BarrelShifterFullExtension_s1_shiftRight;
  reg        [31:0]   BarrelShifterFullExtension_s2_shiftRight;
  reg        [31:0]   _zz_33;
  reg                 SimpleInterrupExtension_inIrq;
  reg        [31:0]   SimpleInterrupExtension_exitPc;
  reg        [7:0]    SimpleInterrupExtension_irqValue;
  reg                 _zz_34;
  reg                 _zz_35;
  wire                CachedInstructionBus_coreIRsp_valid;
  wire                CachedInstructionBus_coreIRsp_ready;
  wire       [31:0]   CachedInstructionBus_coreIRsp_payload_instruction;
  wire       [31:0]   CachedInstructionBus_coreIRsp_payload_pc;
  wire       [22:0]   CachedInstructionBus_coreIRsp_payload_branchCacheLine_pc;
  wire       [1:0]    CachedInstructionBus_coreIRsp_payload_branchCacheLine_history;
  wire                CachedInstructionBus_coreIRsp_s2mPipe_valid;
  wire                CachedInstructionBus_coreIRsp_s2mPipe_ready;
  wire       [31:0]   CachedInstructionBus_coreIRsp_s2mPipe_payload_instruction;
  wire       [31:0]   CachedInstructionBus_coreIRsp_s2mPipe_payload_pc;
  wire       [22:0]   CachedInstructionBus_coreIRsp_s2mPipe_payload_branchCacheLine_pc;
  wire       [1:0]    CachedInstructionBus_coreIRsp_s2mPipe_payload_branchCacheLine_history;
  reg                 CachedInstructionBus_coreIRsp_s2mPipe_rValid;
  reg        [31:0]   CachedInstructionBus_coreIRsp_s2mPipe_rData_instruction;
  reg        [31:0]   CachedInstructionBus_coreIRsp_s2mPipe_rData_pc;
  reg        [22:0]   CachedInstructionBus_coreIRsp_s2mPipe_rData_branchCacheLine_pc;
  reg        [1:0]    CachedInstructionBus_coreIRsp_s2mPipe_rData_branchCacheLine_history;
  wire       [6:0]    _zz_36;
  wire                _zz_37;
  wire       [24:0]   _zz_38;
  reg                 _zz_39;
  reg        [31:0]   DebugExtension_busReadDataReg;
  reg                 DebugExtension_readRegFileReg;
  reg                 DebugExtension_resetIt;
  reg                 DebugExtension_haltIt;
  reg                 DebugExtension_flushIt;
  reg                 DebugExtension_stepIt;
  reg                 iCmd_valid_regNext;
  reg                 DebugExtension_isPipActive;
  reg                 DebugExtension_isPipActive_regNext;
  wire                DebugExtension_isPipBusy;
  wire                DebugExtension_isInBreakpoint;
  reg                 _zz_46;
  reg                 DebugExtension_resetIt_regNext;
  `ifndef SYNTHESIS
  reg [23:0] decode_ctrl_br_string;
  reg [31:0] decode_ctrl_op0_string;
  reg [31:0] decode_ctrl_op1_string;
  reg [39:0] decode_ctrl_alu_string;
  reg [39:0] decode_ctrl_wb_string;
  reg [23:0] decode_ctrl_m_string;
  reg [7:0] decode_ctrl_msk_string;
  reg [7:0] decode_ctrl_csr_string;
  reg [15:0] decode_ctrl_mfs_string;
  reg [7:0] _zz_4_string;
  reg [39:0] _zz_6_string;
  reg [39:0] _zz_7_string;
  reg [23:0] _zz_8_string;
  reg [7:0] _zz_9_string;
  reg [23:0] decode_outInst_payload_ctrl_br_string;
  reg [31:0] decode_outInst_payload_ctrl_op0_string;
  reg [31:0] decode_outInst_payload_ctrl_op1_string;
  reg [39:0] decode_outInst_payload_ctrl_alu_string;
  reg [39:0] decode_outInst_payload_ctrl_wb_string;
  reg [23:0] decode_outInst_payload_ctrl_m_string;
  reg [7:0] decode_outInst_payload_ctrl_msk_string;
  reg [7:0] decode_outInst_payload_ctrl_csr_string;
  reg [15:0] decode_outInst_payload_ctrl_mfs_string;
  reg [23:0] execute0_inInst_payload_ctrl_br_string;
  reg [31:0] execute0_inInst_payload_ctrl_op0_string;
  reg [31:0] execute0_inInst_payload_ctrl_op1_string;
  reg [39:0] execute0_inInst_payload_ctrl_alu_string;
  reg [39:0] execute0_inInst_payload_ctrl_wb_string;
  reg [23:0] execute0_inInst_payload_ctrl_m_string;
  reg [7:0] execute0_inInst_payload_ctrl_msk_string;
  reg [7:0] execute0_inInst_payload_ctrl_csr_string;
  reg [15:0] execute0_inInst_payload_ctrl_mfs_string;
  reg [23:0] decode_outInst_m2sPipe_rData_ctrl_br_string;
  reg [31:0] decode_outInst_m2sPipe_rData_ctrl_op0_string;
  reg [31:0] decode_outInst_m2sPipe_rData_ctrl_op1_string;
  reg [39:0] decode_outInst_m2sPipe_rData_ctrl_alu_string;
  reg [39:0] decode_outInst_m2sPipe_rData_ctrl_wb_string;
  reg [23:0] decode_outInst_m2sPipe_rData_ctrl_m_string;
  reg [7:0] decode_outInst_m2sPipe_rData_ctrl_msk_string;
  reg [7:0] decode_outInst_m2sPipe_rData_ctrl_csr_string;
  reg [15:0] decode_outInst_m2sPipe_rData_ctrl_mfs_string;
  reg [23:0] execute0_br_pc_sel_string;
  reg [23:0] execute0_outInst_payload_ctrl_br_string;
  reg [31:0] execute0_outInst_payload_ctrl_op0_string;
  reg [31:0] execute0_outInst_payload_ctrl_op1_string;
  reg [39:0] execute0_outInst_payload_ctrl_alu_string;
  reg [39:0] execute0_outInst_payload_ctrl_wb_string;
  reg [23:0] execute0_outInst_payload_ctrl_m_string;
  reg [7:0] execute0_outInst_payload_ctrl_msk_string;
  reg [7:0] execute0_outInst_payload_ctrl_csr_string;
  reg [15:0] execute0_outInst_payload_ctrl_mfs_string;
  reg [23:0] execute0_outInst_payload_pc_sel_string;
  reg [23:0] execute0_inInst_thrown_payload_ctrl_br_string;
  reg [31:0] execute0_inInst_thrown_payload_ctrl_op0_string;
  reg [31:0] execute0_inInst_thrown_payload_ctrl_op1_string;
  reg [39:0] execute0_inInst_thrown_payload_ctrl_alu_string;
  reg [39:0] execute0_inInst_thrown_payload_ctrl_wb_string;
  reg [23:0] execute0_inInst_thrown_payload_ctrl_m_string;
  reg [7:0] execute0_inInst_thrown_payload_ctrl_msk_string;
  reg [7:0] execute0_inInst_thrown_payload_ctrl_csr_string;
  reg [15:0] execute0_inInst_thrown_payload_ctrl_mfs_string;
  reg [23:0] execute1_inInst_payload_ctrl_br_string;
  reg [31:0] execute1_inInst_payload_ctrl_op0_string;
  reg [31:0] execute1_inInst_payload_ctrl_op1_string;
  reg [39:0] execute1_inInst_payload_ctrl_alu_string;
  reg [39:0] execute1_inInst_payload_ctrl_wb_string;
  reg [23:0] execute1_inInst_payload_ctrl_m_string;
  reg [7:0] execute1_inInst_payload_ctrl_msk_string;
  reg [7:0] execute1_inInst_payload_ctrl_csr_string;
  reg [15:0] execute1_inInst_payload_ctrl_mfs_string;
  reg [23:0] execute1_inInst_payload_pc_sel_string;
  reg [23:0] execute0_outInst_m2sPipe_rData_ctrl_br_string;
  reg [31:0] execute0_outInst_m2sPipe_rData_ctrl_op0_string;
  reg [31:0] execute0_outInst_m2sPipe_rData_ctrl_op1_string;
  reg [39:0] execute0_outInst_m2sPipe_rData_ctrl_alu_string;
  reg [39:0] execute0_outInst_m2sPipe_rData_ctrl_wb_string;
  reg [23:0] execute0_outInst_m2sPipe_rData_ctrl_m_string;
  reg [7:0] execute0_outInst_m2sPipe_rData_ctrl_msk_string;
  reg [7:0] execute0_outInst_m2sPipe_rData_ctrl_csr_string;
  reg [15:0] execute0_outInst_m2sPipe_rData_ctrl_mfs_string;
  reg [23:0] execute0_outInst_m2sPipe_rData_pc_sel_string;
  reg [23:0] execute1_outInst_payload_ctrl_br_string;
  reg [31:0] execute1_outInst_payload_ctrl_op0_string;
  reg [31:0] execute1_outInst_payload_ctrl_op1_string;
  reg [39:0] execute1_outInst_payload_ctrl_alu_string;
  reg [39:0] execute1_outInst_payload_ctrl_wb_string;
  reg [23:0] execute1_outInst_payload_ctrl_m_string;
  reg [7:0] execute1_outInst_payload_ctrl_msk_string;
  reg [7:0] execute1_outInst_payload_ctrl_csr_string;
  reg [15:0] execute1_outInst_payload_ctrl_mfs_string;
  reg [23:0] execute1_inInst_thrown_payload_ctrl_br_string;
  reg [31:0] execute1_inInst_thrown_payload_ctrl_op0_string;
  reg [31:0] execute1_inInst_thrown_payload_ctrl_op1_string;
  reg [39:0] execute1_inInst_thrown_payload_ctrl_alu_string;
  reg [39:0] execute1_inInst_thrown_payload_ctrl_wb_string;
  reg [23:0] execute1_inInst_thrown_payload_ctrl_m_string;
  reg [7:0] execute1_inInst_thrown_payload_ctrl_msk_string;
  reg [7:0] execute1_inInst_thrown_payload_ctrl_csr_string;
  reg [15:0] execute1_inInst_thrown_payload_ctrl_mfs_string;
  reg [23:0] execute1_inInst_thrown_payload_pc_sel_string;
  reg [23:0] writeBack_inInst_payload_ctrl_br_string;
  reg [31:0] writeBack_inInst_payload_ctrl_op0_string;
  reg [31:0] writeBack_inInst_payload_ctrl_op1_string;
  reg [39:0] writeBack_inInst_payload_ctrl_alu_string;
  reg [39:0] writeBack_inInst_payload_ctrl_wb_string;
  reg [23:0] writeBack_inInst_payload_ctrl_m_string;
  reg [7:0] writeBack_inInst_payload_ctrl_msk_string;
  reg [7:0] writeBack_inInst_payload_ctrl_csr_string;
  reg [15:0] writeBack_inInst_payload_ctrl_mfs_string;
  reg [23:0] execute1_outInst_m2sPipe_rData_ctrl_br_string;
  reg [31:0] execute1_outInst_m2sPipe_rData_ctrl_op0_string;
  reg [31:0] execute1_outInst_m2sPipe_rData_ctrl_op1_string;
  reg [39:0] execute1_outInst_m2sPipe_rData_ctrl_alu_string;
  reg [39:0] execute1_outInst_m2sPipe_rData_ctrl_wb_string;
  reg [23:0] execute1_outInst_m2sPipe_rData_ctrl_m_string;
  reg [7:0] execute1_outInst_m2sPipe_rData_ctrl_msk_string;
  reg [7:0] execute1_outInst_m2sPipe_rData_ctrl_csr_string;
  reg [15:0] execute1_outInst_m2sPipe_rData_ctrl_mfs_string;
  reg [23:0] writeBack_inInst_thrown_payload_ctrl_br_string;
  reg [31:0] writeBack_inInst_thrown_payload_ctrl_op0_string;
  reg [31:0] writeBack_inInst_thrown_payload_ctrl_op1_string;
  reg [39:0] writeBack_inInst_thrown_payload_ctrl_alu_string;
  reg [39:0] writeBack_inInst_thrown_payload_ctrl_wb_string;
  reg [23:0] writeBack_inInst_thrown_payload_ctrl_m_string;
  reg [7:0] writeBack_inInst_thrown_payload_ctrl_msk_string;
  reg [7:0] writeBack_inInst_thrown_payload_ctrl_csr_string;
  reg [15:0] writeBack_inInst_thrown_payload_ctrl_mfs_string;
  `endif

  reg [31:0] regFile [0:31];
  reg [24:0] brancheCache [0:127];

  assign _zz_53 = (fetch_throwIt || fetch_throwNextIRsp);
  assign _zz_54 = ((decode_inInst_payload_instruction & 32'h00000003) == 32'h00000003);
  assign _zz_55 = ((decode_inInst_payload_instruction & 32'h0000005c) == 32'h0);
  assign _zz_56 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000014);
  assign _zz_57 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000034);
  assign _zz_58 = ((decode_inInst_payload_instruction & 32'h0000005c) == 32'h00000010);
  assign _zz_59 = ((decode_inInst_payload_instruction & 32'h00000020) == 32'h0);
  assign _zz_60 = ((! _zz_5) || (((decode_inInst_payload_instruction & 32'hbe000000) == 32'h0) && (! (decode_inInst_payload_instruction[30] && (! decode_inInst_payload_instruction[14])))));
  assign _zz_61 = ((decode_inInst_payload_instruction & 32'hbe000000) == 32'h0);
  assign _zz_62 = (((decode_inInst_payload_instruction[30] == 1'b0) || (decode_inInst_payload_instruction[14 : 12] == 3'b000)) || (decode_inInst_payload_instruction[14 : 12] == 3'b101));
  assign _zz_63 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h0000006c);
  assign _zz_64 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000064);
  assign _zz_65 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000060);
  assign _zz_66 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000070);
  assign _zz_67 = ((decode_inInst_payload_instruction & 32'hfe00407f) == 32'h02000033);
  assign _zz_68 = ((decode_inInst_payload_instruction & 32'hfe00407f) == 32'h02004033);
  assign _zz_69 = ((decode_inInst_payload_instruction & 32'hf800007f) == 32'h0000000b);
  assign _zz_70 = ((decode_inInst_payload_instruction & 32'h00000020) == 32'h0);
  assign _zz_71 = ((! SimpleInterrupExtension_inIrq) && (! writeBack_irq_inhibate));
  assign _zz_72 = ((writeBack_irq_masked & 8'h02) != 8'h0);
  assign _zz_73 = _zz_42[7];
  assign _zz_74 = (writeBack_inInst_valid && writeBack_inInst_payload_ctrl_rfen);
  assign _zz_75 = (execute1_inInst_valid && execute1_outInst_payload_ctrl_rfen);
  assign _zz_76 = (execute0_inInst_valid && execute0_outInst_payload_ctrl_rfen);
  assign _zz_77 = (execute0_inInst_valid && (execute0_inInst_payload_ctrl_extensionTag == 3'b010));
  assign _zz_78 = (execute1_inInst_payload_ctrl_extensionTag == 3'b011);
  assign _zz_79 = execute1_inInst_payload_instruction[26 : 25];
  assign _zz_80 = (execute1_inInst_valid && (execute1_inInst_payload_ctrl_extensionTag == 3'b010));
  assign _zz_81 = (((decode_inInst_valid && (! execute0_inInst_valid)) && (! execute1_inInst_valid)) && (! writeBack_inInst_valid));
  assign _zz_82 = (1'b0 || (! writeBack_outInst_valid));
  assign _zz_83 = ((1'b0 || (! execute1_inInst_payload_ctrl_execute1AluBypass)) || (! execute1_outInst_valid));
  assign _zz_84 = ((1'b0 || (! execute0_inInst_payload_ctrl_execute0AluBypass)) || (! execute0_outInst_valid));
  assign _zz_85 = execute0_inInst_payload_instruction[13 : 12];
  assign _zz_86 = (CachedInstructionBus_coreIRsp_ready && (! CachedInstructionBus_coreIRsp_s2mPipe_ready));
  assign _zz_87 = _zz_42[6 : 0];
  assign _zz_88 = writeBack_inInst_payload_instruction[13 : 12];
  assign _zz_89 = iRsp_valid;
  assign _zz_90 = {1'd0, _zz_89};
  assign _zz_91 = {{{decode_inInst_payload_instruction[31],decode_inInst_payload_instruction[19 : 12]},decode_inInst_payload_instruction[20]},decode_inInst_payload_instruction[30 : 21]};
  assign _zz_92 = {{{decode_inInst_payload_instruction[31],decode_inInst_payload_instruction[7]},decode_inInst_payload_instruction[30 : 25]},decode_inInst_payload_instruction[11 : 8]};
  assign _zz_93 = (decode_inInst_payload_pc + decode_brjmpImm);
  assign _zz_94 = decode_inInst_payload_instruction[19 : 15];
  assign _zz_95 = decode_inInst_payload_instruction[31 : 20];
  assign _zz_96 = {decode_inInst_payload_instruction[31 : 25],decode_inInst_payload_instruction[11 : 7]};
  assign _zz_97 = execute0_inInst_payload_ctrl_br;
  assign _zz_98 = (execute0_br_src0Ext - execute0_br_src1Ext);
  assign _zz_99 = {{1{execute1_inInst_payload_branchHistory_payload[1]}}, execute1_inInst_payload_branchHistory_payload};
  assign _zz_100 = ((execute1_inInst_payload_pc_sel == `PC_binary_sequential_INC) ? _zz_102 : _zz_103);
  assign _zz_101 = {{1{_zz_100[1]}}, _zz_100};
  assign _zz_102 = 2'b01;
  assign _zz_103 = 2'b11;
  assign _zz_104 = (execute1_inInst_payload_pc_sel != `PC_binary_sequential_INC);
  assign _zz_105 = execute1_newHistory[2 : 1];
  assign _zz_106 = 2'b10;
  assign _zz_107 = execute1_newHistory[2 : 1];
  assign _zz_108 = 2'b01;
  assign _zz_109 = ($signed(_zz_111) + $signed(_zz_115));
  assign _zz_110 = ($signed(_zz_112) + $signed(_zz_114));
  assign _zz_111 = {{14{_zz_110[35]}}, _zz_110};
  assign _zz_112 = 36'h0;
  assign _zz_113 = {1'b0,MulExtension_s2_mul_ll};
  assign _zz_114 = {{3{_zz_113[32]}}, _zz_113};
  assign _zz_115 = ({16'd0,MulExtension_s2_mul_lh} <<< 16);
  assign _zz_116 = ({16'd0,MulExtension_s2_mul_hl} <<< 16);
  assign _zz_117 = {{16{MulExtension_s3_low[49]}}, MulExtension_s3_low};
  assign _zz_118 = ({32'd0,MulExtension_s3_mul_hh} <<< 32);
  assign _zz_119 = MulExtension_s3_low[31 : 0];
  assign _zz_120 = MulExtension_s3_result[63 : 32];
  assign _zz_121 = ($signed(_zz_123) >>> BarrelShifterFullExtension_s1_amplitude);
  assign _zz_122 = _zz_121[31 : 0];
  assign _zz_123 = {((execute0_inInst_payload_ctrl_alu == `ALU_opt_SRA_1) && BarrelShifterFullExtension_s1_reversed[31]),BarrelShifterFullExtension_s1_reversed};
  assign _zz_124 = 1'b1;
  assign _zz_125 = 1'b1;
  assign _zz_126 = execute1_inInst_payload_pc[8 : 2];
  assign _zz_127 = {execute1_line_history,execute1_line_pc};
  always @ (posedge io_axiClk) begin
    if(_zz_124) begin
      _zz_50 <= regFile[decode_regFileReadAddress0];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_125) begin
      _zz_51 <= regFile[decode_regFileReadAddress1];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1) begin
      regFile[writeBack_regFileWrite_payload_address] <= writeBack_regFileWrite_payload_data;
    end
  end

integer verilogIndex;

initial begin
  for (verilogIndex = 0; verilogIndex < 128; verilogIndex = verilogIndex + 1)begin
brancheCache[verilogIndex] = -1;
  end
end
  always @ (posedge io_axiClk) begin
    if(_zz_2) begin
      brancheCache[_zz_126] <= _zz_127;
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_37) begin
      _zz_52 <= brancheCache[_zz_36];
    end
  end

  Alu_1 execute0_alu (
    .io_func      (execute0_inInst_payload_ctrl_alu[3:0]  ), //i
    .io_doSub     (execute0_inInst_payload_doSub          ), //i
    .io_src0      (execute0_inInst_payload_alu_op0[31:0]  ), //i
    .io_src1      (execute0_inInst_payload_alu_op1[31:0]  ), //i
    .io_result    (execute0_alu_io_result[31:0]           ), //o
    .io_adder     (execute0_alu_io_adder[31:0]            )  //o
  );
  MixedDivider DivExtension_divider (
    .io_flush                      (execute1_throwIt                                     ), //i
    .io_cmd_valid                  (_zz_47                                               ), //i
    .io_cmd_ready                  (DivExtension_divider_io_cmd_ready                    ), //o
    .io_cmd_payload_numerator      (execute0_inInst_payload_alu_op0[31:0]                ), //i
    .io_cmd_payload_denominator    (execute0_inInst_payload_alu_op1[31:0]                ), //i
    .io_cmd_payload_signed         (_zz_48                                               ), //i
    .io_rsp_valid                  (DivExtension_divider_io_rsp_valid                    ), //o
    .io_rsp_ready                  (_zz_49                                               ), //i
    .io_rsp_payload_quotient       (DivExtension_divider_io_rsp_payload_quotient[31:0]   ), //o
    .io_rsp_payload_remainder      (DivExtension_divider_io_rsp_payload_remainder[31:0]  ), //o
    .io_rsp_payload_error          (DivExtension_divider_io_rsp_payload_error            ), //o
    .io_axiClk                     (io_axiClk                                            ), //i
    .resetCtrl_coreReset           (resetCtrl_coreReset                                  )  //i
  );
  InstructionCache CachedInstructionBus_cache (
    .io_flush_cmd_valid            (_zz_39                                                       ), //i
    .io_flush_cmd_ready            (CachedInstructionBus_cache_io_flush_cmd_ready                ), //o
    .io_flush_rsp                  (CachedInstructionBus_cache_io_flush_rsp                      ), //o
    .io_cpu_cmd_valid              (iCmd_valid                                                   ), //i
    .io_cpu_cmd_ready              (CachedInstructionBus_cache_io_cpu_cmd_ready                  ), //o
    .io_cpu_cmd_payload_address    (iCmd_payload_pc[31:0]                                        ), //i
    .io_cpu_rsp_valid              (CachedInstructionBus_cache_io_cpu_rsp_valid                  ), //o
    .io_cpu_rsp_ready              (CachedInstructionBus_coreIRsp_ready                          ), //i
    .io_cpu_rsp_payload_address    (CachedInstructionBus_cache_io_cpu_rsp_payload_address[31:0]  ), //o
    .io_cpu_rsp_payload_data       (CachedInstructionBus_cache_io_cpu_rsp_payload_data[31:0]     ), //o
    .io_mem_cmd_valid              (CachedInstructionBus_cache_io_mem_cmd_valid                  ), //o
    .io_mem_cmd_ready              (io_i_cmd_ready                                               ), //i
    .io_mem_cmd_payload_address    (CachedInstructionBus_cache_io_mem_cmd_payload_address[31:0]  ), //o
    .io_mem_rsp_valid              (io_i_rsp_valid                                               ), //i
    .io_mem_rsp_payload_data       (io_i_rsp_payload_data[31:0]                                  ), //i
    .io_axiClk                     (io_axiClk                                                    ), //i
    .resetCtrl_coreReset           (resetCtrl_coreReset                                          )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(decode_ctrl_br)
      `BR_opt_N : decode_ctrl_br_string = "N  ";
      `BR_opt_NE : decode_ctrl_br_string = "NE ";
      `BR_opt_EQ : decode_ctrl_br_string = "EQ ";
      `BR_opt_GE : decode_ctrl_br_string = "GE ";
      `BR_opt_GEU : decode_ctrl_br_string = "GEU";
      `BR_opt_LT : decode_ctrl_br_string = "LT ";
      `BR_opt_LTU : decode_ctrl_br_string = "LTU";
      `BR_opt_J : decode_ctrl_br_string = "J  ";
      `BR_opt_JR : decode_ctrl_br_string = "JR ";
      default : decode_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_op0)
      `OP0_binary_sequential_RS : decode_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : decode_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : decode_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : decode_ctrl_op0_string = "IMJB";
      default : decode_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_op1)
      `OP1_binary_sequential_RS : decode_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : decode_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : decode_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : decode_ctrl_op1_string = "PC_1";
      default : decode_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_alu)
      `ALU_opt_ADD : decode_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : decode_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : decode_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : decode_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : decode_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : decode_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : decode_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : decode_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : decode_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : decode_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : decode_ctrl_alu_string = "SRA_1";
      default : decode_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_wb)
      `WB_binary_sequential_ALU_1 : decode_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : decode_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : decode_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : decode_ctrl_wb_string = "CSR1 ";
      default : decode_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_m)
      `M_binary_sequential_XRD : decode_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : decode_ctrl_m_string = "XWR";
      default : decode_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_msk)
      `MSK_binary_sequential_B : decode_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : decode_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : decode_ctrl_msk_string = "W";
      default : decode_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_csr)
      `CSR_binary_sequential_N : decode_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : decode_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : decode_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : decode_ctrl_csr_string = "C";
      default : decode_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_mfs)
      `MFS_binary_sequential_N : decode_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : decode_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : decode_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : decode_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : decode_ctrl_mfs_string = "FD";
      default : decode_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_4)
      `MSK_binary_sequential_B : _zz_4_string = "B";
      `MSK_binary_sequential_H : _zz_4_string = "H";
      `MSK_binary_sequential_W : _zz_4_string = "W";
      default : _zz_4_string = "?";
    endcase
  end
  always @(*) begin
    case(_zz_6)
      `ALU_opt_ADD : _zz_6_string = "ADD  ";
      `ALU_opt_SLL1 : _zz_6_string = "SLL1 ";
      `ALU_opt_SLT : _zz_6_string = "SLT  ";
      `ALU_opt_SLTU : _zz_6_string = "SLTU ";
      `ALU_opt_XOR_1 : _zz_6_string = "XOR_1";
      `ALU_opt_SRL_1 : _zz_6_string = "SRL_1";
      `ALU_opt_OR_1 : _zz_6_string = "OR_1 ";
      `ALU_opt_AND_1 : _zz_6_string = "AND_1";
      `ALU_opt_SUB : _zz_6_string = "SUB  ";
      `ALU_opt_COPY : _zz_6_string = "COPY ";
      `ALU_opt_SRA_1 : _zz_6_string = "SRA_1";
      default : _zz_6_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_7)
      `ALU_opt_ADD : _zz_7_string = "ADD  ";
      `ALU_opt_SLL1 : _zz_7_string = "SLL1 ";
      `ALU_opt_SLT : _zz_7_string = "SLT  ";
      `ALU_opt_SLTU : _zz_7_string = "SLTU ";
      `ALU_opt_XOR_1 : _zz_7_string = "XOR_1";
      `ALU_opt_SRL_1 : _zz_7_string = "SRL_1";
      `ALU_opt_OR_1 : _zz_7_string = "OR_1 ";
      `ALU_opt_AND_1 : _zz_7_string = "AND_1";
      `ALU_opt_SUB : _zz_7_string = "SUB  ";
      `ALU_opt_COPY : _zz_7_string = "COPY ";
      `ALU_opt_SRA_1 : _zz_7_string = "SRA_1";
      default : _zz_7_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_8)
      `BR_opt_N : _zz_8_string = "N  ";
      `BR_opt_NE : _zz_8_string = "NE ";
      `BR_opt_EQ : _zz_8_string = "EQ ";
      `BR_opt_GE : _zz_8_string = "GE ";
      `BR_opt_GEU : _zz_8_string = "GEU";
      `BR_opt_LT : _zz_8_string = "LT ";
      `BR_opt_LTU : _zz_8_string = "LTU";
      `BR_opt_J : _zz_8_string = "J  ";
      `BR_opt_JR : _zz_8_string = "JR ";
      default : _zz_8_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_9)
      `CSR_binary_sequential_N : _zz_9_string = "N";
      `CSR_binary_sequential_W : _zz_9_string = "W";
      `CSR_binary_sequential_S : _zz_9_string = "S";
      `CSR_binary_sequential_C : _zz_9_string = "C";
      default : _zz_9_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_br)
      `BR_opt_N : decode_outInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : decode_outInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : decode_outInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : decode_outInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : decode_outInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : decode_outInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : decode_outInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : decode_outInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : decode_outInst_payload_ctrl_br_string = "JR ";
      default : decode_outInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : decode_outInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : decode_outInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : decode_outInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : decode_outInst_payload_ctrl_op0_string = "IMJB";
      default : decode_outInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : decode_outInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : decode_outInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : decode_outInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : decode_outInst_payload_ctrl_op1_string = "PC_1";
      default : decode_outInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_alu)
      `ALU_opt_ADD : decode_outInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : decode_outInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : decode_outInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : decode_outInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : decode_outInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : decode_outInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : decode_outInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : decode_outInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : decode_outInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : decode_outInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : decode_outInst_payload_ctrl_alu_string = "SRA_1";
      default : decode_outInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : decode_outInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : decode_outInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : decode_outInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : decode_outInst_payload_ctrl_wb_string = "CSR1 ";
      default : decode_outInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_m)
      `M_binary_sequential_XRD : decode_outInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : decode_outInst_payload_ctrl_m_string = "XWR";
      default : decode_outInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : decode_outInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : decode_outInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : decode_outInst_payload_ctrl_msk_string = "W";
      default : decode_outInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : decode_outInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : decode_outInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : decode_outInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : decode_outInst_payload_ctrl_csr_string = "C";
      default : decode_outInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : decode_outInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : decode_outInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : decode_outInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : decode_outInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : decode_outInst_payload_ctrl_mfs_string = "FD";
      default : decode_outInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_br)
      `BR_opt_N : execute0_inInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute0_inInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute0_inInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute0_inInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute0_inInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute0_inInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute0_inInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute0_inInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute0_inInst_payload_ctrl_br_string = "JR ";
      default : execute0_inInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute0_inInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute0_inInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute0_inInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute0_inInst_payload_ctrl_op0_string = "IMJB";
      default : execute0_inInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute0_inInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute0_inInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute0_inInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute0_inInst_payload_ctrl_op1_string = "PC_1";
      default : execute0_inInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_alu)
      `ALU_opt_ADD : execute0_inInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute0_inInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute0_inInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute0_inInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute0_inInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute0_inInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute0_inInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute0_inInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute0_inInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute0_inInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute0_inInst_payload_ctrl_alu_string = "SRA_1";
      default : execute0_inInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute0_inInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute0_inInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute0_inInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute0_inInst_payload_ctrl_wb_string = "CSR1 ";
      default : execute0_inInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_m)
      `M_binary_sequential_XRD : execute0_inInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute0_inInst_payload_ctrl_m_string = "XWR";
      default : execute0_inInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute0_inInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute0_inInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute0_inInst_payload_ctrl_msk_string = "W";
      default : execute0_inInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute0_inInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute0_inInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute0_inInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute0_inInst_payload_ctrl_csr_string = "C";
      default : execute0_inInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute0_inInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute0_inInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute0_inInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute0_inInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute0_inInst_payload_ctrl_mfs_string = "FD";
      default : execute0_inInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_br)
      `BR_opt_N : decode_outInst_m2sPipe_rData_ctrl_br_string = "N  ";
      `BR_opt_NE : decode_outInst_m2sPipe_rData_ctrl_br_string = "NE ";
      `BR_opt_EQ : decode_outInst_m2sPipe_rData_ctrl_br_string = "EQ ";
      `BR_opt_GE : decode_outInst_m2sPipe_rData_ctrl_br_string = "GE ";
      `BR_opt_GEU : decode_outInst_m2sPipe_rData_ctrl_br_string = "GEU";
      `BR_opt_LT : decode_outInst_m2sPipe_rData_ctrl_br_string = "LT ";
      `BR_opt_LTU : decode_outInst_m2sPipe_rData_ctrl_br_string = "LTU";
      `BR_opt_J : decode_outInst_m2sPipe_rData_ctrl_br_string = "J  ";
      `BR_opt_JR : decode_outInst_m2sPipe_rData_ctrl_br_string = "JR ";
      default : decode_outInst_m2sPipe_rData_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_op0)
      `OP0_binary_sequential_RS : decode_outInst_m2sPipe_rData_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : decode_outInst_m2sPipe_rData_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : decode_outInst_m2sPipe_rData_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : decode_outInst_m2sPipe_rData_ctrl_op0_string = "IMJB";
      default : decode_outInst_m2sPipe_rData_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_op1)
      `OP1_binary_sequential_RS : decode_outInst_m2sPipe_rData_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : decode_outInst_m2sPipe_rData_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : decode_outInst_m2sPipe_rData_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : decode_outInst_m2sPipe_rData_ctrl_op1_string = "PC_1";
      default : decode_outInst_m2sPipe_rData_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_alu)
      `ALU_opt_ADD : decode_outInst_m2sPipe_rData_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : decode_outInst_m2sPipe_rData_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SRA_1";
      default : decode_outInst_m2sPipe_rData_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_wb)
      `WB_binary_sequential_ALU_1 : decode_outInst_m2sPipe_rData_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : decode_outInst_m2sPipe_rData_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : decode_outInst_m2sPipe_rData_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : decode_outInst_m2sPipe_rData_ctrl_wb_string = "CSR1 ";
      default : decode_outInst_m2sPipe_rData_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_m)
      `M_binary_sequential_XRD : decode_outInst_m2sPipe_rData_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : decode_outInst_m2sPipe_rData_ctrl_m_string = "XWR";
      default : decode_outInst_m2sPipe_rData_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_msk)
      `MSK_binary_sequential_B : decode_outInst_m2sPipe_rData_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : decode_outInst_m2sPipe_rData_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : decode_outInst_m2sPipe_rData_ctrl_msk_string = "W";
      default : decode_outInst_m2sPipe_rData_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_csr)
      `CSR_binary_sequential_N : decode_outInst_m2sPipe_rData_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : decode_outInst_m2sPipe_rData_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : decode_outInst_m2sPipe_rData_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : decode_outInst_m2sPipe_rData_ctrl_csr_string = "C";
      default : decode_outInst_m2sPipe_rData_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_mfs)
      `MFS_binary_sequential_N : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "FD";
      default : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute0_br_pc_sel)
      `PC_binary_sequential_INC : execute0_br_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute0_br_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute0_br_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute0_br_pc_sel_string = "JR ";
      default : execute0_br_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_br)
      `BR_opt_N : execute0_outInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute0_outInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute0_outInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute0_outInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute0_outInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute0_outInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute0_outInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute0_outInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute0_outInst_payload_ctrl_br_string = "JR ";
      default : execute0_outInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute0_outInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute0_outInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute0_outInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute0_outInst_payload_ctrl_op0_string = "IMJB";
      default : execute0_outInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute0_outInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute0_outInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute0_outInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute0_outInst_payload_ctrl_op1_string = "PC_1";
      default : execute0_outInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_alu)
      `ALU_opt_ADD : execute0_outInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute0_outInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute0_outInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute0_outInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute0_outInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute0_outInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute0_outInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute0_outInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute0_outInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute0_outInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute0_outInst_payload_ctrl_alu_string = "SRA_1";
      default : execute0_outInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute0_outInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute0_outInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute0_outInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute0_outInst_payload_ctrl_wb_string = "CSR1 ";
      default : execute0_outInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_m)
      `M_binary_sequential_XRD : execute0_outInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute0_outInst_payload_ctrl_m_string = "XWR";
      default : execute0_outInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute0_outInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute0_outInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute0_outInst_payload_ctrl_msk_string = "W";
      default : execute0_outInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute0_outInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute0_outInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute0_outInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute0_outInst_payload_ctrl_csr_string = "C";
      default : execute0_outInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute0_outInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute0_outInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute0_outInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute0_outInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute0_outInst_payload_ctrl_mfs_string = "FD";
      default : execute0_outInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_pc_sel)
      `PC_binary_sequential_INC : execute0_outInst_payload_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute0_outInst_payload_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute0_outInst_payload_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute0_outInst_payload_pc_sel_string = "JR ";
      default : execute0_outInst_payload_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_br)
      `BR_opt_N : execute0_inInst_thrown_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute0_inInst_thrown_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute0_inInst_thrown_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute0_inInst_thrown_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute0_inInst_thrown_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute0_inInst_thrown_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute0_inInst_thrown_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute0_inInst_thrown_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute0_inInst_thrown_payload_ctrl_br_string = "JR ";
      default : execute0_inInst_thrown_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute0_inInst_thrown_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute0_inInst_thrown_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute0_inInst_thrown_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute0_inInst_thrown_payload_ctrl_op0_string = "IMJB";
      default : execute0_inInst_thrown_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute0_inInst_thrown_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute0_inInst_thrown_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute0_inInst_thrown_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute0_inInst_thrown_payload_ctrl_op1_string = "PC_1";
      default : execute0_inInst_thrown_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_alu)
      `ALU_opt_ADD : execute0_inInst_thrown_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute0_inInst_thrown_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute0_inInst_thrown_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute0_inInst_thrown_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute0_inInst_thrown_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute0_inInst_thrown_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "SRA_1";
      default : execute0_inInst_thrown_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute0_inInst_thrown_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute0_inInst_thrown_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute0_inInst_thrown_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute0_inInst_thrown_payload_ctrl_wb_string = "CSR1 ";
      default : execute0_inInst_thrown_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_m)
      `M_binary_sequential_XRD : execute0_inInst_thrown_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute0_inInst_thrown_payload_ctrl_m_string = "XWR";
      default : execute0_inInst_thrown_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute0_inInst_thrown_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute0_inInst_thrown_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute0_inInst_thrown_payload_ctrl_msk_string = "W";
      default : execute0_inInst_thrown_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute0_inInst_thrown_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute0_inInst_thrown_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute0_inInst_thrown_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute0_inInst_thrown_payload_ctrl_csr_string = "C";
      default : execute0_inInst_thrown_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute0_inInst_thrown_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute0_inInst_thrown_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute0_inInst_thrown_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute0_inInst_thrown_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute0_inInst_thrown_payload_ctrl_mfs_string = "FD";
      default : execute0_inInst_thrown_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_br)
      `BR_opt_N : execute1_inInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute1_inInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute1_inInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute1_inInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute1_inInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute1_inInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute1_inInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute1_inInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute1_inInst_payload_ctrl_br_string = "JR ";
      default : execute1_inInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute1_inInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute1_inInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute1_inInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute1_inInst_payload_ctrl_op0_string = "IMJB";
      default : execute1_inInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute1_inInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute1_inInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute1_inInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute1_inInst_payload_ctrl_op1_string = "PC_1";
      default : execute1_inInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_alu)
      `ALU_opt_ADD : execute1_inInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute1_inInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute1_inInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute1_inInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute1_inInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute1_inInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute1_inInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute1_inInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute1_inInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute1_inInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute1_inInst_payload_ctrl_alu_string = "SRA_1";
      default : execute1_inInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute1_inInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute1_inInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute1_inInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute1_inInst_payload_ctrl_wb_string = "CSR1 ";
      default : execute1_inInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_m)
      `M_binary_sequential_XRD : execute1_inInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute1_inInst_payload_ctrl_m_string = "XWR";
      default : execute1_inInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute1_inInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute1_inInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute1_inInst_payload_ctrl_msk_string = "W";
      default : execute1_inInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute1_inInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute1_inInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute1_inInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute1_inInst_payload_ctrl_csr_string = "C";
      default : execute1_inInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute1_inInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute1_inInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute1_inInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute1_inInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute1_inInst_payload_ctrl_mfs_string = "FD";
      default : execute1_inInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_pc_sel)
      `PC_binary_sequential_INC : execute1_inInst_payload_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute1_inInst_payload_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute1_inInst_payload_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute1_inInst_payload_pc_sel_string = "JR ";
      default : execute1_inInst_payload_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_br)
      `BR_opt_N : execute0_outInst_m2sPipe_rData_ctrl_br_string = "N  ";
      `BR_opt_NE : execute0_outInst_m2sPipe_rData_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute0_outInst_m2sPipe_rData_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute0_outInst_m2sPipe_rData_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute0_outInst_m2sPipe_rData_ctrl_br_string = "GEU";
      `BR_opt_LT : execute0_outInst_m2sPipe_rData_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute0_outInst_m2sPipe_rData_ctrl_br_string = "LTU";
      `BR_opt_J : execute0_outInst_m2sPipe_rData_ctrl_br_string = "J  ";
      `BR_opt_JR : execute0_outInst_m2sPipe_rData_ctrl_br_string = "JR ";
      default : execute0_outInst_m2sPipe_rData_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_op0)
      `OP0_binary_sequential_RS : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "IMJB";
      default : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_op1)
      `OP1_binary_sequential_RS : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "PC_1";
      default : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_alu)
      `ALU_opt_ADD : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SRA_1";
      default : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "CSR1 ";
      default : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_m)
      `M_binary_sequential_XRD : execute0_outInst_m2sPipe_rData_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute0_outInst_m2sPipe_rData_ctrl_m_string = "XWR";
      default : execute0_outInst_m2sPipe_rData_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_msk)
      `MSK_binary_sequential_B : execute0_outInst_m2sPipe_rData_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute0_outInst_m2sPipe_rData_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute0_outInst_m2sPipe_rData_ctrl_msk_string = "W";
      default : execute0_outInst_m2sPipe_rData_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_csr)
      `CSR_binary_sequential_N : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "C";
      default : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_mfs)
      `MFS_binary_sequential_N : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "FD";
      default : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_pc_sel)
      `PC_binary_sequential_INC : execute0_outInst_m2sPipe_rData_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute0_outInst_m2sPipe_rData_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute0_outInst_m2sPipe_rData_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute0_outInst_m2sPipe_rData_pc_sel_string = "JR ";
      default : execute0_outInst_m2sPipe_rData_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_br)
      `BR_opt_N : execute1_outInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute1_outInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute1_outInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute1_outInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute1_outInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute1_outInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute1_outInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute1_outInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute1_outInst_payload_ctrl_br_string = "JR ";
      default : execute1_outInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute1_outInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute1_outInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute1_outInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute1_outInst_payload_ctrl_op0_string = "IMJB";
      default : execute1_outInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute1_outInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute1_outInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute1_outInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute1_outInst_payload_ctrl_op1_string = "PC_1";
      default : execute1_outInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_alu)
      `ALU_opt_ADD : execute1_outInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute1_outInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute1_outInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute1_outInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute1_outInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute1_outInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute1_outInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute1_outInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute1_outInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute1_outInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute1_outInst_payload_ctrl_alu_string = "SRA_1";
      default : execute1_outInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute1_outInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute1_outInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute1_outInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute1_outInst_payload_ctrl_wb_string = "CSR1 ";
      default : execute1_outInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_m)
      `M_binary_sequential_XRD : execute1_outInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute1_outInst_payload_ctrl_m_string = "XWR";
      default : execute1_outInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute1_outInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute1_outInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute1_outInst_payload_ctrl_msk_string = "W";
      default : execute1_outInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute1_outInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute1_outInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute1_outInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute1_outInst_payload_ctrl_csr_string = "C";
      default : execute1_outInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute1_outInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute1_outInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute1_outInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute1_outInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute1_outInst_payload_ctrl_mfs_string = "FD";
      default : execute1_outInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_br)
      `BR_opt_N : execute1_inInst_thrown_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute1_inInst_thrown_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute1_inInst_thrown_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute1_inInst_thrown_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute1_inInst_thrown_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute1_inInst_thrown_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute1_inInst_thrown_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute1_inInst_thrown_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute1_inInst_thrown_payload_ctrl_br_string = "JR ";
      default : execute1_inInst_thrown_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute1_inInst_thrown_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute1_inInst_thrown_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute1_inInst_thrown_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute1_inInst_thrown_payload_ctrl_op0_string = "IMJB";
      default : execute1_inInst_thrown_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute1_inInst_thrown_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute1_inInst_thrown_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute1_inInst_thrown_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute1_inInst_thrown_payload_ctrl_op1_string = "PC_1";
      default : execute1_inInst_thrown_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_alu)
      `ALU_opt_ADD : execute1_inInst_thrown_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute1_inInst_thrown_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute1_inInst_thrown_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute1_inInst_thrown_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute1_inInst_thrown_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute1_inInst_thrown_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "SRA_1";
      default : execute1_inInst_thrown_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute1_inInst_thrown_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute1_inInst_thrown_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute1_inInst_thrown_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute1_inInst_thrown_payload_ctrl_wb_string = "CSR1 ";
      default : execute1_inInst_thrown_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_m)
      `M_binary_sequential_XRD : execute1_inInst_thrown_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute1_inInst_thrown_payload_ctrl_m_string = "XWR";
      default : execute1_inInst_thrown_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute1_inInst_thrown_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute1_inInst_thrown_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute1_inInst_thrown_payload_ctrl_msk_string = "W";
      default : execute1_inInst_thrown_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute1_inInst_thrown_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute1_inInst_thrown_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute1_inInst_thrown_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute1_inInst_thrown_payload_ctrl_csr_string = "C";
      default : execute1_inInst_thrown_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute1_inInst_thrown_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute1_inInst_thrown_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute1_inInst_thrown_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute1_inInst_thrown_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute1_inInst_thrown_payload_ctrl_mfs_string = "FD";
      default : execute1_inInst_thrown_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_pc_sel)
      `PC_binary_sequential_INC : execute1_inInst_thrown_payload_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute1_inInst_thrown_payload_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute1_inInst_thrown_payload_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute1_inInst_thrown_payload_pc_sel_string = "JR ";
      default : execute1_inInst_thrown_payload_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_br)
      `BR_opt_N : writeBack_inInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : writeBack_inInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : writeBack_inInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : writeBack_inInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : writeBack_inInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : writeBack_inInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : writeBack_inInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : writeBack_inInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : writeBack_inInst_payload_ctrl_br_string = "JR ";
      default : writeBack_inInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : writeBack_inInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : writeBack_inInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : writeBack_inInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : writeBack_inInst_payload_ctrl_op0_string = "IMJB";
      default : writeBack_inInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : writeBack_inInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : writeBack_inInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : writeBack_inInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : writeBack_inInst_payload_ctrl_op1_string = "PC_1";
      default : writeBack_inInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_alu)
      `ALU_opt_ADD : writeBack_inInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : writeBack_inInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : writeBack_inInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : writeBack_inInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : writeBack_inInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : writeBack_inInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : writeBack_inInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : writeBack_inInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : writeBack_inInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : writeBack_inInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : writeBack_inInst_payload_ctrl_alu_string = "SRA_1";
      default : writeBack_inInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : writeBack_inInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : writeBack_inInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : writeBack_inInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : writeBack_inInst_payload_ctrl_wb_string = "CSR1 ";
      default : writeBack_inInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_m)
      `M_binary_sequential_XRD : writeBack_inInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : writeBack_inInst_payload_ctrl_m_string = "XWR";
      default : writeBack_inInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : writeBack_inInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : writeBack_inInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : writeBack_inInst_payload_ctrl_msk_string = "W";
      default : writeBack_inInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : writeBack_inInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : writeBack_inInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : writeBack_inInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : writeBack_inInst_payload_ctrl_csr_string = "C";
      default : writeBack_inInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : writeBack_inInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : writeBack_inInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : writeBack_inInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : writeBack_inInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : writeBack_inInst_payload_ctrl_mfs_string = "FD";
      default : writeBack_inInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_br)
      `BR_opt_N : execute1_outInst_m2sPipe_rData_ctrl_br_string = "N  ";
      `BR_opt_NE : execute1_outInst_m2sPipe_rData_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute1_outInst_m2sPipe_rData_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute1_outInst_m2sPipe_rData_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute1_outInst_m2sPipe_rData_ctrl_br_string = "GEU";
      `BR_opt_LT : execute1_outInst_m2sPipe_rData_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute1_outInst_m2sPipe_rData_ctrl_br_string = "LTU";
      `BR_opt_J : execute1_outInst_m2sPipe_rData_ctrl_br_string = "J  ";
      `BR_opt_JR : execute1_outInst_m2sPipe_rData_ctrl_br_string = "JR ";
      default : execute1_outInst_m2sPipe_rData_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_op0)
      `OP0_binary_sequential_RS : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "IMJB";
      default : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_op1)
      `OP1_binary_sequential_RS : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "PC_1";
      default : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_alu)
      `ALU_opt_ADD : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SRA_1";
      default : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "CSR1 ";
      default : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_m)
      `M_binary_sequential_XRD : execute1_outInst_m2sPipe_rData_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute1_outInst_m2sPipe_rData_ctrl_m_string = "XWR";
      default : execute1_outInst_m2sPipe_rData_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_msk)
      `MSK_binary_sequential_B : execute1_outInst_m2sPipe_rData_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute1_outInst_m2sPipe_rData_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute1_outInst_m2sPipe_rData_ctrl_msk_string = "W";
      default : execute1_outInst_m2sPipe_rData_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_csr)
      `CSR_binary_sequential_N : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "C";
      default : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_mfs)
      `MFS_binary_sequential_N : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "FD";
      default : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_br)
      `BR_opt_N : writeBack_inInst_thrown_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : writeBack_inInst_thrown_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : writeBack_inInst_thrown_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : writeBack_inInst_thrown_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : writeBack_inInst_thrown_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : writeBack_inInst_thrown_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : writeBack_inInst_thrown_payload_ctrl_br_string = "LTU";
      `BR_opt_J : writeBack_inInst_thrown_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : writeBack_inInst_thrown_payload_ctrl_br_string = "JR ";
      default : writeBack_inInst_thrown_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_op0)
      `OP0_binary_sequential_RS : writeBack_inInst_thrown_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : writeBack_inInst_thrown_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : writeBack_inInst_thrown_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : writeBack_inInst_thrown_payload_ctrl_op0_string = "IMJB";
      default : writeBack_inInst_thrown_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_op1)
      `OP1_binary_sequential_RS : writeBack_inInst_thrown_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : writeBack_inInst_thrown_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : writeBack_inInst_thrown_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : writeBack_inInst_thrown_payload_ctrl_op1_string = "PC_1";
      default : writeBack_inInst_thrown_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_alu)
      `ALU_opt_ADD : writeBack_inInst_thrown_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : writeBack_inInst_thrown_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : writeBack_inInst_thrown_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : writeBack_inInst_thrown_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : writeBack_inInst_thrown_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "SRA_1";
      default : writeBack_inInst_thrown_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : writeBack_inInst_thrown_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : writeBack_inInst_thrown_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : writeBack_inInst_thrown_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : writeBack_inInst_thrown_payload_ctrl_wb_string = "CSR1 ";
      default : writeBack_inInst_thrown_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_m)
      `M_binary_sequential_XRD : writeBack_inInst_thrown_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : writeBack_inInst_thrown_payload_ctrl_m_string = "XWR";
      default : writeBack_inInst_thrown_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_msk)
      `MSK_binary_sequential_B : writeBack_inInst_thrown_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : writeBack_inInst_thrown_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : writeBack_inInst_thrown_payload_ctrl_msk_string = "W";
      default : writeBack_inInst_thrown_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_csr)
      `CSR_binary_sequential_N : writeBack_inInst_thrown_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : writeBack_inInst_thrown_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : writeBack_inInst_thrown_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : writeBack_inInst_thrown_payload_ctrl_csr_string = "C";
      default : writeBack_inInst_thrown_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_mfs)
      `MFS_binary_sequential_N : writeBack_inInst_thrown_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : writeBack_inInst_thrown_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : writeBack_inInst_thrown_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : writeBack_inInst_thrown_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : writeBack_inInst_thrown_payload_ctrl_mfs_string = "FD";
      default : writeBack_inInst_thrown_payload_ctrl_mfs_string = "??";
    endcase
  end
  `endif

  always @ (*) begin
    _zz_1 = 1'b0;
    if(writeBack_regFileWrite_valid)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(((((execute1_inInst_valid && execute1_inInst_ready) && (execute1_inInst_payload_ctrl_br != `BR_opt_JR)) && (execute1_inInst_payload_ctrl_br != `BR_opt_N)) && (execute1_inInst_payload_ctrl_br != `BR_opt_J)))begin
      if((($signed(_zz_105) != $signed(_zz_106)) && ($signed(_zz_107) != $signed(_zz_108))))begin
        _zz_2 = 1'b1;
      end
    end
  end

  always @ (*) begin
    prefetch_halt = 1'b0;
    if(DebugExtension_haltIt)begin
      prefetch_halt = 1'b1;
    end
  end

  assign _zz_3 = (prefetch_pc + 32'h00000004);
  always @ (*) begin
    prefetch_pcNext = (prefetch_inc ? _zz_3 : prefetch_pc);
    if(prefetch_pcLoad_valid)begin
      prefetch_pcNext = prefetch_pcLoad_payload;
    end
  end

  always @ (*) begin
    iCmd_valid = (prefetch_resetDone && (! prefetch_halt));
    if((fetch_pendingPrefetch_value == 2'b11))begin
      iCmd_valid = 1'b0;
    end
  end

  assign iCmd_payload_pc = prefetch_pcNext;
  always @ (*) begin
    fetch_throwIt = 1'b0;
    if(fetch_flush)begin
      fetch_throwIt = 1'b1;
    end
    if(decode_flush)begin
      fetch_throwIt = 1'b1;
    end
    if(execute0_flush)begin
      fetch_throwIt = 1'b1;
    end
    if(execute1_flush)begin
      fetch_throwIt = 1'b1;
    end
    if(writeBack_flush)begin
      fetch_throwIt = 1'b1;
    end
  end

  always @ (*) begin
    fetch_flush = 1'b0;
    if(decode_pcLoad_valid)begin
      fetch_flush = 1'b1;
    end
  end

  always @ (*) begin
    fetch_pendingPrefetch_incrementIt = 1'b0;
    if((iCmd_valid && iCmd_ready))begin
      fetch_pendingPrefetch_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    fetch_pendingPrefetch_decrementIt = 1'b0;
    if((iRsp_valid && iRsp_ready))begin
      fetch_pendingPrefetch_decrementIt = 1'b1;
    end
  end

  assign fetch_pendingPrefetch_willOverflowIfInc = ((fetch_pendingPrefetch_value == 2'b11) && (! fetch_pendingPrefetch_decrementIt));
  assign fetch_pendingPrefetch_willOverflow = (fetch_pendingPrefetch_willOverflowIfInc && fetch_pendingPrefetch_incrementIt);
  always @ (*) begin
    if((fetch_pendingPrefetch_incrementIt && (! fetch_pendingPrefetch_decrementIt)))begin
      fetch_pendingPrefetch_finalIncrement = 2'b01;
    end else begin
      if(((! fetch_pendingPrefetch_incrementIt) && fetch_pendingPrefetch_decrementIt))begin
        fetch_pendingPrefetch_finalIncrement = 2'b11;
      end else begin
        fetch_pendingPrefetch_finalIncrement = 2'b00;
      end
    end
  end

  assign fetch_pendingPrefetch_valueNext = (fetch_pendingPrefetch_value + fetch_pendingPrefetch_finalIncrement);
  assign fetch_throwNextIRsp = (fetch_throwRemaining != 2'b00);
  always @ (*) begin
    iRsp_thrown_valid = iRsp_valid;
    if(_zz_53)begin
      iRsp_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    iRsp_ready = iRsp_thrown_ready;
    if(_zz_53)begin
      iRsp_ready = 1'b1;
    end
  end

  assign iRsp_thrown_payload_instruction = iRsp_payload_instruction;
  assign iRsp_thrown_payload_pc = iRsp_payload_pc;
  assign iRsp_thrown_payload_branchCacheLine_pc = iRsp_payload_branchCacheLine_pc;
  assign iRsp_thrown_payload_branchCacheLine_history = iRsp_payload_branchCacheLine_history;
  assign fetch_outInst_valid = iRsp_thrown_valid;
  assign iRsp_thrown_ready = fetch_outInst_ready;
  assign fetch_outInst_payload_pc = iRsp_payload_pc;
  assign fetch_outInst_payload_instruction = iRsp_payload_instruction;
  assign fetch_outInst_payload_branchCacheLine_pc = iRsp_payload_branchCacheLine_pc;
  assign fetch_outInst_payload_branchCacheLine_history = iRsp_payload_branchCacheLine_history;
  assign fetch_outInst_ready = ((1'b1 && (! decode_inInst_valid)) || decode_inInst_ready);
  assign decode_inInst_valid = fetch_outInst_m2sPipe_rValid;
  assign decode_inInst_payload_pc = fetch_outInst_m2sPipe_rData_pc;
  assign decode_inInst_payload_instruction = fetch_outInst_m2sPipe_rData_instruction;
  assign decode_inInst_payload_branchCacheLine_pc = fetch_outInst_m2sPipe_rData_branchCacheLine_pc;
  assign decode_inInst_payload_branchCacheLine_history = fetch_outInst_m2sPipe_rData_branchCacheLine_history;
  always @ (*) begin
    decode_ctrl_instVal = 1'b0;
    if(_zz_54)begin
      if(_zz_55)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_56)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_57)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_58)begin
        if(_zz_59)begin
          if(_zz_60)begin
            decode_ctrl_instVal = 1'b1;
          end
        end else begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_instVal = 1'b1;
            end
          end
        end
      end
      if(_zz_63)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_64)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_65)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_66)begin
        decode_ctrl_instVal = 1'b1;
      end
    end
    if(_zz_67)begin
      decode_ctrl_instVal = 1'b1;
    end
    if(_zz_68)begin
      decode_ctrl_instVal = 1'b1;
    end
    if(_zz_69)begin
      decode_ctrl_instVal = 1'b1;
    end
  end

  always @ (*) begin
    decode_ctrl_br = `BR_opt_N;
    if(_zz_54)begin
      if(_zz_63)begin
        decode_ctrl_br = `BR_opt_J;
      end
      if(_zz_64)begin
        decode_ctrl_br = `BR_opt_JR;
      end
      if(_zz_65)begin
        decode_ctrl_br = _zz_8;
      end
    end
  end

  always @ (*) begin
    decode_ctrl_jmp = 1'b0;
    if(_zz_54)begin
      if(_zz_63)begin
        decode_ctrl_jmp = 1'b1;
      end
      if(_zz_64)begin
        decode_ctrl_jmp = 1'b1;
      end
    end
  end

  always @ (*) begin
    decode_ctrl_op0 = `OP0_binary_sequential_RS;
    if(_zz_54)begin
      if(_zz_55)begin
        decode_ctrl_op0 = `OP0_binary_sequential_RS;
      end
      if(_zz_56)begin
        decode_ctrl_op0 = `OP0_binary_sequential_IMU;
      end
      if(_zz_57)begin
        decode_ctrl_op0 = `OP0_binary_sequential_IMU;
      end
      if(_zz_58)begin
        if(_zz_59)begin
          if(_zz_60)begin
            decode_ctrl_op0 = `OP0_binary_sequential_RS;
          end
        end else begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_op0 = `OP0_binary_sequential_RS;
            end
          end
        end
      end
      if(_zz_63)begin
        decode_ctrl_op0 = `OP0_binary_sequential_IMJB;
      end
      if(_zz_64)begin
        decode_ctrl_op0 = `OP0_binary_sequential_RS;
      end
      if(_zz_65)begin
        decode_ctrl_op0 = `OP0_binary_sequential_IMJB;
      end
      if(_zz_66)begin
        if(((decode_inInst_payload_instruction & 32'h00004000) == 32'h00004000))begin
          decode_ctrl_op0 = `OP0_binary_sequential_IMZ;
        end else begin
          decode_ctrl_op0 = `OP0_binary_sequential_RS;
        end
      end
    end
    if(_zz_67)begin
      decode_ctrl_op0 = `OP0_binary_sequential_RS;
    end
    if(_zz_68)begin
      decode_ctrl_op0 = `OP0_binary_sequential_RS;
    end
  end

  always @ (*) begin
    decode_ctrl_op1 = `OP1_binary_sequential_RS;
    if(_zz_54)begin
      if(_zz_55)begin
        if(_zz_70)begin
          decode_ctrl_op1 = `OP1_binary_sequential_IMI;
        end else begin
          decode_ctrl_op1 = `OP1_binary_sequential_IMS;
        end
      end
      if(_zz_56)begin
        decode_ctrl_op1 = `OP1_binary_sequential_PC_1;
      end
      if(_zz_58)begin
        if(_zz_59)begin
          if(_zz_60)begin
            decode_ctrl_op1 = `OP1_binary_sequential_IMI;
          end
        end else begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_op1 = `OP1_binary_sequential_RS;
            end
          end
        end
      end
      if(_zz_63)begin
        decode_ctrl_op1 = `OP1_binary_sequential_PC_1;
      end
      if(_zz_64)begin
        decode_ctrl_op1 = `OP1_binary_sequential_IMI;
      end
      if(_zz_65)begin
        decode_ctrl_op1 = `OP1_binary_sequential_PC_1;
      end
    end
    if(_zz_67)begin
      decode_ctrl_op1 = `OP1_binary_sequential_RS;
    end
    if(_zz_68)begin
      decode_ctrl_op1 = `OP1_binary_sequential_RS;
    end
  end

  always @ (*) begin
    decode_ctrl_alu = `ALU_opt_ADD;
    if(_zz_54)begin
      if(_zz_55)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_56)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_57)begin
        decode_ctrl_alu = `ALU_opt_COPY;
      end
      if(_zz_58)begin
        if(_zz_59)begin
          if(_zz_60)begin
            decode_ctrl_alu = _zz_6;
          end
        end else begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_alu = _zz_7;
            end
          end
        end
      end
      if(_zz_63)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_64)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_65)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_66)begin
        decode_ctrl_alu = `ALU_opt_COPY;
      end
    end
    if(_zz_69)begin
      decode_ctrl_alu = `ALU_opt_COPY;
    end
  end

  always @ (*) begin
    decode_ctrl_wb = `WB_binary_sequential_ALU_1;
    if(_zz_54)begin
      if(_zz_55)begin
        if(_zz_70)begin
          decode_ctrl_wb = `WB_binary_sequential_MEM;
        end
      end
      if(_zz_56)begin
        decode_ctrl_wb = `WB_binary_sequential_ALU_1;
      end
      if(_zz_57)begin
        decode_ctrl_wb = `WB_binary_sequential_ALU_1;
      end
      if(_zz_58)begin
        if(_zz_59)begin
          if(_zz_60)begin
            decode_ctrl_wb = `WB_binary_sequential_ALU_1;
          end
        end else begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_wb = `WB_binary_sequential_ALU_1;
            end
          end
        end
      end
      if(_zz_63)begin
        decode_ctrl_wb = `WB_binary_sequential_PC4;
      end
      if(_zz_64)begin
        decode_ctrl_wb = `WB_binary_sequential_PC4;
      end
      if(_zz_66)begin
        decode_ctrl_wb = `WB_binary_sequential_CSR1;
      end
    end
    if(_zz_67)begin
      decode_ctrl_wb = `WB_binary_sequential_ALU_1;
    end
    if(_zz_68)begin
      decode_ctrl_wb = `WB_binary_sequential_ALU_1;
    end
    if(_zz_69)begin
      decode_ctrl_wb = `WB_binary_sequential_ALU_1;
    end
  end

  always @ (*) begin
    decode_ctrl_rfen = 1'b0;
    if(_zz_54)begin
      if(_zz_55)begin
        if(_zz_70)begin
          decode_ctrl_rfen = 1'b1;
        end
      end
      if(_zz_56)begin
        decode_ctrl_rfen = 1'b1;
      end
      if(_zz_57)begin
        decode_ctrl_rfen = 1'b1;
      end
      if(_zz_58)begin
        if(_zz_59)begin
          if(_zz_60)begin
            decode_ctrl_rfen = 1'b1;
          end
        end else begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_rfen = 1'b1;
            end
          end
        end
      end
      if(_zz_63)begin
        decode_ctrl_rfen = 1'b1;
      end
      if(_zz_64)begin
        decode_ctrl_rfen = 1'b1;
      end
      if(_zz_66)begin
        decode_ctrl_rfen = 1'b1;
      end
    end
    if(_zz_67)begin
      decode_ctrl_rfen = 1'b1;
    end
    if(_zz_68)begin
      decode_ctrl_rfen = 1'b1;
    end
    if(_zz_69)begin
      if(decode_inInst_payload_instruction[25])begin
        decode_ctrl_rfen = 1'b1;
      end
    end
  end

  always @ (*) begin
    decode_ctrl_execute0AluBypass = 1'b0;
    if(_zz_54)begin
      if(_zz_56)begin
        decode_ctrl_execute0AluBypass = 1'b1;
      end
      if(_zz_57)begin
        decode_ctrl_execute0AluBypass = 1'b1;
      end
      if(_zz_58)begin
        if(_zz_59)begin
          if(_zz_60)begin
            decode_ctrl_execute0AluBypass = (! _zz_5);
          end
        end else begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_execute0AluBypass = (! _zz_5);
            end
          end
        end
      end
    end
    if(_zz_67)begin
      decode_ctrl_execute0AluBypass = 1'b0;
    end
    if(_zz_68)begin
      decode_ctrl_execute0AluBypass = 1'b0;
    end
  end

  always @ (*) begin
    decode_ctrl_execute1AluBypass = 1'b0;
    if(_zz_54)begin
      if(_zz_56)begin
        decode_ctrl_execute1AluBypass = 1'b1;
      end
      if(_zz_57)begin
        decode_ctrl_execute1AluBypass = 1'b1;
      end
      if(_zz_58)begin
        if(_zz_59)begin
          if(_zz_60)begin
            decode_ctrl_execute1AluBypass = 1'b1;
          end
        end else begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_execute1AluBypass = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_67)begin
      decode_ctrl_execute1AluBypass = 1'b0;
    end
    if(_zz_68)begin
      decode_ctrl_execute1AluBypass = 1'b1;
    end
  end

  assign decode_ctrl_canInternalyStallWriteBack0 = 1'b0;
  always @ (*) begin
    decode_ctrl_men = 1'b0;
    if(_zz_54)begin
      if(_zz_55)begin
        decode_ctrl_men = 1'b1;
      end
    end
  end

  always @ (*) begin
    decode_ctrl_m = `M_binary_sequential_XRD;
    if(_zz_54)begin
      if(_zz_55)begin
        if(_zz_70)begin
          decode_ctrl_m = `M_binary_sequential_XRD;
        end else begin
          decode_ctrl_m = `M_binary_sequential_XWR;
        end
      end
    end
  end

  assign _zz_4 = decode_inInst_payload_instruction[13 : 12];
  assign decode_ctrl_msk = _zz_4;
  always @ (*) begin
    decode_ctrl_csr = `CSR_binary_sequential_N;
    if(_zz_54)begin
      if(_zz_66)begin
        decode_ctrl_csr = _zz_9;
      end
    end
  end

  assign decode_ctrl_mfs = `MFS_binary_sequential_N;
  always @ (*) begin
    decode_ctrl_useSrc0 = 1'b0;
    if(_zz_54)begin
      if(_zz_55)begin
        decode_ctrl_useSrc0 = 1'b1;
      end
      if(_zz_58)begin
        if(_zz_59)begin
          if(_zz_60)begin
            decode_ctrl_useSrc0 = 1'b1;
          end
        end else begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_useSrc0 = 1'b1;
            end
          end
        end
      end
      if(_zz_64)begin
        decode_ctrl_useSrc0 = 1'b1;
      end
      if(_zz_65)begin
        decode_ctrl_useSrc0 = 1'b1;
      end
    end
    if(_zz_67)begin
      decode_ctrl_useSrc0 = 1'b1;
    end
    if(_zz_68)begin
      decode_ctrl_useSrc0 = 1'b1;
    end
  end

  always @ (*) begin
    decode_ctrl_useSrc1 = 1'b0;
    if(_zz_54)begin
      if(_zz_55)begin
        if(! _zz_70) begin
          decode_ctrl_useSrc1 = 1'b1;
        end
      end
      if(_zz_58)begin
        if(! _zz_59) begin
          if(_zz_61)begin
            if(_zz_62)begin
              decode_ctrl_useSrc1 = 1'b1;
            end
          end
        end
      end
      if(_zz_65)begin
        decode_ctrl_useSrc1 = 1'b1;
      end
    end
    if(_zz_67)begin
      decode_ctrl_useSrc1 = 1'b1;
    end
    if(_zz_68)begin
      decode_ctrl_useSrc1 = 1'b1;
    end
  end

  always @ (*) begin
    decode_ctrl_extensionTag = 3'b000;
    if(_zz_67)begin
      decode_ctrl_extensionTag = 3'b001;
    end
    if(_zz_68)begin
      decode_ctrl_extensionTag = 3'b010;
    end
    if(_zz_69)begin
      decode_ctrl_extensionTag = 3'b011;
    end
    if((decode_inInst_payload_instruction == 32'h00100073))begin
      decode_ctrl_extensionTag = 3'b100;
    end
  end

  always @ (*) begin
    decode_ctrl_fencei = 1'b0;
    if(_zz_54)begin
      decode_ctrl_fencei = ((decode_inInst_payload_instruction & 32'hfffffffc) == 32'h0000100c);
    end
  end

  assign _zz_5 = ((decode_inInst_payload_instruction & 32'h00003000) == 32'h00001000);
  assign _zz_6 = {(_zz_5 && decode_inInst_payload_instruction[30]),decode_inInst_payload_instruction[14 : 12]};
  assign _zz_7 = {decode_inInst_payload_instruction[30],decode_inInst_payload_instruction[14 : 12]};
  assign _zz_8 = {1'b0,decode_inInst_payload_instruction[14 : 12]};
  assign _zz_9 = decode_inInst_payload_instruction[13 : 12];
  always @ (*) begin
    decode_throwIt = 1'b0;
    if(decode_flush)begin
      decode_throwIt = 1'b1;
    end
    if(execute0_flush)begin
      decode_throwIt = 1'b1;
    end
    if(execute1_flush)begin
      decode_throwIt = 1'b1;
    end
    if(writeBack_flush)begin
      decode_throwIt = 1'b1;
    end
  end

  always @ (*) begin
    decode_halt = 1'b0;
    if(decode_hazard)begin
      decode_halt = 1'b1;
    end
    if(_zz_71)begin
      if(! _zz_72) begin
        if(_zz_35)begin
          decode_halt = 1'b1;
        end
      end
    end
  end

  assign decode_addr0 = decode_inInst_payload_instruction[19 : 15];
  assign decode_addr1 = decode_inInst_payload_instruction[24 : 20];
  assign decode_addr0IsZero = (decode_addr0 == 5'h0);
  assign decode_addr1IsZero = (decode_addr1 == 5'h0);
  assign decode_srcInstruction = ((decode_inInst_valid && (! decode_inInst_ready)) ? decode_inInst_payload_instruction : fetch_outInst_payload_instruction);
  always @ (*) begin
    decode_regFileReadAddress0 = decode_srcInstruction[19 : 15];
    if(_zz_40)begin
      if(! _zz_73) begin
        if(! _zz_41) begin
          decode_regFileReadAddress0 = _zz_42[4 : 0];
        end
      end
    end
  end

  assign decode_regFileReadAddress1 = decode_srcInstruction[24 : 20];
  always @ (*) begin
    decode_src0 = _zz_50;
    if(writeBackBuffer_inInst_valid)begin
      if(hazardTracker_W2R_addr0Match)begin
        decode_src0 = writeBackBuffer_inInst_payload_data;
      end
    end
    if(_zz_74)begin
      if(hazardTracker_A_addr0Match)begin
        decode_src0 = writeBack_regFileData;
      end
    end
    if(_zz_75)begin
      if(execute1_outInst_payload_ctrl_execute1AluBypass)begin
        if(hazardTracker_E1_addr0Match)begin
          decode_src0 = execute1_outInst_payload_result;
        end
      end
    end
    if(_zz_76)begin
      if(execute0_outInst_payload_ctrl_execute0AluBypass)begin
        if(hazardTracker_E0_addr0Match)begin
          decode_src0 = execute0_outInst_payload_result;
        end
      end
    end
  end

  always @ (*) begin
    decode_src1 = _zz_51;
    if(writeBackBuffer_inInst_valid)begin
      if(hazardTracker_W2R_addr1Match)begin
        decode_src1 = writeBackBuffer_inInst_payload_data;
      end
    end
    if(_zz_74)begin
      if(hazardTracker_A_addr1Match)begin
        decode_src1 = writeBack_regFileData;
      end
    end
    if(_zz_75)begin
      if(execute1_outInst_payload_ctrl_execute1AluBypass)begin
        if(hazardTracker_E1_addr1Match)begin
          decode_src1 = execute1_outInst_payload_result;
        end
      end
    end
    if(_zz_76)begin
      if(execute0_outInst_payload_ctrl_execute0AluBypass)begin
        if(hazardTracker_E0_addr1Match)begin
          decode_src1 = execute0_outInst_payload_result;
        end
      end
    end
  end

  assign _zz_10 = _zz_91[19];
  always @ (*) begin
    _zz_11[10] = _zz_10;
    _zz_11[9] = _zz_10;
    _zz_11[8] = _zz_10;
    _zz_11[7] = _zz_10;
    _zz_11[6] = _zz_10;
    _zz_11[5] = _zz_10;
    _zz_11[4] = _zz_10;
    _zz_11[3] = _zz_10;
    _zz_11[2] = _zz_10;
    _zz_11[1] = _zz_10;
    _zz_11[0] = _zz_10;
  end

  assign _zz_12 = _zz_92[11];
  always @ (*) begin
    _zz_13[18] = _zz_12;
    _zz_13[17] = _zz_12;
    _zz_13[16] = _zz_12;
    _zz_13[15] = _zz_12;
    _zz_13[14] = _zz_12;
    _zz_13[13] = _zz_12;
    _zz_13[12] = _zz_12;
    _zz_13[11] = _zz_12;
    _zz_13[10] = _zz_12;
    _zz_13[9] = _zz_12;
    _zz_13[8] = _zz_12;
    _zz_13[7] = _zz_12;
    _zz_13[6] = _zz_12;
    _zz_13[5] = _zz_12;
    _zz_13[4] = _zz_12;
    _zz_13[3] = _zz_12;
    _zz_13[2] = _zz_12;
    _zz_13[1] = _zz_12;
    _zz_13[0] = _zz_12;
  end

  assign decode_brjmpImm = (decode_ctrl_jmp ? {{_zz_11,{{{decode_inInst_payload_instruction[31],decode_inInst_payload_instruction[19 : 12]},decode_inInst_payload_instruction[20]},decode_inInst_payload_instruction[30 : 21]}},1'b0} : {{_zz_13,{{{decode_inInst_payload_instruction[31],decode_inInst_payload_instruction[7]},decode_inInst_payload_instruction[30 : 25]},decode_inInst_payload_instruction[11 : 8]}},1'b0});
  assign decode_brJumpPc = _zz_93;
  assign decode_branchCacheHit = (decode_inInst_payload_branchCacheLine_pc == decode_inInst_payload_pc[31 : 9]);
  assign decode_staticBranchPrediction = (decode_brjmpImm[31] || (decode_ctrl_br == `BR_opt_J));
  always @ (*) begin
    decode_shouldTakeBranch = decode_staticBranchPrediction;
    if(decode_branchCacheHit)begin
      decode_shouldTakeBranch = decode_inInst_payload_branchCacheLine_history[1];
    end
  end

  assign decode_pcLoad_valid = ((((((decode_inInst_valid && (! decode_throwIt)) && (! decode_hazard)) && decode_outInst_ready) && ((decode_ctrl_br != `BR_opt_JR) && (decode_ctrl_br != `BR_opt_N))) && decode_ctrl_instVal) && decode_shouldTakeBranch);
  assign decode_pcLoad_payload = decode_brJumpPc;
  always @ (*) begin
    decode_inInst_thrown_valid = decode_inInst_valid;
    if(decode_throwIt)begin
      decode_inInst_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    decode_inInst_ready = decode_inInst_thrown_ready;
    if(decode_throwIt)begin
      decode_inInst_ready = 1'b1;
    end
  end

  assign decode_inInst_thrown_payload_pc = decode_inInst_payload_pc;
  assign decode_inInst_thrown_payload_instruction = decode_inInst_payload_instruction;
  assign decode_inInst_thrown_payload_branchCacheLine_pc = decode_inInst_payload_branchCacheLine_pc;
  assign decode_inInst_thrown_payload_branchCacheLine_history = decode_inInst_payload_branchCacheLine_history;
  assign _zz_14 = (! decode_halt);
  assign decode_inInst_thrown_ready = (decode_outInst_ready && _zz_14);
  assign decode_outInst_valid = (decode_inInst_thrown_valid && _zz_14);
  assign decode_outInst_payload_pc = decode_inInst_payload_pc;
  assign decode_outInst_payload_instruction = decode_inInst_payload_instruction;
  assign decode_outInst_payload_ctrl_instVal = decode_ctrl_instVal;
  assign decode_outInst_payload_ctrl_br = decode_ctrl_br;
  assign decode_outInst_payload_ctrl_jmp = decode_ctrl_jmp;
  assign decode_outInst_payload_ctrl_op0 = decode_ctrl_op0;
  assign decode_outInst_payload_ctrl_op1 = decode_ctrl_op1;
  assign decode_outInst_payload_ctrl_alu = decode_ctrl_alu;
  assign decode_outInst_payload_ctrl_wb = decode_ctrl_wb;
  assign decode_outInst_payload_ctrl_rfen = decode_ctrl_rfen;
  assign decode_outInst_payload_ctrl_execute0AluBypass = decode_ctrl_execute0AluBypass;
  assign decode_outInst_payload_ctrl_execute1AluBypass = decode_ctrl_execute1AluBypass;
  assign decode_outInst_payload_ctrl_canInternalyStallWriteBack0 = decode_ctrl_canInternalyStallWriteBack0;
  assign decode_outInst_payload_ctrl_men = decode_ctrl_men;
  assign decode_outInst_payload_ctrl_m = decode_ctrl_m;
  assign decode_outInst_payload_ctrl_msk = decode_ctrl_msk;
  assign decode_outInst_payload_ctrl_csr = decode_ctrl_csr;
  assign decode_outInst_payload_ctrl_mfs = decode_ctrl_mfs;
  assign decode_outInst_payload_ctrl_useSrc0 = decode_ctrl_useSrc0;
  assign decode_outInst_payload_ctrl_useSrc1 = decode_ctrl_useSrc1;
  assign decode_outInst_payload_ctrl_extensionTag = decode_ctrl_extensionTag;
  assign decode_outInst_payload_ctrl_fencei = decode_ctrl_fencei;
  assign decode_outInst_payload_doSub = (decode_outInst_payload_ctrl_alu != `ALU_opt_ADD);
  assign decode_outInst_payload_src0 = ((! decode_addr0IsZero) ? decode_src0 : 32'h0);
  assign decode_outInst_payload_src1 = ((! decode_addr1IsZero) ? decode_src1 : 32'h0);
  always @ (*) begin
    case(decode_outInst_payload_ctrl_op0)
      `OP0_binary_sequential_IMU : begin
        _zz_15 = {decode_inInst_payload_instruction[31 : 12],12'h0};
      end
      `OP0_binary_sequential_IMZ : begin
        _zz_15 = {27'd0, _zz_94};
      end
      `OP0_binary_sequential_IMJB : begin
        _zz_15 = decode_brjmpImm;
      end
      default : begin
        _zz_15 = decode_outInst_payload_src0;
      end
    endcase
  end

  assign decode_outInst_payload_alu_op0 = _zz_15;
  assign _zz_16 = _zz_95[11];
  always @ (*) begin
    _zz_17[19] = _zz_16;
    _zz_17[18] = _zz_16;
    _zz_17[17] = _zz_16;
    _zz_17[16] = _zz_16;
    _zz_17[15] = _zz_16;
    _zz_17[14] = _zz_16;
    _zz_17[13] = _zz_16;
    _zz_17[12] = _zz_16;
    _zz_17[11] = _zz_16;
    _zz_17[10] = _zz_16;
    _zz_17[9] = _zz_16;
    _zz_17[8] = _zz_16;
    _zz_17[7] = _zz_16;
    _zz_17[6] = _zz_16;
    _zz_17[5] = _zz_16;
    _zz_17[4] = _zz_16;
    _zz_17[3] = _zz_16;
    _zz_17[2] = _zz_16;
    _zz_17[1] = _zz_16;
    _zz_17[0] = _zz_16;
  end

  assign _zz_18 = _zz_96[11];
  always @ (*) begin
    _zz_19[19] = _zz_18;
    _zz_19[18] = _zz_18;
    _zz_19[17] = _zz_18;
    _zz_19[16] = _zz_18;
    _zz_19[15] = _zz_18;
    _zz_19[14] = _zz_18;
    _zz_19[13] = _zz_18;
    _zz_19[12] = _zz_18;
    _zz_19[11] = _zz_18;
    _zz_19[10] = _zz_18;
    _zz_19[9] = _zz_18;
    _zz_19[8] = _zz_18;
    _zz_19[7] = _zz_18;
    _zz_19[6] = _zz_18;
    _zz_19[5] = _zz_18;
    _zz_19[4] = _zz_18;
    _zz_19[3] = _zz_18;
    _zz_19[2] = _zz_18;
    _zz_19[1] = _zz_18;
    _zz_19[0] = _zz_18;
  end

  always @ (*) begin
    case(decode_outInst_payload_ctrl_op1)
      `OP1_binary_sequential_IMI : begin
        _zz_20 = {_zz_17,decode_inInst_payload_instruction[31 : 20]};
      end
      `OP1_binary_sequential_IMS : begin
        _zz_20 = {_zz_19,{decode_inInst_payload_instruction[31 : 25],decode_inInst_payload_instruction[11 : 7]}};
      end
      `OP1_binary_sequential_PC_1 : begin
        _zz_20 = decode_inInst_payload_pc;
      end
      default : begin
        _zz_20 = decode_outInst_payload_src1;
      end
    endcase
  end

  assign decode_outInst_payload_alu_op1 = _zz_20;
  assign decode_outInst_payload_predictorHasBranch = decode_pcLoad_valid;
  assign decode_outInst_payload_branchHistory_valid = decode_branchCacheHit;
  assign decode_outInst_payload_branchHistory_payload = decode_inInst_payload_branchCacheLine_history;
  assign decode_flush = 1'b0;
  assign decode_outInst_ready = ((1'b0 && (! execute0_inInst_valid)) || execute0_inInst_ready);
  assign execute0_inInst_valid = decode_outInst_m2sPipe_rValid;
  assign execute0_inInst_payload_pc = decode_outInst_m2sPipe_rData_pc;
  assign execute0_inInst_payload_instruction = decode_outInst_m2sPipe_rData_instruction;
  assign execute0_inInst_payload_ctrl_instVal = decode_outInst_m2sPipe_rData_ctrl_instVal;
  assign execute0_inInst_payload_ctrl_br = decode_outInst_m2sPipe_rData_ctrl_br;
  assign execute0_inInst_payload_ctrl_jmp = decode_outInst_m2sPipe_rData_ctrl_jmp;
  assign execute0_inInst_payload_ctrl_op0 = decode_outInst_m2sPipe_rData_ctrl_op0;
  assign execute0_inInst_payload_ctrl_op1 = decode_outInst_m2sPipe_rData_ctrl_op1;
  assign execute0_inInst_payload_ctrl_alu = decode_outInst_m2sPipe_rData_ctrl_alu;
  assign execute0_inInst_payload_ctrl_wb = decode_outInst_m2sPipe_rData_ctrl_wb;
  assign execute0_inInst_payload_ctrl_rfen = decode_outInst_m2sPipe_rData_ctrl_rfen;
  assign execute0_inInst_payload_ctrl_execute0AluBypass = decode_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  assign execute0_inInst_payload_ctrl_execute1AluBypass = decode_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  assign execute0_inInst_payload_ctrl_canInternalyStallWriteBack0 = decode_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  assign execute0_inInst_payload_ctrl_men = decode_outInst_m2sPipe_rData_ctrl_men;
  assign execute0_inInst_payload_ctrl_m = decode_outInst_m2sPipe_rData_ctrl_m;
  assign execute0_inInst_payload_ctrl_msk = decode_outInst_m2sPipe_rData_ctrl_msk;
  assign execute0_inInst_payload_ctrl_csr = decode_outInst_m2sPipe_rData_ctrl_csr;
  assign execute0_inInst_payload_ctrl_mfs = decode_outInst_m2sPipe_rData_ctrl_mfs;
  assign execute0_inInst_payload_ctrl_useSrc0 = decode_outInst_m2sPipe_rData_ctrl_useSrc0;
  assign execute0_inInst_payload_ctrl_useSrc1 = decode_outInst_m2sPipe_rData_ctrl_useSrc1;
  assign execute0_inInst_payload_ctrl_extensionTag = decode_outInst_m2sPipe_rData_ctrl_extensionTag;
  assign execute0_inInst_payload_ctrl_fencei = decode_outInst_m2sPipe_rData_ctrl_fencei;
  assign execute0_inInst_payload_src0 = decode_outInst_m2sPipe_rData_src0;
  assign execute0_inInst_payload_src1 = decode_outInst_m2sPipe_rData_src1;
  assign execute0_inInst_payload_alu_op0 = decode_outInst_m2sPipe_rData_alu_op0;
  assign execute0_inInst_payload_alu_op1 = decode_outInst_m2sPipe_rData_alu_op1;
  assign execute0_inInst_payload_doSub = decode_outInst_m2sPipe_rData_doSub;
  assign execute0_inInst_payload_predictorHasBranch = decode_outInst_m2sPipe_rData_predictorHasBranch;
  assign execute0_inInst_payload_branchHistory_valid = decode_outInst_m2sPipe_rData_branchHistory_valid;
  assign execute0_inInst_payload_branchHistory_payload = decode_outInst_m2sPipe_rData_branchHistory_payload;
  always @ (*) begin
    execute0_throwIt = 1'b0;
    if(execute0_flush)begin
      execute0_throwIt = 1'b1;
    end
    if(execute1_flush)begin
      execute0_throwIt = 1'b1;
    end
    if(writeBack_flush)begin
      execute0_throwIt = 1'b1;
    end
  end

  always @ (*) begin
    execute0_halt = 1'b0;
    if((((execute0_inInst_valid && execute0_inInst_payload_ctrl_men) && (execute0_inInst_payload_ctrl_m == `M_binary_sequential_XRD)) && (execute0_pendingDataCmd_readCount == 2'b10)))begin
      execute0_halt = 1'b1;
    end
    if(((execute0_inInst_valid && execute0_inInst_payload_ctrl_men) && (execute0_inInst_payload_ctrl_m == `M_binary_sequential_XRD)))begin
      if((execute1_inInst_valid && execute1_inInst_payload_ctrl_canInternalyStallWriteBack0))begin
        execute0_halt = 1'b1;
      end
      if(((writeBack_inInst_valid && (! writeBack_inInst_ready)) && writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0))begin
        execute0_halt = 1'b1;
      end
    end
    if(_zz_77)begin
      if((! DivExtension_divider_io_cmd_ready))begin
        execute0_halt = 1'b1;
      end
    end
    if((execute1_inInst_valid && (execute1_inInst_payload_ctrl_extensionTag == 3'b100)))begin
      execute0_halt = 1'b1;
    end
    if(DebugExtension_isInBreakpoint)begin
      execute0_halt = 1'b1;
    end
  end

  assign execute0_haltFromDataRequest = ((execute0_inInst_valid && execute0_inInst_payload_ctrl_men) && (! dCmd_ready));
  assign execute0_br_signed = (! _zz_97[1]);
  assign execute0_br_src0Ext = {(execute0_inInst_payload_src0[31] && execute0_br_signed),execute0_inInst_payload_src0};
  assign execute0_br_src1Ext = {(execute0_inInst_payload_src1[31] && execute0_br_signed),execute0_inInst_payload_src1};
  assign execute0_br_ltx = _zz_98[32];
  assign execute0_br_eq = (execute0_inInst_payload_src0 == execute0_inInst_payload_src1);
  always @ (*) begin
    case(execute0_inInst_payload_ctrl_br)
      `BR_opt_NE : begin
        execute0_br_pc_sel = ((! execute0_br_eq) ? `PC_binary_sequential_BRA : `PC_binary_sequential_INC);
      end
      `BR_opt_EQ : begin
        execute0_br_pc_sel = (execute0_br_eq ? `PC_binary_sequential_BRA : `PC_binary_sequential_INC);
      end
      `BR_opt_GE, `BR_opt_GEU : begin
        execute0_br_pc_sel = ((! execute0_br_ltx) ? `PC_binary_sequential_BRA : `PC_binary_sequential_INC);
      end
      `BR_opt_LT, `BR_opt_LTU : begin
        execute0_br_pc_sel = (execute0_br_ltx ? `PC_binary_sequential_BRA : `PC_binary_sequential_INC);
      end
      `BR_opt_J : begin
        execute0_br_pc_sel = `PC_binary_sequential_J;
      end
      `BR_opt_JR : begin
        execute0_br_pc_sel = `PC_binary_sequential_JR;
      end
      default : begin
        execute0_br_pc_sel = `PC_binary_sequential_INC;
      end
    endcase
  end

  always @ (*) begin
    execute0_inInst_thrown_valid = execute0_inInst_valid;
    if(execute0_throwIt)begin
      execute0_inInst_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    execute0_inInst_ready = execute0_inInst_thrown_ready;
    if(execute0_throwIt)begin
      execute0_inInst_ready = 1'b1;
    end
  end

  assign execute0_inInst_thrown_payload_pc = execute0_inInst_payload_pc;
  assign execute0_inInst_thrown_payload_instruction = execute0_inInst_payload_instruction;
  assign execute0_inInst_thrown_payload_ctrl_instVal = execute0_inInst_payload_ctrl_instVal;
  assign execute0_inInst_thrown_payload_ctrl_br = execute0_inInst_payload_ctrl_br;
  assign execute0_inInst_thrown_payload_ctrl_jmp = execute0_inInst_payload_ctrl_jmp;
  assign execute0_inInst_thrown_payload_ctrl_op0 = execute0_inInst_payload_ctrl_op0;
  assign execute0_inInst_thrown_payload_ctrl_op1 = execute0_inInst_payload_ctrl_op1;
  assign execute0_inInst_thrown_payload_ctrl_alu = execute0_inInst_payload_ctrl_alu;
  assign execute0_inInst_thrown_payload_ctrl_wb = execute0_inInst_payload_ctrl_wb;
  assign execute0_inInst_thrown_payload_ctrl_rfen = execute0_inInst_payload_ctrl_rfen;
  assign execute0_inInst_thrown_payload_ctrl_execute0AluBypass = execute0_inInst_payload_ctrl_execute0AluBypass;
  assign execute0_inInst_thrown_payload_ctrl_execute1AluBypass = execute0_inInst_payload_ctrl_execute1AluBypass;
  assign execute0_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 = execute0_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign execute0_inInst_thrown_payload_ctrl_men = execute0_inInst_payload_ctrl_men;
  assign execute0_inInst_thrown_payload_ctrl_m = execute0_inInst_payload_ctrl_m;
  assign execute0_inInst_thrown_payload_ctrl_msk = execute0_inInst_payload_ctrl_msk;
  assign execute0_inInst_thrown_payload_ctrl_csr = execute0_inInst_payload_ctrl_csr;
  assign execute0_inInst_thrown_payload_ctrl_mfs = execute0_inInst_payload_ctrl_mfs;
  assign execute0_inInst_thrown_payload_ctrl_useSrc0 = execute0_inInst_payload_ctrl_useSrc0;
  assign execute0_inInst_thrown_payload_ctrl_useSrc1 = execute0_inInst_payload_ctrl_useSrc1;
  assign execute0_inInst_thrown_payload_ctrl_extensionTag = execute0_inInst_payload_ctrl_extensionTag;
  assign execute0_inInst_thrown_payload_ctrl_fencei = execute0_inInst_payload_ctrl_fencei;
  assign execute0_inInst_thrown_payload_src0 = execute0_inInst_payload_src0;
  assign execute0_inInst_thrown_payload_src1 = execute0_inInst_payload_src1;
  assign execute0_inInst_thrown_payload_alu_op0 = execute0_inInst_payload_alu_op0;
  assign execute0_inInst_thrown_payload_alu_op1 = execute0_inInst_payload_alu_op1;
  assign execute0_inInst_thrown_payload_doSub = execute0_inInst_payload_doSub;
  assign execute0_inInst_thrown_payload_predictorHasBranch = execute0_inInst_payload_predictorHasBranch;
  assign execute0_inInst_thrown_payload_branchHistory_valid = execute0_inInst_payload_branchHistory_valid;
  assign execute0_inInst_thrown_payload_branchHistory_payload = execute0_inInst_payload_branchHistory_payload;
  assign _zz_21 = (! (execute0_halt || execute0_haltFromDataRequest));
  assign execute0_inInst_thrown_ready = (execute0_outInst_ready && _zz_21);
  assign execute0_outInst_valid = (execute0_inInst_thrown_valid && _zz_21);
  assign execute0_outInst_payload_pc = execute0_inInst_payload_pc;
  assign execute0_outInst_payload_instruction = execute0_inInst_payload_instruction;
  assign execute0_outInst_payload_predictorHasBranch = execute0_inInst_payload_predictorHasBranch;
  assign execute0_outInst_payload_branchHistory_valid = execute0_inInst_payload_branchHistory_valid;
  assign execute0_outInst_payload_branchHistory_payload = execute0_inInst_payload_branchHistory_payload;
  assign execute0_outInst_payload_ctrl_instVal = execute0_inInst_payload_ctrl_instVal;
  assign execute0_outInst_payload_ctrl_br = execute0_inInst_payload_ctrl_br;
  assign execute0_outInst_payload_ctrl_jmp = execute0_inInst_payload_ctrl_jmp;
  assign execute0_outInst_payload_ctrl_op0 = execute0_inInst_payload_ctrl_op0;
  assign execute0_outInst_payload_ctrl_op1 = execute0_inInst_payload_ctrl_op1;
  assign execute0_outInst_payload_ctrl_alu = execute0_inInst_payload_ctrl_alu;
  assign execute0_outInst_payload_ctrl_wb = execute0_inInst_payload_ctrl_wb;
  assign execute0_outInst_payload_ctrl_rfen = execute0_inInst_payload_ctrl_rfen;
  assign execute0_outInst_payload_ctrl_execute0AluBypass = execute0_inInst_payload_ctrl_execute0AluBypass;
  assign execute0_outInst_payload_ctrl_execute1AluBypass = execute0_inInst_payload_ctrl_execute1AluBypass;
  assign execute0_outInst_payload_ctrl_canInternalyStallWriteBack0 = execute0_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign execute0_outInst_payload_ctrl_men = execute0_inInst_payload_ctrl_men;
  assign execute0_outInst_payload_ctrl_m = execute0_inInst_payload_ctrl_m;
  assign execute0_outInst_payload_ctrl_msk = execute0_inInst_payload_ctrl_msk;
  assign execute0_outInst_payload_ctrl_csr = execute0_inInst_payload_ctrl_csr;
  assign execute0_outInst_payload_ctrl_mfs = execute0_inInst_payload_ctrl_mfs;
  assign execute0_outInst_payload_ctrl_useSrc0 = execute0_inInst_payload_ctrl_useSrc0;
  assign execute0_outInst_payload_ctrl_useSrc1 = execute0_inInst_payload_ctrl_useSrc1;
  assign execute0_outInst_payload_ctrl_extensionTag = execute0_inInst_payload_ctrl_extensionTag;
  assign execute0_outInst_payload_ctrl_fencei = execute0_inInst_payload_ctrl_fencei;
  assign execute0_outInst_payload_br_eq = execute0_br_eq;
  assign execute0_outInst_payload_br_ltx = execute0_br_ltx;
  assign execute0_outInst_payload_pc_sel = execute0_br_pc_sel;
  assign execute0_outInst_payload_src1 = execute0_inInst_payload_src1;
  assign execute0_outInst_payload_result = execute0_alu_io_result;
  assign execute0_outInst_payload_adder = execute0_alu_io_adder;
  assign execute0_outInst_payload_pcPlus4 = (execute0_inInst_payload_pc + 32'h00000004);
  assign execute0_outInst_payload_needMemRsp = (execute0_inInst_payload_ctrl_men && (execute0_inInst_payload_ctrl_m == `M_binary_sequential_XRD));
  assign execute0_outInst_payload_dCmdAddress = dCmd_payload_address;
  always @ (*) begin
    case(execute0_outInst_payload_ctrl_msk)
      `MSK_binary_sequential_H : begin
        _zz_22 = dCmd_payload_address[0];
      end
      `MSK_binary_sequential_W : begin
        _zz_22 = (dCmd_payload_address[0] || dCmd_payload_address[1]);
      end
      default : begin
        _zz_22 = 1'b0;
      end
    endcase
  end

  assign execute0_outInst_payload_unalignedMemoryAccessException = (execute0_inInst_payload_ctrl_men && _zz_22);
  assign dCmd_valid = (((((execute0_inInst_valid && execute0_inInst_payload_ctrl_men) && (! execute0_outInst_payload_unalignedMemoryAccessException)) && (! execute0_halt)) && (! execute0_throwIt)) && execute0_outInst_ready);
  assign dCmd_payload_wr = (execute0_inInst_payload_ctrl_m == `M_binary_sequential_XWR);
  assign dCmd_payload_address = execute0_outInst_payload_adder;
  assign dCmd_payload_data = execute0_inInst_payload_src1;
  always @ (*) begin
    case(execute0_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : begin
        _zz_23 = 2'b00;
      end
      `MSK_binary_sequential_H : begin
        _zz_23 = 2'b01;
      end
      default : begin
        _zz_23 = 2'b10;
      end
    endcase
  end

  assign dCmd_payload_size = _zz_23;
  assign execute0_pendingDataCmd_readCountInc = ((dCmd_valid && dCmd_ready) && (! dCmd_payload_wr));
  assign execute0_pendingDataCmd_readCountDec = (dRsp_valid && dRsp_ready);
  always @ (*) begin
    execute0_flush = 1'b0;
    if(execute1_pcLoad_valid)begin
      execute0_flush = 1'b1;
    end
  end

  assign execute0_outInst_ready = ((1'b0 && (! execute1_inInst_valid)) || execute1_inInst_ready);
  assign execute1_inInst_valid = execute0_outInst_m2sPipe_rValid;
  assign execute1_inInst_payload_pc = execute0_outInst_m2sPipe_rData_pc;
  assign execute1_inInst_payload_instruction = execute0_outInst_m2sPipe_rData_instruction;
  assign execute1_inInst_payload_ctrl_instVal = execute0_outInst_m2sPipe_rData_ctrl_instVal;
  assign execute1_inInst_payload_ctrl_br = execute0_outInst_m2sPipe_rData_ctrl_br;
  assign execute1_inInst_payload_ctrl_jmp = execute0_outInst_m2sPipe_rData_ctrl_jmp;
  assign execute1_inInst_payload_ctrl_op0 = execute0_outInst_m2sPipe_rData_ctrl_op0;
  assign execute1_inInst_payload_ctrl_op1 = execute0_outInst_m2sPipe_rData_ctrl_op1;
  assign execute1_inInst_payload_ctrl_alu = execute0_outInst_m2sPipe_rData_ctrl_alu;
  assign execute1_inInst_payload_ctrl_wb = execute0_outInst_m2sPipe_rData_ctrl_wb;
  assign execute1_inInst_payload_ctrl_rfen = execute0_outInst_m2sPipe_rData_ctrl_rfen;
  assign execute1_inInst_payload_ctrl_execute0AluBypass = execute0_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  assign execute1_inInst_payload_ctrl_execute1AluBypass = execute0_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  assign execute1_inInst_payload_ctrl_canInternalyStallWriteBack0 = execute0_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  assign execute1_inInst_payload_ctrl_men = execute0_outInst_m2sPipe_rData_ctrl_men;
  assign execute1_inInst_payload_ctrl_m = execute0_outInst_m2sPipe_rData_ctrl_m;
  assign execute1_inInst_payload_ctrl_msk = execute0_outInst_m2sPipe_rData_ctrl_msk;
  assign execute1_inInst_payload_ctrl_csr = execute0_outInst_m2sPipe_rData_ctrl_csr;
  assign execute1_inInst_payload_ctrl_mfs = execute0_outInst_m2sPipe_rData_ctrl_mfs;
  assign execute1_inInst_payload_ctrl_useSrc0 = execute0_outInst_m2sPipe_rData_ctrl_useSrc0;
  assign execute1_inInst_payload_ctrl_useSrc1 = execute0_outInst_m2sPipe_rData_ctrl_useSrc1;
  assign execute1_inInst_payload_ctrl_extensionTag = execute0_outInst_m2sPipe_rData_ctrl_extensionTag;
  assign execute1_inInst_payload_ctrl_fencei = execute0_outInst_m2sPipe_rData_ctrl_fencei;
  assign execute1_inInst_payload_br_eq = execute0_outInst_m2sPipe_rData_br_eq;
  assign execute1_inInst_payload_br_ltx = execute0_outInst_m2sPipe_rData_br_ltx;
  assign execute1_inInst_payload_src1 = execute0_outInst_m2sPipe_rData_src1;
  assign execute1_inInst_payload_result = execute0_outInst_m2sPipe_rData_result;
  always @ (*) begin
    execute1_inInst_payload_adder = execute0_outInst_m2sPipe_rData_adder;
    if(execute1_inInst_valid)begin
      if(_zz_78)begin
        case(_zz_79)
          2'b00 : begin
            execute1_inInst_payload_adder = SimpleInterrupExtension_exitPc;
          end
          2'b01 : begin
          end
          2'b10 : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  assign execute1_inInst_payload_predictorHasBranch = execute0_outInst_m2sPipe_rData_predictorHasBranch;
  assign execute1_inInst_payload_branchHistory_valid = execute0_outInst_m2sPipe_rData_branchHistory_valid;
  assign execute1_inInst_payload_branchHistory_payload = execute0_outInst_m2sPipe_rData_branchHistory_payload;
  assign execute1_inInst_payload_pcPlus4 = execute0_outInst_m2sPipe_rData_pcPlus4;
  always @ (*) begin
    execute1_inInst_payload_pc_sel = execute0_outInst_m2sPipe_rData_pc_sel;
    if(execute1_inInst_valid)begin
      if(_zz_78)begin
        case(_zz_79)
          2'b00 : begin
            execute1_inInst_payload_pc_sel = `PC_binary_sequential_J;
          end
          2'b01 : begin
          end
          2'b10 : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  assign execute1_inInst_payload_unalignedMemoryAccessException = execute0_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  assign execute1_inInst_payload_needMemRsp = execute0_outInst_m2sPipe_rData_needMemRsp;
  assign execute1_inInst_payload_dCmdAddress = execute0_outInst_m2sPipe_rData_dCmdAddress;
  always @ (*) begin
    execute1_halt = 1'b0;
    if(_zz_80)begin
      if((! DivExtension_rspReady))begin
        execute1_halt = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute1_throwIt = 1'b0;
    if(execute1_flush)begin
      execute1_throwIt = 1'b1;
    end
    if(writeBack_flush)begin
      execute1_throwIt = 1'b1;
    end
  end

  always @ (*) begin
    case(execute1_inInst_payload_pc_sel)
      `PC_binary_sequential_INC : begin
        _zz_24 = execute1_inInst_payload_predictorHasBranch;
      end
      default : begin
        _zz_24 = (! execute1_inInst_payload_predictorHasBranch);
      end
    endcase
  end

  assign execute1_pcLoad_valid = (((! execute1_throwIt) && (execute1_inInst_valid && execute1_inInst_ready)) && _zz_24);
  always @ (*) begin
    case(execute1_inInst_payload_pc_sel)
      `PC_binary_sequential_INC : begin
        _zz_25 = execute1_inInst_payload_pcPlus4;
      end
      default : begin
        _zz_25 = execute1_inInst_payload_adder;
      end
    endcase
  end

  assign execute1_pcLoad_payload = _zz_25;
  assign execute1_newHistory = ($signed(_zz_99) + $signed(_zz_101));
  assign execute1_line_pc = execute1_inInst_payload_pc[31 : 9];
  always @ (*) begin
    if(execute1_inInst_payload_branchHistory_valid)begin
      execute1_line_history = execute1_newHistory[1:0];
    end else begin
      execute1_line_history = {{1{_zz_104[0]}}, _zz_104};
    end
  end

  always @ (*) begin
    execute1_inInst_thrown_valid = execute1_inInst_valid;
    if(execute1_throwIt)begin
      execute1_inInst_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    execute1_inInst_ready = execute1_inInst_thrown_ready;
    if(execute1_throwIt)begin
      execute1_inInst_ready = 1'b1;
    end
  end

  assign execute1_inInst_thrown_payload_pc = execute1_inInst_payload_pc;
  assign execute1_inInst_thrown_payload_instruction = execute1_inInst_payload_instruction;
  assign execute1_inInst_thrown_payload_ctrl_instVal = execute1_inInst_payload_ctrl_instVal;
  assign execute1_inInst_thrown_payload_ctrl_br = execute1_inInst_payload_ctrl_br;
  assign execute1_inInst_thrown_payload_ctrl_jmp = execute1_inInst_payload_ctrl_jmp;
  assign execute1_inInst_thrown_payload_ctrl_op0 = execute1_inInst_payload_ctrl_op0;
  assign execute1_inInst_thrown_payload_ctrl_op1 = execute1_inInst_payload_ctrl_op1;
  assign execute1_inInst_thrown_payload_ctrl_alu = execute1_inInst_payload_ctrl_alu;
  assign execute1_inInst_thrown_payload_ctrl_wb = execute1_inInst_payload_ctrl_wb;
  assign execute1_inInst_thrown_payload_ctrl_rfen = execute1_inInst_payload_ctrl_rfen;
  assign execute1_inInst_thrown_payload_ctrl_execute0AluBypass = execute1_inInst_payload_ctrl_execute0AluBypass;
  assign execute1_inInst_thrown_payload_ctrl_execute1AluBypass = execute1_inInst_payload_ctrl_execute1AluBypass;
  assign execute1_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 = execute1_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign execute1_inInst_thrown_payload_ctrl_men = execute1_inInst_payload_ctrl_men;
  assign execute1_inInst_thrown_payload_ctrl_m = execute1_inInst_payload_ctrl_m;
  assign execute1_inInst_thrown_payload_ctrl_msk = execute1_inInst_payload_ctrl_msk;
  assign execute1_inInst_thrown_payload_ctrl_csr = execute1_inInst_payload_ctrl_csr;
  assign execute1_inInst_thrown_payload_ctrl_mfs = execute1_inInst_payload_ctrl_mfs;
  assign execute1_inInst_thrown_payload_ctrl_useSrc0 = execute1_inInst_payload_ctrl_useSrc0;
  assign execute1_inInst_thrown_payload_ctrl_useSrc1 = execute1_inInst_payload_ctrl_useSrc1;
  assign execute1_inInst_thrown_payload_ctrl_extensionTag = execute1_inInst_payload_ctrl_extensionTag;
  assign execute1_inInst_thrown_payload_ctrl_fencei = execute1_inInst_payload_ctrl_fencei;
  assign execute1_inInst_thrown_payload_br_eq = execute1_inInst_payload_br_eq;
  assign execute1_inInst_thrown_payload_br_ltx = execute1_inInst_payload_br_ltx;
  assign execute1_inInst_thrown_payload_src1 = execute1_inInst_payload_src1;
  assign execute1_inInst_thrown_payload_result = execute1_inInst_payload_result;
  assign execute1_inInst_thrown_payload_adder = execute1_inInst_payload_adder;
  assign execute1_inInst_thrown_payload_predictorHasBranch = execute1_inInst_payload_predictorHasBranch;
  assign execute1_inInst_thrown_payload_branchHistory_valid = execute1_inInst_payload_branchHistory_valid;
  assign execute1_inInst_thrown_payload_branchHistory_payload = execute1_inInst_payload_branchHistory_payload;
  assign execute1_inInst_thrown_payload_pcPlus4 = execute1_inInst_payload_pcPlus4;
  assign execute1_inInst_thrown_payload_pc_sel = execute1_inInst_payload_pc_sel;
  assign execute1_inInst_thrown_payload_unalignedMemoryAccessException = execute1_inInst_payload_unalignedMemoryAccessException;
  assign execute1_inInst_thrown_payload_needMemRsp = execute1_inInst_payload_needMemRsp;
  assign execute1_inInst_thrown_payload_dCmdAddress = execute1_inInst_payload_dCmdAddress;
  assign _zz_26 = (! execute1_halt);
  assign execute1_inInst_thrown_ready = (execute1_outInst_ready && _zz_26);
  assign execute1_outInst_valid = (execute1_inInst_thrown_valid && _zz_26);
  assign execute1_outInst_payload_pc = execute1_inInst_payload_pc;
  always @ (*) begin
    execute1_outInst_payload_result = execute1_inInst_payload_result;
    if(_zz_80)begin
      execute1_outInst_payload_result = DivExtension_rsp;
    end
    case(execute1_inInst_payload_ctrl_alu)
      `ALU_opt_SLL1 : begin
        execute1_outInst_payload_result = _zz_33;
      end
      `ALU_opt_SRL_1, `ALU_opt_SRA_1 : begin
        execute1_outInst_payload_result = BarrelShifterFullExtension_s2_shiftRight;
      end
      default : begin
      end
    endcase
    if(execute1_inInst_valid)begin
      if(_zz_78)begin
        case(_zz_79)
          2'b00 : begin
          end
          2'b01 : begin
            execute1_outInst_payload_result = {24'd0, SimpleInterrupExtension_irqValue};
          end
          2'b10 : begin
          end
          default : begin
            execute1_outInst_payload_result = {24'd0, writeBack_irq_mask};
          end
        endcase
      end
    end
  end

  assign execute1_outInst_payload_regFileAddress = execute1_inInst_payload_instruction[11 : 7];
  assign execute1_outInst_payload_ctrl_instVal = execute1_inInst_payload_ctrl_instVal;
  assign execute1_outInst_payload_ctrl_br = execute1_inInst_payload_ctrl_br;
  assign execute1_outInst_payload_ctrl_jmp = execute1_inInst_payload_ctrl_jmp;
  assign execute1_outInst_payload_ctrl_op0 = execute1_inInst_payload_ctrl_op0;
  assign execute1_outInst_payload_ctrl_op1 = execute1_inInst_payload_ctrl_op1;
  assign execute1_outInst_payload_ctrl_alu = execute1_inInst_payload_ctrl_alu;
  assign execute1_outInst_payload_ctrl_wb = execute1_inInst_payload_ctrl_wb;
  assign execute1_outInst_payload_ctrl_rfen = execute1_inInst_payload_ctrl_rfen;
  assign execute1_outInst_payload_ctrl_execute0AluBypass = execute1_inInst_payload_ctrl_execute0AluBypass;
  assign execute1_outInst_payload_ctrl_execute1AluBypass = execute1_inInst_payload_ctrl_execute1AluBypass;
  assign execute1_outInst_payload_ctrl_canInternalyStallWriteBack0 = execute1_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign execute1_outInst_payload_ctrl_men = execute1_inInst_payload_ctrl_men;
  assign execute1_outInst_payload_ctrl_m = execute1_inInst_payload_ctrl_m;
  assign execute1_outInst_payload_ctrl_msk = execute1_inInst_payload_ctrl_msk;
  assign execute1_outInst_payload_ctrl_csr = execute1_inInst_payload_ctrl_csr;
  assign execute1_outInst_payload_ctrl_mfs = execute1_inInst_payload_ctrl_mfs;
  assign execute1_outInst_payload_ctrl_useSrc0 = execute1_inInst_payload_ctrl_useSrc0;
  assign execute1_outInst_payload_ctrl_useSrc1 = execute1_inInst_payload_ctrl_useSrc1;
  assign execute1_outInst_payload_ctrl_extensionTag = execute1_inInst_payload_ctrl_extensionTag;
  assign execute1_outInst_payload_ctrl_fencei = execute1_inInst_payload_ctrl_fencei;
  assign execute1_outInst_payload_instruction = execute1_inInst_payload_instruction;
  assign execute1_outInst_payload_pcPlus4 = execute1_inInst_payload_pcPlus4;
  assign execute1_outInst_payload_unalignedMemoryAccessException = execute1_inInst_payload_unalignedMemoryAccessException;
  assign execute1_outInst_payload_needMemRsp = execute1_inInst_payload_needMemRsp;
  assign execute1_outInst_payload_dCmdAddress = execute1_inInst_payload_dCmdAddress;
  always @ (*) begin
    execute1_flush = 1'b0;
    if(writeBack_pcLoad_valid)begin
      execute1_flush = 1'b1;
    end
  end

  assign execute1_outInst_ready = ((1'b0 && (! writeBack_inInst_valid)) || writeBack_inInst_ready);
  assign writeBack_inInst_valid = execute1_outInst_m2sPipe_rValid;
  assign writeBack_inInst_payload_pc = execute1_outInst_m2sPipe_rData_pc;
  assign writeBack_inInst_payload_instruction = execute1_outInst_m2sPipe_rData_instruction;
  assign writeBack_inInst_payload_ctrl_instVal = execute1_outInst_m2sPipe_rData_ctrl_instVal;
  assign writeBack_inInst_payload_ctrl_br = execute1_outInst_m2sPipe_rData_ctrl_br;
  assign writeBack_inInst_payload_ctrl_jmp = execute1_outInst_m2sPipe_rData_ctrl_jmp;
  assign writeBack_inInst_payload_ctrl_op0 = execute1_outInst_m2sPipe_rData_ctrl_op0;
  assign writeBack_inInst_payload_ctrl_op1 = execute1_outInst_m2sPipe_rData_ctrl_op1;
  assign writeBack_inInst_payload_ctrl_alu = execute1_outInst_m2sPipe_rData_ctrl_alu;
  assign writeBack_inInst_payload_ctrl_wb = execute1_outInst_m2sPipe_rData_ctrl_wb;
  assign writeBack_inInst_payload_ctrl_rfen = execute1_outInst_m2sPipe_rData_ctrl_rfen;
  assign writeBack_inInst_payload_ctrl_execute0AluBypass = execute1_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  assign writeBack_inInst_payload_ctrl_execute1AluBypass = execute1_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  assign writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0 = execute1_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  assign writeBack_inInst_payload_ctrl_men = execute1_outInst_m2sPipe_rData_ctrl_men;
  assign writeBack_inInst_payload_ctrl_m = execute1_outInst_m2sPipe_rData_ctrl_m;
  assign writeBack_inInst_payload_ctrl_msk = execute1_outInst_m2sPipe_rData_ctrl_msk;
  assign writeBack_inInst_payload_ctrl_csr = execute1_outInst_m2sPipe_rData_ctrl_csr;
  assign writeBack_inInst_payload_ctrl_mfs = execute1_outInst_m2sPipe_rData_ctrl_mfs;
  assign writeBack_inInst_payload_ctrl_useSrc0 = execute1_outInst_m2sPipe_rData_ctrl_useSrc0;
  assign writeBack_inInst_payload_ctrl_useSrc1 = execute1_outInst_m2sPipe_rData_ctrl_useSrc1;
  assign writeBack_inInst_payload_ctrl_extensionTag = execute1_outInst_m2sPipe_rData_ctrl_extensionTag;
  assign writeBack_inInst_payload_ctrl_fencei = execute1_outInst_m2sPipe_rData_ctrl_fencei;
  always @ (*) begin
    writeBack_inInst_payload_result = execute1_outInst_m2sPipe_rData_result;
    if((writeBack_inInst_payload_ctrl_extensionTag == 3'b001))begin
      case(_zz_88)
        2'b00 : begin
          writeBack_inInst_payload_result = _zz_119;
        end
        default : begin
          writeBack_inInst_payload_result = _zz_120;
        end
      endcase
    end
  end

  assign writeBack_inInst_payload_regFileAddress = execute1_outInst_m2sPipe_rData_regFileAddress;
  assign writeBack_inInst_payload_pcPlus4 = execute1_outInst_m2sPipe_rData_pcPlus4;
  assign writeBack_inInst_payload_unalignedMemoryAccessException = execute1_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  assign writeBack_inInst_payload_needMemRsp = execute1_outInst_m2sPipe_rData_needMemRsp;
  assign writeBack_inInst_payload_dCmdAddress = execute1_outInst_m2sPipe_rData_dCmdAddress;
  always @ (*) begin
    writeBack_throwIt = (! writeBack_inInst_payload_ctrl_rfen);
    if(writeBack_flush)begin
      writeBack_throwIt = 1'b1;
    end
    if(_zz_71)begin
      if(_zz_72)begin
        writeBack_throwIt = 1'b1;
      end
    end
  end

  always @ (*) begin
    writeBack_halt = 1'b0;
    if((((writeBack_irq_sources & (~ writeBack_irq_mask)) & 8'h02) != 8'h0))begin
      writeBack_halt = 1'b1;
    end
    if((writeBack_inInst_valid && writeBack_inInst_payload_needMemRsp))begin
      if((! dRsp_valid))begin
        writeBack_halt = 1'b1;
      end
    end
    if(writeBack_flushMemoryResponse)begin
      writeBack_halt = 1'b1;
    end
    if(DebugExtension_isInBreakpoint)begin
      writeBack_halt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_irq_sources = 8'h0;
    if(writeBack_inInst_valid)begin
      if((! writeBack_inInst_payload_ctrl_instVal))begin
        writeBack_irq_sources[0] = 1'b1;
      end
      if(writeBack_inInst_payload_unalignedMemoryAccessException)begin
        writeBack_irq_sources[1] = 1'b1;
      end
    end
    writeBack_irq_sources[5] = io_interrupt_1;
    writeBack_irq_sources[4] = io_interrupt_0;
    writeBack_irq_sources[7] = io_interrupt_3;
    writeBack_irq_sources[6] = io_interrupt_2;
  end

  assign writeBack_irq_masked = (writeBack_irq_sources & writeBack_irq_mask);
  always @ (*) begin
    writeBack_irq_inhibate = 1'b0;
    if((DebugExtension_haltIt || DebugExtension_stepIt))begin
      writeBack_irq_inhibate = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_pcLoad_valid = 1'b0;
    if(_zz_71)begin
      if(_zz_72)begin
        writeBack_pcLoad_valid = 1'b1;
      end else begin
        if(_zz_35)begin
          if(_zz_81)begin
            writeBack_pcLoad_valid = 1'b1;
          end
        end
      end
    end
  end

  always @ (*) begin
    writeBack_pcLoad_payload = 32'h0;
    if(_zz_71)begin
      if(_zz_72)begin
        writeBack_pcLoad_payload = 32'h00000020;
      end else begin
        if(_zz_35)begin
          if(_zz_81)begin
            writeBack_pcLoad_payload = 32'h00000020;
          end
        end
      end
    end
  end

  always @ (*) begin
    dRsp_ready = 1'b1;
    if(writeBack_flushMemoryResponse)begin
      dRsp_ready = 1'b1;
    end
  end

  assign _zz_27 = (dRsp_payload[7] && (! writeBack_inInst_payload_instruction[14]));
  always @ (*) begin
    _zz_28[31] = _zz_27;
    _zz_28[30] = _zz_27;
    _zz_28[29] = _zz_27;
    _zz_28[28] = _zz_27;
    _zz_28[27] = _zz_27;
    _zz_28[26] = _zz_27;
    _zz_28[25] = _zz_27;
    _zz_28[24] = _zz_27;
    _zz_28[23] = _zz_27;
    _zz_28[22] = _zz_27;
    _zz_28[21] = _zz_27;
    _zz_28[20] = _zz_27;
    _zz_28[19] = _zz_27;
    _zz_28[18] = _zz_27;
    _zz_28[17] = _zz_27;
    _zz_28[16] = _zz_27;
    _zz_28[15] = _zz_27;
    _zz_28[14] = _zz_27;
    _zz_28[13] = _zz_27;
    _zz_28[12] = _zz_27;
    _zz_28[11] = _zz_27;
    _zz_28[10] = _zz_27;
    _zz_28[9] = _zz_27;
    _zz_28[8] = _zz_27;
    _zz_28[7 : 0] = dRsp_payload[7 : 0];
  end

  assign _zz_29 = (dRsp_payload[15] && (! writeBack_inInst_payload_instruction[14]));
  always @ (*) begin
    _zz_30[31] = _zz_29;
    _zz_30[30] = _zz_29;
    _zz_30[29] = _zz_29;
    _zz_30[28] = _zz_29;
    _zz_30[27] = _zz_29;
    _zz_30[26] = _zz_29;
    _zz_30[25] = _zz_29;
    _zz_30[24] = _zz_29;
    _zz_30[23] = _zz_29;
    _zz_30[22] = _zz_29;
    _zz_30[21] = _zz_29;
    _zz_30[20] = _zz_29;
    _zz_30[19] = _zz_29;
    _zz_30[18] = _zz_29;
    _zz_30[17] = _zz_29;
    _zz_30[16] = _zz_29;
    _zz_30[15 : 0] = dRsp_payload[15 : 0];
  end

  always @ (*) begin
    case(writeBack_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : begin
        writeBack_dataRspFormated = _zz_28;
      end
      `MSK_binary_sequential_H : begin
        writeBack_dataRspFormated = _zz_30;
      end
      default : begin
        writeBack_dataRspFormated = dRsp_payload;
      end
    endcase
  end

  always @ (*) begin
    case(writeBack_inInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : begin
        writeBack_regFileData = writeBack_inInst_payload_result;
      end
      `WB_binary_sequential_MEM : begin
        writeBack_regFileData = writeBack_dataRspFormated;
      end
      `WB_binary_sequential_PC4 : begin
        writeBack_regFileData = writeBack_inInst_payload_pcPlus4;
      end
      default : begin
        writeBack_regFileData = 32'h0;
      end
    endcase
  end

  always @ (*) begin
    writeBack_inInst_thrown_valid = writeBack_inInst_valid;
    if(writeBack_throwIt)begin
      writeBack_inInst_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    writeBack_inInst_ready = writeBack_inInst_thrown_ready;
    if(writeBack_throwIt)begin
      writeBack_inInst_ready = 1'b1;
    end
  end

  assign writeBack_inInst_thrown_payload_pc = writeBack_inInst_payload_pc;
  assign writeBack_inInst_thrown_payload_instruction = writeBack_inInst_payload_instruction;
  assign writeBack_inInst_thrown_payload_ctrl_instVal = writeBack_inInst_payload_ctrl_instVal;
  assign writeBack_inInst_thrown_payload_ctrl_br = writeBack_inInst_payload_ctrl_br;
  assign writeBack_inInst_thrown_payload_ctrl_jmp = writeBack_inInst_payload_ctrl_jmp;
  assign writeBack_inInst_thrown_payload_ctrl_op0 = writeBack_inInst_payload_ctrl_op0;
  assign writeBack_inInst_thrown_payload_ctrl_op1 = writeBack_inInst_payload_ctrl_op1;
  assign writeBack_inInst_thrown_payload_ctrl_alu = writeBack_inInst_payload_ctrl_alu;
  assign writeBack_inInst_thrown_payload_ctrl_wb = writeBack_inInst_payload_ctrl_wb;
  assign writeBack_inInst_thrown_payload_ctrl_rfen = writeBack_inInst_payload_ctrl_rfen;
  assign writeBack_inInst_thrown_payload_ctrl_execute0AluBypass = writeBack_inInst_payload_ctrl_execute0AluBypass;
  assign writeBack_inInst_thrown_payload_ctrl_execute1AluBypass = writeBack_inInst_payload_ctrl_execute1AluBypass;
  assign writeBack_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 = writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign writeBack_inInst_thrown_payload_ctrl_men = writeBack_inInst_payload_ctrl_men;
  assign writeBack_inInst_thrown_payload_ctrl_m = writeBack_inInst_payload_ctrl_m;
  assign writeBack_inInst_thrown_payload_ctrl_msk = writeBack_inInst_payload_ctrl_msk;
  assign writeBack_inInst_thrown_payload_ctrl_csr = writeBack_inInst_payload_ctrl_csr;
  assign writeBack_inInst_thrown_payload_ctrl_mfs = writeBack_inInst_payload_ctrl_mfs;
  assign writeBack_inInst_thrown_payload_ctrl_useSrc0 = writeBack_inInst_payload_ctrl_useSrc0;
  assign writeBack_inInst_thrown_payload_ctrl_useSrc1 = writeBack_inInst_payload_ctrl_useSrc1;
  assign writeBack_inInst_thrown_payload_ctrl_extensionTag = writeBack_inInst_payload_ctrl_extensionTag;
  assign writeBack_inInst_thrown_payload_ctrl_fencei = writeBack_inInst_payload_ctrl_fencei;
  assign writeBack_inInst_thrown_payload_result = writeBack_inInst_payload_result;
  assign writeBack_inInst_thrown_payload_regFileAddress = writeBack_inInst_payload_regFileAddress;
  assign writeBack_inInst_thrown_payload_pcPlus4 = writeBack_inInst_payload_pcPlus4;
  assign writeBack_inInst_thrown_payload_unalignedMemoryAccessException = writeBack_inInst_payload_unalignedMemoryAccessException;
  assign writeBack_inInst_thrown_payload_needMemRsp = writeBack_inInst_payload_needMemRsp;
  assign writeBack_inInst_thrown_payload_dCmdAddress = writeBack_inInst_payload_dCmdAddress;
  assign _zz_31 = (! writeBack_halt);
  assign writeBack_inInst_thrown_ready = (writeBack_outInst_ready && _zz_31);
  assign writeBack_outInst_valid = (writeBack_inInst_thrown_valid && _zz_31);
  assign writeBack_outInst_payload_addr = writeBack_inInst_payload_regFileAddress;
  assign writeBack_outInst_payload_data = writeBack_regFileData;
  always @ (*) begin
    writeBack_regFileWrite_valid = (writeBack_outInst_valid && writeBack_outInst_ready);
    if(_zz_40)begin
      if(! _zz_73) begin
        if(_zz_41)begin
          writeBack_regFileWrite_valid = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    writeBack_regFileWrite_payload_address = writeBack_outInst_payload_addr;
    if(_zz_40)begin
      if(! _zz_73) begin
        if(_zz_41)begin
          writeBack_regFileWrite_payload_address = _zz_42[4 : 0];
        end
      end
    end
  end

  always @ (*) begin
    writeBack_regFileWrite_payload_data = writeBack_regFileData;
    if(_zz_40)begin
      if(! _zz_73) begin
        if(_zz_41)begin
          writeBack_regFileWrite_payload_data = _zz_43;
        end
      end
    end
  end

  always @ (*) begin
    writeBack_flush = 1'b0;
    if(DebugExtension_flushIt)begin
      writeBack_flush = 1'b1;
    end
  end

  assign writeBack_outInst_ready = ((1'b0 && (! writeBackBuffer_inInst_valid)) || writeBackBuffer_inInst_ready);
  assign writeBackBuffer_inInst_valid = writeBack_outInst_m2sPipe_rValid;
  assign writeBackBuffer_inInst_payload_addr = writeBack_outInst_m2sPipe_rData_addr;
  assign writeBackBuffer_inInst_payload_data = writeBack_outInst_m2sPipe_rData_data;
  assign writeBackBuffer_inInst_ready = 1'b1;
  always @ (*) begin
    prefetch_pcLoad_valid = decode_pcLoad_valid;
    if(execute1_pcLoad_valid)begin
      prefetch_pcLoad_valid = 1'b1;
    end
    if(writeBack_pcLoad_valid)begin
      prefetch_pcLoad_valid = 1'b1;
    end
  end

  always @ (*) begin
    prefetch_pcLoad_payload = decode_pcLoad_payload;
    if(execute1_pcLoad_valid)begin
      prefetch_pcLoad_payload = execute1_pcLoad_payload;
    end
    if(writeBack_pcLoad_valid)begin
      prefetch_pcLoad_payload = writeBack_pcLoad_payload;
    end
  end

  always @ (*) begin
    hazardTracker_src0Hazard = 1'b0;
    if(_zz_74)begin
      if(_zz_82)begin
        if(hazardTracker_A_addr0Match)begin
          hazardTracker_src0Hazard = 1'b1;
        end
      end
    end
    if(_zz_75)begin
      if(_zz_83)begin
        if(hazardTracker_E1_addr0Match)begin
          hazardTracker_src0Hazard = 1'b1;
        end
      end
    end
    if(_zz_76)begin
      if(_zz_84)begin
        if(hazardTracker_E0_addr0Match)begin
          hazardTracker_src0Hazard = 1'b1;
        end
      end
    end
    if((decode_addr0IsZero || (! decode_ctrl_useSrc0)))begin
      hazardTracker_src0Hazard = 1'b0;
    end
  end

  always @ (*) begin
    hazardTracker_src1Hazard = 1'b0;
    if(_zz_74)begin
      if(_zz_82)begin
        if(hazardTracker_A_addr1Match)begin
          hazardTracker_src1Hazard = 1'b1;
        end
      end
    end
    if(_zz_75)begin
      if(_zz_83)begin
        if(hazardTracker_E1_addr1Match)begin
          hazardTracker_src1Hazard = 1'b1;
        end
      end
    end
    if(_zz_76)begin
      if(_zz_84)begin
        if(hazardTracker_E0_addr1Match)begin
          hazardTracker_src1Hazard = 1'b1;
        end
      end
    end
    if((decode_addr1IsZero || (! decode_ctrl_useSrc1)))begin
      hazardTracker_src1Hazard = 1'b0;
    end
  end

  assign decode_hazard = (hazardTracker_src0Hazard || hazardTracker_src1Hazard);
  assign hazardTracker_W2R_addr0Match = (writeBackBuffer_inInst_payload_addr == decode_addr0);
  assign hazardTracker_W2R_addr1Match = (writeBackBuffer_inInst_payload_addr == decode_addr1);
  assign hazardTracker_A_addr0Match = (writeBack_outInst_payload_addr == decode_addr0);
  assign hazardTracker_A_addr1Match = (writeBack_outInst_payload_addr == decode_addr1);
  assign hazardTracker_E1_addr0Match = (execute1_outInst_payload_instruction[11 : 7] == decode_addr0);
  assign hazardTracker_E1_addr1Match = (execute1_outInst_payload_instruction[11 : 7] == decode_addr1);
  assign hazardTracker_E0_addr0Match = (execute0_outInst_payload_instruction[11 : 7] == decode_addr0);
  assign hazardTracker_E0_addr1Match = (execute0_outInst_payload_instruction[11 : 7] == decode_addr1);
  assign MulExtension_s1_a = execute0_inInst_payload_alu_op0;
  assign MulExtension_s1_b = execute0_inInst_payload_alu_op1;
  always @ (*) begin
    case(_zz_85)
      2'b01 : begin
        MulExtension_s1_aSigned = 1'b1;
      end
      2'b10 : begin
        MulExtension_s1_aSigned = 1'b1;
      end
      default : begin
        MulExtension_s1_aSigned = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    case(_zz_85)
      2'b01 : begin
        MulExtension_s1_bSigned = 1'b1;
      end
      2'b10 : begin
        MulExtension_s1_bSigned = 1'b0;
      end
      default : begin
        MulExtension_s1_bSigned = 1'b0;
      end
    endcase
  end

  assign MulExtension_s1_aULow = MulExtension_s1_a[15 : 0];
  assign MulExtension_s1_bULow = MulExtension_s1_b[15 : 0];
  assign MulExtension_s1_aSLow = {1'b0,MulExtension_s1_a[15 : 0]};
  assign MulExtension_s1_bSLow = {1'b0,MulExtension_s1_b[15 : 0]};
  assign MulExtension_s1_aHigh = {(MulExtension_s1_aSigned && MulExtension_s1_a[31]),MulExtension_s1_a[31 : 16]};
  assign MulExtension_s1_bHigh = {(MulExtension_s1_bSigned && MulExtension_s1_b[31]),MulExtension_s1_b[31 : 16]};
  assign MulExtension_s1_mul_ll = (MulExtension_s1_aULow * MulExtension_s1_bULow);
  assign MulExtension_s1_mul_lh = ($signed(MulExtension_s1_aSLow) * $signed(MulExtension_s1_bHigh));
  assign MulExtension_s1_mul_hl = ($signed(MulExtension_s1_aHigh) * $signed(MulExtension_s1_bSLow));
  assign MulExtension_s1_mul_hh = ($signed(MulExtension_s1_aHigh) * $signed(MulExtension_s1_bHigh));
  assign MulExtension_s2_low = ($signed(_zz_109) + $signed(_zz_116));
  assign MulExtension_s3_result = ($signed(_zz_117) + $signed(_zz_118));
  always @ (*) begin
    _zz_47 = 1'b0;
    if(_zz_77)begin
      _zz_47 = execute0_outInst_valid;
    end
  end

  assign _zz_48 = (! execute0_inInst_payload_instruction[12]);
  always @ (*) begin
    _zz_49 = 1'b0;
    if(_zz_80)begin
      _zz_49 = (execute1_inInst_ready && DivExtension_rspReady);
    end
  end

  assign BarrelShifterFullExtension_s1_amplitude = execute0_inInst_payload_alu_op1[4 : 0];
  always @ (*) begin
    _zz_32[0] = execute0_inInst_payload_alu_op0[31];
    _zz_32[1] = execute0_inInst_payload_alu_op0[30];
    _zz_32[2] = execute0_inInst_payload_alu_op0[29];
    _zz_32[3] = execute0_inInst_payload_alu_op0[28];
    _zz_32[4] = execute0_inInst_payload_alu_op0[27];
    _zz_32[5] = execute0_inInst_payload_alu_op0[26];
    _zz_32[6] = execute0_inInst_payload_alu_op0[25];
    _zz_32[7] = execute0_inInst_payload_alu_op0[24];
    _zz_32[8] = execute0_inInst_payload_alu_op0[23];
    _zz_32[9] = execute0_inInst_payload_alu_op0[22];
    _zz_32[10] = execute0_inInst_payload_alu_op0[21];
    _zz_32[11] = execute0_inInst_payload_alu_op0[20];
    _zz_32[12] = execute0_inInst_payload_alu_op0[19];
    _zz_32[13] = execute0_inInst_payload_alu_op0[18];
    _zz_32[14] = execute0_inInst_payload_alu_op0[17];
    _zz_32[15] = execute0_inInst_payload_alu_op0[16];
    _zz_32[16] = execute0_inInst_payload_alu_op0[15];
    _zz_32[17] = execute0_inInst_payload_alu_op0[14];
    _zz_32[18] = execute0_inInst_payload_alu_op0[13];
    _zz_32[19] = execute0_inInst_payload_alu_op0[12];
    _zz_32[20] = execute0_inInst_payload_alu_op0[11];
    _zz_32[21] = execute0_inInst_payload_alu_op0[10];
    _zz_32[22] = execute0_inInst_payload_alu_op0[9];
    _zz_32[23] = execute0_inInst_payload_alu_op0[8];
    _zz_32[24] = execute0_inInst_payload_alu_op0[7];
    _zz_32[25] = execute0_inInst_payload_alu_op0[6];
    _zz_32[26] = execute0_inInst_payload_alu_op0[5];
    _zz_32[27] = execute0_inInst_payload_alu_op0[4];
    _zz_32[28] = execute0_inInst_payload_alu_op0[3];
    _zz_32[29] = execute0_inInst_payload_alu_op0[2];
    _zz_32[30] = execute0_inInst_payload_alu_op0[1];
    _zz_32[31] = execute0_inInst_payload_alu_op0[0];
  end

  assign BarrelShifterFullExtension_s1_reversed = ((execute0_inInst_payload_ctrl_alu == `ALU_opt_SLL1) ? _zz_32 : execute0_inInst_payload_alu_op0);
  assign BarrelShifterFullExtension_s1_shiftRight = _zz_122;
  always @ (*) begin
    _zz_33[0] = BarrelShifterFullExtension_s2_shiftRight[31];
    _zz_33[1] = BarrelShifterFullExtension_s2_shiftRight[30];
    _zz_33[2] = BarrelShifterFullExtension_s2_shiftRight[29];
    _zz_33[3] = BarrelShifterFullExtension_s2_shiftRight[28];
    _zz_33[4] = BarrelShifterFullExtension_s2_shiftRight[27];
    _zz_33[5] = BarrelShifterFullExtension_s2_shiftRight[26];
    _zz_33[6] = BarrelShifterFullExtension_s2_shiftRight[25];
    _zz_33[7] = BarrelShifterFullExtension_s2_shiftRight[24];
    _zz_33[8] = BarrelShifterFullExtension_s2_shiftRight[23];
    _zz_33[9] = BarrelShifterFullExtension_s2_shiftRight[22];
    _zz_33[10] = BarrelShifterFullExtension_s2_shiftRight[21];
    _zz_33[11] = BarrelShifterFullExtension_s2_shiftRight[20];
    _zz_33[12] = BarrelShifterFullExtension_s2_shiftRight[19];
    _zz_33[13] = BarrelShifterFullExtension_s2_shiftRight[18];
    _zz_33[14] = BarrelShifterFullExtension_s2_shiftRight[17];
    _zz_33[15] = BarrelShifterFullExtension_s2_shiftRight[16];
    _zz_33[16] = BarrelShifterFullExtension_s2_shiftRight[15];
    _zz_33[17] = BarrelShifterFullExtension_s2_shiftRight[14];
    _zz_33[18] = BarrelShifterFullExtension_s2_shiftRight[13];
    _zz_33[19] = BarrelShifterFullExtension_s2_shiftRight[12];
    _zz_33[20] = BarrelShifterFullExtension_s2_shiftRight[11];
    _zz_33[21] = BarrelShifterFullExtension_s2_shiftRight[10];
    _zz_33[22] = BarrelShifterFullExtension_s2_shiftRight[9];
    _zz_33[23] = BarrelShifterFullExtension_s2_shiftRight[8];
    _zz_33[24] = BarrelShifterFullExtension_s2_shiftRight[7];
    _zz_33[25] = BarrelShifterFullExtension_s2_shiftRight[6];
    _zz_33[26] = BarrelShifterFullExtension_s2_shiftRight[5];
    _zz_33[27] = BarrelShifterFullExtension_s2_shiftRight[4];
    _zz_33[28] = BarrelShifterFullExtension_s2_shiftRight[3];
    _zz_33[29] = BarrelShifterFullExtension_s2_shiftRight[2];
    _zz_33[30] = BarrelShifterFullExtension_s2_shiftRight[1];
    _zz_33[31] = BarrelShifterFullExtension_s2_shiftRight[0];
  end

  always @ (*) begin
    SimpleInterrupExtension_irqValue = 8'h0;
    SimpleInterrupExtension_irqValue[5] = writeBack_irq_masked[5];
    SimpleInterrupExtension_irqValue[4] = writeBack_irq_masked[4];
    SimpleInterrupExtension_irqValue[7] = writeBack_irq_masked[7];
    SimpleInterrupExtension_irqValue[1] = _zz_34;
    SimpleInterrupExtension_irqValue[6] = writeBack_irq_masked[6];
  end

  assign CachedInstructionBus_coreIRsp_s2mPipe_valid = (CachedInstructionBus_coreIRsp_valid || CachedInstructionBus_coreIRsp_s2mPipe_rValid);
  assign CachedInstructionBus_coreIRsp_ready = (! CachedInstructionBus_coreIRsp_s2mPipe_rValid);
  assign CachedInstructionBus_coreIRsp_s2mPipe_payload_instruction = (CachedInstructionBus_coreIRsp_s2mPipe_rValid ? CachedInstructionBus_coreIRsp_s2mPipe_rData_instruction : CachedInstructionBus_coreIRsp_payload_instruction);
  assign CachedInstructionBus_coreIRsp_s2mPipe_payload_pc = (CachedInstructionBus_coreIRsp_s2mPipe_rValid ? CachedInstructionBus_coreIRsp_s2mPipe_rData_pc : CachedInstructionBus_coreIRsp_payload_pc);
  assign CachedInstructionBus_coreIRsp_s2mPipe_payload_branchCacheLine_pc = (CachedInstructionBus_coreIRsp_s2mPipe_rValid ? CachedInstructionBus_coreIRsp_s2mPipe_rData_branchCacheLine_pc : CachedInstructionBus_coreIRsp_payload_branchCacheLine_pc);
  assign CachedInstructionBus_coreIRsp_s2mPipe_payload_branchCacheLine_history = (CachedInstructionBus_coreIRsp_s2mPipe_rValid ? CachedInstructionBus_coreIRsp_s2mPipe_rData_branchCacheLine_history : CachedInstructionBus_coreIRsp_payload_branchCacheLine_history);
  assign iRsp_valid = CachedInstructionBus_coreIRsp_s2mPipe_valid;
  assign CachedInstructionBus_coreIRsp_s2mPipe_ready = iRsp_ready;
  assign iRsp_payload_instruction = CachedInstructionBus_coreIRsp_s2mPipe_payload_instruction;
  assign iRsp_payload_pc = CachedInstructionBus_coreIRsp_s2mPipe_payload_pc;
  assign iRsp_payload_branchCacheLine_pc = CachedInstructionBus_coreIRsp_s2mPipe_payload_branchCacheLine_pc;
  assign iRsp_payload_branchCacheLine_history = CachedInstructionBus_coreIRsp_s2mPipe_payload_branchCacheLine_history;
  assign iCmd_ready = CachedInstructionBus_cache_io_cpu_cmd_ready;
  assign CachedInstructionBus_coreIRsp_valid = CachedInstructionBus_cache_io_cpu_rsp_valid;
  assign CachedInstructionBus_coreIRsp_payload_pc = CachedInstructionBus_cache_io_cpu_rsp_payload_address;
  assign CachedInstructionBus_coreIRsp_payload_instruction = CachedInstructionBus_cache_io_cpu_rsp_payload_data;
  assign _zz_36 = iCmd_payload_pc[8 : 2];
  assign _zz_37 = (iCmd_valid && CachedInstructionBus_cache_io_cpu_cmd_ready);
  assign _zz_38 = _zz_52;
  assign CachedInstructionBus_coreIRsp_payload_branchCacheLine_pc = _zz_38[22 : 0];
  assign CachedInstructionBus_coreIRsp_payload_branchCacheLine_history = _zz_38[24 : 23];
  assign io_i_cmd_valid = CachedInstructionBus_cache_io_mem_cmd_valid;
  assign io_i_cmd_payload_address = CachedInstructionBus_cache_io_mem_cmd_payload_address;
  assign io_d_cmd_valid = dCmd_valid;
  assign dCmd_ready = io_d_cmd_ready;
  assign io_d_cmd_payload_wr = dCmd_payload_wr;
  assign io_d_cmd_payload_address = dCmd_payload_address;
  assign io_d_cmd_payload_data = dCmd_payload_data;
  assign io_d_cmd_payload_size = dCmd_payload_size;
  assign dRsp_valid = io_d_rsp_valid;
  assign io_d_rsp_ready = dRsp_ready;
  assign dRsp_payload = io_d_rsp_payload;
  always @ (*) begin
    _zz_44 = DebugExtension_busReadDataReg;
    if(DebugExtension_readRegFileReg)begin
      _zz_44 = decode_src0;
    end
  end

  assign DebugExtension_isPipBusy = (DebugExtension_isPipActive || DebugExtension_isPipActive_regNext);
  assign DebugExtension_isInBreakpoint = (writeBack_inInst_valid && (writeBack_inInst_payload_ctrl_extensionTag == 3'b100));
  assign _zz_45 = DebugExtension_resetIt_regNext;
  always @ (posedge io_axiClk or posedge resetCtrl_coreReset) begin
    if (resetCtrl_coreReset) begin
      prefetch_pc <= 32'h0;
      prefetch_inc <= 1'b0;
      prefetch_resetDone <= 1'b0;
      fetch_pendingPrefetch_value <= 2'b00;
      fetch_throwRemaining <= 2'b00;
      fetch_outInst_m2sPipe_rValid <= 1'b0;
      decode_outInst_m2sPipe_rValid <= 1'b0;
      execute0_pendingDataCmd_readCount <= 2'b00;
      execute0_outInst_m2sPipe_rValid <= 1'b0;
      execute1_outInst_m2sPipe_rValid <= 1'b0;
      writeBack_irq_mask <= 8'h0;
      writeBack_flushMemoryResponse <= 1'b0;
      writeBack_outInst_m2sPipe_rValid <= 1'b0;
      DivExtension_rspReady <= 1'b0;
      SimpleInterrupExtension_inIrq <= 1'b0;
      CachedInstructionBus_coreIRsp_s2mPipe_rValid <= 1'b0;
      _zz_39 <= 1'b0;
    end else begin
      prefetch_resetDone <= 1'b1;
      if(((iCmd_valid && iCmd_ready) || prefetch_pcLoad_valid))begin
        prefetch_pc <= prefetch_pcNext;
      end
      if((iCmd_valid && iCmd_ready))begin
        prefetch_inc <= 1'b1;
      end else begin
        if(prefetch_pcLoad_valid)begin
          prefetch_inc <= 1'b0;
        end
      end
      fetch_pendingPrefetch_value <= fetch_pendingPrefetch_valueNext;
      if((fetch_throwNextIRsp && (iRsp_valid && iRsp_ready)))begin
        fetch_throwRemaining <= (fetch_throwRemaining - 2'b01);
      end
      if(fetch_throwIt)begin
        fetch_throwRemaining <= (fetch_pendingPrefetch_value - _zz_90);
      end
      if(fetch_outInst_ready)begin
        fetch_outInst_m2sPipe_rValid <= fetch_outInst_valid;
      end
      if(decode_outInst_ready)begin
        decode_outInst_m2sPipe_rValid <= decode_outInst_valid;
      end
      if((execute0_pendingDataCmd_readCountInc != execute0_pendingDataCmd_readCountDec))begin
        execute0_pendingDataCmd_readCount <= (execute0_pendingDataCmd_readCount + (execute0_pendingDataCmd_readCountInc ? 2'b01 : 2'b11));
      end
      if(execute0_outInst_ready)begin
        execute0_outInst_m2sPipe_rValid <= execute0_outInst_valid;
      end
      if(execute1_outInst_ready)begin
        execute1_outInst_m2sPipe_rValid <= execute1_outInst_valid;
      end
      if((execute0_pendingDataCmd_readCount == 2'b00))begin
        writeBack_flushMemoryResponse <= 1'b0;
      end
      if(writeBack_outInst_ready)begin
        writeBack_outInst_m2sPipe_rValid <= writeBack_outInst_valid;
      end
      if(_zz_80)begin
        DivExtension_rspReady <= (DivExtension_divider_io_rsp_valid && (! execute1_inInst_ready));
      end
      if(execute1_throwIt)begin
        DivExtension_rspReady <= 1'b0;
      end
      if(_zz_71)begin
        if(_zz_72)begin
          writeBack_flushMemoryResponse <= 1'b1;
          SimpleInterrupExtension_inIrq <= 1'b1;
        end else begin
          if(_zz_35)begin
            if(_zz_81)begin
              SimpleInterrupExtension_inIrq <= 1'b1;
            end
          end
        end
      end
      if(execute1_inInst_valid)begin
        if(_zz_78)begin
          case(_zz_79)
            2'b00 : begin
              if((execute1_outInst_valid && execute1_outInst_ready))begin
                SimpleInterrupExtension_inIrq <= 1'b0;
              end
            end
            2'b01 : begin
            end
            2'b10 : begin
              writeBack_irq_mask <= execute1_inInst_payload_result[7:0];
            end
            default : begin
            end
          endcase
        end
      end
      if(CachedInstructionBus_coreIRsp_s2mPipe_ready)begin
        CachedInstructionBus_coreIRsp_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_86)begin
        CachedInstructionBus_coreIRsp_s2mPipe_rValid <= CachedInstructionBus_coreIRsp_valid;
      end
      if(CachedInstructionBus_cache_io_flush_cmd_ready)begin
        _zz_39 <= 1'b0;
      end
      if((execute1_inInst_valid && execute1_inInst_payload_ctrl_fencei))begin
        if(execute1_inInst_ready)begin
          _zz_39 <= 1'b1;
        end
      end
      if(_zz_40)begin
        if(_zz_73)begin
          case(_zz_87)
            7'h01 : begin
              if(_zz_41)begin
                prefetch_pc <= _zz_43;
                prefetch_inc <= 1'b0;
              end
            end
            7'h02 : begin
              if(_zz_41)begin
                fetch_outInst_m2sPipe_rValid <= (! _zz_46);
              end
            end
            default : begin
            end
          endcase
        end
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(fetch_outInst_ready)begin
      fetch_outInst_m2sPipe_rData_pc <= fetch_outInst_payload_pc;
      fetch_outInst_m2sPipe_rData_instruction <= fetch_outInst_payload_instruction;
      fetch_outInst_m2sPipe_rData_branchCacheLine_pc <= fetch_outInst_payload_branchCacheLine_pc;
      fetch_outInst_m2sPipe_rData_branchCacheLine_history <= fetch_outInst_payload_branchCacheLine_history;
    end
    if(decode_outInst_ready)begin
      decode_outInst_m2sPipe_rData_pc <= decode_outInst_payload_pc;
      decode_outInst_m2sPipe_rData_instruction <= decode_outInst_payload_instruction;
      decode_outInst_m2sPipe_rData_ctrl_instVal <= decode_outInst_payload_ctrl_instVal;
      decode_outInst_m2sPipe_rData_ctrl_br <= decode_outInst_payload_ctrl_br;
      decode_outInst_m2sPipe_rData_ctrl_jmp <= decode_outInst_payload_ctrl_jmp;
      decode_outInst_m2sPipe_rData_ctrl_op0 <= decode_outInst_payload_ctrl_op0;
      decode_outInst_m2sPipe_rData_ctrl_op1 <= decode_outInst_payload_ctrl_op1;
      decode_outInst_m2sPipe_rData_ctrl_alu <= decode_outInst_payload_ctrl_alu;
      decode_outInst_m2sPipe_rData_ctrl_wb <= decode_outInst_payload_ctrl_wb;
      decode_outInst_m2sPipe_rData_ctrl_rfen <= decode_outInst_payload_ctrl_rfen;
      decode_outInst_m2sPipe_rData_ctrl_execute0AluBypass <= decode_outInst_payload_ctrl_execute0AluBypass;
      decode_outInst_m2sPipe_rData_ctrl_execute1AluBypass <= decode_outInst_payload_ctrl_execute1AluBypass;
      decode_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 <= decode_outInst_payload_ctrl_canInternalyStallWriteBack0;
      decode_outInst_m2sPipe_rData_ctrl_men <= decode_outInst_payload_ctrl_men;
      decode_outInst_m2sPipe_rData_ctrl_m <= decode_outInst_payload_ctrl_m;
      decode_outInst_m2sPipe_rData_ctrl_msk <= decode_outInst_payload_ctrl_msk;
      decode_outInst_m2sPipe_rData_ctrl_csr <= decode_outInst_payload_ctrl_csr;
      decode_outInst_m2sPipe_rData_ctrl_mfs <= decode_outInst_payload_ctrl_mfs;
      decode_outInst_m2sPipe_rData_ctrl_useSrc0 <= decode_outInst_payload_ctrl_useSrc0;
      decode_outInst_m2sPipe_rData_ctrl_useSrc1 <= decode_outInst_payload_ctrl_useSrc1;
      decode_outInst_m2sPipe_rData_ctrl_extensionTag <= decode_outInst_payload_ctrl_extensionTag;
      decode_outInst_m2sPipe_rData_ctrl_fencei <= decode_outInst_payload_ctrl_fencei;
      decode_outInst_m2sPipe_rData_src0 <= decode_outInst_payload_src0;
      decode_outInst_m2sPipe_rData_src1 <= decode_outInst_payload_src1;
      decode_outInst_m2sPipe_rData_alu_op0 <= decode_outInst_payload_alu_op0;
      decode_outInst_m2sPipe_rData_alu_op1 <= decode_outInst_payload_alu_op1;
      decode_outInst_m2sPipe_rData_doSub <= decode_outInst_payload_doSub;
      decode_outInst_m2sPipe_rData_predictorHasBranch <= decode_outInst_payload_predictorHasBranch;
      decode_outInst_m2sPipe_rData_branchHistory_valid <= decode_outInst_payload_branchHistory_valid;
      decode_outInst_m2sPipe_rData_branchHistory_payload <= decode_outInst_payload_branchHistory_payload;
    end
    if(execute0_outInst_ready)begin
      execute0_outInst_m2sPipe_rData_pc <= execute0_outInst_payload_pc;
      execute0_outInst_m2sPipe_rData_instruction <= execute0_outInst_payload_instruction;
      execute0_outInst_m2sPipe_rData_ctrl_instVal <= execute0_outInst_payload_ctrl_instVal;
      execute0_outInst_m2sPipe_rData_ctrl_br <= execute0_outInst_payload_ctrl_br;
      execute0_outInst_m2sPipe_rData_ctrl_jmp <= execute0_outInst_payload_ctrl_jmp;
      execute0_outInst_m2sPipe_rData_ctrl_op0 <= execute0_outInst_payload_ctrl_op0;
      execute0_outInst_m2sPipe_rData_ctrl_op1 <= execute0_outInst_payload_ctrl_op1;
      execute0_outInst_m2sPipe_rData_ctrl_alu <= execute0_outInst_payload_ctrl_alu;
      execute0_outInst_m2sPipe_rData_ctrl_wb <= execute0_outInst_payload_ctrl_wb;
      execute0_outInst_m2sPipe_rData_ctrl_rfen <= execute0_outInst_payload_ctrl_rfen;
      execute0_outInst_m2sPipe_rData_ctrl_execute0AluBypass <= execute0_outInst_payload_ctrl_execute0AluBypass;
      execute0_outInst_m2sPipe_rData_ctrl_execute1AluBypass <= execute0_outInst_payload_ctrl_execute1AluBypass;
      execute0_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 <= execute0_outInst_payload_ctrl_canInternalyStallWriteBack0;
      execute0_outInst_m2sPipe_rData_ctrl_men <= execute0_outInst_payload_ctrl_men;
      execute0_outInst_m2sPipe_rData_ctrl_m <= execute0_outInst_payload_ctrl_m;
      execute0_outInst_m2sPipe_rData_ctrl_msk <= execute0_outInst_payload_ctrl_msk;
      execute0_outInst_m2sPipe_rData_ctrl_csr <= execute0_outInst_payload_ctrl_csr;
      execute0_outInst_m2sPipe_rData_ctrl_mfs <= execute0_outInst_payload_ctrl_mfs;
      execute0_outInst_m2sPipe_rData_ctrl_useSrc0 <= execute0_outInst_payload_ctrl_useSrc0;
      execute0_outInst_m2sPipe_rData_ctrl_useSrc1 <= execute0_outInst_payload_ctrl_useSrc1;
      execute0_outInst_m2sPipe_rData_ctrl_extensionTag <= execute0_outInst_payload_ctrl_extensionTag;
      execute0_outInst_m2sPipe_rData_ctrl_fencei <= execute0_outInst_payload_ctrl_fencei;
      execute0_outInst_m2sPipe_rData_br_eq <= execute0_outInst_payload_br_eq;
      execute0_outInst_m2sPipe_rData_br_ltx <= execute0_outInst_payload_br_ltx;
      execute0_outInst_m2sPipe_rData_src1 <= execute0_outInst_payload_src1;
      execute0_outInst_m2sPipe_rData_result <= execute0_outInst_payload_result;
      execute0_outInst_m2sPipe_rData_adder <= execute0_outInst_payload_adder;
      execute0_outInst_m2sPipe_rData_predictorHasBranch <= execute0_outInst_payload_predictorHasBranch;
      execute0_outInst_m2sPipe_rData_branchHistory_valid <= execute0_outInst_payload_branchHistory_valid;
      execute0_outInst_m2sPipe_rData_branchHistory_payload <= execute0_outInst_payload_branchHistory_payload;
      execute0_outInst_m2sPipe_rData_pcPlus4 <= execute0_outInst_payload_pcPlus4;
      execute0_outInst_m2sPipe_rData_pc_sel <= execute0_outInst_payload_pc_sel;
      execute0_outInst_m2sPipe_rData_unalignedMemoryAccessException <= execute0_outInst_payload_unalignedMemoryAccessException;
      execute0_outInst_m2sPipe_rData_needMemRsp <= execute0_outInst_payload_needMemRsp;
      execute0_outInst_m2sPipe_rData_dCmdAddress <= execute0_outInst_payload_dCmdAddress;
    end
    if(execute1_outInst_ready)begin
      execute1_outInst_m2sPipe_rData_pc <= execute1_outInst_payload_pc;
      execute1_outInst_m2sPipe_rData_instruction <= execute1_outInst_payload_instruction;
      execute1_outInst_m2sPipe_rData_ctrl_instVal <= execute1_outInst_payload_ctrl_instVal;
      execute1_outInst_m2sPipe_rData_ctrl_br <= execute1_outInst_payload_ctrl_br;
      execute1_outInst_m2sPipe_rData_ctrl_jmp <= execute1_outInst_payload_ctrl_jmp;
      execute1_outInst_m2sPipe_rData_ctrl_op0 <= execute1_outInst_payload_ctrl_op0;
      execute1_outInst_m2sPipe_rData_ctrl_op1 <= execute1_outInst_payload_ctrl_op1;
      execute1_outInst_m2sPipe_rData_ctrl_alu <= execute1_outInst_payload_ctrl_alu;
      execute1_outInst_m2sPipe_rData_ctrl_wb <= execute1_outInst_payload_ctrl_wb;
      execute1_outInst_m2sPipe_rData_ctrl_rfen <= execute1_outInst_payload_ctrl_rfen;
      execute1_outInst_m2sPipe_rData_ctrl_execute0AluBypass <= execute1_outInst_payload_ctrl_execute0AluBypass;
      execute1_outInst_m2sPipe_rData_ctrl_execute1AluBypass <= execute1_outInst_payload_ctrl_execute1AluBypass;
      execute1_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 <= execute1_outInst_payload_ctrl_canInternalyStallWriteBack0;
      execute1_outInst_m2sPipe_rData_ctrl_men <= execute1_outInst_payload_ctrl_men;
      execute1_outInst_m2sPipe_rData_ctrl_m <= execute1_outInst_payload_ctrl_m;
      execute1_outInst_m2sPipe_rData_ctrl_msk <= execute1_outInst_payload_ctrl_msk;
      execute1_outInst_m2sPipe_rData_ctrl_csr <= execute1_outInst_payload_ctrl_csr;
      execute1_outInst_m2sPipe_rData_ctrl_mfs <= execute1_outInst_payload_ctrl_mfs;
      execute1_outInst_m2sPipe_rData_ctrl_useSrc0 <= execute1_outInst_payload_ctrl_useSrc0;
      execute1_outInst_m2sPipe_rData_ctrl_useSrc1 <= execute1_outInst_payload_ctrl_useSrc1;
      execute1_outInst_m2sPipe_rData_ctrl_extensionTag <= execute1_outInst_payload_ctrl_extensionTag;
      execute1_outInst_m2sPipe_rData_ctrl_fencei <= execute1_outInst_payload_ctrl_fencei;
      execute1_outInst_m2sPipe_rData_result <= execute1_outInst_payload_result;
      execute1_outInst_m2sPipe_rData_regFileAddress <= execute1_outInst_payload_regFileAddress;
      execute1_outInst_m2sPipe_rData_pcPlus4 <= execute1_outInst_payload_pcPlus4;
      execute1_outInst_m2sPipe_rData_unalignedMemoryAccessException <= execute1_outInst_payload_unalignedMemoryAccessException;
      execute1_outInst_m2sPipe_rData_needMemRsp <= execute1_outInst_payload_needMemRsp;
      execute1_outInst_m2sPipe_rData_dCmdAddress <= execute1_outInst_payload_dCmdAddress;
    end
    if(writeBack_outInst_ready)begin
      writeBack_outInst_m2sPipe_rData_addr <= writeBack_outInst_payload_addr;
      writeBack_outInst_m2sPipe_rData_data <= writeBack_outInst_payload_data;
    end
    if(execute0_outInst_ready)begin
      MulExtension_s2_mul_ll <= MulExtension_s1_mul_ll;
    end
    if(execute0_outInst_ready)begin
      MulExtension_s2_mul_lh <= MulExtension_s1_mul_lh;
    end
    if(execute0_outInst_ready)begin
      MulExtension_s2_mul_hl <= MulExtension_s1_mul_hl;
    end
    if(execute0_outInst_ready)begin
      MulExtension_s2_mul_hh <= MulExtension_s1_mul_hh;
    end
    if(execute1_outInst_ready)begin
      MulExtension_s3_low <= MulExtension_s2_low;
    end
    if(execute1_outInst_ready)begin
      MulExtension_s3_mul_hh <= MulExtension_s2_mul_hh;
    end
    DivExtension_rsp <= (execute1_inInst_payload_instruction[13] ? DivExtension_divider_io_rsp_payload_remainder : DivExtension_divider_io_rsp_payload_quotient);
    if(execute0_outInst_ready)begin
      BarrelShifterFullExtension_s2_shiftRight <= BarrelShifterFullExtension_s1_shiftRight;
    end
    if((! SimpleInterrupExtension_inIrq))begin
      _zz_34 <= writeBack_irq_masked[1];
    end
    if(_zz_71)begin
      if(_zz_72)begin
        SimpleInterrupExtension_exitPc <= writeBack_inInst_payload_pc;
      end else begin
        if(_zz_35)begin
          if(_zz_81)begin
            SimpleInterrupExtension_exitPc <= decode_inInst_payload_pc;
          end
        end
      end
    end
    if(_zz_86)begin
      CachedInstructionBus_coreIRsp_s2mPipe_rData_instruction <= CachedInstructionBus_coreIRsp_payload_instruction;
      CachedInstructionBus_coreIRsp_s2mPipe_rData_pc <= CachedInstructionBus_coreIRsp_payload_pc;
      CachedInstructionBus_coreIRsp_s2mPipe_rData_branchCacheLine_pc <= CachedInstructionBus_coreIRsp_payload_branchCacheLine_pc;
      CachedInstructionBus_coreIRsp_s2mPipe_rData_branchCacheLine_history <= CachedInstructionBus_coreIRsp_payload_branchCacheLine_history;
    end
    if(_zz_40)begin
      if(_zz_73)begin
        case(_zz_87)
          7'h02 : begin
            if(_zz_41)begin
              fetch_outInst_m2sPipe_rData_instruction <= _zz_43;
            end
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @ (posedge io_axiClk) begin
    _zz_35 <= ((writeBack_irq_masked & (~ 8'h02)) != 8'h0);
  end

  always @ (posedge io_axiClk) begin
    DebugExtension_readRegFileReg <= 1'b0;
    DebugExtension_flushIt <= 1'b0;
    iCmd_valid_regNext <= iCmd_valid;
    DebugExtension_isPipActive <= (((((iCmd_valid_regNext || (fetch_pendingPrefetch_value != 2'b00)) || decode_inInst_valid) || execute0_inInst_valid) || execute1_inInst_valid) || writeBack_inInst_valid);
    DebugExtension_isPipActive_regNext <= DebugExtension_isPipActive;
    if(_zz_40)begin
      if(_zz_73)begin
        case(_zz_87)
          7'h0 : begin
            if(_zz_41)begin
              DebugExtension_flushIt <= _zz_43[2];
            end else begin
              DebugExtension_busReadDataReg[0] <= DebugExtension_resetIt;
              DebugExtension_busReadDataReg[1] <= DebugExtension_haltIt;
              DebugExtension_busReadDataReg[2] <= DebugExtension_isPipBusy;
              DebugExtension_busReadDataReg[3] <= DebugExtension_isInBreakpoint;
              DebugExtension_busReadDataReg[4] <= DebugExtension_stepIt;
              DebugExtension_busReadDataReg[5] <= prefetch_inc;
            end
          end
          7'h01 : begin
            if(! _zz_41) begin
              if(DebugExtension_isInBreakpoint)begin
                DebugExtension_busReadDataReg <= writeBack_inInst_payload_pc;
              end else begin
                DebugExtension_busReadDataReg <= prefetch_pc;
              end
            end
          end
          default : begin
          end
        endcase
      end else begin
        if(! _zz_41) begin
          DebugExtension_readRegFileReg <= 1'b1;
        end
      end
    end
    DebugExtension_resetIt_regNext <= DebugExtension_resetIt;
  end

  always @ (posedge io_axiClk or posedge io_debugResetIn) begin
    if (io_debugResetIn) begin
      DebugExtension_resetIt <= 1'b0;
      DebugExtension_haltIt <= 1'b0;
      DebugExtension_stepIt <= 1'b0;
    end else begin
      if(_zz_40)begin
        if(_zz_73)begin
          case(_zz_87)
            7'h0 : begin
              if(_zz_41)begin
                DebugExtension_stepIt <= _zz_43[4];
                if(_zz_43[16])begin
                  DebugExtension_resetIt <= 1'b1;
                end
                if(_zz_43[17])begin
                  DebugExtension_haltIt <= 1'b1;
                end
                if(_zz_43[24])begin
                  DebugExtension_resetIt <= 1'b0;
                end
                if(_zz_43[25])begin
                  DebugExtension_haltIt <= 1'b0;
                end
              end
            end
            default : begin
            end
          endcase
        end
      end
      if((DebugExtension_stepIt && (iCmd_valid && iCmd_ready)))begin
        DebugExtension_haltIt <= 1'b1;
      end
    end
  end

  always @ (posedge io_axiClk or posedge io_debugResetIn) begin
    if (io_debugResetIn) begin
      _zz_46 <= 1'b0;
    end else begin
      _zz_46 <= (decode_inInst_valid && decode_inInst_ready);
    end
  end


endmodule

//BufferCC_1 replaced by BufferCC_1

module BufferCC_4 (
  input      [6:0]    io_dataIn,
  output     [6:0]    io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  (* async_reg = "true" *) reg        [6:0]    buffers_0;
  (* async_reg = "true" *) reg        [6:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module StreamFifoCC (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_last,
  input      [31:0]   io_push_payload_fragment,
  output              io_pop_valid,
  input               io_pop_ready,
  output              io_pop_payload_last,
  output     [31:0]   io_pop_payload_fragment,
  output     [9:0]    io_pushOccupancy,
  output     [9:0]    io_popOccupancy,
  input               io_axiClk,
  input               resetCtrl_axiReset,
  input               io_vgaClk,
  input               resetCtrl_vgaReset
);
  reg        [32:0]   _zz_22;
  wire       [9:0]    popToPushGray_buffercc_io_dataOut;
  wire       [9:0]    pushToPopGray_buffercc_io_dataOut;
  wire                _zz_23;
  wire       [9:0]    _zz_24;
  wire       [8:0]    _zz_25;
  wire       [9:0]    _zz_26;
  wire       [8:0]    _zz_27;
  wire       [0:0]    _zz_28;
  wire       [32:0]   _zz_29;
  wire                _zz_30;
  wire                _zz_31;
  wire                _zz_32;
  reg                 _zz_1;
  wire       [9:0]    popToPushGray;
  wire       [9:0]    pushToPopGray;
  reg        [9:0]    pushCC_pushPtr;
  wire       [9:0]    pushCC_pushPtrPlus;
  reg        [9:0]    pushCC_pushPtrGray;
  wire       [9:0]    pushCC_popPtrGray;
  wire                pushCC_full;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire                _zz_10;
  reg        [9:0]    popCC_popPtr;
  wire       [9:0]    popCC_popPtrPlus;
  reg        [9:0]    popCC_popPtrGray;
  wire       [9:0]    popCC_pushPtrGray;
  wire                popCC_empty;
  wire       [9:0]    _zz_11;
  wire       [32:0]   _zz_12;
  wire                _zz_13;
  wire                _zz_14;
  wire                _zz_15;
  wire                _zz_16;
  wire                _zz_17;
  wire                _zz_18;
  wire                _zz_19;
  wire                _zz_20;
  wire                _zz_21;
  reg [32:0] ram [0:511];

  assign _zz_23 = (io_push_valid && io_push_ready);
  assign _zz_24 = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_25 = pushCC_pushPtr[8:0];
  assign _zz_26 = (popCC_popPtrPlus >>> 1'b1);
  assign _zz_27 = _zz_11[8:0];
  assign _zz_28 = _zz_12[0 : 0];
  assign _zz_29 = {io_push_payload_fragment,io_push_payload_last};
  assign _zz_30 = 1'b1;
  assign _zz_31 = pushCC_popPtrGray[0];
  assign _zz_32 = (popCC_pushPtrGray[0] ^ _zz_13);
  always @ (posedge io_axiClk) begin
    if(_zz_1) begin
      ram[_zz_25] <= _zz_29;
    end
  end

  always @ (posedge io_vgaClk) begin
    if(_zz_30) begin
      _zz_22 <= ram[_zz_27];
    end
  end

  BufferCC_2 popToPushGray_buffercc (
    .io_dataIn             (popToPushGray[9:0]                      ), //i
    .io_dataOut            (popToPushGray_buffercc_io_dataOut[9:0]  ), //o
    .io_axiClk             (io_axiClk                               ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                      )  //i
  );
  BufferCC_3 pushToPopGray_buffercc (
    .io_dataIn             (pushToPopGray[9:0]                      ), //i
    .io_dataOut            (pushToPopGray_buffercc_io_dataOut[9:0]  ), //o
    .io_vgaClk             (io_vgaClk                               ), //i
    .resetCtrl_vgaReset    (resetCtrl_vgaReset                      )  //i
  );
  always @ (*) begin
    _zz_1 = 1'b0;
    if(_zz_23)begin
      _zz_1 = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 10'h001);
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[9 : 8] == (~ pushCC_popPtrGray[9 : 8])) && (pushCC_pushPtrGray[7 : 0] == pushCC_popPtrGray[7 : 0]));
  assign io_push_ready = (! pushCC_full);
  assign _zz_2 = (pushCC_popPtrGray[1] ^ _zz_3);
  assign _zz_3 = (pushCC_popPtrGray[2] ^ _zz_4);
  assign _zz_4 = (pushCC_popPtrGray[3] ^ _zz_5);
  assign _zz_5 = (pushCC_popPtrGray[4] ^ _zz_6);
  assign _zz_6 = (pushCC_popPtrGray[5] ^ _zz_7);
  assign _zz_7 = (pushCC_popPtrGray[6] ^ _zz_8);
  assign _zz_8 = (pushCC_popPtrGray[7] ^ _zz_9);
  assign _zz_9 = (pushCC_popPtrGray[8] ^ _zz_10);
  assign _zz_10 = pushCC_popPtrGray[9];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_10,{_zz_9,{_zz_8,{_zz_7,{_zz_6,{_zz_5,{_zz_4,{_zz_3,{_zz_2,(_zz_31 ^ _zz_2)}}}}}}}}});
  assign popCC_popPtrPlus = (popCC_popPtr + 10'h001);
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign io_pop_valid = (! popCC_empty);
  assign _zz_11 = ((io_pop_valid && io_pop_ready) ? popCC_popPtrPlus : popCC_popPtr);
  assign _zz_12 = _zz_22;
  assign io_pop_payload_last = _zz_28[0];
  assign io_pop_payload_fragment = _zz_12[32 : 1];
  assign _zz_13 = (popCC_pushPtrGray[1] ^ _zz_14);
  assign _zz_14 = (popCC_pushPtrGray[2] ^ _zz_15);
  assign _zz_15 = (popCC_pushPtrGray[3] ^ _zz_16);
  assign _zz_16 = (popCC_pushPtrGray[4] ^ _zz_17);
  assign _zz_17 = (popCC_pushPtrGray[5] ^ _zz_18);
  assign _zz_18 = (popCC_pushPtrGray[6] ^ _zz_19);
  assign _zz_19 = (popCC_pushPtrGray[7] ^ _zz_20);
  assign _zz_20 = (popCC_pushPtrGray[8] ^ _zz_21);
  assign _zz_21 = popCC_pushPtrGray[9];
  assign io_popOccupancy = ({_zz_21,{_zz_20,{_zz_19,{_zz_18,{_zz_17,{_zz_16,{_zz_15,{_zz_14,{_zz_13,_zz_32}}}}}}}}} - popCC_popPtr);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_popPtrGray;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pushCC_pushPtr <= 10'h0;
      pushCC_pushPtrGray <= 10'h0;
    end else begin
      if((io_push_valid && io_push_ready))begin
        pushCC_pushPtrGray <= (_zz_24 ^ pushCC_pushPtrPlus);
      end
      if(_zz_23)begin
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end
    end
  end

  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      popCC_popPtr <= 10'h0;
      popCC_popPtrGray <= 10'h0;
    end else begin
      if((io_pop_valid && io_pop_ready))begin
        popCC_popPtrGray <= (_zz_26 ^ popCC_popPtrPlus);
      end
      if((io_pop_valid && io_pop_ready))begin
        popCC_popPtr <= popCC_popPtrPlus;
      end
    end
  end


endmodule

module UartCtrlRx (
  input      [2:0]    io_configFrame_dataLength,
  input      `UartStopType_binary_sequential_type io_configFrame_stop,
  input      `UartParityType_binary_sequential_type io_configFrame_parity,
  input               io_samplingTick,
  output              io_read_valid,
  input               io_read_ready,
  output     [7:0]    io_read_payload,
  input               io_rxd,
  output              io_rts,
  output reg          io_error,
  output              io_break,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                io_rxd_buffercc_io_dataOut;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire       [0:0]    _zz_6;
  wire       [2:0]    _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire                _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  wire                _zz_13;
  wire                _zz_14;
  reg                 _zz_1;
  wire                sampler_synchroniser;
  wire                sampler_samples_0;
  reg                 sampler_samples_1;
  reg                 sampler_samples_2;
  reg                 sampler_samples_3;
  reg                 sampler_samples_4;
  reg                 sampler_value;
  reg                 sampler_tick;
  reg        [2:0]    bitTimer_counter;
  reg                 bitTimer_tick;
  reg        [2:0]    bitCounter_value;
  reg        [6:0]    break_counter;
  wire                break_valid;
  reg        `UartCtrlRxState_binary_sequential_type stateMachine_state;
  reg                 stateMachine_parity;
  reg        [7:0]    stateMachine_shifter;
  reg                 stateMachine_validReg;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  `endif


  assign _zz_2 = (stateMachine_parity == sampler_value);
  assign _zz_3 = (! sampler_value);
  assign _zz_4 = ((sampler_tick && (! sampler_value)) && (! break_valid));
  assign _zz_5 = (bitCounter_value == io_configFrame_dataLength);
  assign _zz_6 = ((io_configFrame_stop == `UartStopType_binary_sequential_ONE) ? 1'b0 : 1'b1);
  assign _zz_7 = {2'd0, _zz_6};
  assign _zz_8 = ((((1'b0 || ((_zz_13 && sampler_samples_1) && sampler_samples_2)) || (((_zz_14 && sampler_samples_0) && sampler_samples_1) && sampler_samples_3)) || (((1'b1 && sampler_samples_0) && sampler_samples_2) && sampler_samples_3)) || (((1'b1 && sampler_samples_1) && sampler_samples_2) && sampler_samples_3));
  assign _zz_9 = (((1'b1 && sampler_samples_0) && sampler_samples_1) && sampler_samples_4);
  assign _zz_10 = ((1'b1 && sampler_samples_0) && sampler_samples_2);
  assign _zz_11 = (1'b1 && sampler_samples_1);
  assign _zz_12 = 1'b1;
  assign _zz_13 = (1'b1 && sampler_samples_0);
  assign _zz_14 = 1'b1;
  BufferCC_1 io_rxd_buffercc (
    .io_dataIn             (io_rxd                      ), //i
    .io_dataOut            (io_rxd_buffercc_io_dataOut  ), //o
    .io_axiClk             (io_axiClk                   ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset          )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      `UartStopType_binary_sequential_ONE : io_configFrame_stop_string = "ONE";
      `UartStopType_binary_sequential_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      `UartParityType_binary_sequential_NONE : io_configFrame_parity_string = "NONE";
      `UartParityType_binary_sequential_EVEN : io_configFrame_parity_string = "EVEN";
      `UartParityType_binary_sequential_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      `UartCtrlRxState_binary_sequential_IDLE : stateMachine_state_string = "IDLE  ";
      `UartCtrlRxState_binary_sequential_START : stateMachine_state_string = "START ";
      `UartCtrlRxState_binary_sequential_DATA : stateMachine_state_string = "DATA  ";
      `UartCtrlRxState_binary_sequential_PARITY : stateMachine_state_string = "PARITY";
      `UartCtrlRxState_binary_sequential_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @ (*) begin
    io_error = 1'b0;
    case(stateMachine_state)
      `UartCtrlRxState_binary_sequential_IDLE : begin
      end
      `UartCtrlRxState_binary_sequential_START : begin
      end
      `UartCtrlRxState_binary_sequential_DATA : begin
      end
      `UartCtrlRxState_binary_sequential_PARITY : begin
        if(bitTimer_tick)begin
          if(! _zz_2) begin
            io_error = 1'b1;
          end
        end
      end
      default : begin
        if(bitTimer_tick)begin
          if(_zz_3)begin
            io_error = 1'b1;
          end
        end
      end
    endcase
  end

  assign io_rts = _zz_1;
  assign sampler_synchroniser = io_rxd_buffercc_io_dataOut;
  assign sampler_samples_0 = sampler_synchroniser;
  always @ (*) begin
    bitTimer_tick = 1'b0;
    if(sampler_tick)begin
      if((bitTimer_counter == 3'b000))begin
        bitTimer_tick = 1'b1;
      end
    end
  end

  assign break_valid = (break_counter == 7'h68);
  assign io_break = break_valid;
  assign io_read_valid = stateMachine_validReg;
  assign io_read_payload = stateMachine_shifter;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      _zz_1 <= 1'b0;
      sampler_samples_1 <= 1'b1;
      sampler_samples_2 <= 1'b1;
      sampler_samples_3 <= 1'b1;
      sampler_samples_4 <= 1'b1;
      sampler_value <= 1'b1;
      sampler_tick <= 1'b0;
      break_counter <= 7'h0;
      stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
      stateMachine_validReg <= 1'b0;
    end else begin
      _zz_1 <= (! io_read_ready);
      if(io_samplingTick)begin
        sampler_samples_1 <= sampler_samples_0;
      end
      if(io_samplingTick)begin
        sampler_samples_2 <= sampler_samples_1;
      end
      if(io_samplingTick)begin
        sampler_samples_3 <= sampler_samples_2;
      end
      if(io_samplingTick)begin
        sampler_samples_4 <= sampler_samples_3;
      end
      sampler_value <= ((((((_zz_8 || _zz_9) || (_zz_10 && sampler_samples_4)) || ((_zz_11 && sampler_samples_2) && sampler_samples_4)) || (((_zz_12 && sampler_samples_0) && sampler_samples_3) && sampler_samples_4)) || (((1'b1 && sampler_samples_1) && sampler_samples_3) && sampler_samples_4)) || (((1'b1 && sampler_samples_2) && sampler_samples_3) && sampler_samples_4));
      sampler_tick <= io_samplingTick;
      if(sampler_value)begin
        break_counter <= 7'h0;
      end else begin
        if((io_samplingTick && (! break_valid)))begin
          break_counter <= (break_counter + 7'h01);
        end
      end
      stateMachine_validReg <= 1'b0;
      case(stateMachine_state)
        `UartCtrlRxState_binary_sequential_IDLE : begin
          if(_zz_4)begin
            stateMachine_state <= `UartCtrlRxState_binary_sequential_START;
          end
        end
        `UartCtrlRxState_binary_sequential_START : begin
          if(bitTimer_tick)begin
            stateMachine_state <= `UartCtrlRxState_binary_sequential_DATA;
            if((sampler_value == 1'b1))begin
              stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
            end
          end
        end
        `UartCtrlRxState_binary_sequential_DATA : begin
          if(bitTimer_tick)begin
            if(_zz_5)begin
              if((io_configFrame_parity == `UartParityType_binary_sequential_NONE))begin
                stateMachine_state <= `UartCtrlRxState_binary_sequential_STOP;
                stateMachine_validReg <= 1'b1;
              end else begin
                stateMachine_state <= `UartCtrlRxState_binary_sequential_PARITY;
              end
            end
          end
        end
        `UartCtrlRxState_binary_sequential_PARITY : begin
          if(bitTimer_tick)begin
            if(_zz_2)begin
              stateMachine_state <= `UartCtrlRxState_binary_sequential_STOP;
              stateMachine_validReg <= 1'b1;
            end else begin
              stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
            end
          end
        end
        default : begin
          if(bitTimer_tick)begin
            if(_zz_3)begin
              stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
            end else begin
              if((bitCounter_value == _zz_7))begin
                stateMachine_state <= `UartCtrlRxState_binary_sequential_IDLE;
              end
            end
          end
        end
      endcase
    end
  end

  always @ (posedge io_axiClk) begin
    if(sampler_tick)begin
      bitTimer_counter <= (bitTimer_counter - 3'b001);
    end
    if(bitTimer_tick)begin
      bitCounter_value <= (bitCounter_value + 3'b001);
    end
    if(bitTimer_tick)begin
      stateMachine_parity <= (stateMachine_parity ^ sampler_value);
    end
    case(stateMachine_state)
      `UartCtrlRxState_binary_sequential_IDLE : begin
        if(_zz_4)begin
          bitTimer_counter <= 3'b010;
        end
      end
      `UartCtrlRxState_binary_sequential_START : begin
        if(bitTimer_tick)begin
          bitCounter_value <= 3'b000;
          stateMachine_parity <= (io_configFrame_parity == `UartParityType_binary_sequential_ODD);
        end
      end
      `UartCtrlRxState_binary_sequential_DATA : begin
        if(bitTimer_tick)begin
          stateMachine_shifter[bitCounter_value] <= sampler_value;
          if(_zz_5)begin
            bitCounter_value <= 3'b000;
          end
        end
      end
      `UartCtrlRxState_binary_sequential_PARITY : begin
        if(bitTimer_tick)begin
          bitCounter_value <= 3'b000;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module UartCtrlTx (
  input      [2:0]    io_configFrame_dataLength,
  input      `UartStopType_binary_sequential_type io_configFrame_stop,
  input      `UartParityType_binary_sequential_type io_configFrame_parity,
  input               io_samplingTick,
  input               io_write_valid,
  output reg          io_write_ready,
  input      [7:0]    io_write_payload,
  input               io_cts,
  output              io_txd,
  input               io_break,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                _zz_2;
  wire       [0:0]    _zz_3;
  wire       [2:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [2:0]    _zz_6;
  reg                 clockDivider_counter_willIncrement;
  wire                clockDivider_counter_willClear;
  reg        [2:0]    clockDivider_counter_valueNext;
  reg        [2:0]    clockDivider_counter_value;
  wire                clockDivider_counter_willOverflowIfInc;
  wire                clockDivider_counter_willOverflow;
  reg        [2:0]    tickCounter_value;
  reg        `UartCtrlTxState_binary_sequential_type stateMachine_state;
  reg                 stateMachine_parity;
  reg                 stateMachine_txd;
  reg                 _zz_1;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  `endif


  assign _zz_2 = (tickCounter_value == io_configFrame_dataLength);
  assign _zz_3 = clockDivider_counter_willIncrement;
  assign _zz_4 = {2'd0, _zz_3};
  assign _zz_5 = ((io_configFrame_stop == `UartStopType_binary_sequential_ONE) ? 1'b0 : 1'b1);
  assign _zz_6 = {2'd0, _zz_5};
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      `UartStopType_binary_sequential_ONE : io_configFrame_stop_string = "ONE";
      `UartStopType_binary_sequential_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      `UartParityType_binary_sequential_NONE : io_configFrame_parity_string = "NONE";
      `UartParityType_binary_sequential_EVEN : io_configFrame_parity_string = "EVEN";
      `UartParityType_binary_sequential_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      `UartCtrlTxState_binary_sequential_IDLE : stateMachine_state_string = "IDLE  ";
      `UartCtrlTxState_binary_sequential_START : stateMachine_state_string = "START ";
      `UartCtrlTxState_binary_sequential_DATA : stateMachine_state_string = "DATA  ";
      `UartCtrlTxState_binary_sequential_PARITY : stateMachine_state_string = "PARITY";
      `UartCtrlTxState_binary_sequential_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @ (*) begin
    clockDivider_counter_willIncrement = 1'b0;
    if(io_samplingTick)begin
      clockDivider_counter_willIncrement = 1'b1;
    end
  end

  assign clockDivider_counter_willClear = 1'b0;
  assign clockDivider_counter_willOverflowIfInc = (clockDivider_counter_value == 3'b111);
  assign clockDivider_counter_willOverflow = (clockDivider_counter_willOverflowIfInc && clockDivider_counter_willIncrement);
  always @ (*) begin
    clockDivider_counter_valueNext = (clockDivider_counter_value + _zz_4);
    if(clockDivider_counter_willClear)begin
      clockDivider_counter_valueNext = 3'b000;
    end
  end

  always @ (*) begin
    stateMachine_txd = 1'b1;
    case(stateMachine_state)
      `UartCtrlTxState_binary_sequential_IDLE : begin
      end
      `UartCtrlTxState_binary_sequential_START : begin
        stateMachine_txd = 1'b0;
      end
      `UartCtrlTxState_binary_sequential_DATA : begin
        stateMachine_txd = io_write_payload[tickCounter_value];
      end
      `UartCtrlTxState_binary_sequential_PARITY : begin
        stateMachine_txd = stateMachine_parity;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_write_ready = io_break;
    case(stateMachine_state)
      `UartCtrlTxState_binary_sequential_IDLE : begin
      end
      `UartCtrlTxState_binary_sequential_START : begin
      end
      `UartCtrlTxState_binary_sequential_DATA : begin
        if(clockDivider_counter_willOverflow)begin
          if(_zz_2)begin
            io_write_ready = 1'b1;
          end
        end
      end
      `UartCtrlTxState_binary_sequential_PARITY : begin
      end
      default : begin
      end
    endcase
  end

  assign io_txd = _zz_1;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      clockDivider_counter_value <= 3'b000;
      stateMachine_state <= `UartCtrlTxState_binary_sequential_IDLE;
      _zz_1 <= 1'b1;
    end else begin
      clockDivider_counter_value <= clockDivider_counter_valueNext;
      case(stateMachine_state)
        `UartCtrlTxState_binary_sequential_IDLE : begin
          if(((io_write_valid && (! io_cts)) && clockDivider_counter_willOverflow))begin
            stateMachine_state <= `UartCtrlTxState_binary_sequential_START;
          end
        end
        `UartCtrlTxState_binary_sequential_START : begin
          if(clockDivider_counter_willOverflow)begin
            stateMachine_state <= `UartCtrlTxState_binary_sequential_DATA;
          end
        end
        `UartCtrlTxState_binary_sequential_DATA : begin
          if(clockDivider_counter_willOverflow)begin
            if(_zz_2)begin
              if((io_configFrame_parity == `UartParityType_binary_sequential_NONE))begin
                stateMachine_state <= `UartCtrlTxState_binary_sequential_STOP;
              end else begin
                stateMachine_state <= `UartCtrlTxState_binary_sequential_PARITY;
              end
            end
          end
        end
        `UartCtrlTxState_binary_sequential_PARITY : begin
          if(clockDivider_counter_willOverflow)begin
            stateMachine_state <= `UartCtrlTxState_binary_sequential_STOP;
          end
        end
        default : begin
          if(clockDivider_counter_willOverflow)begin
            if((tickCounter_value == _zz_6))begin
              stateMachine_state <= (io_write_valid ? `UartCtrlTxState_binary_sequential_START : `UartCtrlTxState_binary_sequential_IDLE);
            end
          end
        end
      endcase
      _zz_1 <= (stateMachine_txd && (! io_break));
    end
  end

  always @ (posedge io_axiClk) begin
    if(clockDivider_counter_willOverflow)begin
      tickCounter_value <= (tickCounter_value + 3'b001);
    end
    if(clockDivider_counter_willOverflow)begin
      stateMachine_parity <= (stateMachine_parity ^ stateMachine_txd);
    end
    case(stateMachine_state)
      `UartCtrlTxState_binary_sequential_IDLE : begin
      end
      `UartCtrlTxState_binary_sequential_START : begin
        if(clockDivider_counter_willOverflow)begin
          stateMachine_parity <= (io_configFrame_parity == `UartParityType_binary_sequential_ODD);
          tickCounter_value <= 3'b000;
        end
      end
      `UartCtrlTxState_binary_sequential_DATA : begin
        if(clockDivider_counter_willOverflow)begin
          if(_zz_2)begin
            tickCounter_value <= 3'b000;
          end
        end
      end
      `UartCtrlTxState_binary_sequential_PARITY : begin
        if(clockDivider_counter_willOverflow)begin
          tickCounter_value <= 3'b000;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module FlowCCByToggle (
  input               io_input_valid,
  input               io_input_payload_last,
  input      [0:0]    io_input_payload_fragment,
  output              io_output_valid,
  output              io_output_payload_last,
  output     [0:0]    io_output_payload_fragment,
  input               io_jtag_tck,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire                inputArea_target_buffercc_io_dataOut;
  wire                outHitSignal;
  reg                 inputArea_target = 0;
  reg                 inputArea_data_last;
  reg        [0:0]    inputArea_data_fragment;
  wire                outputArea_target;
  reg                 outputArea_hit;
  wire                outputArea_flow_valid;
  wire                outputArea_flow_payload_last;
  wire       [0:0]    outputArea_flow_payload_fragment;
  reg                 outputArea_flow_regNext_valid;
  reg                 outputArea_flow_regNext_payload_last;
  reg        [0:0]    outputArea_flow_regNext_payload_fragment;

  BufferCC inputArea_target_buffercc (
    .io_dataIn             (inputArea_target                      ), //i
    .io_dataOut            (inputArea_target_buffercc_io_dataOut  ), //o
    .io_axiClk             (io_axiClk                             ), //i
    .resetCtrl_axiReset    (resetCtrl_axiReset                    )  //i
  );
  assign outputArea_target = inputArea_target_buffercc_io_dataOut;
  assign outputArea_flow_valid = (outputArea_target != outputArea_hit);
  assign outputArea_flow_payload_last = inputArea_data_last;
  assign outputArea_flow_payload_fragment = inputArea_data_fragment;
  assign io_output_valid = outputArea_flow_regNext_valid;
  assign io_output_payload_last = outputArea_flow_regNext_payload_last;
  assign io_output_payload_fragment = outputArea_flow_regNext_payload_fragment;
  always @ (posedge io_jtag_tck) begin
    if(io_input_valid)begin
      inputArea_target <= (! inputArea_target);
      inputArea_data_last <= io_input_payload_last;
      inputArea_data_fragment <= io_input_payload_fragment;
    end
  end

  always @ (posedge io_axiClk) begin
    outputArea_hit <= outputArea_target;
    outputArea_flow_regNext_payload_last <= outputArea_flow_payload_last;
    outputArea_flow_regNext_payload_fragment <= outputArea_flow_payload_fragment;
  end

  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      outputArea_flow_regNext_valid <= 1'b0;
    end else begin
      outputArea_flow_regNext_valid <= outputArea_flow_valid;
    end
  end


endmodule

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input      [15:0]   io_push_payload_data,
  input      [3:0]    io_push_payload_context_id,
  input               io_push_payload_context_last,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg [15:0]   io_pop_payload_data,
  output reg [3:0]    io_pop_payload_context_id,
  output reg          io_pop_payload_context_last,
  input               io_flush,
  output     [1:0]    io_occupancy,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  wire       [20:0]   _zz_4;
  wire                _zz_5;
  wire       [0:0]    _zz_6;
  wire       [20:0]   _zz_7;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [0:0]    pushPtr_valueNext;
  reg        [0:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [0:0]    popPtr_valueNext;
  reg        [0:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [20:0]   _zz_2;
  wire       [4:0]    _zz_3;
  wire       [0:0]    ptrDif;
  (* ram_style = "distributed" *) reg [20:0] ram [0:1];

  assign _zz_5 = (! empty);
  assign _zz_6 = _zz_3[4 : 4];
  assign _zz_7 = {{io_push_payload_context_last,io_push_payload_context_id},io_push_payload_data};
  assign _zz_4 = ram[popPtr_value];
  always @ (posedge io_axiClk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_7;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 1'b1);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + pushPtr_willIncrement);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = 1'b0;
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 1'b1);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + popPtr_willIncrement);
    if(popPtr_willClear)begin
      popPtr_valueNext = 1'b0;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  always @ (*) begin
    if(_zz_5)begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  assign _zz_2 = _zz_4;
  assign _zz_3 = _zz_2[20 : 16];
  always @ (*) begin
    if(_zz_5)begin
      io_pop_payload_data = _zz_2[15 : 0];
    end else begin
      io_pop_payload_data = io_push_payload_data;
    end
  end

  always @ (*) begin
    if(_zz_5)begin
      io_pop_payload_context_id = _zz_3[3 : 0];
    end else begin
      io_pop_payload_context_id = io_push_payload_context_id;
    end
  end

  always @ (*) begin
    if(_zz_5)begin
      io_pop_payload_context_last = _zz_6[0];
    end else begin
      io_pop_payload_context_last = io_push_payload_context_last;
    end
  end

  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      pushPtr_value <= 1'b0;
      popPtr_value <= 1'b0;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module InstructionCache (
  input               io_flush_cmd_valid,
  output              io_flush_cmd_ready,
  output              io_flush_rsp,
  input               io_cpu_cmd_valid,
  output              io_cpu_cmd_ready,
  input      [31:0]   io_cpu_cmd_payload_address,
  output              io_cpu_rsp_valid,
  input               io_cpu_rsp_ready,
  output     [31:0]   io_cpu_rsp_payload_address,
  output     [31:0]   io_cpu_rsp_payload_data,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_axiClk,
  input               resetCtrl_coreReset
);
  reg        [20:0]   _zz_17;
  reg        [31:0]   _zz_18;
  wire                _zz_19;
  wire                _zz_20;
  wire       [0:0]    _zz_21;
  wire       [6:0]    _zz_22;
  wire       [20:0]   _zz_23;
  wire                _zz_24;
  wire       [9:0]    _zz_25;
  wire                _zz_26;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 haltCpu;
  wire                lineLoader_requestIn_valid;
  wire                lineLoader_requestIn_ready;
  wire       [31:0]   lineLoader_requestIn_payload_addr;
  reg        [7:0]    lineLoader_flushCounter;
  reg                 _zz_3;
  reg                 lineLoader_flushFromInterface;
  wire                _zz_4;
  reg                 _zz_4_regNext;
  wire                lineLoader_lineInfoWrite_valid;
  wire       [19:0]   lineLoader_lineInfoWrite_address;
  wire                _zz_5;
  wire                _zz_6;
  wire                lineLoader_request_valid;
  wire                lineLoader_request_ready;
  wire       [31:0]   lineLoader_request_payload_addr;
  reg                 _zz_7;
  reg        [31:0]   _zz_8;
  reg        [2:0]    lineLoader_wordIndex;
  reg        [7:0]    lineLoader_loadedWordsNext;
  reg        [7:0]    lineLoader_loadedWords;
  reg        [7:0]    lineLoader_loadedWordsReadable;
  reg        [0:0]    lineLoader_readyDelay;
  wire       [7:0]    _zz_9;
  wire                _zz_10;
  wire                _zz_11;
  wire                task_request_valid;
  wire                task_request_ready;
  wire       [31:0]   task_request_payload_address;
  reg                 _zz_12;
  reg        [31:0]   _zz_13;
  reg                 task_waysHitValid;
  reg        [31:0]   task_waysHitWord;
  wire       [31:0]   task_waysRead_0_readAddress;
  wire       [6:0]    _zz_14;
  wire                task_waysRead_0_tag_valid;
  wire       [19:0]   task_waysRead_0_tag_address;
  wire       [20:0]   _zz_15;
  wire       [9:0]    _zz_16;
  wire       [31:0]   task_waysRead_0_data;
  wire                task_loaderHitValid;
  wire                task_loaderHitReady;
  reg [20:0] ways_0_tags [0:127];
  reg [31:0] ways_0_datas [0:1023];

  assign _zz_19 = (! lineLoader_flushCounter[7]);
  assign _zz_20 = (task_waysRead_0_tag_valid && (task_waysRead_0_tag_address == task_request_payload_address[31 : 12]));
  assign _zz_21 = _zz_15[0 : 0];
  assign _zz_22 = (lineLoader_flushCounter[7] ? lineLoader_requestIn_payload_addr[11 : 5] : lineLoader_flushCounter[6 : 0]);
  assign _zz_23 = {lineLoader_lineInfoWrite_address,lineLoader_lineInfoWrite_valid};
  assign _zz_24 = 1'b1;
  assign _zz_25 = {lineLoader_request_payload_addr[11 : 5],lineLoader_wordIndex};
  assign _zz_26 = 1'b1;
  always @ (posedge io_axiClk) begin
    if(_zz_2) begin
      ways_0_tags[_zz_22] <= _zz_23;
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_24) begin
      _zz_17 <= ways_0_tags[_zz_14];
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_1) begin
      ways_0_datas[_zz_25] <= io_mem_rsp_payload_data;
    end
  end

  always @ (posedge io_axiClk) begin
    if(_zz_26) begin
      _zz_18 <= ways_0_datas[_zz_16];
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(io_mem_rsp_valid)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(((lineLoader_requestIn_valid && lineLoader_requestIn_ready) || (! lineLoader_flushCounter[7])))begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    haltCpu = 1'b0;
    if(_zz_19)begin
      haltCpu = 1'b1;
    end
    if((! _zz_3))begin
      haltCpu = 1'b1;
    end
    if(io_flush_cmd_valid)begin
      haltCpu = 1'b1;
    end
  end

  assign io_mem_cmd_payload_address = {lineLoader_requestIn_payload_addr[31 : 2],2'b00};
  assign _zz_4 = lineLoader_flushCounter[7];
  assign io_flush_rsp = ((_zz_4 && (! _zz_4_regNext)) && lineLoader_flushFromInterface);
  assign lineLoader_lineInfoWrite_valid = lineLoader_flushCounter[7];
  assign lineLoader_lineInfoWrite_address = lineLoader_requestIn_payload_addr[31 : 12];
  assign _zz_5 = (! (! io_mem_cmd_ready));
  assign lineLoader_requestIn_ready = (_zz_6 && _zz_5);
  assign _zz_6 = ((1'b1 && (! lineLoader_request_valid)) || lineLoader_request_ready);
  assign lineLoader_request_valid = _zz_7;
  assign lineLoader_request_payload_addr = _zz_8;
  assign io_mem_cmd_valid = (lineLoader_requestIn_valid && (! (lineLoader_request_valid && (! lineLoader_request_ready))));
  always @ (*) begin
    lineLoader_loadedWordsNext = lineLoader_loadedWords;
    if(io_mem_rsp_valid)begin
      lineLoader_loadedWordsNext[lineLoader_wordIndex] = 1'b1;
    end
  end

  assign _zz_9[7 : 0] = 8'hff;
  assign lineLoader_request_ready = (lineLoader_readyDelay == 1'b1);
  assign _zz_10 = (! haltCpu);
  assign io_cpu_cmd_ready = (_zz_11 && _zz_10);
  assign _zz_11 = ((1'b1 && (! task_request_valid)) || task_request_ready);
  assign task_request_valid = _zz_12;
  assign task_request_payload_address = _zz_13;
  assign task_request_ready = (io_cpu_rsp_valid && io_cpu_rsp_ready);
  always @ (*) begin
    task_waysHitValid = 1'b0;
    if(_zz_20)begin
      task_waysHitValid = 1'b1;
    end
  end

  always @ (*) begin
    task_waysHitWord = 32'h0;
    if(_zz_20)begin
      task_waysHitWord = task_waysRead_0_data;
    end
  end

  assign task_waysRead_0_readAddress = ((task_request_valid && (! task_request_ready)) ? task_request_payload_address : io_cpu_cmd_payload_address);
  assign _zz_14 = task_waysRead_0_readAddress[11 : 5];
  assign _zz_15 = _zz_17;
  assign task_waysRead_0_tag_valid = _zz_21[0];
  assign task_waysRead_0_tag_address = _zz_15[20 : 1];
  assign _zz_16 = task_waysRead_0_readAddress[11 : 2];
  assign task_waysRead_0_data = _zz_18;
  assign task_loaderHitValid = (lineLoader_request_valid && (lineLoader_request_payload_addr[31 : 12] == task_request_payload_address[31 : 12]));
  assign task_loaderHitReady = lineLoader_loadedWordsReadable[task_request_payload_address[4 : 2]];
  assign io_cpu_rsp_valid = ((task_request_valid && task_waysHitValid) && (! (task_loaderHitValid && (! task_loaderHitReady))));
  assign io_cpu_rsp_payload_data = task_waysHitWord;
  assign io_cpu_rsp_payload_address = task_request_payload_address;
  assign lineLoader_requestIn_valid = (task_request_valid && (! task_waysHitValid));
  assign lineLoader_requestIn_payload_addr = task_request_payload_address;
  assign io_flush_cmd_ready = (! (lineLoader_request_valid || task_request_valid));
  always @ (posedge io_axiClk or posedge resetCtrl_coreReset) begin
    if (resetCtrl_coreReset) begin
      lineLoader_flushCounter <= 8'h0;
      lineLoader_flushFromInterface <= 1'b0;
      _zz_7 <= 1'b0;
      _zz_12 <= 1'b0;
    end else begin
      if(_zz_19)begin
        lineLoader_flushCounter <= (lineLoader_flushCounter + 8'h01);
      end
      if(io_flush_cmd_valid)begin
        if(io_flush_cmd_ready)begin
          lineLoader_flushCounter <= 8'h0;
          lineLoader_flushFromInterface <= 1'b1;
        end
      end
      if(_zz_6)begin
        _zz_7 <= (lineLoader_requestIn_valid && _zz_5);
      end
      if(_zz_11)begin
        _zz_12 <= (io_cpu_cmd_valid && _zz_10);
      end
    end
  end

  always @ (posedge io_axiClk) begin
    _zz_3 <= lineLoader_flushCounter[7];
    _zz_4_regNext <= _zz_4;
    if(_zz_6)begin
      _zz_8 <= lineLoader_requestIn_payload_addr;
    end
    lineLoader_loadedWords <= lineLoader_loadedWordsNext;
    lineLoader_loadedWordsReadable <= lineLoader_loadedWords;
    if(io_mem_rsp_valid)begin
      lineLoader_wordIndex <= (lineLoader_wordIndex + 3'b001);
    end
    if((lineLoader_loadedWordsNext == _zz_9))begin
      lineLoader_readyDelay <= (lineLoader_readyDelay + 1'b1);
    end
    if(lineLoader_requestIn_ready)begin
      lineLoader_wordIndex <= io_mem_cmd_payload_address[4 : 2];
      lineLoader_loadedWords <= 8'h0;
      lineLoader_loadedWordsReadable <= 8'h0;
      lineLoader_readyDelay <= 1'b0;
    end
    if(_zz_11)begin
      _zz_13 <= io_cpu_cmd_payload_address;
    end
  end


endmodule

module MixedDivider (
  input               io_flush,
  input               io_cmd_valid,
  output              io_cmd_ready,
  input      [31:0]   io_cmd_payload_numerator,
  input      [31:0]   io_cmd_payload_denominator,
  input               io_cmd_payload_signed,
  output              io_rsp_valid,
  input               io_rsp_ready,
  output     [31:0]   io_rsp_payload_quotient,
  output     [31:0]   io_rsp_payload_remainder,
  output              io_rsp_payload_error,
  input               io_axiClk,
  input               resetCtrl_coreReset
);
  wire       [31:0]   _zz_5;
  wire       [31:0]   _zz_6;
  reg        [1:0]    _zz_7;
  wire                divider_io_cmd_ready;
  wire                divider_io_rsp_valid;
  wire       [31:0]   divider_io_rsp_payload_quotient;
  wire       [31:0]   divider_io_rsp_payload_remainder;
  wire                divider_io_rsp_payload_error;
  wire       [1:0]    divider_io_rsp_payload_context;
  wire       [31:0]   _zz_8;
  wire       [31:0]   _zz_9;
  wire       [0:0]    _zz_10;
  wire       [31:0]   _zz_11;
  wire       [31:0]   _zz_12;
  wire       [31:0]   _zz_13;
  wire       [0:0]    _zz_14;
  wire       [31:0]   _zz_15;
  wire       [32:0]   _zz_16;
  wire       [32:0]   _zz_17;
  wire       [32:0]   _zz_18;
  wire       [0:0]    _zz_19;
  wire       [32:0]   _zz_20;
  wire       [32:0]   _zz_21;
  wire       [32:0]   _zz_22;
  wire       [32:0]   _zz_23;
  wire       [0:0]    _zz_24;
  wire       [32:0]   _zz_25;
  wire       [31:0]   _zz_1;
  wire       [31:0]   _zz_2;
  wire                _zz_3;
  wire                _zz_4;

  assign _zz_8 = ((_zz_1[31] && io_cmd_payload_signed) ? _zz_9 : _zz_1);
  assign _zz_9 = (~ _zz_1);
  assign _zz_10 = (_zz_1[31] && io_cmd_payload_signed);
  assign _zz_11 = {31'd0, _zz_10};
  assign _zz_12 = ((_zz_2[31] && io_cmd_payload_signed) ? _zz_13 : _zz_2);
  assign _zz_13 = (~ _zz_2);
  assign _zz_14 = (_zz_2[31] && io_cmd_payload_signed);
  assign _zz_15 = {31'd0, _zz_14};
  assign _zz_16 = _zz_17;
  assign _zz_17 = _zz_18;
  assign _zz_18 = ({_zz_3,(_zz_3 ? (~ divider_io_rsp_payload_quotient) : divider_io_rsp_payload_quotient)} + _zz_20);
  assign _zz_19 = _zz_3;
  assign _zz_20 = {32'd0, _zz_19};
  assign _zz_21 = _zz_22;
  assign _zz_22 = _zz_23;
  assign _zz_23 = ({_zz_4,(_zz_4 ? (~ divider_io_rsp_payload_remainder) : divider_io_rsp_payload_remainder)} + _zz_25);
  assign _zz_24 = _zz_4;
  assign _zz_25 = {32'd0, _zz_24};
  UnsignedDivider divider (
    .io_flush                      (io_flush                                ), //i
    .io_cmd_valid                  (io_cmd_valid                            ), //i
    .io_cmd_ready                  (divider_io_cmd_ready                    ), //o
    .io_cmd_payload_numerator      (_zz_5[31:0]                             ), //i
    .io_cmd_payload_denominator    (_zz_6[31:0]                             ), //i
    .io_cmd_payload_context        (_zz_7[1:0]                              ), //i
    .io_rsp_valid                  (divider_io_rsp_valid                    ), //o
    .io_rsp_ready                  (io_rsp_ready                            ), //i
    .io_rsp_payload_quotient       (divider_io_rsp_payload_quotient[31:0]   ), //o
    .io_rsp_payload_remainder      (divider_io_rsp_payload_remainder[31:0]  ), //o
    .io_rsp_payload_error          (divider_io_rsp_payload_error            ), //o
    .io_rsp_payload_context        (divider_io_rsp_payload_context[1:0]     ), //o
    .io_axiClk                     (io_axiClk                               ), //i
    .resetCtrl_coreReset           (resetCtrl_coreReset                     )  //i
  );
  assign io_cmd_ready = divider_io_cmd_ready;
  assign _zz_1 = io_cmd_payload_numerator;
  assign _zz_5 = (_zz_8 + _zz_11);
  assign _zz_2 = io_cmd_payload_denominator;
  assign _zz_6 = (_zz_12 + _zz_15);
  always @ (*) begin
    _zz_7[0] = (io_cmd_payload_signed && (io_cmd_payload_numerator[31] ^ io_cmd_payload_denominator[31]));
    _zz_7[1] = (io_cmd_payload_signed && io_cmd_payload_numerator[31]);
  end

  assign io_rsp_valid = divider_io_rsp_valid;
  assign _zz_3 = divider_io_rsp_payload_context[0];
  assign io_rsp_payload_quotient = _zz_16[31:0];
  assign _zz_4 = divider_io_rsp_payload_context[1];
  assign io_rsp_payload_remainder = _zz_21[31:0];
  assign io_rsp_payload_error = divider_io_rsp_payload_error;

endmodule

module Alu_1 (
  input      `ALU_opt_type io_func,
  input               io_doSub,
  input      [31:0]   io_src0,
  input      [31:0]   io_src1,
  output     [31:0]   io_result,
  output     [31:0]   io_adder
);
  wire       [31:0]   _zz_2;
  wire       [31:0]   _zz_3;
  wire       [31:0]   _zz_4;
  wire       [31:0]   _zz_5;
  wire       [1:0]    _zz_6;
  wire       [31:0]   _zz_7;
  wire       [1:0]    _zz_8;
  wire       [1:0]    _zz_9;
  wire       [0:0]    _zz_10;
  wire       [31:0]   addSub;
  reg        [31:0]   bitwise;
  wire                less;
  reg        [31:0]   _zz_1;
  `ifndef SYNTHESIS
  reg [39:0] io_func_string;
  `endif


  assign _zz_2 = ($signed(_zz_3) + $signed(_zz_7));
  assign _zz_3 = ($signed(_zz_4) + $signed(_zz_5));
  assign _zz_4 = io_src0;
  assign _zz_5 = (io_doSub ? (~ io_src1) : io_src1);
  assign _zz_6 = (io_doSub ? _zz_8 : _zz_9);
  assign _zz_7 = {{30{_zz_6[1]}}, _zz_6};
  assign _zz_8 = 2'b01;
  assign _zz_9 = 2'b00;
  assign _zz_10 = less;
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_func)
      `ALU_opt_ADD : io_func_string = "ADD  ";
      `ALU_opt_SLL1 : io_func_string = "SLL1 ";
      `ALU_opt_SLT : io_func_string = "SLT  ";
      `ALU_opt_SLTU : io_func_string = "SLTU ";
      `ALU_opt_XOR_1 : io_func_string = "XOR_1";
      `ALU_opt_SRL_1 : io_func_string = "SRL_1";
      `ALU_opt_OR_1 : io_func_string = "OR_1 ";
      `ALU_opt_AND_1 : io_func_string = "AND_1";
      `ALU_opt_SUB : io_func_string = "SUB  ";
      `ALU_opt_COPY : io_func_string = "COPY ";
      `ALU_opt_SRA_1 : io_func_string = "SRA_1";
      default : io_func_string = "?????";
    endcase
  end
  `endif

  assign addSub = _zz_2;
  always @ (*) begin
    case(io_func)
      `ALU_opt_AND_1 : begin
        bitwise = (io_src0 & io_src1);
      end
      `ALU_opt_OR_1 : begin
        bitwise = (io_src0 | io_src1);
      end
      `ALU_opt_XOR_1 : begin
        bitwise = (io_src0 ^ io_src1);
      end
      default : begin
        bitwise = io_src0;
      end
    endcase
  end

  assign less = ((io_src0[31] == io_src1[31]) ? addSub[31] : ((io_func == `ALU_opt_SLTU) ? io_src1[31] : io_src0[31]));
  always @ (*) begin
    case(io_func)
      `ALU_opt_SLT, `ALU_opt_SLTU : begin
        _zz_1 = {31'd0, _zz_10};
      end
      `ALU_opt_ADD, `ALU_opt_SUB : begin
        _zz_1 = addSub;
      end
      default : begin
        _zz_1 = bitwise;
      end
    endcase
  end

  assign io_result = _zz_1;
  assign io_adder = addSub;

endmodule

module BufferCC_3 (
  input      [9:0]    io_dataIn,
  output     [9:0]    io_dataOut,
  input               io_vgaClk,
  input               resetCtrl_vgaReset
);
  (* async_reg = "true" *) reg        [9:0]    buffers_0;
  (* async_reg = "true" *) reg        [9:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_vgaClk or posedge resetCtrl_vgaReset) begin
    if (resetCtrl_vgaReset) begin
      buffers_0 <= 10'h0;
      buffers_1 <= 10'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_2 (
  input      [9:0]    io_dataIn,
  output     [9:0]    io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  (* async_reg = "true" *) reg        [9:0]    buffers_0;
  (* async_reg = "true" *) reg        [9:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      buffers_0 <= 10'h0;
      buffers_1 <= 10'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_1 (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk or posedge resetCtrl_axiReset) begin
    if (resetCtrl_axiReset) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               io_axiClk,
  input               resetCtrl_axiReset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge io_axiClk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module UnsignedDivider (
  input               io_flush,
  input               io_cmd_valid,
  output reg          io_cmd_ready,
  input      [31:0]   io_cmd_payload_numerator,
  input      [31:0]   io_cmd_payload_denominator,
  input      [1:0]    io_cmd_payload_context,
  output              io_rsp_valid,
  input               io_rsp_ready,
  output     [31:0]   io_rsp_payload_quotient,
  output     [31:0]   io_rsp_payload_remainder,
  output              io_rsp_payload_error,
  output     [1:0]    io_rsp_payload_context,
  input               io_axiClk,
  input               resetCtrl_coreReset
);
  wire                _zz_1;
  wire       [0:0]    _zz_2;
  wire       [4:0]    _zz_3;
  wire       [32:0]   _zz_4;
  wire       [32:0]   _zz_5;
  reg                 done;
  reg                 waitRsp;
  reg                 counter_willIncrement;
  reg                 counter_willClear;
  reg        [4:0]    counter_valueNext;
  reg        [4:0]    counter_value;
  wire                counter_willOverflowIfInc;
  wire                counter_willOverflow;
  reg        [31:0]   numerator;
  reg        [31:0]   denominator;
  reg        [1:0]    context_1;
  reg        [31:0]   remainder;
  wire       [32:0]   remainderShifted;
  wire       [32:0]   remainderMinusDenominator;

  assign _zz_1 = ((! waitRsp) || io_rsp_ready);
  assign _zz_2 = counter_willIncrement;
  assign _zz_3 = {4'd0, _zz_2};
  assign _zz_4 = {1'd0, denominator};
  assign _zz_5 = {numerator,(! remainderMinusDenominator[32])};
  always @ (*) begin
    counter_willIncrement = 1'b0;
    if(! done) begin
      counter_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    counter_willClear = 1'b0;
    if(done)begin
      if(_zz_1)begin
        counter_willClear = 1'b1;
      end
    end
  end

  assign counter_willOverflowIfInc = (counter_value == 5'h1f);
  assign counter_willOverflow = (counter_willOverflowIfInc && counter_willIncrement);
  always @ (*) begin
    counter_valueNext = (counter_value + _zz_3);
    if(counter_willClear)begin
      counter_valueNext = 5'h0;
    end
  end

  assign remainderShifted = {remainder,numerator[31]};
  assign remainderMinusDenominator = (remainderShifted - _zz_4);
  always @ (*) begin
    io_cmd_ready = 1'b0;
    if(done)begin
      if(_zz_1)begin
        io_cmd_ready = 1'b1;
      end
    end else begin
      if(counter_willOverflowIfInc)begin
        io_cmd_ready = 1'b1;
      end
    end
  end

  assign io_rsp_valid = waitRsp;
  assign io_rsp_payload_quotient = numerator;
  assign io_rsp_payload_remainder = remainder;
  assign io_rsp_payload_context = context_1;
  assign io_rsp_payload_error = (denominator == 32'h0);
  always @ (posedge io_axiClk or posedge resetCtrl_coreReset) begin
    if (resetCtrl_coreReset) begin
      done <= 1'b1;
      waitRsp <= 1'b0;
      counter_value <= 5'h0;
    end else begin
      counter_value <= counter_valueNext;
      if(io_rsp_ready)begin
        waitRsp <= 1'b0;
      end
      if(done)begin
        if(_zz_1)begin
          done <= (! io_cmd_valid);
        end
      end else begin
        if(counter_willOverflowIfInc)begin
          done <= 1'b1;
          waitRsp <= 1'b1;
        end
      end
      if(io_flush)begin
        done <= 1'b1;
        waitRsp <= 1'b0;
      end
    end
  end

  always @ (posedge io_axiClk) begin
    if(done)begin
      if(_zz_1)begin
        remainder <= 32'h0;
        numerator <= io_cmd_payload_numerator;
        denominator <= io_cmd_payload_denominator;
        context_1 <= io_cmd_payload_context;
      end
    end else begin
      remainder <= remainderShifted[31:0];
      numerator <= _zz_5[31:0];
      if((! remainderMinusDenominator[32]))begin
        remainder <= remainderMinusDenominator[31:0];
      end
    end
  end


endmodule
