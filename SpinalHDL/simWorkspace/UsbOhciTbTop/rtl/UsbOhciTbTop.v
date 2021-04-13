// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : UsbOhciTbTop
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26


`define MainState_binary_sequential_type [1:0]
`define MainState_binary_sequential_RESET 2'b00
`define MainState_binary_sequential_RESUME 2'b01
`define MainState_binary_sequential_OPERATIONAL 2'b10
`define MainState_binary_sequential_SUSPEND 2'b11

`define FlowType_binary_sequential_type [1:0]
`define FlowType_binary_sequential_BULK 2'b00
`define FlowType_binary_sequential_CONTROL 2'b01
`define FlowType_binary_sequential_PERIODIC 2'b10

`define endpoint_Status_binary_sequential_type [0:0]
`define endpoint_Status_binary_sequential_OK 1'b0
`define endpoint_Status_binary_sequential_FRAME_TIME 1'b1

`define token_enumDefinition_binary_sequential_type [2:0]
`define token_enumDefinition_binary_sequential_token_BOOT 3'b000
`define token_enumDefinition_binary_sequential_token_INIT 3'b001
`define token_enumDefinition_binary_sequential_token_PID 3'b010
`define token_enumDefinition_binary_sequential_token_B1 3'b011
`define token_enumDefinition_binary_sequential_token_B2 3'b100

`define dataTx_enumDefinition_binary_sequential_type [2:0]
`define dataTx_enumDefinition_binary_sequential_dataTx_BOOT 3'b000
`define dataTx_enumDefinition_binary_sequential_dataTx_PID 3'b001
`define dataTx_enumDefinition_binary_sequential_dataTx_DATA 3'b010
`define dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 3'b011
`define dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 3'b100

`define sof_enumDefinition_binary_sequential_type [1:0]
`define sof_enumDefinition_binary_sequential_sof_BOOT 2'b00
`define sof_enumDefinition_binary_sequential_sof_FRAME_TX 2'b01
`define sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD 2'b10
`define sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP 2'b11

`define endpoint_enumDefinition_binary_sequential_type [3:0]
`define endpoint_enumDefinition_binary_sequential_endpoint_BOOT 4'b0000
`define endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD 4'b0001
`define endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP 4'b0010
`define endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE 4'b0011
`define endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD 4'b0100
`define endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP 4'b0101
`define endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE 4'b0110
`define endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME 4'b0111
`define endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ 4'b1000
`define endpoint_enumDefinition_binary_sequential_endpoint_TOKEN 4'b1001
`define endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX 4'b1010
`define endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX 4'b1011
`define endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD 4'b1100
`define endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD 4'b1101
`define endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC 4'b1110
`define endpoint_enumDefinition_binary_sequential_endpoint_ABORD 4'b1111

`define endpoint_dmaLogic_enumDefinition_binary_sequential_type [1:0]
`define endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT 2'b00
`define endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT 2'b01
`define endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC 2'b10
`define endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD 2'b11

`define operational_enumDefinition_binary_sequential_type [2:0]
`define operational_enumDefinition_binary_sequential_operational_BOOT 3'b000
`define operational_enumDefinition_binary_sequential_operational_SOF 3'b001
`define operational_enumDefinition_binary_sequential_operational_ARBITER 3'b010
`define operational_enumDefinition_binary_sequential_operational_END_POINT 3'b011
`define operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD 3'b100
`define operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP 3'b101
`define operational_enumDefinition_binary_sequential_operational_WAIT_SOF 3'b110

`define hc_enumDefinition_binary_sequential_type [2:0]
`define hc_enumDefinition_binary_sequential_hc_BOOT 3'b000
`define hc_enumDefinition_binary_sequential_hc_RESET 3'b001
`define hc_enumDefinition_binary_sequential_hc_RESUME 3'b010
`define hc_enumDefinition_binary_sequential_hc_OPERATIONAL 3'b011
`define hc_enumDefinition_binary_sequential_hc_SUSPEND 3'b100

`define txShared_frame_enumDefinition_binary_sequential_type [3:0]
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_BOOT 4'b0000
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE 4'b0001
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC 4'b0010
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID 4'b0011
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY 4'b0100
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC 4'b0101
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA 4'b0110
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 4'b0111
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 4'b1000
`define txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 4'b1001

`define ports_0_rx_packet_enumDefinition_binary_sequential_type [1:0]
`define ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_BOOT 2'b00
`define ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE 2'b01
`define ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_PACKET 2'b10

`define ports_0_fsm_enumDefinition_binary_sequential_type [3:0]
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_BOOT 4'b0000
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF 4'b0001
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED 4'b0010
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED 4'b0011
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING 4'b0100
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED 4'b0101
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED 4'b0110
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING 4'b0111
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0 4'b1000
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1 4'b1001
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_S 4'b1010
`define ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_E 4'b1011


module UsbOhciTbTop (
  input               ctrl_cmd_valid,
  output              ctrl_cmd_ready,
  input               ctrl_cmd_payload_last,
  input      [0:0]    ctrl_cmd_payload_fragment_opcode,
  input      [11:0]   ctrl_cmd_payload_fragment_address,
  input      [1:0]    ctrl_cmd_payload_fragment_length,
  input      [31:0]   ctrl_cmd_payload_fragment_data,
  input      [3:0]    ctrl_cmd_payload_fragment_mask,
  output              ctrl_rsp_valid,
  input               ctrl_rsp_ready,
  output              ctrl_rsp_payload_last,
  output     [0:0]    ctrl_rsp_payload_fragment_opcode,
  output     [31:0]   ctrl_rsp_payload_fragment_data,
  output              dma_cmd_valid,
  input               dma_cmd_ready,
  output              dma_cmd_payload_last,
  output     [0:0]    dma_cmd_payload_fragment_opcode,
  output     [31:0]   dma_cmd_payload_fragment_address,
  output     [5:0]    dma_cmd_payload_fragment_length,
  output     [31:0]   dma_cmd_payload_fragment_data,
  output     [3:0]    dma_cmd_payload_fragment_mask,
  input               dma_rsp_valid,
  output              dma_rsp_ready,
  input               dma_rsp_payload_last,
  input      [0:0]    dma_rsp_payload_fragment_opcode,
  input      [31:0]   dma_rsp_payload_fragment_data,
  output              usb_0_tx_enable,
  output              usb_0_tx_data,
  output              usb_0_tx_se0,
  input               usb_0_rx_dp,
  input               usb_0_rx_dm,
  input               usb_0_rx_rcv,
  input               usb_0_overcurrent,
  output              usb_0_power,
  input               clk,
  input               reset
);
  wire                ohci_io_ctrl_cmd_ready;
  wire                ohci_io_ctrl_rsp_valid;
  wire                ohci_io_ctrl_rsp_payload_last;
  wire       [0:0]    ohci_io_ctrl_rsp_payload_fragment_opcode;
  wire       [31:0]   ohci_io_ctrl_rsp_payload_fragment_data;
  wire                ohci_io_phy_lowSpeed;
  wire                ohci_io_phy_remoteWakupEnable;
  wire                ohci_io_phy_tx_valid;
  wire                ohci_io_phy_tx_payload_last;
  wire       [7:0]    ohci_io_phy_tx_payload_fragment;
  wire                ohci_io_phy_ports_0_removable;
  wire                ohci_io_phy_ports_0_power;
  wire                ohci_io_phy_ports_0_reset_valid;
  wire                ohci_io_phy_ports_0_suspend_valid;
  wire                ohci_io_phy_ports_0_resume_valid;
  wire                ohci_io_phy_ports_0_disable_valid;
  wire                ohci_io_dma_cmd_valid;
  wire                ohci_io_dma_cmd_payload_last;
  wire       [0:0]    ohci_io_dma_cmd_payload_fragment_opcode;
  wire       [31:0]   ohci_io_dma_cmd_payload_fragment_address;
  wire       [5:0]    ohci_io_dma_cmd_payload_fragment_length;
  wire       [31:0]   ohci_io_dma_cmd_payload_fragment_data;
  wire       [3:0]    ohci_io_dma_cmd_payload_fragment_mask;
  wire                ohci_io_dma_rsp_ready;
  wire                phy_io_ctrl_overcurrent;
  wire                phy_io_ctrl_tx_ready;
  wire                phy_io_ctrl_rx_valid;
  wire                phy_io_ctrl_rx_error;
  wire                phy_io_ctrl_rx_active;
  wire       [7:0]    phy_io_ctrl_rx_data;
  wire                phy_io_ctrl_ports_0_reset_ready;
  wire                phy_io_ctrl_ports_0_suspend_ready;
  wire                phy_io_ctrl_ports_0_resume_ready;
  wire                phy_io_ctrl_ports_0_disable_ready;
  wire                phy_io_ctrl_ports_0_connected;
  wire                phy_io_ctrl_ports_0_overcurrent;
  wire                phy_io_ctrl_ports_0_lowSpeed;
  wire                phy_io_ctrl_ports_0_remoteResume;
  wire                phy_io_usb_0_tx_enable;
  wire                phy_io_usb_0_tx_data;
  wire                phy_io_usb_0_tx_se0;
  wire                phy_io_usb_0_power;

  UsbOhci ohci (
    .io_ctrl_cmd_valid                       (ctrl_cmd_valid                                  ), //i
    .io_ctrl_cmd_ready                       (ohci_io_ctrl_cmd_ready                          ), //o
    .io_ctrl_cmd_payload_last                (ctrl_cmd_payload_last                           ), //i
    .io_ctrl_cmd_payload_fragment_opcode     (ctrl_cmd_payload_fragment_opcode                ), //i
    .io_ctrl_cmd_payload_fragment_address    (ctrl_cmd_payload_fragment_address[11:0]         ), //i
    .io_ctrl_cmd_payload_fragment_length     (ctrl_cmd_payload_fragment_length[1:0]           ), //i
    .io_ctrl_cmd_payload_fragment_data       (ctrl_cmd_payload_fragment_data[31:0]            ), //i
    .io_ctrl_cmd_payload_fragment_mask       (ctrl_cmd_payload_fragment_mask[3:0]             ), //i
    .io_ctrl_rsp_valid                       (ohci_io_ctrl_rsp_valid                          ), //o
    .io_ctrl_rsp_ready                       (ctrl_rsp_ready                                  ), //i
    .io_ctrl_rsp_payload_last                (ohci_io_ctrl_rsp_payload_last                   ), //o
    .io_ctrl_rsp_payload_fragment_opcode     (ohci_io_ctrl_rsp_payload_fragment_opcode        ), //o
    .io_ctrl_rsp_payload_fragment_data       (ohci_io_ctrl_rsp_payload_fragment_data[31:0]    ), //o
    .io_phy_lowSpeed                         (ohci_io_phy_lowSpeed                            ), //o
    .io_phy_overcurrent                      (phy_io_ctrl_overcurrent                         ), //i
    .io_phy_tx_valid                         (ohci_io_phy_tx_valid                            ), //o
    .io_phy_tx_ready                         (phy_io_ctrl_tx_ready                            ), //i
    .io_phy_tx_payload_last                  (ohci_io_phy_tx_payload_last                     ), //o
    .io_phy_tx_payload_fragment              (ohci_io_phy_tx_payload_fragment[7:0]            ), //o
    .io_phy_rx_valid                         (phy_io_ctrl_rx_valid                            ), //i
    .io_phy_rx_error                         (phy_io_ctrl_rx_error                            ), //i
    .io_phy_rx_active                        (phy_io_ctrl_rx_active                           ), //i
    .io_phy_rx_data                          (phy_io_ctrl_rx_data[7:0]                        ), //i
    .io_phy_remoteWakupEnable                (ohci_io_phy_remoteWakupEnable                   ), //o
    .io_phy_ports_0_disable_valid            (ohci_io_phy_ports_0_disable_valid               ), //o
    .io_phy_ports_0_disable_ready            (phy_io_ctrl_ports_0_disable_ready               ), //i
    .io_phy_ports_0_removable                (ohci_io_phy_ports_0_removable                   ), //o
    .io_phy_ports_0_power                    (ohci_io_phy_ports_0_power                       ), //o
    .io_phy_ports_0_reset_valid              (ohci_io_phy_ports_0_reset_valid                 ), //o
    .io_phy_ports_0_reset_ready              (phy_io_ctrl_ports_0_reset_ready                 ), //i
    .io_phy_ports_0_suspend_valid            (ohci_io_phy_ports_0_suspend_valid               ), //o
    .io_phy_ports_0_suspend_ready            (phy_io_ctrl_ports_0_suspend_ready               ), //i
    .io_phy_ports_0_resume_valid             (ohci_io_phy_ports_0_resume_valid                ), //o
    .io_phy_ports_0_resume_ready             (phy_io_ctrl_ports_0_resume_ready                ), //i
    .io_phy_ports_0_connected                (phy_io_ctrl_ports_0_connected                   ), //i
    .io_phy_ports_0_overcurrent              (phy_io_ctrl_ports_0_overcurrent                 ), //i
    .io_phy_ports_0_remoteResume             (phy_io_ctrl_ports_0_remoteResume                ), //i
    .io_phy_ports_0_lowSpeed                 (phy_io_ctrl_ports_0_lowSpeed                    ), //i
    .io_dma_cmd_valid                        (ohci_io_dma_cmd_valid                           ), //o
    .io_dma_cmd_ready                        (dma_cmd_ready                                   ), //i
    .io_dma_cmd_payload_last                 (ohci_io_dma_cmd_payload_last                    ), //o
    .io_dma_cmd_payload_fragment_opcode      (ohci_io_dma_cmd_payload_fragment_opcode         ), //o
    .io_dma_cmd_payload_fragment_address     (ohci_io_dma_cmd_payload_fragment_address[31:0]  ), //o
    .io_dma_cmd_payload_fragment_length      (ohci_io_dma_cmd_payload_fragment_length[5:0]    ), //o
    .io_dma_cmd_payload_fragment_data        (ohci_io_dma_cmd_payload_fragment_data[31:0]     ), //o
    .io_dma_cmd_payload_fragment_mask        (ohci_io_dma_cmd_payload_fragment_mask[3:0]      ), //o
    .io_dma_rsp_valid                        (dma_rsp_valid                                   ), //i
    .io_dma_rsp_ready                        (ohci_io_dma_rsp_ready                           ), //o
    .io_dma_rsp_payload_last                 (dma_rsp_payload_last                            ), //i
    .io_dma_rsp_payload_fragment_opcode      (dma_rsp_payload_fragment_opcode                 ), //i
    .io_dma_rsp_payload_fragment_data        (dma_rsp_payload_fragment_data[31:0]             ), //i
    .clk                                     (clk                                             ), //i
    .reset                                   (reset                                           )  //i
  );
  UsbLsFsPhy phy (
    .io_ctrl_lowSpeed                 (ohci_io_phy_lowSpeed                  ), //i
    .io_ctrl_overcurrent              (phy_io_ctrl_overcurrent               ), //o
    .io_ctrl_tx_valid                 (ohci_io_phy_tx_valid                  ), //i
    .io_ctrl_tx_ready                 (phy_io_ctrl_tx_ready                  ), //o
    .io_ctrl_tx_payload_last          (ohci_io_phy_tx_payload_last           ), //i
    .io_ctrl_tx_payload_fragment      (ohci_io_phy_tx_payload_fragment[7:0]  ), //i
    .io_ctrl_rx_valid                 (phy_io_ctrl_rx_valid                  ), //o
    .io_ctrl_rx_error                 (phy_io_ctrl_rx_error                  ), //o
    .io_ctrl_rx_active                (phy_io_ctrl_rx_active                 ), //o
    .io_ctrl_rx_data                  (phy_io_ctrl_rx_data[7:0]              ), //o
    .io_ctrl_remoteWakupEnable        (ohci_io_phy_remoteWakupEnable         ), //i
    .io_ctrl_ports_0_disable_valid    (ohci_io_phy_ports_0_disable_valid     ), //i
    .io_ctrl_ports_0_disable_ready    (phy_io_ctrl_ports_0_disable_ready     ), //o
    .io_ctrl_ports_0_removable        (ohci_io_phy_ports_0_removable         ), //i
    .io_ctrl_ports_0_power            (ohci_io_phy_ports_0_power             ), //i
    .io_ctrl_ports_0_reset_valid      (ohci_io_phy_ports_0_reset_valid       ), //i
    .io_ctrl_ports_0_reset_ready      (phy_io_ctrl_ports_0_reset_ready       ), //o
    .io_ctrl_ports_0_suspend_valid    (ohci_io_phy_ports_0_suspend_valid     ), //i
    .io_ctrl_ports_0_suspend_ready    (phy_io_ctrl_ports_0_suspend_ready     ), //o
    .io_ctrl_ports_0_resume_valid     (ohci_io_phy_ports_0_resume_valid      ), //i
    .io_ctrl_ports_0_resume_ready     (phy_io_ctrl_ports_0_resume_ready      ), //o
    .io_ctrl_ports_0_connected        (phy_io_ctrl_ports_0_connected         ), //o
    .io_ctrl_ports_0_overcurrent      (phy_io_ctrl_ports_0_overcurrent       ), //o
    .io_ctrl_ports_0_remoteResume     (phy_io_ctrl_ports_0_remoteResume      ), //o
    .io_ctrl_ports_0_lowSpeed         (phy_io_ctrl_ports_0_lowSpeed          ), //o
    .io_usb_0_tx_enable               (phy_io_usb_0_tx_enable                ), //o
    .io_usb_0_tx_data                 (phy_io_usb_0_tx_data                  ), //o
    .io_usb_0_tx_se0                  (phy_io_usb_0_tx_se0                   ), //o
    .io_usb_0_rx_dp                   (usb_0_rx_dp                           ), //i
    .io_usb_0_rx_dm                   (usb_0_rx_dm                           ), //i
    .io_usb_0_rx_rcv                  (usb_0_rx_rcv                          ), //i
    .io_usb_0_overcurrent             (usb_0_overcurrent                     ), //i
    .io_usb_0_power                   (phy_io_usb_0_power                    ), //o
    .clk                              (clk                                   ), //i
    .reset                            (reset                                 )  //i
  );
  assign ctrl_cmd_ready = ohci_io_ctrl_cmd_ready;
  assign ctrl_rsp_valid = ohci_io_ctrl_rsp_valid;
  assign ctrl_rsp_payload_last = ohci_io_ctrl_rsp_payload_last;
  assign ctrl_rsp_payload_fragment_opcode = ohci_io_ctrl_rsp_payload_fragment_opcode;
  assign ctrl_rsp_payload_fragment_data = ohci_io_ctrl_rsp_payload_fragment_data;
  assign dma_cmd_valid = ohci_io_dma_cmd_valid;
  assign dma_cmd_payload_last = ohci_io_dma_cmd_payload_last;
  assign dma_cmd_payload_fragment_opcode = ohci_io_dma_cmd_payload_fragment_opcode;
  assign dma_cmd_payload_fragment_address = ohci_io_dma_cmd_payload_fragment_address;
  assign dma_cmd_payload_fragment_length = ohci_io_dma_cmd_payload_fragment_length;
  assign dma_cmd_payload_fragment_data = ohci_io_dma_cmd_payload_fragment_data;
  assign dma_cmd_payload_fragment_mask = ohci_io_dma_cmd_payload_fragment_mask;
  assign dma_rsp_ready = ohci_io_dma_rsp_ready;
  assign usb_0_tx_enable = phy_io_usb_0_tx_enable;
  assign usb_0_tx_data = phy_io_usb_0_tx_data;
  assign usb_0_tx_se0 = phy_io_usb_0_tx_se0;
  assign usb_0_power = phy_io_usb_0_power;

endmodule

module UsbLsFsPhy (
  input               io_ctrl_lowSpeed,
  output              io_ctrl_overcurrent,
  input               io_ctrl_tx_valid,
  output reg          io_ctrl_tx_ready,
  input               io_ctrl_tx_payload_last,
  input      [7:0]    io_ctrl_tx_payload_fragment,
  output reg          io_ctrl_rx_valid,
  output              io_ctrl_rx_error,
  output reg          io_ctrl_rx_active,
  output     [7:0]    io_ctrl_rx_data,
  input               io_ctrl_remoteWakupEnable,
  input               io_ctrl_ports_0_disable_valid,
  output              io_ctrl_ports_0_disable_ready,
  input               io_ctrl_ports_0_removable,
  input               io_ctrl_ports_0_power,
  input               io_ctrl_ports_0_reset_valid,
  output              io_ctrl_ports_0_reset_ready,
  input               io_ctrl_ports_0_suspend_valid,
  output              io_ctrl_ports_0_suspend_ready,
  input               io_ctrl_ports_0_resume_valid,
  output              io_ctrl_ports_0_resume_ready,
  output              io_ctrl_ports_0_connected,
  output              io_ctrl_ports_0_overcurrent,
  output              io_ctrl_ports_0_remoteResume,
  output              io_ctrl_ports_0_lowSpeed,
  output reg          io_usb_0_tx_enable,
  output reg          io_usb_0_tx_data,
  output reg          io_usb_0_tx_se0,
  input               io_usb_0_rx_dp,
  input               io_usb_0_rx_dm,
  input               io_usb_0_rx_rcv,
  input               io_usb_0_overcurrent,
  output              io_usb_0_power,
  input               clk,
  input               reset
);
  wire                _zz_9;
  wire                ports_0_filter_io_filtred_dp;
  wire                ports_0_filter_io_filtred_dm;
  wire                ports_0_filter_io_filtred_d;
  wire                ports_0_filter_io_filtred_sample;
  wire                _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  wire                _zz_13;
  wire                _zz_14;
  wire       [4:0]    _zz_15;
  wire       [22:0]   _zz_16;
  wire       [5:0]    _zz_17;
  wire       [22:0]   _zz_18;
  wire       [6:0]    _zz_19;
  wire       [22:0]   _zz_20;
  wire       [0:0]    _zz_21;
  wire       [1:0]    _zz_22;
  wire       [6:0]    _zz_23;
  wire       [4:0]    _zz_24;
  wire       [22:0]   _zz_25;
  wire       [5:0]    _zz_26;
  wire       [22:0]   _zz_27;
  reg                 txShared_timer_lowSpeed;
  reg        [22:0]   txShared_timer_counter;
  reg                 txShared_timer_clear;
  wire                txShared_timer_reset;
  wire                txShared_timer_suspend;
  wire                txShared_timer_resume;
  wire                txShared_timer_oneCycle;
  wire                txShared_timer_twoCycle;
  wire                txShared_timer_fourCycle;
  reg                 txShared_encoder_input_valid;
  reg                 txShared_encoder_input_ready;
  reg                 txShared_encoder_input_data;
  reg                 txShared_encoder_input_lowSpeed;
  reg                 txShared_encoder_output_valid;
  reg                 txShared_encoder_output_se0;
  reg                 txShared_encoder_output_lowSpeed;
  reg                 txShared_encoder_output_data;
  reg        [2:0]    txShared_encoder_counter;
  reg                 txShared_encoder_state;
  wire                txShared_encoder_clear;
  reg                 txShared_serialiser_input_valid;
  reg                 txShared_serialiser_input_ready;
  reg        [7:0]    txShared_serialiser_input_data;
  reg                 txShared_serialiser_input_lowSpeed;
  reg        [2:0]    txShared_serialiser_bitCounter;
  reg        [4:0]    txShared_lowSpeedSof_timer;
  reg        [1:0]    txShared_lowSpeedSof_state;
  reg                 txShared_lowSpeedSof_increment;
  reg                 io_ctrl_tx_payload_first;
  wire                txShared_lowSpeedSof_valid;
  wire                txShared_lowSpeedSof_data;
  wire                txShared_lowSpeedSof_se0;
  wire                txShared_frame_wantExit;
  reg                 txShared_frame_wantStart;
  wire                txShared_frame_busy;
  wire                ports_0_connected;
  wire                ports_0_lowSpeed;
  reg                 ports_0_enable;
  wire                ports_0_rx_timer_lowSpeed;
  reg        [22:0]   ports_0_rx_timer_counter;
  wire                ports_0_rx_timer_clear;
  wire                ports_0_rx_timer_reset;
  wire                ports_0_rx_timer_suspend;
  wire                ports_0_rx_timer_resume;
  wire                ports_0_rx_j;
  wire                ports_0_rx_k;
  reg                 ports_0_rx_decoder_state;
  reg                 ports_0_rx_decoder_clear;
  reg                 ports_0_rx_decoder_output_valid;
  reg                 ports_0_rx_decoder_output_payload;
  reg        [2:0]    ports_0_rx_destuffer_counter;
  wire                ports_0_rx_destuffer_unstuffNext;
  wire                ports_0_rx_decoder_output_takeWhen_valid;
  wire                ports_0_rx_decoder_output_takeWhen_payload;
  reg                 ports_0_rx_destuffer_output_valid;
  reg                 ports_0_rx_destuffer_output_payload;
  wire                _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;
  reg                 _zz_4;
  reg                 _zz_5;
  reg                 _zz_6;
  reg                 _zz_7;
  reg                 _zz_8;
  wire       [7:0]    ports_0_rx_history_value;
  wire                ports_0_rx_history_updated;
  wire                ports_0_rx_history_sync_hit;
  wire       [6:0]    ports_0_rx_eop_minThreshold;
  wire       [5:0]    ports_0_rx_eop_maxThreshold;
  reg        [6:0]    ports_0_rx_eop_counter;
  wire                ports_0_rx_eop_maxHit;
  reg                 ports_0_rx_eop_hit;
  wire                ports_0_rx_packet_wantExit;
  reg                 ports_0_rx_packet_wantStart;
  reg        [2:0]    ports_0_rx_packet_counter;
  wire                ports_0_fsm_wantExit;
  reg                 ports_0_fsm_wantStart;
  wire                ports_0_fsm_disconnectDetect;
  wire                ports_0_fsm_timer_lowSpeed;
  reg        [22:0]   ports_0_fsm_timer_counter;
  reg                 ports_0_fsm_timer_clear;
  wire                ports_0_fsm_timer_DISCONNECTED_EOI;
  wire                ports_0_fsm_timer_RESET_EOI;
  wire                ports_0_fsm_timer_RESUME_EOI;
  wire                ports_0_fsm_timer_ONE_BIT;
  wire                ports_0_fsm_timer_TWO_BIT;
  reg        `txShared_frame_enumDefinition_binary_sequential_type txShared_frame_stateReg;
  reg        `txShared_frame_enumDefinition_binary_sequential_type txShared_frame_stateNext;
  reg        `ports_0_rx_packet_enumDefinition_binary_sequential_type ports_0_rx_packet_stateReg;
  reg        `ports_0_rx_packet_enumDefinition_binary_sequential_type ports_0_rx_packet_stateNext;
  reg        `ports_0_fsm_enumDefinition_binary_sequential_type ports_0_fsm_stateReg;
  reg        `ports_0_fsm_enumDefinition_binary_sequential_type ports_0_fsm_stateNext;
  `ifndef SYNTHESIS
  reg [231:0] txShared_frame_stateReg_string;
  reg [231:0] txShared_frame_stateNext_string;
  reg [191:0] ports_0_rx_packet_stateReg_string;
  reg [191:0] ports_0_rx_packet_stateNext_string;
  reg [191:0] ports_0_fsm_stateReg_string;
  reg [191:0] ports_0_fsm_stateNext_string;
  `endif


  assign _zz_10 = (txShared_encoder_counter == 3'b110);
  assign _zz_11 = (txShared_lowSpeedSof_state == 2'b00);
  assign _zz_12 = ((io_ctrl_tx_valid && io_ctrl_tx_payload_first) && (io_ctrl_tx_payload_fragment == 8'ha5));
  assign _zz_13 = ((ports_0_rx_decoder_state ^ ports_0_filter_io_filtred_d) ^ ports_0_lowSpeed);
  assign _zz_14 = (ports_0_lowSpeed && txShared_lowSpeedSof_valid);
  assign _zz_15 = (txShared_timer_lowSpeed ? 5'h1f : 5'h03);
  assign _zz_16 = {18'd0, _zz_15};
  assign _zz_17 = (txShared_timer_lowSpeed ? 6'h3f : 6'h07);
  assign _zz_18 = {17'd0, _zz_17};
  assign _zz_19 = (txShared_timer_lowSpeed ? 7'h7f : 7'h0f);
  assign _zz_20 = {16'd0, _zz_19};
  assign _zz_21 = txShared_lowSpeedSof_increment;
  assign _zz_22 = {1'd0, _zz_21};
  assign _zz_23 = {1'd0, ports_0_rx_eop_maxThreshold};
  assign _zz_24 = (ports_0_fsm_timer_lowSpeed ? 5'h1f : 5'h03);
  assign _zz_25 = {18'd0, _zz_24};
  assign _zz_26 = (ports_0_fsm_timer_lowSpeed ? 6'h3f : 6'h07);
  assign _zz_27 = {17'd0, _zz_26};
  UsbLsFsPhyFilter ports_0_filter (
    .io_fullSpeed         (_zz_9                             ), //i
    .io_usb_dp            (io_usb_0_rx_dp                    ), //i
    .io_usb_dm            (io_usb_0_rx_dm                    ), //i
    .io_filtred_dp        (ports_0_filter_io_filtred_dp      ), //o
    .io_filtred_dm        (ports_0_filter_io_filtred_dm      ), //o
    .io_filtred_d         (ports_0_filter_io_filtred_d       ), //o
    .io_filtred_sample    (ports_0_filter_io_filtred_sample  ), //o
    .clk                  (clk                               ), //i
    .reset                (reset                             )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_BOOT : txShared_frame_stateReg_string = "txShared_frame_BOOT          ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : txShared_frame_stateReg_string = "txShared_frame_IDLE          ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : txShared_frame_stateReg_string = "txShared_frame_PREAMBLE_SYNC ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : txShared_frame_stateReg_string = "txShared_frame_PREAMBLE_PID  ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : txShared_frame_stateReg_string = "txShared_frame_PREAMBLE_DELAY";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : txShared_frame_stateReg_string = "txShared_frame_SYNC          ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : txShared_frame_stateReg_string = "txShared_frame_DATA          ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : txShared_frame_stateReg_string = "txShared_frame_EOP_0         ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : txShared_frame_stateReg_string = "txShared_frame_EOP_1         ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : txShared_frame_stateReg_string = "txShared_frame_EOP_2         ";
      default : txShared_frame_stateReg_string = "?????????????????????????????";
    endcase
  end
  always @(*) begin
    case(txShared_frame_stateNext)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_BOOT : txShared_frame_stateNext_string = "txShared_frame_BOOT          ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : txShared_frame_stateNext_string = "txShared_frame_IDLE          ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : txShared_frame_stateNext_string = "txShared_frame_PREAMBLE_SYNC ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : txShared_frame_stateNext_string = "txShared_frame_PREAMBLE_PID  ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : txShared_frame_stateNext_string = "txShared_frame_PREAMBLE_DELAY";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : txShared_frame_stateNext_string = "txShared_frame_SYNC          ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : txShared_frame_stateNext_string = "txShared_frame_DATA          ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : txShared_frame_stateNext_string = "txShared_frame_EOP_0         ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : txShared_frame_stateNext_string = "txShared_frame_EOP_1         ";
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : txShared_frame_stateNext_string = "txShared_frame_EOP_2         ";
      default : txShared_frame_stateNext_string = "?????????????????????????????";
    endcase
  end
  always @(*) begin
    case(ports_0_rx_packet_stateReg)
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_BOOT : ports_0_rx_packet_stateReg_string = "ports_0_rx_packet_BOOT  ";
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE : ports_0_rx_packet_stateReg_string = "ports_0_rx_packet_IDLE  ";
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_PACKET : ports_0_rx_packet_stateReg_string = "ports_0_rx_packet_PACKET";
      default : ports_0_rx_packet_stateReg_string = "????????????????????????";
    endcase
  end
  always @(*) begin
    case(ports_0_rx_packet_stateNext)
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_BOOT : ports_0_rx_packet_stateNext_string = "ports_0_rx_packet_BOOT  ";
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE : ports_0_rx_packet_stateNext_string = "ports_0_rx_packet_IDLE  ";
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_PACKET : ports_0_rx_packet_stateNext_string = "ports_0_rx_packet_PACKET";
      default : ports_0_rx_packet_stateNext_string = "????????????????????????";
    endcase
  end
  always @(*) begin
    case(ports_0_fsm_stateReg)
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_BOOT : ports_0_fsm_stateReg_string = "ports_0_fsm_BOOT        ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF : ports_0_fsm_stateReg_string = "ports_0_fsm_POWER_OFF   ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED : ports_0_fsm_stateReg_string = "ports_0_fsm_DISCONNECTED";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED : ports_0_fsm_stateReg_string = "ports_0_fsm_DISABLED    ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING : ports_0_fsm_stateReg_string = "ports_0_fsm_RESETTING   ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED : ports_0_fsm_stateReg_string = "ports_0_fsm_ENABLED     ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED : ports_0_fsm_stateReg_string = "ports_0_fsm_SUSPENDED   ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING : ports_0_fsm_stateReg_string = "ports_0_fsm_RESUMING    ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0 : ports_0_fsm_stateReg_string = "ports_0_fsm_SEND_EOP_0  ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1 : ports_0_fsm_stateReg_string = "ports_0_fsm_SEND_EOP_1  ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_S : ports_0_fsm_stateReg_string = "ports_0_fsm_RESTART_S   ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_E : ports_0_fsm_stateReg_string = "ports_0_fsm_RESTART_E   ";
      default : ports_0_fsm_stateReg_string = "????????????????????????";
    endcase
  end
  always @(*) begin
    case(ports_0_fsm_stateNext)
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_BOOT : ports_0_fsm_stateNext_string = "ports_0_fsm_BOOT        ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF : ports_0_fsm_stateNext_string = "ports_0_fsm_POWER_OFF   ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED : ports_0_fsm_stateNext_string = "ports_0_fsm_DISCONNECTED";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED : ports_0_fsm_stateNext_string = "ports_0_fsm_DISABLED    ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING : ports_0_fsm_stateNext_string = "ports_0_fsm_RESETTING   ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED : ports_0_fsm_stateNext_string = "ports_0_fsm_ENABLED     ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED : ports_0_fsm_stateNext_string = "ports_0_fsm_SUSPENDED   ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING : ports_0_fsm_stateNext_string = "ports_0_fsm_RESUMING    ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0 : ports_0_fsm_stateNext_string = "ports_0_fsm_SEND_EOP_0  ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1 : ports_0_fsm_stateNext_string = "ports_0_fsm_SEND_EOP_1  ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_S : ports_0_fsm_stateNext_string = "ports_0_fsm_RESTART_S   ";
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_E : ports_0_fsm_stateNext_string = "ports_0_fsm_RESTART_E   ";
      default : ports_0_fsm_stateNext_string = "????????????????????????";
    endcase
  end
  `endif

  always @ (*) begin
    txShared_timer_clear = 1'b0;
    if(txShared_encoder_input_valid)begin
      if(_zz_10)begin
        if(txShared_timer_oneCycle)begin
          txShared_timer_clear = 1'b1;
        end
      end
    end
    if(txShared_encoder_input_ready)begin
      txShared_timer_clear = 1'b1;
    end
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
        if(io_ctrl_tx_valid)begin
          txShared_timer_clear = 1'b1;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
        if(txShared_timer_fourCycle)begin
          txShared_timer_clear = 1'b1;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
        if(txShared_timer_twoCycle)begin
          txShared_timer_clear = 1'b1;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
        if(txShared_timer_oneCycle)begin
          txShared_timer_clear = 1'b1;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
        if(txShared_timer_oneCycle)begin
          txShared_timer_clear = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign txShared_timer_reset = (txShared_timer_counter == 23'h080e7f);
  assign txShared_timer_suspend = (txShared_timer_counter == 23'h026abf);
  assign txShared_timer_resume = (txShared_timer_counter == 23'h101cff);
  assign txShared_timer_oneCycle = (txShared_timer_counter == _zz_16);
  assign txShared_timer_twoCycle = (txShared_timer_counter == _zz_18);
  assign txShared_timer_fourCycle = (txShared_timer_counter == _zz_20);
  always @ (*) begin
    txShared_timer_lowSpeed = 1'bx;
    if(txShared_encoder_input_valid)begin
      txShared_timer_lowSpeed = txShared_encoder_input_lowSpeed;
    end
  end

  always @ (*) begin
    txShared_encoder_input_valid = 1'b0;
    if(txShared_serialiser_input_valid)begin
      txShared_encoder_input_valid = 1'b1;
    end
  end

  always @ (*) begin
    txShared_encoder_input_ready = 1'b0;
    if(txShared_encoder_input_valid)begin
      if(! _zz_10) begin
        if(txShared_encoder_input_data)begin
          if(txShared_timer_oneCycle)begin
            txShared_encoder_input_ready = 1'b1;
          end
        end else begin
          if(txShared_timer_oneCycle)begin
            txShared_encoder_input_ready = 1'b1;
          end
        end
      end
    end
  end

  always @ (*) begin
    txShared_encoder_input_data = 1'bx;
    if(txShared_serialiser_input_valid)begin
      txShared_encoder_input_data = txShared_serialiser_input_data[txShared_serialiser_bitCounter];
    end
  end

  always @ (*) begin
    txShared_encoder_input_lowSpeed = 1'bx;
    if(txShared_serialiser_input_valid)begin
      txShared_encoder_input_lowSpeed = txShared_serialiser_input_lowSpeed;
    end
  end

  always @ (*) begin
    txShared_encoder_output_valid = 1'b0;
    if(txShared_encoder_input_valid)begin
      txShared_encoder_output_valid = txShared_encoder_input_valid;
    end
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
        txShared_encoder_output_valid = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
        txShared_encoder_output_valid = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
        txShared_encoder_output_valid = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    txShared_encoder_output_se0 = 1'b0;
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
        txShared_encoder_output_se0 = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    txShared_encoder_output_lowSpeed = 1'bx;
    if(txShared_encoder_input_valid)begin
      txShared_encoder_output_lowSpeed = txShared_encoder_input_lowSpeed;
    end
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
        txShared_encoder_output_lowSpeed = 1'b0;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    txShared_encoder_output_data = 1'bx;
    if(txShared_encoder_input_valid)begin
      if(_zz_10)begin
        txShared_encoder_output_data = (! txShared_encoder_state);
      end else begin
        if(txShared_encoder_input_data)begin
          txShared_encoder_output_data = txShared_encoder_state;
        end else begin
          txShared_encoder_output_data = (! txShared_encoder_state);
        end
      end
    end
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
        txShared_encoder_output_data = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
        txShared_encoder_output_data = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
      end
      default : begin
      end
    endcase
  end

  assign txShared_encoder_clear = 1'b0;
  always @ (*) begin
    txShared_serialiser_input_valid = 1'b0;
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
        txShared_serialiser_input_valid = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
        txShared_serialiser_input_valid = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
        txShared_serialiser_input_valid = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
        txShared_serialiser_input_valid = 1'b1;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    txShared_serialiser_input_ready = 1'b0;
    if(txShared_serialiser_input_valid)begin
      if(txShared_encoder_input_ready)begin
        if((txShared_serialiser_bitCounter == 3'b111))begin
          txShared_serialiser_input_ready = 1'b1;
        end
      end
    end
  end

  always @ (*) begin
    txShared_serialiser_input_data = 8'h0;
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
        txShared_serialiser_input_data = 8'h80;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
        txShared_serialiser_input_data = 8'h3c;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
        txShared_serialiser_input_data = 8'h80;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
        txShared_serialiser_input_data = io_ctrl_tx_payload_fragment;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    txShared_serialiser_input_lowSpeed = 1'bx;
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
        txShared_serialiser_input_lowSpeed = 1'b0;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
        txShared_serialiser_input_lowSpeed = 1'b0;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
        txShared_serialiser_input_lowSpeed = io_ctrl_lowSpeed;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
        txShared_serialiser_input_lowSpeed = io_ctrl_lowSpeed;
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    txShared_lowSpeedSof_increment = 1'b0;
    if(_zz_11)begin
      if(_zz_12)begin
        txShared_lowSpeedSof_increment = 1'b1;
      end
    end
  end

  assign txShared_lowSpeedSof_valid = (txShared_lowSpeedSof_state != 2'b00);
  assign txShared_lowSpeedSof_data = 1'b0;
  assign txShared_lowSpeedSof_se0 = (txShared_lowSpeedSof_state != 2'b11);
  assign txShared_frame_wantExit = 1'b0;
  always @ (*) begin
    txShared_frame_wantStart = 1'b0;
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
      end
      default : begin
        txShared_frame_wantStart = 1'b1;
      end
    endcase
  end

  assign txShared_frame_busy = (! (txShared_frame_stateReg == `txShared_frame_enumDefinition_binary_sequential_txShared_frame_BOOT));
  always @ (*) begin
    io_ctrl_tx_ready = 1'b0;
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
        if(txShared_serialiser_input_ready)begin
          io_ctrl_tx_ready = 1'b1;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
      end
      default : begin
      end
    endcase
  end

  assign io_ctrl_overcurrent = 1'b0;
  assign ports_0_connected = 1'b0;
  assign ports_0_lowSpeed = 1'b0;
  assign io_ctrl_ports_0_connected = ports_0_connected;
  assign io_ctrl_ports_0_lowSpeed = ports_0_lowSpeed;
  assign io_ctrl_ports_0_remoteResume = 1'b0;
  assign ports_0_rx_timer_clear = 1'b0;
  assign ports_0_rx_timer_reset = (ports_0_rx_timer_counter == 23'h06977f);
  assign ports_0_rx_timer_suspend = (ports_0_rx_timer_counter == 23'h01fa3f);
  assign ports_0_rx_timer_resume = (ports_0_rx_timer_counter == 23'h0d2eff);
  assign ports_0_rx_j = ((ports_0_filter_io_filtred_dp == (! ports_0_lowSpeed)) && (ports_0_filter_io_filtred_dm == ports_0_lowSpeed));
  assign ports_0_rx_k = ((ports_0_filter_io_filtred_dp == ports_0_lowSpeed) && (ports_0_filter_io_filtred_dm == (! ports_0_lowSpeed)));
  assign io_usb_0_power = io_ctrl_ports_0_power;
  assign io_ctrl_ports_0_overcurrent = io_usb_0_overcurrent;
  always @ (*) begin
    ports_0_rx_decoder_clear = 1'b0;
    if(ports_0_rx_eop_hit)begin
      ports_0_rx_decoder_clear = 1'b1;
    end
  end

  always @ (*) begin
    ports_0_rx_decoder_output_valid = 1'b0;
    if(ports_0_filter_io_filtred_sample)begin
      ports_0_rx_decoder_output_valid = 1'b1;
    end
  end

  always @ (*) begin
    ports_0_rx_decoder_output_payload = 1'bx;
    if(ports_0_filter_io_filtred_sample)begin
      if(_zz_13)begin
        ports_0_rx_decoder_output_payload = 1'b0;
      end else begin
        ports_0_rx_decoder_output_payload = 1'b1;
      end
    end
  end

  assign ports_0_rx_destuffer_unstuffNext = (ports_0_rx_destuffer_counter == 3'b110);
  assign ports_0_rx_decoder_output_takeWhen_valid = (ports_0_rx_decoder_output_valid && (! ports_0_rx_destuffer_unstuffNext));
  assign ports_0_rx_decoder_output_takeWhen_payload = ports_0_rx_decoder_output_payload;
  assign _zz_1 = ports_0_rx_destuffer_output_payload;
  assign ports_0_rx_history_value = {_zz_8,{_zz_7,{_zz_6,{_zz_5,{_zz_4,{_zz_3,{_zz_2,_zz_1}}}}}}};
  assign ports_0_rx_history_updated = ports_0_rx_destuffer_output_valid;
  assign ports_0_rx_history_sync_hit = (ports_0_rx_history_updated && (ports_0_rx_history_value == 8'h80));
  assign ports_0_rx_eop_minThreshold = (ports_0_lowSpeed ? 7'h60 : 7'h0c);
  assign ports_0_rx_eop_maxThreshold = (ports_0_lowSpeed ? 6'h2a : 6'h05);
  assign ports_0_rx_eop_maxHit = (ports_0_rx_eop_counter == _zz_23);
  always @ (*) begin
    ports_0_rx_eop_hit = 1'b0;
    if(ports_0_rx_j)begin
      if(((ports_0_rx_eop_minThreshold <= ports_0_rx_eop_counter) && (! ports_0_rx_eop_maxHit)))begin
        ports_0_rx_eop_hit = 1'b1;
      end
    end
  end

  assign ports_0_rx_packet_wantExit = 1'b0;
  always @ (*) begin
    ports_0_rx_packet_wantStart = 1'b0;
    case(ports_0_rx_packet_stateReg)
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE : begin
      end
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_PACKET : begin
      end
      default : begin
        ports_0_rx_packet_wantStart = 1'b1;
      end
    endcase
  end

  always @ (*) begin
    io_ctrl_rx_valid = 1'b0;
    case(ports_0_rx_packet_stateReg)
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE : begin
      end
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_PACKET : begin
        if(ports_0_rx_destuffer_output_valid)begin
          if((ports_0_rx_packet_counter == 3'b111))begin
            io_ctrl_rx_valid = 1'b1;
          end
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_ctrl_rx_active = 1'b0;
    case(ports_0_rx_packet_stateReg)
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE : begin
      end
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_PACKET : begin
        io_ctrl_rx_active = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign io_ctrl_rx_error = 1'b0;
  assign io_ctrl_rx_data = ports_0_rx_history_value;
  assign ports_0_fsm_wantExit = 1'b0;
  always @ (*) begin
    ports_0_fsm_wantStart = 1'b0;
    case(ports_0_fsm_stateReg)
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0 : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1 : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_S : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_E : begin
      end
      default : begin
        ports_0_fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign ports_0_fsm_disconnectDetect = 1'b0;
  always @ (*) begin
    ports_0_fsm_timer_clear = 1'b0;
    case(ports_0_fsm_stateReg)
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED : begin
        if((((! ports_0_filter_io_filtred_dp) && (! ports_0_filter_io_filtred_dm)) || (! io_ctrl_remoteWakupEnable)))begin
          ports_0_fsm_timer_clear = 1'b1;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0 : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1 : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_S : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_E : begin
      end
      default : begin
      end
    endcase
    if(((! (ports_0_fsm_stateReg == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED)) && (ports_0_fsm_stateNext == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED)))begin
      ports_0_fsm_timer_clear = 1'b1;
    end
    if(((! (ports_0_fsm_stateReg == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING)) && (ports_0_fsm_stateNext == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING)))begin
      ports_0_fsm_timer_clear = 1'b1;
    end
    if(((! (ports_0_fsm_stateReg == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING)) && (ports_0_fsm_stateNext == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING)))begin
      ports_0_fsm_timer_clear = 1'b1;
    end
    if(((! (ports_0_fsm_stateReg == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0)) && (ports_0_fsm_stateNext == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0)))begin
      ports_0_fsm_timer_clear = 1'b1;
    end
    if(((! (ports_0_fsm_stateReg == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1)) && (ports_0_fsm_stateNext == `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1)))begin
      ports_0_fsm_timer_clear = 1'b1;
    end
  end

  assign ports_0_fsm_timer_DISCONNECTED_EOI = (ports_0_fsm_timer_counter == 23'h005dbf);
  assign ports_0_fsm_timer_RESET_EOI = (ports_0_fsm_timer_counter == 23'h255a7f);
  assign ports_0_fsm_timer_RESUME_EOI = (ports_0_fsm_timer_counter == 23'h0f617f);
  assign ports_0_fsm_timer_ONE_BIT = (ports_0_fsm_timer_counter == _zz_25);
  assign ports_0_fsm_timer_TWO_BIT = (ports_0_fsm_timer_counter == _zz_27);
  assign ports_0_fsm_timer_lowSpeed = 1'b1;
  assign io_ctrl_ports_0_disable_ready = 1'b1;
  assign io_ctrl_ports_0_reset_ready = 1'b0;
  assign io_ctrl_ports_0_resume_ready = 1'b0;
  assign io_ctrl_ports_0_suspend_ready = 1'b0;
  always @ (*) begin
    io_usb_0_tx_enable = 1'b0;
    case(ports_0_fsm_stateReg)
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING : begin
        io_usb_0_tx_enable = 1'b1;
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED : begin
        io_usb_0_tx_enable = (txShared_encoder_output_valid && (! (ports_0_lowSpeed && (! txShared_encoder_output_lowSpeed))));
        if(_zz_14)begin
          io_usb_0_tx_enable = txShared_lowSpeedSof_valid;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING : begin
        io_usb_0_tx_enable = 1'b1;
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0 : begin
        io_usb_0_tx_enable = 1'b1;
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1 : begin
        io_usb_0_tx_enable = 1'b1;
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_S : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_E : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_usb_0_tx_data = 1'bx;
    case(ports_0_fsm_stateReg)
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED : begin
        io_usb_0_tx_data = (txShared_encoder_output_data ^ ports_0_lowSpeed);
        if(_zz_14)begin
          io_usb_0_tx_data = txShared_lowSpeedSof_data;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING : begin
        io_usb_0_tx_data = ports_0_lowSpeed;
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0 : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1 : begin
        io_usb_0_tx_data = (! ports_0_lowSpeed);
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_S : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_E : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_usb_0_tx_se0 = 1'bx;
    case(ports_0_fsm_stateReg)
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING : begin
        io_usb_0_tx_se0 = 1'b1;
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED : begin
        io_usb_0_tx_se0 = txShared_encoder_output_se0;
        if(_zz_14)begin
          io_usb_0_tx_se0 = txShared_lowSpeedSof_se0;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING : begin
        io_usb_0_tx_se0 = 1'b0;
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0 : begin
        io_usb_0_tx_se0 = 1'b1;
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1 : begin
        io_usb_0_tx_se0 = 1'b0;
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_S : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_E : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    txShared_frame_stateNext = txShared_frame_stateReg;
    case(txShared_frame_stateReg)
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE : begin
        if(io_ctrl_tx_valid)begin
          if(io_ctrl_lowSpeed)begin
            txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC;
          end else begin
            txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC;
          end
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_SYNC : begin
        if(txShared_serialiser_input_ready)begin
          txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_PID : begin
        if(txShared_serialiser_input_ready)begin
          txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_PREAMBLE_DELAY : begin
        if(txShared_timer_fourCycle)begin
          txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_SYNC : begin
        if(txShared_serialiser_input_ready)begin
          txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_DATA : begin
        if(txShared_serialiser_input_ready)begin
          if(io_ctrl_tx_payload_last)begin
            txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0;
          end
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_0 : begin
        if(txShared_timer_twoCycle)begin
          txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_1 : begin
        if(txShared_timer_oneCycle)begin
          txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2;
        end
      end
      `txShared_frame_enumDefinition_binary_sequential_txShared_frame_EOP_2 : begin
        if(txShared_timer_oneCycle)begin
          txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE;
        end
      end
      default : begin
      end
    endcase
    if(txShared_frame_wantStart)begin
      txShared_frame_stateNext = `txShared_frame_enumDefinition_binary_sequential_txShared_frame_IDLE;
    end
  end

  always @ (*) begin
    ports_0_rx_packet_stateNext = ports_0_rx_packet_stateReg;
    case(ports_0_rx_packet_stateReg)
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE : begin
        if(ports_0_rx_history_sync_hit)begin
          ports_0_rx_packet_stateNext = `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_PACKET;
        end
      end
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_PACKET : begin
        if(ports_0_rx_eop_hit)begin
          ports_0_rx_packet_stateNext = `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE;
        end
      end
      default : begin
      end
    endcase
    if(ports_0_rx_packet_wantStart)begin
      ports_0_rx_packet_stateNext = `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE;
    end
  end

  always @ (*) begin
    ports_0_fsm_stateNext = ports_0_fsm_stateReg;
    case(ports_0_fsm_stateReg)
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF : begin
        if(io_ctrl_ports_0_power)begin
          ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED : begin
        if(ports_0_fsm_timer_DISCONNECTED_EOI)begin
          ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING : begin
        if(ports_0_fsm_timer_RESET_EOI)begin
          ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED : begin
        if(io_ctrl_ports_0_suspend_valid)begin
          ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SUSPENDED : begin
        if(io_ctrl_ports_0_resume_valid)begin
          ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESUMING : begin
        if(ports_0_fsm_timer_RESUME_EOI)begin
          ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_0 : begin
        if(ports_0_fsm_timer_TWO_BIT)begin
          ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_SEND_EOP_1 : begin
        if(ports_0_fsm_timer_ONE_BIT)begin
          ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_ENABLED;
        end
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_S : begin
      end
      `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESTART_E : begin
      end
      default : begin
      end
    endcase
    if((! io_ctrl_ports_0_power))begin
      ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF;
    end else begin
      if(ports_0_fsm_disconnectDetect)begin
        ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISCONNECTED;
      end else begin
        if((! io_ctrl_ports_0_disable_valid))begin
          ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_DISABLED;
        end else begin
          if(io_ctrl_ports_0_reset_valid)begin
            ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_RESETTING;
          end
        end
      end
    end
    if(ports_0_fsm_wantStart)begin
      ports_0_fsm_stateNext = `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_POWER_OFF;
    end
  end

  always @ (posedge clk) begin
    txShared_timer_counter <= (txShared_timer_counter + 23'h000001);
    if(txShared_timer_clear)begin
      txShared_timer_counter <= 23'h0;
    end
    if(txShared_encoder_input_valid)begin
      if(_zz_10)begin
        if(txShared_timer_oneCycle)begin
          txShared_encoder_counter <= 3'b000;
          txShared_encoder_state <= (! txShared_encoder_state);
        end
      end else begin
        if(txShared_encoder_input_data)begin
          if(txShared_timer_oneCycle)begin
            txShared_encoder_counter <= (txShared_encoder_counter + 3'b001);
          end
        end else begin
          if(txShared_timer_oneCycle)begin
            txShared_encoder_counter <= 3'b000;
            txShared_encoder_state <= (! txShared_encoder_state);
          end
        end
      end
    end
    if(txShared_encoder_clear)begin
      txShared_encoder_counter <= 3'b000;
      txShared_encoder_state <= 1'b1;
    end
    if(txShared_serialiser_input_valid)begin
      if(txShared_encoder_input_ready)begin
        txShared_serialiser_bitCounter <= (txShared_serialiser_bitCounter + 3'b001);
      end
    end
    if(((! txShared_serialiser_input_valid) || txShared_serialiser_input_ready))begin
      txShared_serialiser_bitCounter <= 3'b000;
    end
    if(_zz_11)begin
      if(_zz_12)begin
        txShared_lowSpeedSof_timer <= 5'h0;
      end
    end else begin
      txShared_lowSpeedSof_timer <= (txShared_lowSpeedSof_timer + 5'h01);
    end
    ports_0_rx_timer_counter <= (ports_0_rx_timer_counter + 23'h000001);
    if(ports_0_rx_timer_clear)begin
      ports_0_rx_timer_counter <= 23'h0;
    end
    ports_0_rx_destuffer_output_payload <= ports_0_rx_decoder_output_takeWhen_payload;
    if(ports_0_rx_destuffer_output_valid)begin
      _zz_2 <= _zz_1;
    end
    if(ports_0_rx_destuffer_output_valid)begin
      _zz_3 <= _zz_2;
    end
    if(ports_0_rx_destuffer_output_valid)begin
      _zz_4 <= _zz_3;
    end
    if(ports_0_rx_destuffer_output_valid)begin
      _zz_5 <= _zz_4;
    end
    if(ports_0_rx_destuffer_output_valid)begin
      _zz_6 <= _zz_5;
    end
    if(ports_0_rx_destuffer_output_valid)begin
      _zz_7 <= _zz_6;
    end
    if(ports_0_rx_destuffer_output_valid)begin
      _zz_8 <= _zz_7;
    end
    ports_0_fsm_timer_counter <= (ports_0_fsm_timer_counter + 23'h000001);
    if(ports_0_fsm_timer_clear)begin
      ports_0_fsm_timer_counter <= 23'h0;
    end
    case(ports_0_rx_packet_stateReg)
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_IDLE : begin
        if(ports_0_rx_history_sync_hit)begin
          ports_0_rx_packet_counter <= 3'b000;
        end
      end
      `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_PACKET : begin
        if(ports_0_rx_destuffer_output_valid)begin
          ports_0_rx_packet_counter <= (ports_0_rx_packet_counter + 3'b001);
        end
      end
      default : begin
      end
    endcase
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      txShared_lowSpeedSof_state <= 2'b00;
      ports_0_rx_decoder_state <= 1'b1;
      ports_0_rx_destuffer_counter <= 3'b000;
      ports_0_rx_destuffer_output_valid <= 1'b0;
      ports_0_rx_eop_counter <= 7'h0;
      txShared_frame_stateReg <= `txShared_frame_enumDefinition_binary_sequential_txShared_frame_BOOT;
      ports_0_rx_packet_stateReg <= `ports_0_rx_packet_enumDefinition_binary_sequential_ports_0_rx_packet_BOOT;
      ports_0_fsm_stateReg <= `ports_0_fsm_enumDefinition_binary_sequential_ports_0_fsm_BOOT;
    end else begin
      txShared_lowSpeedSof_state <= (txShared_lowSpeedSof_state + _zz_22);
      if(! _zz_11) begin
        if((txShared_lowSpeedSof_timer == 5'h1f))begin
          txShared_lowSpeedSof_state <= (txShared_lowSpeedSof_state + 2'b01);
        end
      end
      if(ports_0_rx_decoder_clear)begin
        ports_0_rx_decoder_state <= 1'b1;
      end
      if(ports_0_filter_io_filtred_sample)begin
        if(_zz_13)begin
          ports_0_rx_decoder_state <= (! ports_0_rx_decoder_state);
        end
      end
      ports_0_rx_destuffer_output_valid <= ports_0_rx_decoder_output_takeWhen_valid;
      if(ports_0_rx_decoder_output_valid)begin
        ports_0_rx_destuffer_counter <= (ports_0_rx_destuffer_counter + 3'b001);
        if(((! ports_0_rx_decoder_output_payload) || ports_0_rx_destuffer_unstuffNext))begin
          ports_0_rx_destuffer_counter <= 3'b000;
        end
      end
      if(((! ports_0_filter_io_filtred_dp) && (! ports_0_filter_io_filtred_dm)))begin
        if((! ports_0_rx_eop_maxHit))begin
          ports_0_rx_eop_counter <= (ports_0_rx_eop_counter + 7'h01);
        end
      end else begin
        ports_0_rx_eop_counter <= 7'h0;
      end
      txShared_frame_stateReg <= txShared_frame_stateNext;
      ports_0_rx_packet_stateReg <= ports_0_rx_packet_stateNext;
      ports_0_fsm_stateReg <= ports_0_fsm_stateNext;
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      io_ctrl_tx_payload_first <= 1'b1;
    end else begin
      if((io_ctrl_tx_valid && io_ctrl_tx_ready))begin
        io_ctrl_tx_payload_first <= io_ctrl_tx_payload_last;
      end
    end
  end


endmodule

module UsbOhci (
  input               io_ctrl_cmd_valid,
  output              io_ctrl_cmd_ready,
  input               io_ctrl_cmd_payload_last,
  input      [0:0]    io_ctrl_cmd_payload_fragment_opcode,
  input      [11:0]   io_ctrl_cmd_payload_fragment_address,
  input      [1:0]    io_ctrl_cmd_payload_fragment_length,
  input      [31:0]   io_ctrl_cmd_payload_fragment_data,
  input      [3:0]    io_ctrl_cmd_payload_fragment_mask,
  output              io_ctrl_rsp_valid,
  input               io_ctrl_rsp_ready,
  output              io_ctrl_rsp_payload_last,
  output     [0:0]    io_ctrl_rsp_payload_fragment_opcode,
  output     [31:0]   io_ctrl_rsp_payload_fragment_data,
  output reg          io_phy_lowSpeed,
  input               io_phy_overcurrent,
  output reg          io_phy_tx_valid,
  input               io_phy_tx_ready,
  output reg          io_phy_tx_payload_last,
  output reg [7:0]    io_phy_tx_payload_fragment,
  input               io_phy_rx_valid,
  input               io_phy_rx_error,
  input               io_phy_rx_active,
  input      [7:0]    io_phy_rx_data,
  output              io_phy_remoteWakupEnable,
  output              io_phy_ports_0_disable_valid,
  input               io_phy_ports_0_disable_ready,
  output              io_phy_ports_0_removable,
  output              io_phy_ports_0_power,
  output              io_phy_ports_0_reset_valid,
  input               io_phy_ports_0_reset_ready,
  output              io_phy_ports_0_suspend_valid,
  input               io_phy_ports_0_suspend_ready,
  output              io_phy_ports_0_resume_valid,
  input               io_phy_ports_0_resume_ready,
  input               io_phy_ports_0_connected,
  input               io_phy_ports_0_overcurrent,
  input               io_phy_ports_0_remoteResume,
  input               io_phy_ports_0_lowSpeed,
  output reg          io_dma_cmd_valid,
  input               io_dma_cmd_ready,
  output reg          io_dma_cmd_payload_last,
  output reg [0:0]    io_dma_cmd_payload_fragment_opcode,
  output reg [31:0]   io_dma_cmd_payload_fragment_address,
  output reg [5:0]    io_dma_cmd_payload_fragment_length,
  output reg [31:0]   io_dma_cmd_payload_fragment_data,
  output reg [3:0]    io_dma_cmd_payload_fragment_mask,
  input               io_dma_rsp_valid,
  output              io_dma_rsp_ready,
  input               io_dma_rsp_payload_last,
  input      [0:0]    io_dma_rsp_payload_fragment_opcode,
  input      [31:0]   io_dma_rsp_payload_fragment_data,
  input               clk,
  input               reset
);
  reg                 _zz_58;
  reg                 _zz_59;
  reg                 _zz_60;
  wire                _zz_61;
  reg        [31:0]   _zz_62;
  reg        [7:0]    _zz_63;
  wire       [4:0]    token_crc5_io_result;
  wire       [4:0]    token_crc5_io_resultNext;
  wire       [15:0]   dataTx_crc16_io_result;
  wire       [15:0]   dataTx_crc16_io_resultNext;
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
  wire       [2:0]    _zz_80;
  wire       [0:0]    _zz_81;
  wire       [2:0]    _zz_82;
  wire       [0:0]    _zz_83;
  wire       [2:0]    _zz_84;
  wire       [0:0]    _zz_85;
  wire       [0:0]    _zz_86;
  wire       [0:0]    _zz_87;
  wire       [0:0]    _zz_88;
  wire       [0:0]    _zz_89;
  wire       [0:0]    _zz_90;
  wire       [0:0]    _zz_91;
  wire       [0:0]    _zz_92;
  wire       [0:0]    _zz_93;
  wire       [0:0]    _zz_94;
  wire       [0:0]    _zz_95;
  wire       [0:0]    _zz_96;
  wire       [0:0]    _zz_97;
  wire       [0:0]    _zz_98;
  wire       [0:0]    _zz_99;
  wire       [0:0]    _zz_100;
  wire       [0:0]    _zz_101;
  wire       [0:0]    _zz_102;
  wire       [0:0]    _zz_103;
  wire       [0:0]    _zz_104;
  wire       [0:0]    _zz_105;
  wire       [0:0]    _zz_106;
  wire       [0:0]    _zz_107;
  wire       [0:0]    _zz_108;
  wire       [0:0]    _zz_109;
  wire       [0:0]    _zz_110;
  wire       [0:0]    _zz_111;
  wire       [0:0]    _zz_112;
  wire       [0:0]    _zz_113;
  wire       [0:0]    _zz_114;
  wire       [0:0]    _zz_115;
  wire       [0:0]    _zz_116;
  wire       [0:0]    _zz_117;
  wire       [0:0]    _zz_118;
  wire       [0:0]    _zz_119;
  wire       [0:0]    _zz_120;
  wire       [0:0]    _zz_121;
  wire       [0:0]    _zz_122;
  wire       [0:0]    _zz_123;
  wire       [0:0]    _zz_124;
  wire       [0:0]    _zz_125;
  wire       [0:0]    _zz_126;
  wire       [0:0]    _zz_127;
  wire       [0:0]    _zz_128;
  wire       [0:0]    _zz_129;
  wire       [0:0]    _zz_130;
  wire       [0:0]    _zz_131;
  wire       [0:0]    _zz_132;
  wire       [0:0]    _zz_133;
  wire       [0:0]    _zz_134;
  wire       [0:0]    _zz_135;
  wire       [0:0]    _zz_136;
  wire       [0:0]    _zz_137;
  wire       [0:0]    _zz_138;
  wire       [0:0]    _zz_139;
  wire       [0:0]    _zz_140;
  wire       [0:0]    _zz_141;
  wire       [0:0]    _zz_142;
  wire       [13:0]   _zz_143;
  wire       [0:0]    _zz_144;
  wire       [0:0]    _zz_145;
  wire       [0:0]    _zz_146;
  wire       [0:0]    _zz_147;
  wire       [0:0]    _zz_148;
  wire       [0:0]    _zz_149;
  wire       [0:0]    _zz_150;
  wire       [0:0]    _zz_151;
  wire       [0:0]    _zz_152;
  wire       [0:0]    _zz_153;
  wire       [0:0]    _zz_154;
  wire       [0:0]    _zz_155;
  wire       [0:0]    _zz_156;
  wire       [0:0]    _zz_157;
  wire       [0:0]    _zz_158;
  wire       [0:0]    _zz_159;
  wire       [0:0]    _zz_160;
  wire       [0:0]    _zz_161;
  wire       [0:0]    _zz_162;
  wire       [0:0]    _zz_163;
  wire       [0:0]    _zz_164;
  wire       [0:0]    _zz_165;
  wire       [0:0]    _zz_166;
  wire       [0:0]    _zz_167;
  wire       [0:0]    _zz_168;
  wire       [0:0]    _zz_169;
  wire       [0:0]    _zz_170;
  wire       [0:0]    _zz_171;
  wire       [0:0]    _zz_172;
  wire       [0:0]    _zz_173;
  wire       [0:0]    _zz_174;
  wire       [0:0]    _zz_175;
  wire       [0:0]    _zz_176;
  wire       [0:0]    _zz_177;
  wire       [0:0]    _zz_178;
  wire       [1:0]    _zz_179;
  wire       [11:0]   _zz_180;
  wire       [12:0]   _zz_181;
  wire       [13:0]   _zz_182;
  wire       [13:0]   _zz_183;
  wire       [5:0]    _zz_184;
  wire       [13:0]   _zz_185;
  wire       [13:0]   _zz_186;
  wire       [13:0]   _zz_187;
  wire       [0:0]    _zz_188;
  wire       [13:0]   _zz_189;
  wire       [13:0]   _zz_190;
  wire       [13:0]   _zz_191;
  wire       [0:0]    _zz_192;
  wire       [0:0]    _zz_193;
  wire       [0:0]    _zz_194;
  wire       [0:0]    _zz_195;
  wire       [0:0]    _zz_196;
  wire       [0:0]    _zz_197;
  wire       [0:0]    _zz_198;
  wire       [0:0]    _zz_199;
  wire       [0:0]    _zz_200;
  wire       [0:0]    _zz_201;
  wire       [0:0]    _zz_202;
  wire       [0:0]    _zz_203;
  wire       [15:0]   _zz_204;
  wire       [4:0]    _zz_205;
  wire       [11:0]   _zz_206;
  wire       [11:0]   _zz_207;
  wire       [12:0]   _zz_208;
  wire       [12:0]   _zz_209;
  wire       [16:0]   _zz_210;
  wire       [16:0]   _zz_211;
  wire       [4:0]    _zz_212;
  wire       [2:0]    _zz_213;
  wire       [3:0]    _zz_214;
  wire       [4:0]    _zz_215;
  wire       [4:0]    _zz_216;
  wire       [13:0]   _zz_217;
  wire       [13:0]   _zz_218;
  wire       [6:0]    _zz_219;
  wire       [31:0]   _zz_220;
  reg                 _zz_1;
  wire       [31:0]   dmaRspMux_vec_0;
  wire       [31:0]   dmaRspMux_data;
  reg        [3:0]    dmaReadCtx_counter;
  reg        [3:0]    dmaWriteCtx_counter;
  reg        [2:0]    dmaCtx_pendingCounter;
  wire                dmaCtx_pendingFull;
  wire                dmaCtx_pendingEmpty;
  reg                 dataBuffer_write_cmd_valid;
  wire       [8:0]    dataBuffer_write_cmd_payload_address;
  reg        [31:0]   dataBuffer_write_cmd_payload_data;
  reg        [8:0]    dataBuffer_write_counter_value;
  reg                 dataBuffer_write_counter_clear;
  reg                 dataBuffer_write_counter_increment;
  reg                 dataBuffer_read_cmd_valid;
  wire                dataBuffer_read_cmd_ready;
  wire       [8:0]    dataBuffer_read_cmd_payload;
  reg        [2:0]    dataBuffer_read_cmdCtx;
  wire                dataBuffer_read_rsp_valid;
  reg                 dataBuffer_read_rsp_ready;
  wire       [31:0]   dataBuffer_read_rsp_payload_value;
  wire       [2:0]    dataBuffer_read_rsp_payload_linked;
  reg                 _zz_2;
  reg        [2:0]    dataBuffer_read_cmdCtx_regNextWhen;
  reg        [8:0]    dataBuffer_read_counter_value;
  reg                 dataBuffer_read_counter_clear;
  reg                 dataBuffer_read_counter_increment;
  wire                ctrl_readHaltTrigger;
  wire                ctrl_writeHaltTrigger;
  wire                ctrl_rsp_valid;
  wire                ctrl_rsp_ready;
  wire                ctrl_rsp_payload_last;
  wire       [0:0]    ctrl_rsp_payload_fragment_opcode;
  reg        [31:0]   ctrl_rsp_payload_fragment_data;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  reg                 _zz_6;
  reg                 _zz_7;
  reg        [0:0]    _zz_8;
  reg        [31:0]   _zz_9;
  wire                ctrl_askWrite;
  wire                ctrl_askRead;
  wire                ctrl_doWrite;
  wire                ctrl_doRead;
  reg                 resetCtrl_doSoftReset;
  wire       [4:0]    reg_hcRevision_REV;
  reg        [1:0]    reg_hcControl_CBSR;
  reg                 reg_hcControl_PLE;
  reg                 reg_hcControl_IE;
  reg                 reg_hcControl_CLE;
  reg                 reg_hcControl_BLE;
  reg        `MainState_binary_sequential_type reg_hcControl_HCFS;
  reg                 reg_hcControl_IR;
  reg                 reg_hcControl_RWC;
  reg                 reg_hcControl_RWE;
  reg                 reg_hcCommandStatus_HCR;
  reg                 _zz_10;
  reg                 reg_hcCommandStatus_CLF;
  reg                 _zz_11;
  reg                 reg_hcCommandStatus_BLF;
  reg                 _zz_12;
  reg        [1:0]    reg_hcCommandStatus_SOC;
  reg                 reg_hcInterrupt_MIE;
  reg                 _zz_13;
  reg                 _zz_14;
  reg                 reg_hcInterrupt_SO_status;
  reg                 _zz_15;
  reg                 reg_hcInterrupt_SO_enable;
  reg                 _zz_16;
  reg                 _zz_17;
  reg                 reg_hcInterrupt_WDH_status;
  reg                 _zz_18;
  reg                 reg_hcInterrupt_WDH_enable;
  reg                 _zz_19;
  reg                 _zz_20;
  reg                 reg_hcInterrupt_SF_status;
  reg                 _zz_21;
  reg                 reg_hcInterrupt_SF_enable;
  reg                 _zz_22;
  reg                 _zz_23;
  reg                 reg_hcInterrupt_RD_status;
  reg                 _zz_24;
  reg                 reg_hcInterrupt_RD_enable;
  reg                 _zz_25;
  reg                 _zz_26;
  reg                 reg_hcInterrupt_UE_status;
  reg                 _zz_27;
  reg                 reg_hcInterrupt_UE_enable;
  reg                 _zz_28;
  reg                 _zz_29;
  reg                 reg_hcInterrupt_FNO_status;
  reg                 _zz_30;
  reg                 reg_hcInterrupt_FNO_enable;
  reg                 _zz_31;
  reg                 _zz_32;
  reg                 reg_hcInterrupt_RHSC_status;
  reg                 _zz_33;
  reg                 reg_hcInterrupt_RHSC_enable;
  reg                 _zz_34;
  reg                 _zz_35;
  reg                 reg_hcInterrupt_OC_status;
  reg                 _zz_36;
  reg                 reg_hcInterrupt_OC_enable;
  reg                 _zz_37;
  reg                 _zz_38;
  wire       [31:0]   reg_hcHCCA_HCCA_address;
  reg        [23:0]   reg_hcHCCA_HCCA_reg;
  wire       [31:0]   reg_hcPeriodCurrentED_PCED_address;
  reg        [27:0]   reg_hcPeriodCurrentED_PCED_reg;
  wire                reg_hcPeriodCurrentED_isZero;
  wire       [31:0]   reg_hcControlHeadED_CHED_address;
  reg        [27:0]   reg_hcControlHeadED_CHED_reg;
  wire       [31:0]   reg_hcControlCurrentED_CCED_address;
  reg        [27:0]   reg_hcControlCurrentED_CCED_reg;
  wire                reg_hcControlCurrentED_isZero;
  wire       [31:0]   reg_hcBulkHeadED_BHED_address;
  reg        [27:0]   reg_hcBulkHeadED_BHED_reg;
  wire       [31:0]   reg_hcBulkCurrentED_BCED_address;
  reg        [27:0]   reg_hcBulkCurrentED_BCED_reg;
  wire                reg_hcBulkCurrentED_isZero;
  wire       [31:0]   reg_hcDoneHead_DH_address;
  reg        [27:0]   reg_hcDoneHead_DH_reg;
  reg        [13:0]   reg_hcFmInterval_FI;
  reg        [14:0]   reg_hcFmInterval_FSMPS;
  reg                 reg_hcFmInterval_FIT;
  reg        [13:0]   reg_hcFmRemaining_FR;
  reg                 reg_hcFmRemaining_FRT;
  reg        [15:0]   reg_hcFmNumber_FN;
  reg        [13:0]   reg_hcPeriodicStart_PS;
  reg        [11:0]   reg_hcLSThreshold_LST;
  wire                reg_hcLSThreshold_hit;
  wire       [7:0]    reg_hcRhDescriptorA_NDP;
  reg                 reg_hcRhDescriptorA_PSM;
  reg                 reg_hcRhDescriptorA_NPS;
  reg                 reg_hcRhDescriptorA_OCPM;
  reg                 reg_hcRhDescriptorA_NOCP;
  reg        [7:0]    reg_hcRhDescriptorA_POTPGT;
  reg        [0:0]    reg_hcRhDescriptorB_DR;
  reg        [0:0]    reg_hcRhDescriptorB_PPCM;
  reg                 reg_hcRhStatus_DRWE;
  reg                 reg_hcRhStatus_CCIC;
  reg                 _zz_39;
  reg                 io_phy_overcurrent_regNext;
  reg                 reg_hcRhStatus_clearGlobalPower;
  reg                 _zz_40;
  reg                 reg_hcRhStatus_setRemoteWakeupEnable;
  reg                 _zz_41;
  reg                 reg_hcRhStatus_setGlobalPower;
  reg                 _zz_42;
  reg                 reg_hcRhStatus_clearRemoteWakeupEnable;
  reg                 _zz_43;
  reg                 reg_hcRhPortStatus_0_clearPortEnable;
  reg                 _zz_44;
  reg                 reg_hcRhPortStatus_0_setPortEnable;
  reg                 _zz_45;
  reg                 reg_hcRhPortStatus_0_setPortSuspend;
  reg                 _zz_46;
  reg                 reg_hcRhPortStatus_0_clearSuspendStatus;
  reg                 _zz_47;
  reg                 reg_hcRhPortStatus_0_setPortReset;
  reg                 _zz_48;
  reg                 reg_hcRhPortStatus_0_setPortPower;
  reg                 _zz_49;
  reg                 reg_hcRhPortStatus_0_clearPortPower;
  reg                 _zz_50;
  reg                 reg_hcRhPortStatus_0_resume;
  reg                 reg_hcRhPortStatus_0_reset;
  reg                 reg_hcRhPortStatus_0_suspend;
  reg                 reg_hcRhPortStatus_0_PSS;
  reg                 reg_hcRhPortStatus_0_PPS;
  wire                reg_hcRhPortStatus_0_CCS;
  reg                 reg_hcRhPortStatus_0_PES;
  wire                reg_hcRhPortStatus_0_CSC_set;
  reg                 reg_hcRhPortStatus_0_CSC_clear;
  reg                 reg_hcRhPortStatus_0_CSC_reg;
  reg                 _zz_51;
  wire                reg_hcRhPortStatus_0_PESC_set;
  reg                 reg_hcRhPortStatus_0_PESC_clear;
  reg                 reg_hcRhPortStatus_0_PESC_reg;
  reg                 _zz_52;
  wire                reg_hcRhPortStatus_0_PSSC_set;
  reg                 reg_hcRhPortStatus_0_PSSC_clear;
  reg                 reg_hcRhPortStatus_0_PSSC_reg;
  reg                 _zz_53;
  wire                reg_hcRhPortStatus_0_OCIC_set;
  reg                 reg_hcRhPortStatus_0_OCIC_clear;
  reg                 reg_hcRhPortStatus_0_OCIC_reg;
  reg                 _zz_54;
  wire                reg_hcRhPortStatus_0_PRSC_set;
  reg                 reg_hcRhPortStatus_0_PRSC_clear;
  reg                 reg_hcRhPortStatus_0_PRSC_reg;
  reg                 _zz_55;
  reg                 reg_hcRhPortStatus_0_CCS_regNext;
  reg                 bitTimer_reload;
  wire                bitTimer_counter_willIncrement;
  reg                 bitTimer_counter_willClear;
  reg        [1:0]    bitTimer_counter_valueNext;
  reg        [1:0]    bitTimer_counter_value;
  wire                bitTimer_counter_willOverflowIfInc;
  wire                bitTimer_counter_willOverflow;
  wire                bitTimer_tick;
  reg                 frame_run;
  reg                 frame_reload;
  wire                frame_overflow;
  reg                 frame_tick;
  wire                frame_section1;
  reg        [14:0]   frame_limitCounter;
  wire                frame_limitHit;
  reg        [2:0]    frame_decrementTimer;
  wire                frame_decrementTimerOverflow;
  reg                 token_wantExit;
  reg                 token_wantStart;
  reg        [3:0]    token_pid;
  reg        [10:0]   token_data;
  reg                 dataTx_wantExit;
  reg                 dataTx_wantStart;
  reg        [3:0]    dataTx_pid;
  reg                 dataTx_data_valid;
  reg                 dataTx_data_ready;
  reg                 dataTx_data_payload_last;
  reg        [7:0]    dataTx_data_payload_fragment;
  reg                 sof_wantExit;
  reg                 sof_wantStart;
  reg                 sof_doInterruptDelay;
  reg                 sof_unmaskedInterruptDelay;
  reg                 priority_bulk;
  reg        [1:0]    priority_counter;
  reg                 priority_tick;
  reg                 priority_skip;
  reg        [2:0]    interruptDelay_counter;
  reg                 interruptDelay_tick;
  wire                interruptDelay_done;
  wire                interruptDelay_disabled;
  reg                 interruptDelay_disable;
  reg                 interruptDelay_load_valid;
  reg        [2:0]    interruptDelay_load_payload;
  reg                 endpoint_wantExit;
  reg                 endpoint_wantStart;
  reg        `FlowType_binary_sequential_type endpoint_flowType;
  reg        `endpoint_Status_binary_sequential_type endpoint_status_1;
  reg        [31:0]   endpoint_ED_address;
  reg        [31:0]   endpoint_ED_words_0;
  reg        [31:0]   endpoint_ED_words_1;
  reg        [31:0]   endpoint_ED_words_2;
  reg        [31:0]   endpoint_ED_words_3;
  wire       [6:0]    endpoint_ED_FA;
  wire       [3:0]    endpoint_ED_EN;
  wire       [1:0]    endpoint_ED_D;
  wire                endpoint_ED_S;
  wire                endpoint_ED_K;
  wire                endpoint_ED_F;
  wire       [10:0]   endpoint_ED_MPS;
  wire       [27:0]   endpoint_ED_tailP;
  wire                endpoint_ED_H;
  wire                endpoint_ED_C;
  wire       [27:0]   endpoint_ED_headP;
  wire       [27:0]   endpoint_ED_nextED;
  wire                endpoint_ED_tdEmpty;
  wire                endpoint_ED_isFs;
  wire       [31:0]   endpoint_TD_address;
  reg        [31:0]   endpoint_TD_words_0;
  reg        [31:0]   endpoint_TD_words_1;
  reg        [31:0]   endpoint_TD_words_2;
  reg        [31:0]   endpoint_TD_words_3;
  wire       [3:0]    endpoint_TD_CC;
  wire       [1:0]    endpoint_TD_EC;
  wire       [1:0]    endpoint_TD_T;
  wire       [2:0]    endpoint_TD_DI;
  wire       [1:0]    endpoint_TD_DP;
  wire       [0:0]    endpoint_TD_R;
  wire       [31:0]   endpoint_TD_CBP;
  wire       [27:0]   endpoint_TD_nextTD;
  wire       [31:0]   endpoint_TD_BE;
  wire                endpoint_TD_pageMatch;
  reg                 endpoint_applyNextED;
  reg        [13:0]   endpoint_currentAddress;
  wire       [31:0]   endpoint_currentAddressFull;
  reg        [12:0]   endpoint_lastAddress;
  wire       [12:0]   endpoint_transferSizeCalc;
  wire       [13:0]   endpoint_transactionSize;
  reg                 endpoint_zeroLength;
  reg                 endpoint_dataPhase;
  wire                endpoint_dataDone;
  reg                 endpoint_dmaLogic_wantExit;
  reg                 endpoint_dmaLogic_wantStart;
  reg                 endpoint_dmaLogic_save;
  reg        [5:0]    endpoint_dmaLogic_length;
  wire       [5:0]    endpoint_dmaLogic_lengthMax;
  wire       [5:0]    endpoint_dmaLogic_lengthCalc;
  reg        [1:0]    endpoint_dmaLogic_predictedWriteCounter;
  reg                 endpoint_dmaLogic_bufferReady;
  reg        [3:0]    endpoint_dmaLogic_readRspCounter;
  reg                 endpoint_dmaLogic_abord_valid;
  reg                 endpoint_dmaLogic_abord_ready;
  reg                 endpoint_dmaLogic_readCmdEnable;
  reg                 endpoint_dmaLogic_readRspEnable;
  reg        [12:0]   endpoint_dmaLogic_readByteCounter;
  wire                endpoint_dmaLogic_readCmdCtx_last;
  wire       [1:0]    endpoint_dmaLogic_readCmdCtx_sel;
  wire                endpoint_dmaLogic_readRspCtx_last;
  wire       [1:0]    endpoint_dmaLogic_readRspCtx_sel;
  reg        [1:0]    endpoint_dmaLogic_abordCounter;
  wire       [11:0]   endpoint_currentAddressCalc;
  wire       [12:0]   endpoint_lastAddressNoSat;
  wire       [13:0]   endpoint_byteCountCalc;
  reg                 endpoint_tdCompletion;
  wire                operational_wantExit;
  reg                 operational_wantStart;
  reg                 operational_periodicHeadFetched;
  reg                 operational_periodicDone;
  reg                 operational_allowBulk;
  reg                 operational_allowControl;
  reg                 operational_allowPeriodic;
  reg                 operational_allowIsochronous;
  wire                hc_wantExit;
  reg                 hc_wantStart;
  reg                 hc_error;
  wire       `MainState_binary_sequential_type _zz_56;
  reg        `token_enumDefinition_binary_sequential_type token_stateReg;
  reg        `token_enumDefinition_binary_sequential_type token_stateNext;
  reg        `dataTx_enumDefinition_binary_sequential_type dataTx_stateReg;
  reg        `dataTx_enumDefinition_binary_sequential_type dataTx_stateNext;
  reg        `sof_enumDefinition_binary_sequential_type sof_stateReg;
  reg        `sof_enumDefinition_binary_sequential_type sof_stateNext;
  reg        `endpoint_enumDefinition_binary_sequential_type endpoint_stateReg;
  reg        `endpoint_enumDefinition_binary_sequential_type endpoint_stateNext;
  wire       [11:0]   _zz_57;
  reg        `endpoint_dmaLogic_enumDefinition_binary_sequential_type endpoint_dmaLogic_stateReg;
  reg        `endpoint_dmaLogic_enumDefinition_binary_sequential_type endpoint_dmaLogic_stateNext;
  reg        `operational_enumDefinition_binary_sequential_type operational_stateReg;
  reg        `operational_enumDefinition_binary_sequential_type operational_stateNext;
  reg        `hc_enumDefinition_binary_sequential_type hc_stateReg;
  reg        `hc_enumDefinition_binary_sequential_type hc_stateNext;
  `ifndef SYNTHESIS
  reg [87:0] reg_hcControl_HCFS_string;
  reg [63:0] endpoint_flowType_string;
  reg [79:0] endpoint_status_1_string;
  reg [87:0] _zz_56_string;
  reg [79:0] token_stateReg_string;
  reg [79:0] token_stateNext_string;
  reg [95:0] dataTx_stateReg_string;
  reg [95:0] dataTx_stateNext_string;
  reg [159:0] sof_stateReg_string;
  reg [159:0] sof_stateNext_string;
  reg [175:0] endpoint_stateReg_string;
  reg [175:0] endpoint_stateNext_string;
  reg [175:0] endpoint_dmaLogic_stateReg_string;
  reg [175:0] endpoint_dmaLogic_stateNext_string;
  reg [231:0] operational_stateReg_string;
  reg [231:0] operational_stateNext_string;
  reg [111:0] hc_stateReg_string;
  reg [111:0] hc_stateNext_string;
  `endif

  reg [31:0] dataBuffer_ram [0:340];

  assign _zz_64 = (dmaWriteCtx_counter == 4'b0000);
  assign _zz_65 = (dmaWriteCtx_counter == 4'b0001);
  assign _zz_66 = (dmaWriteCtx_counter == 4'b0000);
  assign _zz_67 = (dmaWriteCtx_counter == 4'b0001);
  assign _zz_68 = (dmaWriteCtx_counter == 4'b0010);
  assign _zz_69 = (dmaWriteCtx_counter == 4'b0010);
  assign _zz_70 = (endpoint_dmaLogic_save && io_dma_rsp_valid);
  assign _zz_71 = ((! (hc_stateReg == `hc_enumDefinition_binary_sequential_hc_OPERATIONAL)) && (hc_stateNext == `hc_enumDefinition_binary_sequential_hc_OPERATIONAL));
  assign _zz_72 = (frame_run && bitTimer_tick);
  assign _zz_73 = ((operational_allowPeriodic && (! operational_periodicDone)) && (! frame_section1));
  assign _zz_74 = ((operational_stateReg == `operational_enumDefinition_binary_sequential_operational_BOOT) && (! (operational_stateNext == `operational_enumDefinition_binary_sequential_operational_BOOT)));
  assign _zz_75 = ((endpoint_ED_H || endpoint_ED_S) || endpoint_ED_tdEmpty);
  assign _zz_76 = (! operational_periodicHeadFetched);
  assign _zz_77 = (endpoint_dataDone || endpoint_dmaLogic_abord_valid);
  assign _zz_78 = ((endpoint_ED_isFs && (_zz_210 <= _zz_211)) || (endpoint_ED_S && reg_hcLSThreshold_hit));
  assign _zz_79 = ((endpoint_ED_D[0] != endpoint_ED_D[1]) ? endpoint_ED_D : endpoint_TD_DP);
  assign _zz_80 = (dmaCtx_pendingCounter + _zz_82);
  assign _zz_81 = ((io_dma_cmd_valid && io_dma_cmd_ready) && io_dma_cmd_payload_last);
  assign _zz_82 = {2'd0, _zz_81};
  assign _zz_83 = ((io_dma_rsp_valid && io_dma_rsp_ready) && io_dma_rsp_payload_last);
  assign _zz_84 = {2'd0, _zz_83};
  assign _zz_85 = io_ctrl_cmd_payload_fragment_data[0 : 0];
  assign _zz_86 = 1'b1;
  assign _zz_87 = io_ctrl_cmd_payload_fragment_data[1 : 1];
  assign _zz_88 = 1'b1;
  assign _zz_89 = io_ctrl_cmd_payload_fragment_data[2 : 2];
  assign _zz_90 = 1'b1;
  assign _zz_91 = io_ctrl_cmd_payload_fragment_data[31 : 31];
  assign _zz_92 = 1'b1;
  assign _zz_93 = io_ctrl_cmd_payload_fragment_data[31 : 31];
  assign _zz_94 = 1'b0;
  assign _zz_95 = io_ctrl_cmd_payload_fragment_data[0 : 0];
  assign _zz_96 = 1'b0;
  assign _zz_97 = io_ctrl_cmd_payload_fragment_data[0 : 0];
  assign _zz_98 = 1'b1;
  assign _zz_99 = io_ctrl_cmd_payload_fragment_data[0 : 0];
  assign _zz_100 = 1'b0;
  assign _zz_101 = io_ctrl_cmd_payload_fragment_data[1 : 1];
  assign _zz_102 = 1'b0;
  assign _zz_103 = io_ctrl_cmd_payload_fragment_data[1 : 1];
  assign _zz_104 = 1'b1;
  assign _zz_105 = io_ctrl_cmd_payload_fragment_data[1 : 1];
  assign _zz_106 = 1'b0;
  assign _zz_107 = io_ctrl_cmd_payload_fragment_data[2 : 2];
  assign _zz_108 = 1'b0;
  assign _zz_109 = io_ctrl_cmd_payload_fragment_data[2 : 2];
  assign _zz_110 = 1'b1;
  assign _zz_111 = io_ctrl_cmd_payload_fragment_data[2 : 2];
  assign _zz_112 = 1'b0;
  assign _zz_113 = io_ctrl_cmd_payload_fragment_data[3 : 3];
  assign _zz_114 = 1'b0;
  assign _zz_115 = io_ctrl_cmd_payload_fragment_data[3 : 3];
  assign _zz_116 = 1'b1;
  assign _zz_117 = io_ctrl_cmd_payload_fragment_data[3 : 3];
  assign _zz_118 = 1'b0;
  assign _zz_119 = io_ctrl_cmd_payload_fragment_data[4 : 4];
  assign _zz_120 = 1'b0;
  assign _zz_121 = io_ctrl_cmd_payload_fragment_data[4 : 4];
  assign _zz_122 = 1'b1;
  assign _zz_123 = io_ctrl_cmd_payload_fragment_data[4 : 4];
  assign _zz_124 = 1'b0;
  assign _zz_125 = io_ctrl_cmd_payload_fragment_data[5 : 5];
  assign _zz_126 = 1'b0;
  assign _zz_127 = io_ctrl_cmd_payload_fragment_data[5 : 5];
  assign _zz_128 = 1'b1;
  assign _zz_129 = io_ctrl_cmd_payload_fragment_data[5 : 5];
  assign _zz_130 = 1'b0;
  assign _zz_131 = io_ctrl_cmd_payload_fragment_data[6 : 6];
  assign _zz_132 = 1'b0;
  assign _zz_133 = io_ctrl_cmd_payload_fragment_data[6 : 6];
  assign _zz_134 = 1'b1;
  assign _zz_135 = io_ctrl_cmd_payload_fragment_data[6 : 6];
  assign _zz_136 = 1'b0;
  assign _zz_137 = io_ctrl_cmd_payload_fragment_data[30 : 30];
  assign _zz_138 = 1'b0;
  assign _zz_139 = io_ctrl_cmd_payload_fragment_data[30 : 30];
  assign _zz_140 = 1'b1;
  assign _zz_141 = io_ctrl_cmd_payload_fragment_data[30 : 30];
  assign _zz_142 = 1'b0;
  assign _zz_143 = {2'd0, reg_hcLSThreshold_LST};
  assign _zz_144 = io_ctrl_cmd_payload_fragment_data[17 : 17];
  assign _zz_145 = 1'b0;
  assign _zz_146 = io_ctrl_cmd_payload_fragment_data[0 : 0];
  assign _zz_147 = 1'b1;
  assign _zz_148 = io_ctrl_cmd_payload_fragment_data[15 : 15];
  assign _zz_149 = 1'b1;
  assign _zz_150 = io_ctrl_cmd_payload_fragment_data[16 : 16];
  assign _zz_151 = 1'b1;
  assign _zz_152 = io_ctrl_cmd_payload_fragment_data[31 : 31];
  assign _zz_153 = 1'b1;
  assign _zz_154 = io_ctrl_cmd_payload_fragment_data[0 : 0];
  assign _zz_155 = 1'b1;
  assign _zz_156 = io_ctrl_cmd_payload_fragment_data[1 : 1];
  assign _zz_157 = 1'b1;
  assign _zz_158 = io_ctrl_cmd_payload_fragment_data[2 : 2];
  assign _zz_159 = 1'b1;
  assign _zz_160 = io_ctrl_cmd_payload_fragment_data[3 : 3];
  assign _zz_161 = 1'b1;
  assign _zz_162 = io_ctrl_cmd_payload_fragment_data[4 : 4];
  assign _zz_163 = 1'b1;
  assign _zz_164 = io_ctrl_cmd_payload_fragment_data[8 : 8];
  assign _zz_165 = 1'b1;
  assign _zz_166 = io_ctrl_cmd_payload_fragment_data[9 : 9];
  assign _zz_167 = 1'b1;
  assign _zz_168 = io_ctrl_cmd_payload_fragment_data[16 : 16];
  assign _zz_169 = 1'b1;
  assign _zz_170 = io_ctrl_cmd_payload_fragment_data[17 : 17];
  assign _zz_171 = 1'b1;
  assign _zz_172 = io_ctrl_cmd_payload_fragment_data[18 : 18];
  assign _zz_173 = 1'b1;
  assign _zz_174 = io_ctrl_cmd_payload_fragment_data[19 : 19];
  assign _zz_175 = 1'b1;
  assign _zz_176 = io_ctrl_cmd_payload_fragment_data[20 : 20];
  assign _zz_177 = 1'b1;
  assign _zz_178 = bitTimer_counter_willIncrement;
  assign _zz_179 = {1'd0, _zz_178};
  assign _zz_180 = endpoint_TD_CBP[11 : 0];
  assign _zz_181 = {1'd0, _zz_180};
  assign _zz_182 = {1'd0, endpoint_lastAddress};
  assign _zz_183 = {1'd0, endpoint_lastAddress};
  assign _zz_184 = endpoint_currentAddress[5:0];
  assign _zz_185 = ((endpoint_transactionSize < _zz_186) ? endpoint_transactionSize : _zz_187);
  assign _zz_186 = {8'd0, endpoint_dmaLogic_lengthMax};
  assign _zz_187 = {8'd0, endpoint_dmaLogic_lengthMax};
  assign _zz_188 = dataBuffer_read_rsp_payload_linked[0 : 0];
  assign _zz_189 = (_zz_190 - endpoint_currentAddress);
  assign _zz_190 = {1'd0, endpoint_lastAddress};
  assign _zz_191 = {1'd0, endpoint_lastAddressNoSat};
  assign _zz_192 = io_ctrl_cmd_payload_fragment_data[2 : 2];
  assign _zz_193 = io_ctrl_cmd_payload_fragment_data[3 : 3];
  assign _zz_194 = io_ctrl_cmd_payload_fragment_data[4 : 4];
  assign _zz_195 = io_ctrl_cmd_payload_fragment_data[5 : 5];
  assign _zz_196 = io_ctrl_cmd_payload_fragment_data[8 : 8];
  assign _zz_197 = io_ctrl_cmd_payload_fragment_data[9 : 9];
  assign _zz_198 = io_ctrl_cmd_payload_fragment_data[10 : 10];
  assign _zz_199 = io_ctrl_cmd_payload_fragment_data[31 : 31];
  assign _zz_200 = io_ctrl_cmd_payload_fragment_data[8 : 8];
  assign _zz_201 = io_ctrl_cmd_payload_fragment_data[9 : 9];
  assign _zz_202 = io_ctrl_cmd_payload_fragment_data[11 : 11];
  assign _zz_203 = io_ctrl_cmd_payload_fragment_data[12 : 12];
  assign _zz_204 = reg_hcFmNumber_FN;
  assign _zz_205 = (endpoint_ED_F ? 5'h1f : 5'h0f);
  assign _zz_206 = (endpoint_currentAddressCalc + _zz_207);
  assign _zz_207 = {1'd0, endpoint_ED_MPS};
  assign _zz_208 = {1'd0, _zz_57};
  assign _zz_209 = {1'd0, _zz_57};
  assign _zz_210 = {2'd0, frame_limitCounter};
  assign _zz_211 = ({3'd0,endpoint_byteCountCalc} <<< 3);
  assign _zz_212 = (endpoint_ED_F ? 5'h1f : 5'h0f);
  assign _zz_213 = (endpoint_ED_F ? 3'b111 : 3'b011);
  assign _zz_214 = {1'd0, _zz_213};
  assign _zz_215 = {3'd0, endpoint_dmaLogic_predictedWriteCounter};
  assign _zz_216 = (dataBuffer_read_counter_value >>> 4);
  assign _zz_217 = (endpoint_currentAddress + _zz_218);
  assign _zz_218 = {8'd0, endpoint_dmaLogic_lengthCalc};
  assign _zz_219 = ({2'd0,reg_hcFmNumber_FN[4 : 0]} <<< 2);
  assign _zz_220 = {25'd0, _zz_219};
  always @ (posedge clk) begin
    if(_zz_1) begin
      dataBuffer_ram[dataBuffer_write_cmd_payload_address] <= dataBuffer_write_cmd_payload_data;
    end
  end

  always @ (posedge clk) begin
    if(dataBuffer_read_cmd_ready) begin
      _zz_62 <= dataBuffer_ram[dataBuffer_read_cmd_payload];
    end
  end

  Crc token_crc5 (
    .io_flush            (_zz_58                         ), //i
    .io_input_valid      (_zz_59                         ), //i
    .io_input_payload    (token_data[10:0]               ), //i
    .io_result           (token_crc5_io_result[4:0]      ), //o
    .io_resultNext       (token_crc5_io_resultNext[4:0]  ), //o
    .clk                 (clk                            ), //i
    .reset               (reset                          )  //i
  );
  Crc_1 dataTx_crc16 (
    .io_flush            (_zz_60                             ), //i
    .io_input_valid      (_zz_61                             ), //i
    .io_input_payload    (dataTx_data_payload_fragment[7:0]  ), //i
    .io_result           (dataTx_crc16_io_result[15:0]       ), //o
    .io_resultNext       (dataTx_crc16_io_resultNext[15:0]   ), //o
    .clk                 (clk                                ), //i
    .reset               (reset                              )  //i
  );
  always @(*) begin
    case(endpoint_dmaLogic_readRspCtx_sel)
      2'b00 : begin
        _zz_63 = dataBuffer_read_rsp_payload_value[7 : 0];
      end
      2'b01 : begin
        _zz_63 = dataBuffer_read_rsp_payload_value[15 : 8];
      end
      2'b10 : begin
        _zz_63 = dataBuffer_read_rsp_payload_value[23 : 16];
      end
      default : begin
        _zz_63 = dataBuffer_read_rsp_payload_value[31 : 24];
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(reg_hcControl_HCFS)
      `MainState_binary_sequential_RESET : reg_hcControl_HCFS_string = "RESET      ";
      `MainState_binary_sequential_RESUME : reg_hcControl_HCFS_string = "RESUME     ";
      `MainState_binary_sequential_OPERATIONAL : reg_hcControl_HCFS_string = "OPERATIONAL";
      `MainState_binary_sequential_SUSPEND : reg_hcControl_HCFS_string = "SUSPEND    ";
      default : reg_hcControl_HCFS_string = "???????????";
    endcase
  end
  always @(*) begin
    case(endpoint_flowType)
      `FlowType_binary_sequential_BULK : endpoint_flowType_string = "BULK    ";
      `FlowType_binary_sequential_CONTROL : endpoint_flowType_string = "CONTROL ";
      `FlowType_binary_sequential_PERIODIC : endpoint_flowType_string = "PERIODIC";
      default : endpoint_flowType_string = "????????";
    endcase
  end
  always @(*) begin
    case(endpoint_status_1)
      `endpoint_Status_binary_sequential_OK : endpoint_status_1_string = "OK        ";
      `endpoint_Status_binary_sequential_FRAME_TIME : endpoint_status_1_string = "FRAME_TIME";
      default : endpoint_status_1_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_56)
      `MainState_binary_sequential_RESET : _zz_56_string = "RESET      ";
      `MainState_binary_sequential_RESUME : _zz_56_string = "RESUME     ";
      `MainState_binary_sequential_OPERATIONAL : _zz_56_string = "OPERATIONAL";
      `MainState_binary_sequential_SUSPEND : _zz_56_string = "SUSPEND    ";
      default : _zz_56_string = "???????????";
    endcase
  end
  always @(*) begin
    case(token_stateReg)
      `token_enumDefinition_binary_sequential_token_BOOT : token_stateReg_string = "token_BOOT";
      `token_enumDefinition_binary_sequential_token_INIT : token_stateReg_string = "token_INIT";
      `token_enumDefinition_binary_sequential_token_PID : token_stateReg_string = "token_PID ";
      `token_enumDefinition_binary_sequential_token_B1 : token_stateReg_string = "token_B1  ";
      `token_enumDefinition_binary_sequential_token_B2 : token_stateReg_string = "token_B2  ";
      default : token_stateReg_string = "??????????";
    endcase
  end
  always @(*) begin
    case(token_stateNext)
      `token_enumDefinition_binary_sequential_token_BOOT : token_stateNext_string = "token_BOOT";
      `token_enumDefinition_binary_sequential_token_INIT : token_stateNext_string = "token_INIT";
      `token_enumDefinition_binary_sequential_token_PID : token_stateNext_string = "token_PID ";
      `token_enumDefinition_binary_sequential_token_B1 : token_stateNext_string = "token_B1  ";
      `token_enumDefinition_binary_sequential_token_B2 : token_stateNext_string = "token_B2  ";
      default : token_stateNext_string = "??????????";
    endcase
  end
  always @(*) begin
    case(dataTx_stateReg)
      `dataTx_enumDefinition_binary_sequential_dataTx_BOOT : dataTx_stateReg_string = "dataTx_BOOT ";
      `dataTx_enumDefinition_binary_sequential_dataTx_PID : dataTx_stateReg_string = "dataTx_PID  ";
      `dataTx_enumDefinition_binary_sequential_dataTx_DATA : dataTx_stateReg_string = "dataTx_DATA ";
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 : dataTx_stateReg_string = "dataTx_CRC_0";
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 : dataTx_stateReg_string = "dataTx_CRC_1";
      default : dataTx_stateReg_string = "????????????";
    endcase
  end
  always @(*) begin
    case(dataTx_stateNext)
      `dataTx_enumDefinition_binary_sequential_dataTx_BOOT : dataTx_stateNext_string = "dataTx_BOOT ";
      `dataTx_enumDefinition_binary_sequential_dataTx_PID : dataTx_stateNext_string = "dataTx_PID  ";
      `dataTx_enumDefinition_binary_sequential_dataTx_DATA : dataTx_stateNext_string = "dataTx_DATA ";
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 : dataTx_stateNext_string = "dataTx_CRC_0";
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 : dataTx_stateNext_string = "dataTx_CRC_1";
      default : dataTx_stateNext_string = "????????????";
    endcase
  end
  always @(*) begin
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_BOOT : sof_stateReg_string = "sof_BOOT            ";
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : sof_stateReg_string = "sof_FRAME_TX        ";
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : sof_stateReg_string = "sof_FRAME_NUMBER_CMD";
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : sof_stateReg_string = "sof_FRAME_NUMBER_RSP";
      default : sof_stateReg_string = "????????????????????";
    endcase
  end
  always @(*) begin
    case(sof_stateNext)
      `sof_enumDefinition_binary_sequential_sof_BOOT : sof_stateNext_string = "sof_BOOT            ";
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : sof_stateNext_string = "sof_FRAME_TX        ";
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : sof_stateNext_string = "sof_FRAME_NUMBER_CMD";
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : sof_stateNext_string = "sof_FRAME_NUMBER_RSP";
      default : sof_stateNext_string = "????????????????????";
    endcase
  end
  always @(*) begin
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_BOOT : endpoint_stateReg_string = "endpoint_BOOT         ";
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : endpoint_stateReg_string = "endpoint_ED_READ_CMD  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : endpoint_stateReg_string = "endpoint_ED_READ_RSP  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : endpoint_stateReg_string = "endpoint_ED_ANALYSE   ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : endpoint_stateReg_string = "endpoint_TD_READ_CMD  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : endpoint_stateReg_string = "endpoint_TD_READ_RSP  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : endpoint_stateReg_string = "endpoint_TD_ANALYSE   ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : endpoint_stateReg_string = "endpoint_TD_CHECK_TIME";
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : endpoint_stateReg_string = "endpoint_BUFFER_READ  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : endpoint_stateReg_string = "endpoint_TOKEN        ";
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : endpoint_stateReg_string = "endpoint_DATA_TX      ";
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : endpoint_stateReg_string = "endpoint_DATA_RX      ";
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : endpoint_stateReg_string = "endpoint_UPDATE_TD_CMD";
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : endpoint_stateReg_string = "endpoint_UPDATE_ED_CMD";
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : endpoint_stateReg_string = "endpoint_UPDATE_SYNC  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : endpoint_stateReg_string = "endpoint_ABORD        ";
      default : endpoint_stateReg_string = "??????????????????????";
    endcase
  end
  always @(*) begin
    case(endpoint_stateNext)
      `endpoint_enumDefinition_binary_sequential_endpoint_BOOT : endpoint_stateNext_string = "endpoint_BOOT         ";
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : endpoint_stateNext_string = "endpoint_ED_READ_CMD  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : endpoint_stateNext_string = "endpoint_ED_READ_RSP  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : endpoint_stateNext_string = "endpoint_ED_ANALYSE   ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : endpoint_stateNext_string = "endpoint_TD_READ_CMD  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : endpoint_stateNext_string = "endpoint_TD_READ_RSP  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : endpoint_stateNext_string = "endpoint_TD_ANALYSE   ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : endpoint_stateNext_string = "endpoint_TD_CHECK_TIME";
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : endpoint_stateNext_string = "endpoint_BUFFER_READ  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : endpoint_stateNext_string = "endpoint_TOKEN        ";
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : endpoint_stateNext_string = "endpoint_DATA_TX      ";
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : endpoint_stateNext_string = "endpoint_DATA_RX      ";
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : endpoint_stateNext_string = "endpoint_UPDATE_TD_CMD";
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : endpoint_stateNext_string = "endpoint_UPDATE_ED_CMD";
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : endpoint_stateNext_string = "endpoint_UPDATE_SYNC  ";
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : endpoint_stateNext_string = "endpoint_ABORD        ";
      default : endpoint_stateNext_string = "??????????????????????";
    endcase
  end
  always @(*) begin
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT : endpoint_dmaLogic_stateReg_string = "endpoint_dmaLogic_BOOT";
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : endpoint_dmaLogic_stateReg_string = "endpoint_dmaLogic_INIT";
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : endpoint_dmaLogic_stateReg_string = "endpoint_dmaLogic_CALC";
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : endpoint_dmaLogic_stateReg_string = "endpoint_dmaLogic_CMD ";
      default : endpoint_dmaLogic_stateReg_string = "??????????????????????";
    endcase
  end
  always @(*) begin
    case(endpoint_dmaLogic_stateNext)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT : endpoint_dmaLogic_stateNext_string = "endpoint_dmaLogic_BOOT";
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : endpoint_dmaLogic_stateNext_string = "endpoint_dmaLogic_INIT";
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : endpoint_dmaLogic_stateNext_string = "endpoint_dmaLogic_CALC";
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : endpoint_dmaLogic_stateNext_string = "endpoint_dmaLogic_CMD ";
      default : endpoint_dmaLogic_stateNext_string = "??????????????????????";
    endcase
  end
  always @(*) begin
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_BOOT : operational_stateReg_string = "operational_BOOT             ";
      `operational_enumDefinition_binary_sequential_operational_SOF : operational_stateReg_string = "operational_SOF              ";
      `operational_enumDefinition_binary_sequential_operational_ARBITER : operational_stateReg_string = "operational_ARBITER          ";
      `operational_enumDefinition_binary_sequential_operational_END_POINT : operational_stateReg_string = "operational_END_POINT        ";
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : operational_stateReg_string = "operational_PERIODIC_HEAD_CMD";
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : operational_stateReg_string = "operational_PERIODIC_HEAD_RSP";
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : operational_stateReg_string = "operational_WAIT_SOF         ";
      default : operational_stateReg_string = "?????????????????????????????";
    endcase
  end
  always @(*) begin
    case(operational_stateNext)
      `operational_enumDefinition_binary_sequential_operational_BOOT : operational_stateNext_string = "operational_BOOT             ";
      `operational_enumDefinition_binary_sequential_operational_SOF : operational_stateNext_string = "operational_SOF              ";
      `operational_enumDefinition_binary_sequential_operational_ARBITER : operational_stateNext_string = "operational_ARBITER          ";
      `operational_enumDefinition_binary_sequential_operational_END_POINT : operational_stateNext_string = "operational_END_POINT        ";
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : operational_stateNext_string = "operational_PERIODIC_HEAD_CMD";
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : operational_stateNext_string = "operational_PERIODIC_HEAD_RSP";
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : operational_stateNext_string = "operational_WAIT_SOF         ";
      default : operational_stateNext_string = "?????????????????????????????";
    endcase
  end
  always @(*) begin
    case(hc_stateReg)
      `hc_enumDefinition_binary_sequential_hc_BOOT : hc_stateReg_string = "hc_BOOT       ";
      `hc_enumDefinition_binary_sequential_hc_RESET : hc_stateReg_string = "hc_RESET      ";
      `hc_enumDefinition_binary_sequential_hc_RESUME : hc_stateReg_string = "hc_RESUME     ";
      `hc_enumDefinition_binary_sequential_hc_OPERATIONAL : hc_stateReg_string = "hc_OPERATIONAL";
      `hc_enumDefinition_binary_sequential_hc_SUSPEND : hc_stateReg_string = "hc_SUSPEND    ";
      default : hc_stateReg_string = "??????????????";
    endcase
  end
  always @(*) begin
    case(hc_stateNext)
      `hc_enumDefinition_binary_sequential_hc_BOOT : hc_stateNext_string = "hc_BOOT       ";
      `hc_enumDefinition_binary_sequential_hc_RESET : hc_stateNext_string = "hc_RESET      ";
      `hc_enumDefinition_binary_sequential_hc_RESUME : hc_stateNext_string = "hc_RESUME     ";
      `hc_enumDefinition_binary_sequential_hc_OPERATIONAL : hc_stateNext_string = "hc_OPERATIONAL";
      `hc_enumDefinition_binary_sequential_hc_SUSPEND : hc_stateNext_string = "hc_SUSPEND    ";
      default : hc_stateNext_string = "??????????????";
    endcase
  end
  `endif

  always @ (*) begin
    _zz_1 = 1'b0;
    if(dataBuffer_write_cmd_valid)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    io_phy_lowSpeed = 1'b0;
    if((! (endpoint_stateReg == `endpoint_enumDefinition_binary_sequential_endpoint_BOOT)))begin
      io_phy_lowSpeed = endpoint_ED_S;
    end
  end

  always @ (*) begin
    io_dma_cmd_valid = 1'b0;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
        io_dma_cmd_valid = 1'b1;
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
        io_dma_cmd_valid = 1'b1;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
        io_dma_cmd_valid = 1'b1;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
        io_dma_cmd_valid = 1'b1;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
        io_dma_cmd_valid = 1'b1;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
        io_dma_cmd_valid = 1'b1;
      end
      default : begin
      end
    endcase
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_SOF : begin
      end
      `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
      end
      `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
        io_dma_cmd_valid = 1'b1;
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
      end
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_dma_cmd_payload_last = 1'bx;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
        io_dma_cmd_payload_last = (dmaWriteCtx_counter == 4'b0001);
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
        io_dma_cmd_payload_last = 1'b1;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
        io_dma_cmd_payload_last = 1'b1;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
        io_dma_cmd_payload_last = (dmaWriteCtx_counter == _zz_214);
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
        io_dma_cmd_payload_last = (dmaWriteCtx_counter == 4'b0011);
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
        io_dma_cmd_payload_last = 1'b1;
      end
      default : begin
      end
    endcase
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_SOF : begin
      end
      `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
      end
      `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
        io_dma_cmd_payload_last = 1'b1;
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
      end
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_dma_cmd_payload_fragment_opcode = 1'bx;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
        io_dma_cmd_payload_fragment_opcode = 1'b1;
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
        io_dma_cmd_payload_fragment_opcode = 1'b0;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
        io_dma_cmd_payload_fragment_opcode = 1'b0;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
        io_dma_cmd_payload_fragment_opcode = 1'b1;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
        io_dma_cmd_payload_fragment_opcode = 1'b1;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
        io_dma_cmd_payload_fragment_opcode = 1'b0;
      end
      default : begin
      end
    endcase
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_SOF : begin
      end
      `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
      end
      `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
        io_dma_cmd_payload_fragment_opcode = 1'b0;
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
      end
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_dma_cmd_payload_fragment_address = 32'h0;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
        io_dma_cmd_payload_fragment_address = (reg_hcHCCA_HCCA_address | 32'h00000080);
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
        io_dma_cmd_payload_fragment_address = endpoint_ED_address;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
        io_dma_cmd_payload_fragment_address = endpoint_TD_address;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
        io_dma_cmd_payload_fragment_address = endpoint_TD_address;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
        io_dma_cmd_payload_fragment_address = endpoint_ED_address;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
        io_dma_cmd_payload_fragment_address = endpoint_currentAddressFull;
      end
      default : begin
      end
    endcase
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_SOF : begin
      end
      `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
      end
      `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
        io_dma_cmd_payload_fragment_address = (reg_hcHCCA_HCCA_address | _zz_220);
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
      end
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_dma_cmd_payload_fragment_length = 6'h0;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
        io_dma_cmd_payload_fragment_length = 6'h07;
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
        io_dma_cmd_payload_fragment_length = 6'h0f;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
        io_dma_cmd_payload_fragment_length = {1'd0, _zz_205};
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
        io_dma_cmd_payload_fragment_length = {1'd0, _zz_212};
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
        io_dma_cmd_payload_fragment_length = 6'h0f;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
        io_dma_cmd_payload_fragment_length = endpoint_dmaLogic_length;
      end
      default : begin
      end
    endcase
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_SOF : begin
      end
      `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
      end
      `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
        io_dma_cmd_payload_fragment_length = 6'h03;
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
      end
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_dma_cmd_payload_fragment_data = 32'h0;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
        if(_zz_64)begin
          io_dma_cmd_payload_fragment_data[31 : 0] = {16'h0,reg_hcFmNumber_FN};
        end
        if(sof_doInterruptDelay)begin
          if(_zz_65)begin
            io_dma_cmd_payload_fragment_data[31 : 0] = {reg_hcDoneHead_DH_address[31 : 1],sof_unmaskedInterruptDelay};
          end
        end
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
        if(_zz_66)begin
          io_dma_cmd_payload_fragment_data[31 : 24] = {{{4'b0000,2'b00},1'b1},(! endpoint_dataPhase)};
        end
        if(_zz_67)begin
          io_dma_cmd_payload_fragment_data[31 : 0] = endpoint_currentAddressFull;
        end
        if(endpoint_tdCompletion)begin
          if(_zz_68)begin
            io_dma_cmd_payload_fragment_data[31 : 0] = reg_hcDoneHead_DH_address;
          end
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
        if(endpoint_tdCompletion)begin
          if(_zz_69)begin
            io_dma_cmd_payload_fragment_data[31 : 0] = {{{endpoint_TD_nextTD,2'b00},(! endpoint_dataPhase)},1'b0};
          end
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_dma_cmd_payload_fragment_mask = 4'b0000;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
        if(_zz_64)begin
          io_dma_cmd_payload_fragment_mask[3 : 0] = 4'b1111;
        end
        if(sof_doInterruptDelay)begin
          if(_zz_65)begin
            io_dma_cmd_payload_fragment_mask[3 : 0] = 4'b1111;
          end
        end
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
        if(_zz_66)begin
          io_dma_cmd_payload_fragment_mask[3 : 3] = 1'b1;
        end
        if(_zz_67)begin
          io_dma_cmd_payload_fragment_mask[3 : 0] = 4'b1111;
        end
        if(endpoint_tdCompletion)begin
          if(_zz_68)begin
            io_dma_cmd_payload_fragment_mask[3 : 0] = 4'b1111;
          end
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
        if(endpoint_tdCompletion)begin
          if(_zz_69)begin
            io_dma_cmd_payload_fragment_mask[3 : 0] = 4'b1111;
          end
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  assign io_dma_rsp_ready = 1'b1;
  assign dmaRspMux_vec_0 = io_dma_rsp_payload_fragment_data[31 : 0];
  assign dmaRspMux_data = dmaRspMux_vec_0;
  assign dmaCtx_pendingFull = (dmaCtx_pendingCounter == 3'b100);
  assign dmaCtx_pendingEmpty = (dmaCtx_pendingCounter == 3'b000);
  always @ (*) begin
    dataBuffer_write_counter_clear = 1'b0;
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
        if(! endpoint_dataDone) begin
          dataBuffer_write_counter_clear = 1'b1;
        end
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    dataBuffer_write_counter_increment = 1'b0;
    if(_zz_70)begin
      dataBuffer_write_counter_increment = 1'b1;
    end
  end

  always @ (*) begin
    dataBuffer_write_cmd_valid = 1'b0;
    if(_zz_70)begin
      dataBuffer_write_cmd_valid = 1'b1;
    end
  end

  assign dataBuffer_write_cmd_payload_address = dataBuffer_write_counter_value;
  always @ (*) begin
    dataBuffer_write_cmd_payload_data = 32'h0;
    if(_zz_70)begin
      dataBuffer_write_cmd_payload_data = io_dma_rsp_payload_fragment_data;
    end
  end

  assign dataBuffer_read_cmd_ready = ((! dataBuffer_read_rsp_valid) || dataBuffer_read_rsp_ready);
  assign dataBuffer_read_rsp_valid = _zz_2;
  assign dataBuffer_read_rsp_payload_value = _zz_62;
  assign dataBuffer_read_rsp_payload_linked = dataBuffer_read_cmdCtx_regNextWhen;
  always @ (*) begin
    dataBuffer_read_counter_clear = 1'b0;
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
        if(! endpoint_dataDone) begin
          dataBuffer_read_counter_clear = 1'b1;
        end
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    dataBuffer_read_counter_increment = 1'b0;
    if(endpoint_dmaLogic_readCmdEnable)begin
      if(endpoint_dmaLogic_bufferReady)begin
        if(dataBuffer_read_cmd_ready)begin
          if((endpoint_dmaLogic_readCmdCtx_sel == 2'b11))begin
            dataBuffer_read_counter_increment = 1'b1;
          end
        end
      end
    end
  end

  always @ (*) begin
    dataBuffer_read_cmd_valid = 1'b0;
    if(endpoint_dmaLogic_readCmdEnable)begin
      if(endpoint_dmaLogic_bufferReady)begin
        dataBuffer_read_cmd_valid = 1'b1;
      end
    end
  end

  assign dataBuffer_read_cmd_payload = dataBuffer_read_counter_value;
  always @ (*) begin
    dataBuffer_read_cmdCtx = 3'bxxx;
    if(endpoint_dmaLogic_readCmdEnable)begin
      if(endpoint_dmaLogic_bufferReady)begin
        dataBuffer_read_cmdCtx = {endpoint_dmaLogic_readCmdCtx_sel,endpoint_dmaLogic_readCmdCtx_last};
        if(dataBuffer_read_cmd_ready)begin
          if(endpoint_dmaLogic_readCmdCtx_last)begin
            dataBuffer_read_cmdCtx[0] = 1'b1;
          end
        end
      end
    end
  end

  always @ (*) begin
    dataBuffer_read_rsp_ready = 1'b0;
    if(endpoint_dmaLogic_readRspEnable)begin
      if(dataBuffer_read_rsp_valid)begin
        if(dataTx_data_ready)begin
          dataBuffer_read_rsp_ready = 1'b1;
        end
      end
    end
    if(endpoint_dmaLogic_abord_valid)begin
      dataBuffer_read_rsp_ready = 1'b1;
    end
  end

  always @ (*) begin
    io_phy_tx_valid = 1'b0;
    case(token_stateReg)
      `token_enumDefinition_binary_sequential_token_INIT : begin
      end
      `token_enumDefinition_binary_sequential_token_PID : begin
        io_phy_tx_valid = 1'b1;
      end
      `token_enumDefinition_binary_sequential_token_B1 : begin
        io_phy_tx_valid = 1'b1;
      end
      `token_enumDefinition_binary_sequential_token_B2 : begin
        io_phy_tx_valid = 1'b1;
      end
      default : begin
      end
    endcase
    case(dataTx_stateReg)
      `dataTx_enumDefinition_binary_sequential_dataTx_PID : begin
        io_phy_tx_valid = 1'b1;
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_DATA : begin
        io_phy_tx_valid = 1'b1;
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 : begin
        io_phy_tx_valid = 1'b1;
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 : begin
        io_phy_tx_valid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_phy_tx_payload_fragment = 8'h0;
    case(token_stateReg)
      `token_enumDefinition_binary_sequential_token_INIT : begin
      end
      `token_enumDefinition_binary_sequential_token_PID : begin
        io_phy_tx_payload_fragment = {(~ token_pid),token_pid};
      end
      `token_enumDefinition_binary_sequential_token_B1 : begin
        io_phy_tx_payload_fragment = token_data[7 : 0];
      end
      `token_enumDefinition_binary_sequential_token_B2 : begin
        io_phy_tx_payload_fragment = {token_crc5_io_result,token_data[10 : 8]};
      end
      default : begin
      end
    endcase
    case(dataTx_stateReg)
      `dataTx_enumDefinition_binary_sequential_dataTx_PID : begin
        io_phy_tx_payload_fragment = {(~ dataTx_pid),dataTx_pid};
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_DATA : begin
        io_phy_tx_payload_fragment = dataTx_data_payload_fragment;
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 : begin
        io_phy_tx_payload_fragment = dataTx_crc16_io_result[7 : 0];
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 : begin
        io_phy_tx_payload_fragment = dataTx_crc16_io_result[15 : 8];
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_phy_tx_payload_last = 1'bx;
    case(token_stateReg)
      `token_enumDefinition_binary_sequential_token_INIT : begin
      end
      `token_enumDefinition_binary_sequential_token_PID : begin
        io_phy_tx_payload_last = 1'b0;
      end
      `token_enumDefinition_binary_sequential_token_B1 : begin
        io_phy_tx_payload_last = 1'b0;
      end
      `token_enumDefinition_binary_sequential_token_B2 : begin
        io_phy_tx_payload_last = 1'b1;
      end
      default : begin
      end
    endcase
    case(dataTx_stateReg)
      `dataTx_enumDefinition_binary_sequential_dataTx_PID : begin
        io_phy_tx_payload_last = 1'b0;
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_DATA : begin
        io_phy_tx_payload_last = 1'b0;
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 : begin
        io_phy_tx_payload_last = 1'b0;
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 : begin
        io_phy_tx_payload_last = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign ctrl_readHaltTrigger = 1'b0;
  assign ctrl_writeHaltTrigger = 1'b0;
  assign _zz_3 = (! (ctrl_readHaltTrigger || ctrl_writeHaltTrigger));
  assign ctrl_rsp_ready = (_zz_4 && _zz_3);
  assign _zz_4 = ((1'b1 && (! _zz_5)) || io_ctrl_rsp_ready);
  assign _zz_5 = _zz_6;
  assign io_ctrl_rsp_valid = _zz_5;
  assign io_ctrl_rsp_payload_last = _zz_7;
  assign io_ctrl_rsp_payload_fragment_opcode = _zz_8;
  assign io_ctrl_rsp_payload_fragment_data = _zz_9;
  assign ctrl_askWrite = (io_ctrl_cmd_valid && (io_ctrl_cmd_payload_fragment_opcode == 1'b1));
  assign ctrl_askRead = (io_ctrl_cmd_valid && (io_ctrl_cmd_payload_fragment_opcode == 1'b0));
  assign ctrl_doWrite = ((io_ctrl_cmd_valid && io_ctrl_cmd_ready) && (io_ctrl_cmd_payload_fragment_opcode == 1'b1));
  assign ctrl_doRead = ((io_ctrl_cmd_valid && io_ctrl_cmd_ready) && (io_ctrl_cmd_payload_fragment_opcode == 1'b0));
  assign ctrl_rsp_valid = io_ctrl_cmd_valid;
  assign io_ctrl_cmd_ready = ctrl_rsp_ready;
  assign ctrl_rsp_payload_last = 1'b1;
  assign ctrl_rsp_payload_fragment_opcode = 1'b0;
  always @ (*) begin
    ctrl_rsp_payload_fragment_data = 32'h0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h0 : begin
        ctrl_rsp_payload_fragment_data[4 : 0] = reg_hcRevision_REV;
      end
      12'h004 : begin
        ctrl_rsp_payload_fragment_data[1 : 0] = reg_hcControl_CBSR;
        ctrl_rsp_payload_fragment_data[2 : 2] = reg_hcControl_PLE;
        ctrl_rsp_payload_fragment_data[3 : 3] = reg_hcControl_IE;
        ctrl_rsp_payload_fragment_data[4 : 4] = reg_hcControl_CLE;
        ctrl_rsp_payload_fragment_data[5 : 5] = reg_hcControl_BLE;
        ctrl_rsp_payload_fragment_data[7 : 6] = reg_hcControl_HCFS;
        ctrl_rsp_payload_fragment_data[8 : 8] = reg_hcControl_IR;
        ctrl_rsp_payload_fragment_data[9 : 9] = reg_hcControl_RWC;
        ctrl_rsp_payload_fragment_data[10 : 10] = reg_hcControl_RWE;
      end
      12'h008 : begin
        ctrl_rsp_payload_fragment_data[0 : 0] = reg_hcCommandStatus_HCR;
        ctrl_rsp_payload_fragment_data[1 : 1] = reg_hcCommandStatus_CLF;
        ctrl_rsp_payload_fragment_data[2 : 2] = reg_hcCommandStatus_BLF;
        ctrl_rsp_payload_fragment_data[17 : 16] = reg_hcCommandStatus_SOC;
      end
      12'h010 : begin
        ctrl_rsp_payload_fragment_data[31 : 31] = reg_hcInterrupt_MIE;
        ctrl_rsp_payload_fragment_data[0 : 0] = reg_hcInterrupt_SO_enable;
        ctrl_rsp_payload_fragment_data[1 : 1] = reg_hcInterrupt_WDH_enable;
        ctrl_rsp_payload_fragment_data[2 : 2] = reg_hcInterrupt_SF_enable;
        ctrl_rsp_payload_fragment_data[3 : 3] = reg_hcInterrupt_RD_enable;
        ctrl_rsp_payload_fragment_data[4 : 4] = reg_hcInterrupt_UE_enable;
        ctrl_rsp_payload_fragment_data[5 : 5] = reg_hcInterrupt_FNO_enable;
        ctrl_rsp_payload_fragment_data[6 : 6] = reg_hcInterrupt_RHSC_enable;
        ctrl_rsp_payload_fragment_data[30 : 30] = reg_hcInterrupt_OC_enable;
      end
      12'h014 : begin
        ctrl_rsp_payload_fragment_data[31 : 31] = reg_hcInterrupt_MIE;
        ctrl_rsp_payload_fragment_data[0 : 0] = reg_hcInterrupt_SO_enable;
        ctrl_rsp_payload_fragment_data[1 : 1] = reg_hcInterrupt_WDH_enable;
        ctrl_rsp_payload_fragment_data[2 : 2] = reg_hcInterrupt_SF_enable;
        ctrl_rsp_payload_fragment_data[3 : 3] = reg_hcInterrupt_RD_enable;
        ctrl_rsp_payload_fragment_data[4 : 4] = reg_hcInterrupt_UE_enable;
        ctrl_rsp_payload_fragment_data[5 : 5] = reg_hcInterrupt_FNO_enable;
        ctrl_rsp_payload_fragment_data[6 : 6] = reg_hcInterrupt_RHSC_enable;
        ctrl_rsp_payload_fragment_data[30 : 30] = reg_hcInterrupt_OC_enable;
      end
      12'h00c : begin
        ctrl_rsp_payload_fragment_data[0 : 0] = reg_hcInterrupt_SO_status;
        ctrl_rsp_payload_fragment_data[1 : 1] = reg_hcInterrupt_WDH_status;
        ctrl_rsp_payload_fragment_data[2 : 2] = reg_hcInterrupt_SF_status;
        ctrl_rsp_payload_fragment_data[3 : 3] = reg_hcInterrupt_RD_status;
        ctrl_rsp_payload_fragment_data[4 : 4] = reg_hcInterrupt_UE_status;
        ctrl_rsp_payload_fragment_data[5 : 5] = reg_hcInterrupt_FNO_status;
        ctrl_rsp_payload_fragment_data[6 : 6] = reg_hcInterrupt_RHSC_status;
        ctrl_rsp_payload_fragment_data[30 : 30] = reg_hcInterrupt_OC_status;
      end
      12'h018 : begin
        ctrl_rsp_payload_fragment_data[31 : 8] = reg_hcHCCA_HCCA_reg;
      end
      12'h01c : begin
        ctrl_rsp_payload_fragment_data[31 : 4] = reg_hcPeriodCurrentED_PCED_reg;
      end
      12'h020 : begin
        ctrl_rsp_payload_fragment_data[31 : 4] = reg_hcControlHeadED_CHED_reg;
      end
      12'h024 : begin
        ctrl_rsp_payload_fragment_data[31 : 4] = reg_hcControlCurrentED_CCED_reg;
      end
      12'h028 : begin
        ctrl_rsp_payload_fragment_data[31 : 4] = reg_hcBulkHeadED_BHED_reg;
      end
      12'h02c : begin
        ctrl_rsp_payload_fragment_data[31 : 4] = reg_hcBulkCurrentED_BCED_reg;
      end
      12'h030 : begin
        ctrl_rsp_payload_fragment_data[31 : 4] = reg_hcDoneHead_DH_reg;
      end
      12'h034 : begin
        ctrl_rsp_payload_fragment_data[13 : 0] = reg_hcFmInterval_FI;
        ctrl_rsp_payload_fragment_data[30 : 16] = reg_hcFmInterval_FSMPS;
        ctrl_rsp_payload_fragment_data[31 : 31] = reg_hcFmInterval_FIT;
      end
      12'h038 : begin
        ctrl_rsp_payload_fragment_data[13 : 0] = reg_hcFmRemaining_FR;
        ctrl_rsp_payload_fragment_data[31 : 31] = reg_hcFmRemaining_FRT;
      end
      12'h03c : begin
        ctrl_rsp_payload_fragment_data[15 : 0] = reg_hcFmNumber_FN;
      end
      12'h040 : begin
        ctrl_rsp_payload_fragment_data[13 : 0] = reg_hcPeriodicStart_PS;
      end
      12'h044 : begin
        ctrl_rsp_payload_fragment_data[11 : 0] = reg_hcLSThreshold_LST;
      end
      12'h048 : begin
        ctrl_rsp_payload_fragment_data[7 : 0] = reg_hcRhDescriptorA_NDP;
        ctrl_rsp_payload_fragment_data[8 : 8] = reg_hcRhDescriptorA_PSM;
        ctrl_rsp_payload_fragment_data[9 : 9] = reg_hcRhDescriptorA_NPS;
        ctrl_rsp_payload_fragment_data[11 : 11] = reg_hcRhDescriptorA_OCPM;
        ctrl_rsp_payload_fragment_data[12 : 12] = reg_hcRhDescriptorA_NOCP;
        ctrl_rsp_payload_fragment_data[31 : 24] = reg_hcRhDescriptorA_POTPGT;
      end
      12'h04c : begin
        ctrl_rsp_payload_fragment_data[1 : 1] = reg_hcRhDescriptorB_DR;
        ctrl_rsp_payload_fragment_data[17 : 17] = reg_hcRhDescriptorB_PPCM;
      end
      12'h050 : begin
        ctrl_rsp_payload_fragment_data[1 : 1] = io_phy_overcurrent;
        ctrl_rsp_payload_fragment_data[15 : 15] = reg_hcRhStatus_DRWE;
        ctrl_rsp_payload_fragment_data[17 : 17] = reg_hcRhStatus_CCIC;
      end
      12'h054 : begin
        ctrl_rsp_payload_fragment_data[2 : 2] = reg_hcRhPortStatus_0_PSS;
        ctrl_rsp_payload_fragment_data[8 : 8] = reg_hcRhPortStatus_0_PPS;
        ctrl_rsp_payload_fragment_data[0 : 0] = reg_hcRhPortStatus_0_CCS;
        ctrl_rsp_payload_fragment_data[1 : 1] = reg_hcRhPortStatus_0_PES;
        ctrl_rsp_payload_fragment_data[3 : 3] = io_phy_ports_0_overcurrent;
        ctrl_rsp_payload_fragment_data[4 : 4] = reg_hcRhPortStatus_0_reset;
        ctrl_rsp_payload_fragment_data[9 : 9] = io_phy_ports_0_lowSpeed;
        ctrl_rsp_payload_fragment_data[16 : 16] = reg_hcRhPortStatus_0_CSC_reg;
        ctrl_rsp_payload_fragment_data[17 : 17] = reg_hcRhPortStatus_0_PESC_reg;
        ctrl_rsp_payload_fragment_data[18 : 18] = reg_hcRhPortStatus_0_PSSC_reg;
        ctrl_rsp_payload_fragment_data[19 : 19] = reg_hcRhPortStatus_0_OCIC_reg;
        ctrl_rsp_payload_fragment_data[20 : 20] = reg_hcRhPortStatus_0_PRSC_reg;
      end
      default : begin
      end
    endcase
  end

  assign reg_hcRevision_REV = 5'h10;
  always @ (*) begin
    _zz_10 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h008 : begin
        if(ctrl_doWrite)begin
          _zz_10 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_11 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h008 : begin
        if(ctrl_doWrite)begin
          _zz_11 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_12 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h008 : begin
        if(ctrl_doWrite)begin
          _zz_12 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_13 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_13 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_14 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_14 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_15 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h00c : begin
        if(ctrl_doWrite)begin
          _zz_15 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_16 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_16 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_17 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_17 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_18 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h00c : begin
        if(ctrl_doWrite)begin
          _zz_18 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_19 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_19 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_20 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_20 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_21 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h00c : begin
        if(ctrl_doWrite)begin
          _zz_21 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_22 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_22 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_23 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_23 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_24 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h00c : begin
        if(ctrl_doWrite)begin
          _zz_24 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_25 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_25 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_26 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_26 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_27 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h00c : begin
        if(ctrl_doWrite)begin
          _zz_27 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_28 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_28 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_29 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_29 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_30 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h00c : begin
        if(ctrl_doWrite)begin
          _zz_30 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_31 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_31 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_32 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_32 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_33 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h00c : begin
        if(ctrl_doWrite)begin
          _zz_33 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_34 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_34 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_35 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_35 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_36 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h00c : begin
        if(ctrl_doWrite)begin
          _zz_36 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_37 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_37 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_38 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_38 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign reg_hcHCCA_HCCA_address = {reg_hcHCCA_HCCA_reg,8'h0};
  assign reg_hcPeriodCurrentED_PCED_address = {reg_hcPeriodCurrentED_PCED_reg,4'b0000};
  assign reg_hcPeriodCurrentED_isZero = (reg_hcPeriodCurrentED_PCED_reg == 28'h0);
  assign reg_hcControlHeadED_CHED_address = {reg_hcControlHeadED_CHED_reg,4'b0000};
  assign reg_hcControlCurrentED_CCED_address = {reg_hcControlCurrentED_CCED_reg,4'b0000};
  assign reg_hcControlCurrentED_isZero = (reg_hcControlCurrentED_CCED_reg == 28'h0);
  assign reg_hcBulkHeadED_BHED_address = {reg_hcBulkHeadED_BHED_reg,4'b0000};
  assign reg_hcBulkCurrentED_BCED_address = {reg_hcBulkCurrentED_BCED_reg,4'b0000};
  assign reg_hcBulkCurrentED_isZero = (reg_hcBulkCurrentED_BCED_reg == 28'h0);
  assign reg_hcDoneHead_DH_address = {reg_hcDoneHead_DH_reg,4'b0000};
  assign reg_hcLSThreshold_hit = (reg_hcFmRemaining_FR < _zz_143);
  assign reg_hcRhDescriptorA_NDP = 8'h01;
  always @ (*) begin
    _zz_39 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h050 : begin
        if(ctrl_doWrite)begin
          _zz_39 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhStatus_clearGlobalPower = 1'b0;
    if(_zz_40)begin
      if(_zz_146[0])begin
        reg_hcRhStatus_clearGlobalPower = _zz_147[0];
      end
    end
  end

  always @ (*) begin
    _zz_40 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h050 : begin
        if(ctrl_doWrite)begin
          _zz_40 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhStatus_setRemoteWakeupEnable = 1'b0;
    if(_zz_41)begin
      if(_zz_148[0])begin
        reg_hcRhStatus_setRemoteWakeupEnable = _zz_149[0];
      end
    end
  end

  always @ (*) begin
    _zz_41 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h050 : begin
        if(ctrl_doWrite)begin
          _zz_41 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhStatus_setGlobalPower = 1'b0;
    if(_zz_42)begin
      if(_zz_150[0])begin
        reg_hcRhStatus_setGlobalPower = _zz_151[0];
      end
    end
  end

  always @ (*) begin
    _zz_42 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h050 : begin
        if(ctrl_doWrite)begin
          _zz_42 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhStatus_clearRemoteWakeupEnable = 1'b0;
    if(_zz_43)begin
      if(_zz_152[0])begin
        reg_hcRhStatus_clearRemoteWakeupEnable = _zz_153[0];
      end
    end
  end

  always @ (*) begin
    _zz_43 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h050 : begin
        if(ctrl_doWrite)begin
          _zz_43 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign io_phy_remoteWakupEnable = reg_hcRhStatus_DRWE;
  always @ (*) begin
    reg_hcRhPortStatus_0_clearPortEnable = 1'b0;
    if(_zz_44)begin
      if(_zz_154[0])begin
        reg_hcRhPortStatus_0_clearPortEnable = _zz_155[0];
      end
    end
  end

  always @ (*) begin
    _zz_44 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_44 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_setPortEnable = 1'b0;
    if(_zz_45)begin
      if(_zz_156[0])begin
        reg_hcRhPortStatus_0_setPortEnable = _zz_157[0];
      end
    end
  end

  always @ (*) begin
    _zz_45 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_45 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_setPortSuspend = 1'b0;
    if(_zz_46)begin
      if(_zz_158[0])begin
        reg_hcRhPortStatus_0_setPortSuspend = _zz_159[0];
      end
    end
  end

  always @ (*) begin
    _zz_46 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_46 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_clearSuspendStatus = 1'b0;
    if(_zz_47)begin
      if(_zz_160[0])begin
        reg_hcRhPortStatus_0_clearSuspendStatus = _zz_161[0];
      end
    end
  end

  always @ (*) begin
    _zz_47 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_47 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_setPortReset = 1'b0;
    if(_zz_48)begin
      if(_zz_162[0])begin
        reg_hcRhPortStatus_0_setPortReset = _zz_163[0];
      end
    end
  end

  always @ (*) begin
    _zz_48 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_48 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_setPortPower = 1'b0;
    if(_zz_49)begin
      if(_zz_164[0])begin
        reg_hcRhPortStatus_0_setPortPower = _zz_165[0];
      end
    end
  end

  always @ (*) begin
    _zz_49 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_49 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_clearPortPower = 1'b0;
    if(_zz_50)begin
      if(_zz_166[0])begin
        reg_hcRhPortStatus_0_clearPortPower = _zz_167[0];
      end
    end
  end

  always @ (*) begin
    _zz_50 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_50 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign reg_hcRhPortStatus_0_CCS = ((io_phy_ports_0_connected || reg_hcRhDescriptorB_DR[0]) && reg_hcRhPortStatus_0_PPS);
  always @ (*) begin
    reg_hcRhPortStatus_0_CSC_clear = 1'b0;
    if(_zz_51)begin
      if(_zz_168[0])begin
        reg_hcRhPortStatus_0_CSC_clear = _zz_169[0];
      end
    end
  end

  always @ (*) begin
    _zz_51 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_51 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_PESC_clear = 1'b0;
    if(_zz_52)begin
      if(_zz_170[0])begin
        reg_hcRhPortStatus_0_PESC_clear = _zz_171[0];
      end
    end
  end

  always @ (*) begin
    _zz_52 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_52 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_PSSC_clear = 1'b0;
    if(_zz_53)begin
      if(_zz_172[0])begin
        reg_hcRhPortStatus_0_PSSC_clear = _zz_173[0];
      end
    end
    if(reg_hcRhPortStatus_0_PRSC_set)begin
      reg_hcRhPortStatus_0_PSSC_clear = 1'b1;
    end
  end

  always @ (*) begin
    _zz_53 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_53 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_OCIC_clear = 1'b0;
    if(_zz_54)begin
      if(_zz_174[0])begin
        reg_hcRhPortStatus_0_OCIC_clear = _zz_175[0];
      end
    end
  end

  always @ (*) begin
    _zz_54 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_54 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    reg_hcRhPortStatus_0_PRSC_clear = 1'b0;
    if(_zz_55)begin
      if(_zz_176[0])begin
        reg_hcRhPortStatus_0_PRSC_clear = _zz_177[0];
      end
    end
  end

  always @ (*) begin
    _zz_55 = 1'b0;
    case(io_ctrl_cmd_payload_fragment_address)
      12'h054 : begin
        if(ctrl_doWrite)begin
          _zz_55 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign reg_hcRhPortStatus_0_CSC_set = ((((reg_hcRhPortStatus_0_CCS ^ reg_hcRhPortStatus_0_CCS_regNext) || (reg_hcRhPortStatus_0_setPortEnable && (! reg_hcRhPortStatus_0_CCS))) || (reg_hcRhPortStatus_0_setPortSuspend && (! reg_hcRhPortStatus_0_CCS))) || (reg_hcRhPortStatus_0_setPortReset && (! reg_hcRhPortStatus_0_CCS)));
  assign reg_hcRhPortStatus_0_PESC_set = io_phy_ports_0_overcurrent;
  assign reg_hcRhPortStatus_0_PSSC_set = ((io_phy_ports_0_suspend_valid && io_phy_ports_0_suspend_ready) || io_phy_ports_0_remoteResume);
  assign reg_hcRhPortStatus_0_OCIC_set = io_phy_ports_0_overcurrent;
  assign reg_hcRhPortStatus_0_PRSC_set = (io_phy_ports_0_reset_valid && io_phy_ports_0_reset_ready);
  assign io_phy_ports_0_disable_valid = reg_hcRhPortStatus_0_clearPortEnable;
  assign io_phy_ports_0_removable = reg_hcRhDescriptorB_DR[0];
  assign io_phy_ports_0_power = reg_hcRhPortStatus_0_PPS;
  assign io_phy_ports_0_resume_valid = reg_hcRhPortStatus_0_resume;
  assign io_phy_ports_0_reset_valid = reg_hcRhPortStatus_0_reset;
  assign io_phy_ports_0_suspend_valid = reg_hcRhPortStatus_0_suspend;
  always @ (*) begin
    bitTimer_reload = 1'b0;
    if(_zz_71)begin
      bitTimer_reload = 1'b1;
    end
  end

  always @ (*) begin
    bitTimer_counter_willClear = 1'b0;
    if(bitTimer_reload)begin
      bitTimer_counter_willClear = 1'b1;
    end
  end

  assign bitTimer_counter_willOverflowIfInc = (bitTimer_counter_value == 2'b11);
  assign bitTimer_counter_willOverflow = (bitTimer_counter_willOverflowIfInc && bitTimer_counter_willIncrement);
  always @ (*) begin
    bitTimer_counter_valueNext = (bitTimer_counter_value + _zz_179);
    if(bitTimer_counter_willClear)begin
      bitTimer_counter_valueNext = 2'b00;
    end
  end

  assign bitTimer_counter_willIncrement = 1'b1;
  assign bitTimer_tick = (bitTimer_counter_willOverflow == 1'b1);
  always @ (*) begin
    frame_run = 1'b0;
    case(hc_stateReg)
      `hc_enumDefinition_binary_sequential_hc_RESET : begin
      end
      `hc_enumDefinition_binary_sequential_hc_RESUME : begin
      end
      `hc_enumDefinition_binary_sequential_hc_OPERATIONAL : begin
        frame_run = 1'b1;
      end
      `hc_enumDefinition_binary_sequential_hc_SUSPEND : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    frame_reload = 1'b0;
    if(_zz_72)begin
      if(frame_overflow)begin
        frame_reload = 1'b1;
      end
    end
    if(_zz_71)begin
      frame_reload = 1'b1;
    end
  end

  assign frame_overflow = (reg_hcFmRemaining_FR == 14'h0);
  always @ (*) begin
    frame_tick = 1'b0;
    if(_zz_72)begin
      if(frame_overflow)begin
        frame_tick = 1'b1;
      end
    end
  end

  assign frame_section1 = (reg_hcPeriodicStart_PS < reg_hcFmRemaining_FR);
  assign frame_limitHit = (frame_limitCounter == 15'h0);
  assign frame_decrementTimerOverflow = (frame_decrementTimer == 3'b110);
  always @ (*) begin
    token_wantExit = 1'b0;
    case(token_stateReg)
      `token_enumDefinition_binary_sequential_token_INIT : begin
      end
      `token_enumDefinition_binary_sequential_token_PID : begin
      end
      `token_enumDefinition_binary_sequential_token_B1 : begin
      end
      `token_enumDefinition_binary_sequential_token_B2 : begin
        if(io_phy_tx_ready)begin
          token_wantExit = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    token_wantStart = 1'b0;
    if(((sof_stateReg == `sof_enumDefinition_binary_sequential_sof_BOOT) && (! (sof_stateNext == `sof_enumDefinition_binary_sequential_sof_BOOT))))begin
      token_wantStart = 1'b1;
    end
    if(((! (endpoint_stateReg == `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN)) && (endpoint_stateNext == `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN)))begin
      token_wantStart = 1'b1;
    end
  end

  always @ (*) begin
    token_pid = 4'bxxxx;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
        token_pid = 4'b0101;
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
        case(_zz_79)
          2'b00 : begin
            token_pid = 4'b1101;
          end
          2'b01 : begin
            token_pid = 4'b0001;
          end
          2'b10 : begin
            token_pid = 4'b1001;
          end
          default : begin
          end
        endcase
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    token_data = 11'h0;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
        token_data = _zz_204[10:0];
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
        token_data = {endpoint_ED_EN,endpoint_ED_FA};
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_58 = 1'b0;
    if(((token_stateReg == `token_enumDefinition_binary_sequential_token_BOOT) && (! (token_stateNext == `token_enumDefinition_binary_sequential_token_BOOT))))begin
      _zz_58 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_59 = 1'b0;
    case(token_stateReg)
      `token_enumDefinition_binary_sequential_token_INIT : begin
        _zz_59 = 1'b1;
      end
      `token_enumDefinition_binary_sequential_token_PID : begin
      end
      `token_enumDefinition_binary_sequential_token_B1 : begin
      end
      `token_enumDefinition_binary_sequential_token_B2 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    dataTx_wantExit = 1'b0;
    case(dataTx_stateReg)
      `dataTx_enumDefinition_binary_sequential_dataTx_PID : begin
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_DATA : begin
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 : begin
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 : begin
        if(io_phy_tx_ready)begin
          dataTx_wantExit = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    dataTx_wantStart = 1'b0;
    if(((! (endpoint_stateReg == `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX)) && (endpoint_stateNext == `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX)))begin
      dataTx_wantStart = 1'b1;
    end
  end

  always @ (*) begin
    dataTx_pid = 4'bxxxx;
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
        dataTx_pid = {endpoint_dataPhase,3'b011};
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    dataTx_data_valid = 1'b0;
    if(endpoint_dmaLogic_readRspEnable)begin
      if(dataBuffer_read_rsp_valid)begin
        dataTx_data_valid = 1'b1;
      end
    end
  end

  always @ (*) begin
    dataTx_data_payload_last = 1'bx;
    if(endpoint_dmaLogic_readRspEnable)begin
      dataTx_data_payload_last = endpoint_dmaLogic_readRspCtx_last;
    end
  end

  always @ (*) begin
    dataTx_data_payload_fragment = 8'h0;
    if(endpoint_dmaLogic_readRspEnable)begin
      dataTx_data_payload_fragment = _zz_63;
    end
  end

  always @ (*) begin
    dataTx_data_ready = 1'b0;
    case(dataTx_stateReg)
      `dataTx_enumDefinition_binary_sequential_dataTx_PID : begin
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_DATA : begin
        if(io_phy_tx_ready)begin
          dataTx_data_ready = 1'b1;
        end
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 : begin
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 : begin
      end
      default : begin
      end
    endcase
  end

  assign _zz_61 = (dataTx_data_valid && dataTx_data_ready);
  always @ (*) begin
    _zz_60 = 1'b0;
    case(dataTx_stateReg)
      `dataTx_enumDefinition_binary_sequential_dataTx_PID : begin
        _zz_60 = 1'b1;
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_DATA : begin
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 : begin
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    sof_wantExit = 1'b0;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
        if(io_dma_rsp_valid)begin
          sof_wantExit = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    sof_wantStart = 1'b0;
    if(((! (operational_stateReg == `operational_enumDefinition_binary_sequential_operational_SOF)) && (operational_stateNext == `operational_enumDefinition_binary_sequential_operational_SOF)))begin
      sof_wantStart = 1'b1;
    end
  end

  always @ (*) begin
    priority_tick = 1'b0;
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
        if(dmaCtx_pendingEmpty)begin
          case(endpoint_flowType)
            `FlowType_binary_sequential_BULK : begin
              priority_tick = 1'b1;
            end
            `FlowType_binary_sequential_CONTROL : begin
              priority_tick = 1'b1;
            end
            default : begin
            end
          endcase
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    priority_skip = 1'b0;
    if(priority_tick)begin
      if((priority_bulk || (priority_counter == reg_hcControl_CBSR)))begin
        priority_skip = 1'b1;
      end
    end
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_SOF : begin
      end
      `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
        if(! frame_limitHit) begin
          if(! _zz_73) begin
            priority_skip = 1'b1;
            if(priority_bulk)begin
              if(operational_allowBulk)begin
                if(reg_hcBulkCurrentED_isZero)begin
                  if(reg_hcCommandStatus_BLF)begin
                    priority_skip = 1'b0;
                  end
                end else begin
                  priority_skip = 1'b0;
                end
              end
            end else begin
              if(operational_allowControl)begin
                if(reg_hcControlCurrentED_isZero)begin
                  if(reg_hcCommandStatus_CLF)begin
                    priority_skip = 1'b0;
                  end
                end else begin
                  priority_skip = 1'b0;
                end
              end
            end
          end
        end
      end
      `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
      end
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    interruptDelay_tick = 1'b0;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
        if(io_dma_rsp_valid)begin
          interruptDelay_tick = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign interruptDelay_done = (interruptDelay_counter == 3'b000);
  assign interruptDelay_disabled = (interruptDelay_counter == 3'b111);
  always @ (*) begin
    interruptDelay_disable = 1'b0;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
        if(io_dma_rsp_valid)begin
          if(sof_doInterruptDelay)begin
            interruptDelay_disable = 1'b1;
          end
        end
      end
      default : begin
      end
    endcase
    if(_zz_74)begin
      interruptDelay_disable = 1'b1;
    end
  end

  always @ (*) begin
    interruptDelay_load_valid = 1'b0;
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
        if(dmaCtx_pendingEmpty)begin
          if(endpoint_tdCompletion)begin
            interruptDelay_load_valid = 1'b1;
          end
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    interruptDelay_load_payload = 3'bxxx;
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
        if(dmaCtx_pendingEmpty)begin
          if(endpoint_tdCompletion)begin
            interruptDelay_load_payload = endpoint_TD_DI;
          end
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    endpoint_wantExit = 1'b0;
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
        if(_zz_75)begin
          endpoint_wantExit = 1'b1;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
        if(dmaCtx_pendingEmpty)begin
          endpoint_wantExit = 1'b1;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
        if(endpoint_dmaLogic_abord_ready)begin
          endpoint_wantExit = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    endpoint_wantStart = 1'b0;
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_SOF : begin
      end
      `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
        if(! frame_limitHit) begin
          if(_zz_73)begin
            if(! _zz_76) begin
              if(! reg_hcPeriodCurrentED_isZero) begin
                endpoint_wantStart = 1'b1;
              end
            end
          end else begin
            if(priority_bulk)begin
              if(operational_allowBulk)begin
                if(! reg_hcBulkCurrentED_isZero) begin
                  endpoint_wantStart = 1'b1;
                end
              end
            end else begin
              if(operational_allowControl)begin
                if(! reg_hcControlCurrentED_isZero) begin
                  endpoint_wantStart = 1'b1;
                end
              end
            end
          end
        end
      end
      `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
      end
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
      end
      default : begin
      end
    endcase
  end

  assign endpoint_ED_FA = endpoint_ED_words_0[6 : 0];
  assign endpoint_ED_EN = endpoint_ED_words_0[10 : 7];
  assign endpoint_ED_D = endpoint_ED_words_0[12 : 11];
  assign endpoint_ED_S = endpoint_ED_words_0[13];
  assign endpoint_ED_K = endpoint_ED_words_0[14];
  assign endpoint_ED_F = endpoint_ED_words_0[15];
  assign endpoint_ED_MPS = endpoint_ED_words_0[26 : 16];
  assign endpoint_ED_tailP = endpoint_ED_words_1[31 : 4];
  assign endpoint_ED_H = endpoint_ED_words_2[0];
  assign endpoint_ED_C = endpoint_ED_words_2[1];
  assign endpoint_ED_headP = endpoint_ED_words_2[31 : 4];
  assign endpoint_ED_nextED = endpoint_ED_words_3[31 : 4];
  assign endpoint_ED_tdEmpty = (endpoint_ED_tailP == endpoint_ED_headP);
  assign endpoint_ED_isFs = (! endpoint_ED_S);
  assign endpoint_TD_address = ({4'd0,endpoint_ED_headP} <<< 4);
  assign endpoint_TD_CC = endpoint_TD_words_0[31 : 28];
  assign endpoint_TD_EC = endpoint_TD_words_0[27 : 26];
  assign endpoint_TD_T = endpoint_TD_words_0[25 : 24];
  assign endpoint_TD_DI = endpoint_TD_words_0[23 : 21];
  assign endpoint_TD_DP = endpoint_TD_words_0[20 : 19];
  assign endpoint_TD_R = endpoint_TD_words_0[18 : 18];
  assign endpoint_TD_CBP = endpoint_TD_words_1[31 : 0];
  assign endpoint_TD_nextTD = endpoint_TD_words_2[31 : 4];
  assign endpoint_TD_BE = endpoint_TD_words_3[31 : 0];
  assign endpoint_TD_pageMatch = (endpoint_TD_CBP[31 : 12] == endpoint_TD_BE[31 : 12]);
  always @ (*) begin
    endpoint_applyNextED = 1'b0;
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
        if(_zz_75)begin
          endpoint_applyNextED = 1'b1;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  assign endpoint_currentAddressFull = {(endpoint_currentAddress[13] ? endpoint_TD_BE[31 : 12] : endpoint_TD_CBP[31 : 12]),endpoint_currentAddress[11 : 0]};
  assign endpoint_transferSizeCalc = ({endpoint_TD_pageMatch,endpoint_TD_BE[11 : 0]} - _zz_181);
  assign endpoint_transactionSize = (_zz_182 - endpoint_currentAddress);
  assign endpoint_dataDone = (endpoint_zeroLength || (_zz_183 < endpoint_currentAddress));
  always @ (*) begin
    endpoint_dmaLogic_wantExit = 1'b0;
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
        if(endpoint_dataDone)begin
          endpoint_dmaLogic_wantExit = 1'b1;
        end
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
        if(_zz_77)begin
          endpoint_dmaLogic_wantExit = 1'b1;
        end
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    endpoint_dmaLogic_wantStart = 1'b0;
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
        endpoint_dmaLogic_wantStart = 1'b1;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
  end

  assign endpoint_dmaLogic_lengthMax = (~ _zz_184);
  assign endpoint_dmaLogic_lengthCalc = _zz_185[5:0];
  always @ (*) begin
    endpoint_dmaLogic_abord_valid = 1'b0;
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
        endpoint_dmaLogic_abord_valid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    endpoint_dmaLogic_abord_ready = 1'b0;
    if(endpoint_dmaLogic_abord_valid)begin
      endpoint_dmaLogic_abord_ready = (endpoint_dmaLogic_abordCounter == 2'b11);
    end
  end

  assign endpoint_dmaLogic_readRspCtx_last = _zz_188[0];
  assign endpoint_dmaLogic_readRspCtx_sel = dataBuffer_read_rsp_payload_linked[2 : 1];
  assign endpoint_dmaLogic_readCmdCtx_last = (endpoint_dmaLogic_readByteCounter == endpoint_lastAddress);
  assign endpoint_dmaLogic_readCmdCtx_sel = endpoint_dmaLogic_readByteCounter[1:0];
  assign endpoint_currentAddressCalc = endpoint_TD_CBP[11 : 0];
  assign endpoint_lastAddressNoSat = {(! endpoint_TD_pageMatch),endpoint_TD_BE[11 : 0]};
  assign endpoint_byteCountCalc = (_zz_189 + 14'h0001);
  assign operational_wantExit = 1'b0;
  always @ (*) begin
    operational_wantStart = 1'b0;
    if(_zz_71)begin
      operational_wantStart = 1'b1;
    end
  end

  assign hc_wantExit = 1'b0;
  always @ (*) begin
    hc_wantStart = 1'b0;
    case(hc_stateReg)
      `hc_enumDefinition_binary_sequential_hc_RESET : begin
      end
      `hc_enumDefinition_binary_sequential_hc_RESUME : begin
      end
      `hc_enumDefinition_binary_sequential_hc_OPERATIONAL : begin
      end
      `hc_enumDefinition_binary_sequential_hc_SUSPEND : begin
      end
      default : begin
        hc_wantStart = 1'b1;
      end
    endcase
  end

  always @ (*) begin
    hc_error = 1'b0;
    case(hc_stateReg)
      `hc_enumDefinition_binary_sequential_hc_RESET : begin
        case(reg_hcControl_HCFS)
          `MainState_binary_sequential_OPERATIONAL : begin
          end
          default : begin
            hc_error = 1'b1;
          end
        endcase
      end
      `hc_enumDefinition_binary_sequential_hc_RESUME : begin
      end
      `hc_enumDefinition_binary_sequential_hc_OPERATIONAL : begin
      end
      `hc_enumDefinition_binary_sequential_hc_SUSPEND : begin
      end
      default : begin
      end
    endcase
  end

  assign _zz_56 = io_ctrl_cmd_payload_fragment_data[7 : 6];
  always @ (*) begin
    token_stateNext = token_stateReg;
    case(token_stateReg)
      `token_enumDefinition_binary_sequential_token_INIT : begin
        token_stateNext = `token_enumDefinition_binary_sequential_token_PID;
      end
      `token_enumDefinition_binary_sequential_token_PID : begin
        if(io_phy_tx_ready)begin
          token_stateNext = `token_enumDefinition_binary_sequential_token_B1;
        end
      end
      `token_enumDefinition_binary_sequential_token_B1 : begin
        if(io_phy_tx_ready)begin
          token_stateNext = `token_enumDefinition_binary_sequential_token_B2;
        end
      end
      `token_enumDefinition_binary_sequential_token_B2 : begin
        if(io_phy_tx_ready)begin
          token_stateNext = `token_enumDefinition_binary_sequential_token_BOOT;
        end
      end
      default : begin
      end
    endcase
    if(token_wantStart)begin
      token_stateNext = `token_enumDefinition_binary_sequential_token_INIT;
    end
  end

  always @ (*) begin
    dataTx_stateNext = dataTx_stateReg;
    case(dataTx_stateReg)
      `dataTx_enumDefinition_binary_sequential_dataTx_PID : begin
        if(io_phy_tx_ready)begin
          if(dataTx_data_valid)begin
            dataTx_stateNext = `dataTx_enumDefinition_binary_sequential_dataTx_DATA;
          end else begin
            dataTx_stateNext = `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0;
          end
        end
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_DATA : begin
        if(io_phy_tx_ready)begin
          if(dataTx_data_payload_last)begin
            dataTx_stateNext = `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0;
          end
        end
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_0 : begin
        if(io_phy_tx_ready)begin
          dataTx_stateNext = `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1;
        end
      end
      `dataTx_enumDefinition_binary_sequential_dataTx_CRC_1 : begin
        if(io_phy_tx_ready)begin
          dataTx_stateNext = `dataTx_enumDefinition_binary_sequential_dataTx_BOOT;
        end
      end
      default : begin
      end
    endcase
    if(dataTx_wantStart)begin
      dataTx_stateNext = `dataTx_enumDefinition_binary_sequential_dataTx_PID;
    end
  end

  always @ (*) begin
    sof_stateNext = sof_stateReg;
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
        if(token_wantExit)begin
          sof_stateNext = `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD;
        end
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
        if((io_dma_cmd_ready && io_dma_cmd_payload_last))begin
          sof_stateNext = `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP;
        end
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
        if(io_dma_rsp_valid)begin
          sof_stateNext = `sof_enumDefinition_binary_sequential_sof_BOOT;
        end
      end
      default : begin
      end
    endcase
    if(sof_wantStart)begin
      sof_stateNext = `sof_enumDefinition_binary_sequential_sof_FRAME_TX;
    end
  end

  always @ (*) begin
    endpoint_stateNext = endpoint_stateReg;
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
        if(io_dma_cmd_ready)begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
        if((io_dma_rsp_valid && io_dma_rsp_payload_last))begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
        if(_zz_75)begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_BOOT;
        end else begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
        if(io_dma_cmd_ready)begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
        if(((io_dma_rsp_valid && io_dma_rsp_ready) && io_dma_rsp_payload_last))begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
        endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ;
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
        if(_zz_78)begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_ABORD;
        end else begin
          if(endpoint_dmaLogic_bufferReady)begin
            endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN;
          end
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
        if(token_wantExit)begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
        if(dataTx_wantExit)begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
        if((io_dma_cmd_ready && io_dma_cmd_payload_last))begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
        if((io_dma_cmd_ready && io_dma_cmd_payload_last))begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
        if(dmaCtx_pendingEmpty)begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_BOOT;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
        if(endpoint_dmaLogic_abord_ready)begin
          endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_BOOT;
        end
      end
      default : begin
      end
    endcase
    if(endpoint_wantStart)begin
      endpoint_stateNext = `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD;
    end
  end

  assign _zz_57 = (_zz_206 - 12'h001);
  always @ (*) begin
    endpoint_dmaLogic_stateNext = endpoint_dmaLogic_stateReg;
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
        if(endpoint_dataDone)begin
          endpoint_dmaLogic_stateNext = `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT;
        end else begin
          endpoint_dmaLogic_stateNext = `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC;
        end
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
        if(_zz_77)begin
          endpoint_dmaLogic_stateNext = `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT;
        end else begin
          if(((_zz_215 != _zz_216) && (! dmaCtx_pendingFull)))begin
            endpoint_dmaLogic_stateNext = `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD;
          end
        end
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
        if(io_dma_cmd_ready)begin
          endpoint_dmaLogic_stateNext = `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC;
        end
      end
      default : begin
      end
    endcase
    if(endpoint_dmaLogic_wantStart)begin
      endpoint_dmaLogic_stateNext = `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT;
    end
  end

  always @ (*) begin
    operational_stateNext = operational_stateReg;
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_SOF : begin
        if(sof_wantExit)begin
          operational_stateNext = `operational_enumDefinition_binary_sequential_operational_ARBITER;
        end
      end
      `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
        if(frame_limitHit)begin
          operational_stateNext = `operational_enumDefinition_binary_sequential_operational_WAIT_SOF;
        end else begin
          if(_zz_73)begin
            if(_zz_76)begin
              operational_stateNext = `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD;
            end else begin
              if(! reg_hcPeriodCurrentED_isZero) begin
                operational_stateNext = `operational_enumDefinition_binary_sequential_operational_END_POINT;
              end
            end
          end else begin
            if(priority_bulk)begin
              if(operational_allowBulk)begin
                if(! reg_hcBulkCurrentED_isZero) begin
                  operational_stateNext = `operational_enumDefinition_binary_sequential_operational_END_POINT;
                end
              end
            end else begin
              if(operational_allowControl)begin
                if(! reg_hcControlCurrentED_isZero) begin
                  operational_stateNext = `operational_enumDefinition_binary_sequential_operational_END_POINT;
                end
              end
            end
          end
        end
      end
      `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
        if(endpoint_wantExit)begin
          case(endpoint_status_1)
            `endpoint_Status_binary_sequential_OK : begin
              operational_stateNext = `operational_enumDefinition_binary_sequential_operational_ARBITER;
            end
            default : begin
              operational_stateNext = `operational_enumDefinition_binary_sequential_operational_WAIT_SOF;
            end
          endcase
        end
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
        if(io_dma_cmd_ready)begin
          operational_stateNext = `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP;
        end
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
        if(io_dma_rsp_valid)begin
          operational_stateNext = `operational_enumDefinition_binary_sequential_operational_ARBITER;
        end
      end
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
        if(frame_tick)begin
          operational_stateNext = `operational_enumDefinition_binary_sequential_operational_SOF;
        end
      end
      default : begin
      end
    endcase
    if(operational_wantStart)begin
      operational_stateNext = `operational_enumDefinition_binary_sequential_operational_WAIT_SOF;
    end
  end

  always @ (*) begin
    hc_stateNext = hc_stateReg;
    case(hc_stateReg)
      `hc_enumDefinition_binary_sequential_hc_RESET : begin
        case(reg_hcControl_HCFS)
          `MainState_binary_sequential_OPERATIONAL : begin
            hc_stateNext = `hc_enumDefinition_binary_sequential_hc_OPERATIONAL;
          end
          default : begin
          end
        endcase
      end
      `hc_enumDefinition_binary_sequential_hc_RESUME : begin
      end
      `hc_enumDefinition_binary_sequential_hc_OPERATIONAL : begin
        if(operational_wantExit)begin
          hc_stateNext = `hc_enumDefinition_binary_sequential_hc_SUSPEND;
        end
      end
      `hc_enumDefinition_binary_sequential_hc_SUSPEND : begin
      end
      default : begin
      end
    endcase
    if(hc_wantStart)begin
      hc_stateNext = `hc_enumDefinition_binary_sequential_hc_RESET;
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      dmaReadCtx_counter <= 4'b0000;
      dmaWriteCtx_counter <= 4'b0000;
      dmaCtx_pendingCounter <= 3'b000;
      _zz_2 <= 1'b0;
      _zz_6 <= 1'b0;
      resetCtrl_doSoftReset <= 1'b1;
      reg_hcControl_CBSR <= 2'b00;
      reg_hcControl_PLE <= 1'b0;
      reg_hcControl_IE <= 1'b0;
      reg_hcControl_CLE <= 1'b0;
      reg_hcControl_BLE <= 1'b0;
      reg_hcControl_HCFS <= `MainState_binary_sequential_RESET;
      reg_hcControl_IR <= 1'b0;
      reg_hcControl_RWC <= 1'b0;
      reg_hcControl_RWE <= 1'b0;
      reg_hcCommandStatus_HCR <= 1'b0;
      reg_hcCommandStatus_CLF <= 1'b0;
      reg_hcCommandStatus_BLF <= 1'b0;
      reg_hcCommandStatus_SOC <= 2'b00;
      reg_hcInterrupt_MIE <= 1'b0;
      reg_hcInterrupt_SO_status <= 1'b0;
      reg_hcInterrupt_SO_enable <= 1'b0;
      reg_hcInterrupt_WDH_status <= 1'b0;
      reg_hcInterrupt_WDH_enable <= 1'b0;
      reg_hcInterrupt_SF_status <= 1'b0;
      reg_hcInterrupt_SF_enable <= 1'b0;
      reg_hcInterrupt_RD_status <= 1'b0;
      reg_hcInterrupt_RD_enable <= 1'b0;
      reg_hcInterrupt_UE_status <= 1'b0;
      reg_hcInterrupt_UE_enable <= 1'b0;
      reg_hcInterrupt_FNO_status <= 1'b0;
      reg_hcInterrupt_FNO_enable <= 1'b0;
      reg_hcInterrupt_RHSC_status <= 1'b0;
      reg_hcInterrupt_RHSC_enable <= 1'b0;
      reg_hcInterrupt_OC_status <= 1'b0;
      reg_hcInterrupt_OC_enable <= 1'b0;
      reg_hcHCCA_HCCA_reg <= 24'h0;
      reg_hcPeriodCurrentED_PCED_reg <= 28'h0;
      reg_hcControlHeadED_CHED_reg <= 28'h0;
      reg_hcControlCurrentED_CCED_reg <= 28'h0;
      reg_hcBulkHeadED_BHED_reg <= 28'h0;
      reg_hcBulkCurrentED_BCED_reg <= 28'h0;
      reg_hcDoneHead_DH_reg <= 28'h0;
      reg_hcFmInterval_FI <= 14'h2edf;
      reg_hcFmInterval_FIT <= 1'b0;
      reg_hcFmRemaining_FR <= 14'h0;
      reg_hcFmRemaining_FRT <= 1'b0;
      reg_hcFmNumber_FN <= 16'h0;
      reg_hcPeriodicStart_PS <= 14'h0;
      reg_hcLSThreshold_LST <= 12'h628;
      reg_hcRhDescriptorA_PSM <= 1'b1;
      reg_hcRhDescriptorA_NPS <= 1'b1;
      reg_hcRhDescriptorA_OCPM <= 1'b1;
      reg_hcRhDescriptorA_NOCP <= 1'b1;
      reg_hcRhDescriptorA_POTPGT <= 8'h0a;
      reg_hcRhStatus_DRWE <= 1'b0;
      reg_hcRhStatus_CCIC <= 1'b0;
      io_phy_overcurrent_regNext <= 1'b0;
      reg_hcRhPortStatus_0_resume <= 1'b0;
      reg_hcRhPortStatus_0_reset <= 1'b0;
      reg_hcRhPortStatus_0_suspend <= 1'b0;
      reg_hcRhPortStatus_0_PSS <= 1'b0;
      reg_hcRhPortStatus_0_PPS <= 1'b0;
      reg_hcRhPortStatus_0_PES <= 1'b0;
      reg_hcRhPortStatus_0_CSC_reg <= 1'b0;
      reg_hcRhPortStatus_0_PESC_reg <= 1'b0;
      reg_hcRhPortStatus_0_PSSC_reg <= 1'b0;
      reg_hcRhPortStatus_0_OCIC_reg <= 1'b0;
      reg_hcRhPortStatus_0_PRSC_reg <= 1'b0;
      reg_hcRhPortStatus_0_CCS_regNext <= 1'b0;
      bitTimer_counter_value <= 2'b00;
      interruptDelay_counter <= 3'b111;
      endpoint_dmaLogic_save <= 1'b0;
      endpoint_dmaLogic_readCmdEnable <= 1'b0;
      endpoint_dmaLogic_readRspEnable <= 1'b0;
      token_stateReg <= `token_enumDefinition_binary_sequential_token_BOOT;
      dataTx_stateReg <= `dataTx_enumDefinition_binary_sequential_dataTx_BOOT;
      sof_stateReg <= `sof_enumDefinition_binary_sequential_sof_BOOT;
      endpoint_stateReg <= `endpoint_enumDefinition_binary_sequential_endpoint_BOOT;
      endpoint_dmaLogic_stateReg <= `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT;
      operational_stateReg <= `operational_enumDefinition_binary_sequential_operational_BOOT;
      hc_stateReg <= `hc_enumDefinition_binary_sequential_hc_BOOT;
    end else begin
      if((io_dma_rsp_valid && io_dma_rsp_ready))begin
        dmaReadCtx_counter <= (dmaReadCtx_counter + 4'b0001);
        if(io_dma_rsp_payload_last)begin
          dmaReadCtx_counter <= 4'b0000;
        end
      end
      if((io_dma_cmd_valid && io_dma_cmd_ready))begin
        dmaWriteCtx_counter <= (dmaWriteCtx_counter + 4'b0001);
        if(io_dma_cmd_payload_last)begin
          dmaWriteCtx_counter <= 4'b0000;
        end
      end
      dmaCtx_pendingCounter <= (_zz_80 - _zz_84);
      if(dataBuffer_read_rsp_ready)begin
        _zz_2 <= 1'b0;
      end
      if(dataBuffer_read_cmd_ready)begin
        _zz_2 <= dataBuffer_read_cmd_valid;
      end
      if(_zz_4)begin
        _zz_6 <= (ctrl_rsp_valid && _zz_3);
      end
      resetCtrl_doSoftReset <= 1'b0;
      if(_zz_10)begin
        if(_zz_85[0])begin
          reg_hcCommandStatus_HCR <= _zz_86[0];
        end
      end
      if(_zz_11)begin
        if(_zz_87[0])begin
          reg_hcCommandStatus_CLF <= _zz_88[0];
        end
      end
      if(_zz_12)begin
        if(_zz_89[0])begin
          reg_hcCommandStatus_BLF <= _zz_90[0];
        end
      end
      if(_zz_13)begin
        if(_zz_91[0])begin
          reg_hcInterrupt_MIE <= _zz_92[0];
        end
      end
      if(_zz_14)begin
        if(_zz_93[0])begin
          reg_hcInterrupt_MIE <= _zz_94[0];
        end
      end
      if(_zz_15)begin
        if(_zz_95[0])begin
          reg_hcInterrupt_SO_status <= _zz_96[0];
        end
      end
      if(_zz_16)begin
        if(_zz_97[0])begin
          reg_hcInterrupt_SO_enable <= _zz_98[0];
        end
      end
      if(_zz_17)begin
        if(_zz_99[0])begin
          reg_hcInterrupt_SO_enable <= _zz_100[0];
        end
      end
      if(_zz_18)begin
        if(_zz_101[0])begin
          reg_hcInterrupt_WDH_status <= _zz_102[0];
        end
      end
      if(_zz_19)begin
        if(_zz_103[0])begin
          reg_hcInterrupt_WDH_enable <= _zz_104[0];
        end
      end
      if(_zz_20)begin
        if(_zz_105[0])begin
          reg_hcInterrupt_WDH_enable <= _zz_106[0];
        end
      end
      if(_zz_21)begin
        if(_zz_107[0])begin
          reg_hcInterrupt_SF_status <= _zz_108[0];
        end
      end
      if(_zz_22)begin
        if(_zz_109[0])begin
          reg_hcInterrupt_SF_enable <= _zz_110[0];
        end
      end
      if(_zz_23)begin
        if(_zz_111[0])begin
          reg_hcInterrupt_SF_enable <= _zz_112[0];
        end
      end
      if(_zz_24)begin
        if(_zz_113[0])begin
          reg_hcInterrupt_RD_status <= _zz_114[0];
        end
      end
      if(_zz_25)begin
        if(_zz_115[0])begin
          reg_hcInterrupt_RD_enable <= _zz_116[0];
        end
      end
      if(_zz_26)begin
        if(_zz_117[0])begin
          reg_hcInterrupt_RD_enable <= _zz_118[0];
        end
      end
      if(_zz_27)begin
        if(_zz_119[0])begin
          reg_hcInterrupt_UE_status <= _zz_120[0];
        end
      end
      if(_zz_28)begin
        if(_zz_121[0])begin
          reg_hcInterrupt_UE_enable <= _zz_122[0];
        end
      end
      if(_zz_29)begin
        if(_zz_123[0])begin
          reg_hcInterrupt_UE_enable <= _zz_124[0];
        end
      end
      if(_zz_30)begin
        if(_zz_125[0])begin
          reg_hcInterrupt_FNO_status <= _zz_126[0];
        end
      end
      if(_zz_31)begin
        if(_zz_127[0])begin
          reg_hcInterrupt_FNO_enable <= _zz_128[0];
        end
      end
      if(_zz_32)begin
        if(_zz_129[0])begin
          reg_hcInterrupt_FNO_enable <= _zz_130[0];
        end
      end
      if(_zz_33)begin
        if(_zz_131[0])begin
          reg_hcInterrupt_RHSC_status <= _zz_132[0];
        end
      end
      if(_zz_34)begin
        if(_zz_133[0])begin
          reg_hcInterrupt_RHSC_enable <= _zz_134[0];
        end
      end
      if(_zz_35)begin
        if(_zz_135[0])begin
          reg_hcInterrupt_RHSC_enable <= _zz_136[0];
        end
      end
      if(_zz_36)begin
        if(_zz_137[0])begin
          reg_hcInterrupt_OC_status <= _zz_138[0];
        end
      end
      if(_zz_37)begin
        if(_zz_139[0])begin
          reg_hcInterrupt_OC_enable <= _zz_140[0];
        end
      end
      if(_zz_38)begin
        if(_zz_141[0])begin
          reg_hcInterrupt_OC_enable <= _zz_142[0];
        end
      end
      if(_zz_39)begin
        if(_zz_144[0])begin
          reg_hcRhStatus_CCIC <= _zz_145[0];
        end
      end
      io_phy_overcurrent_regNext <= io_phy_overcurrent;
      if((io_phy_overcurrent ^ io_phy_overcurrent_regNext))begin
        reg_hcRhStatus_CCIC <= 1'b1;
      end
      if(reg_hcRhStatus_setRemoteWakeupEnable)begin
        reg_hcRhStatus_DRWE <= 1'b1;
      end
      if(reg_hcRhStatus_clearRemoteWakeupEnable)begin
        reg_hcRhStatus_DRWE <= 1'b0;
      end
      if(reg_hcRhPortStatus_0_CSC_clear)begin
        reg_hcRhPortStatus_0_CSC_reg <= 1'b0;
      end
      if(reg_hcRhPortStatus_0_CSC_set)begin
        reg_hcRhPortStatus_0_CSC_reg <= 1'b1;
      end
      if(reg_hcRhPortStatus_0_PESC_clear)begin
        reg_hcRhPortStatus_0_PESC_reg <= 1'b0;
      end
      if(reg_hcRhPortStatus_0_PESC_set)begin
        reg_hcRhPortStatus_0_PESC_reg <= 1'b1;
      end
      if(reg_hcRhPortStatus_0_PSSC_clear)begin
        reg_hcRhPortStatus_0_PSSC_reg <= 1'b0;
      end
      if(reg_hcRhPortStatus_0_PSSC_set)begin
        reg_hcRhPortStatus_0_PSSC_reg <= 1'b1;
      end
      if(reg_hcRhPortStatus_0_OCIC_clear)begin
        reg_hcRhPortStatus_0_OCIC_reg <= 1'b0;
      end
      if(reg_hcRhPortStatus_0_OCIC_set)begin
        reg_hcRhPortStatus_0_OCIC_reg <= 1'b1;
      end
      if(reg_hcRhPortStatus_0_PRSC_clear)begin
        reg_hcRhPortStatus_0_PRSC_reg <= 1'b0;
      end
      if(reg_hcRhPortStatus_0_PRSC_set)begin
        reg_hcRhPortStatus_0_PRSC_reg <= 1'b1;
      end
      if(((reg_hcRhPortStatus_0_clearPortEnable || reg_hcRhPortStatus_0_PESC_set) || (! reg_hcRhPortStatus_0_PPS)))begin
        reg_hcRhPortStatus_0_PES <= 1'b0;
      end
      if((reg_hcRhPortStatus_0_PRSC_set || reg_hcRhPortStatus_0_PSSC_set))begin
        reg_hcRhPortStatus_0_PES <= 1'b1;
      end
      if((reg_hcRhPortStatus_0_setPortEnable && reg_hcRhPortStatus_0_CCS))begin
        reg_hcRhPortStatus_0_PES <= 1'b1;
      end
      if((((reg_hcRhPortStatus_0_PSSC_set || reg_hcRhPortStatus_0_PRSC_set) || (! reg_hcRhPortStatus_0_PPS)) || (reg_hcControl_HCFS == `MainState_binary_sequential_RESUME)))begin
        reg_hcRhPortStatus_0_PSS <= 1'b0;
      end
      if((reg_hcRhPortStatus_0_setPortSuspend && reg_hcRhPortStatus_0_CCS))begin
        reg_hcRhPortStatus_0_PSS <= 1'b1;
      end
      if((reg_hcRhPortStatus_0_setPortSuspend && reg_hcRhPortStatus_0_CCS))begin
        reg_hcRhPortStatus_0_suspend <= 1'b1;
      end
      if((reg_hcRhPortStatus_0_clearSuspendStatus && reg_hcRhPortStatus_0_PSS))begin
        reg_hcRhPortStatus_0_resume <= 1'b1;
      end
      if((reg_hcRhPortStatus_0_setPortReset && reg_hcRhPortStatus_0_CCS))begin
        reg_hcRhPortStatus_0_reset <= 1'b1;
      end
      if(reg_hcRhDescriptorA_NPS)begin
        reg_hcRhPortStatus_0_PPS <= 1'b1;
      end else begin
        if(reg_hcRhDescriptorA_PSM)begin
          if(reg_hcRhDescriptorB_PPCM[0])begin
            if(reg_hcRhPortStatus_0_clearPortPower)begin
              reg_hcRhPortStatus_0_PPS <= 1'b0;
            end
            if(reg_hcRhPortStatus_0_setPortPower)begin
              reg_hcRhPortStatus_0_PPS <= 1'b1;
            end
          end else begin
            if(reg_hcRhStatus_clearGlobalPower)begin
              reg_hcRhPortStatus_0_PPS <= 1'b0;
            end
            if(reg_hcRhStatus_setGlobalPower)begin
              reg_hcRhPortStatus_0_PPS <= 1'b1;
            end
          end
        end else begin
          if(reg_hcRhStatus_clearGlobalPower)begin
            reg_hcRhPortStatus_0_PPS <= 1'b0;
          end
          if(reg_hcRhStatus_setGlobalPower)begin
            reg_hcRhPortStatus_0_PPS <= 1'b1;
          end
        end
      end
      reg_hcRhPortStatus_0_CCS_regNext <= reg_hcRhPortStatus_0_CCS;
      if((io_phy_ports_0_resume_valid && io_phy_ports_0_resume_ready))begin
        reg_hcRhPortStatus_0_resume <= 1'b0;
      end
      if((io_phy_ports_0_reset_valid && io_phy_ports_0_reset_ready))begin
        reg_hcRhPortStatus_0_reset <= 1'b0;
      end
      if((io_phy_ports_0_suspend_valid && io_phy_ports_0_suspend_ready))begin
        reg_hcRhPortStatus_0_suspend <= 1'b0;
      end
      if(((reg_hcRhStatus_DRWE && (reg_hcControl_HCFS == `MainState_binary_sequential_SUSPEND)) && (reg_hcRhPortStatus_0_CSC_set != 1'b0)))begin
        reg_hcControl_HCFS <= `MainState_binary_sequential_RESUME;
      end
      bitTimer_counter_value <= bitTimer_counter_valueNext;
      if(_zz_72)begin
        reg_hcFmRemaining_FR <= (reg_hcFmRemaining_FR - 14'h0001);
      end
      if(frame_reload)begin
        reg_hcFmRemaining_FR <= reg_hcFmInterval_FI;
        reg_hcFmRemaining_FRT <= reg_hcFmInterval_FIT;
        reg_hcFmNumber_FN <= (reg_hcFmNumber_FN + 16'h0001);
      end
      if(((interruptDelay_tick && (! interruptDelay_done)) && (! interruptDelay_disabled)))begin
        interruptDelay_counter <= (interruptDelay_counter - 3'b001);
      end
      if((interruptDelay_load_valid && (interruptDelay_load_payload < interruptDelay_counter)))begin
        interruptDelay_counter <= interruptDelay_load_payload;
      end
      if(interruptDelay_disable)begin
        interruptDelay_counter <= 3'b111;
      end
      if(endpoint_applyNextED)begin
        case(endpoint_flowType)
          `FlowType_binary_sequential_BULK : begin
            reg_hcBulkCurrentED_BCED_reg <= endpoint_ED_nextED;
          end
          `FlowType_binary_sequential_CONTROL : begin
            reg_hcControlCurrentED_CCED_reg <= endpoint_ED_nextED;
          end
          default : begin
            reg_hcPeriodCurrentED_PCED_reg <= endpoint_ED_nextED;
          end
        endcase
      end
      if(endpoint_dmaLogic_readCmdEnable)begin
        if(endpoint_dmaLogic_bufferReady)begin
          if(dataBuffer_read_cmd_ready)begin
            if(endpoint_dmaLogic_readCmdCtx_last)begin
              endpoint_dmaLogic_readCmdEnable <= 1'b0;
            end
          end
        end
      end
      if(endpoint_dmaLogic_readRspEnable)begin
        if(dataBuffer_read_rsp_valid)begin
          if(dataTx_data_ready)begin
            if(endpoint_dmaLogic_readRspCtx_last)begin
              endpoint_dmaLogic_readRspEnable <= 1'b0;
            end
          end
        end
      end
      if(endpoint_dmaLogic_abord_valid)begin
        endpoint_dmaLogic_readCmdEnable <= 1'b0;
        endpoint_dmaLogic_readRspEnable <= 1'b0;
        endpoint_dmaLogic_save <= 1'b0;
      end
      case(io_ctrl_cmd_payload_fragment_address)
        12'h004 : begin
          if(ctrl_doWrite)begin
            reg_hcControl_CBSR <= io_ctrl_cmd_payload_fragment_data[1 : 0];
            reg_hcControl_PLE <= _zz_192[0];
            reg_hcControl_IE <= _zz_193[0];
            reg_hcControl_CLE <= _zz_194[0];
            reg_hcControl_BLE <= _zz_195[0];
            reg_hcControl_HCFS <= _zz_56;
            reg_hcControl_IR <= _zz_196[0];
            reg_hcControl_RWC <= _zz_197[0];
            reg_hcControl_RWE <= _zz_198[0];
          end
        end
        12'h018 : begin
          if(ctrl_doWrite)begin
            reg_hcHCCA_HCCA_reg <= io_ctrl_cmd_payload_fragment_data[31 : 8];
          end
        end
        12'h020 : begin
          if(ctrl_doWrite)begin
            reg_hcControlHeadED_CHED_reg <= io_ctrl_cmd_payload_fragment_data[31 : 4];
          end
        end
        12'h024 : begin
          if(ctrl_doWrite)begin
            reg_hcControlCurrentED_CCED_reg <= io_ctrl_cmd_payload_fragment_data[31 : 4];
          end
        end
        12'h028 : begin
          if(ctrl_doWrite)begin
            reg_hcBulkHeadED_BHED_reg <= io_ctrl_cmd_payload_fragment_data[31 : 4];
          end
        end
        12'h02c : begin
          if(ctrl_doWrite)begin
            reg_hcBulkCurrentED_BCED_reg <= io_ctrl_cmd_payload_fragment_data[31 : 4];
          end
        end
        12'h030 : begin
          if(ctrl_doWrite)begin
            reg_hcDoneHead_DH_reg <= io_ctrl_cmd_payload_fragment_data[31 : 4];
          end
        end
        12'h034 : begin
          if(ctrl_doWrite)begin
            reg_hcFmInterval_FI <= io_ctrl_cmd_payload_fragment_data[13 : 0];
            reg_hcFmInterval_FIT <= _zz_199[0];
          end
        end
        12'h040 : begin
          if(ctrl_doWrite)begin
            reg_hcPeriodicStart_PS <= io_ctrl_cmd_payload_fragment_data[13 : 0];
          end
        end
        12'h044 : begin
          if(ctrl_doWrite)begin
            reg_hcLSThreshold_LST <= io_ctrl_cmd_payload_fragment_data[11 : 0];
          end
        end
        12'h048 : begin
          if(ctrl_doWrite)begin
            reg_hcRhDescriptorA_PSM <= _zz_200[0];
            reg_hcRhDescriptorA_NPS <= _zz_201[0];
            reg_hcRhDescriptorA_OCPM <= _zz_202[0];
            reg_hcRhDescriptorA_NOCP <= _zz_203[0];
            reg_hcRhDescriptorA_POTPGT <= io_ctrl_cmd_payload_fragment_data[31 : 24];
          end
        end
        default : begin
        end
      endcase
      token_stateReg <= token_stateNext;
      dataTx_stateReg <= dataTx_stateNext;
      sof_stateReg <= sof_stateNext;
      case(sof_stateReg)
        `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
        end
        `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
        end
        `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
          if(io_dma_rsp_valid)begin
            reg_hcInterrupt_SF_status <= 1'b1;
            if(sof_doInterruptDelay)begin
              reg_hcInterrupt_WDH_status <= 1'b1;
              reg_hcDoneHead_DH_reg <= 28'h0;
            end
          end
        end
        default : begin
        end
      endcase
      endpoint_stateReg <= endpoint_stateNext;
      case(endpoint_stateReg)
        `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
          case(endpoint_flowType)
            `FlowType_binary_sequential_CONTROL : begin
              reg_hcCommandStatus_CLF <= 1'b1;
            end
            `FlowType_binary_sequential_BULK : begin
              reg_hcCommandStatus_BLF <= 1'b1;
            end
            default : begin
            end
          endcase
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
          if(dataTx_wantExit)begin
            endpoint_dmaLogic_save <= 1'b0;
          end
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
          if(endpoint_tdCompletion)begin
            reg_hcDoneHead_DH_reg <= endpoint_ED_headP;
          end
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
          if(dmaCtx_pendingEmpty)begin
            case(endpoint_flowType)
              `FlowType_binary_sequential_BULK : begin
                reg_hcBulkCurrentED_BCED_reg <= endpoint_ED_nextED;
              end
              `FlowType_binary_sequential_CONTROL : begin
                reg_hcControlCurrentED_CCED_reg <= endpoint_ED_nextED;
              end
              default : begin
                reg_hcPeriodCurrentED_PCED_reg <= endpoint_ED_nextED;
              end
            endcase
          end
        end
        `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
        end
        default : begin
        end
      endcase
      endpoint_dmaLogic_stateReg <= endpoint_dmaLogic_stateNext;
      case(endpoint_dmaLogic_stateReg)
        `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
          if(! endpoint_dataDone) begin
            endpoint_dmaLogic_save <= 1'b1;
            endpoint_dmaLogic_readCmdEnable <= 1'b1;
            endpoint_dmaLogic_readRspEnable <= 1'b1;
          end
        end
        `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
        end
        `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
        end
        default : begin
        end
      endcase
      operational_stateReg <= operational_stateNext;
      case(operational_stateReg)
        `operational_enumDefinition_binary_sequential_operational_SOF : begin
          if(sof_wantExit)begin
            if((operational_allowPeriodic && (! operational_periodicDone)))begin
              reg_hcInterrupt_SO_status <= 1'b1;
              reg_hcCommandStatus_SOC <= (reg_hcCommandStatus_SOC + 2'b01);
            end
          end
        end
        `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
          if(! frame_limitHit) begin
            if(! _zz_73) begin
              if(priority_bulk)begin
                if(operational_allowBulk)begin
                  if(reg_hcBulkCurrentED_isZero)begin
                    if(reg_hcCommandStatus_BLF)begin
                      reg_hcBulkCurrentED_BCED_reg <= reg_hcBulkHeadED_BHED_reg;
                      reg_hcCommandStatus_BLF <= 1'b0;
                    end
                  end
                end
              end else begin
                if(operational_allowControl)begin
                  if(reg_hcControlCurrentED_isZero)begin
                    if(reg_hcCommandStatus_CLF)begin
                      reg_hcControlCurrentED_CCED_reg <= reg_hcControlHeadED_CHED_reg;
                      reg_hcCommandStatus_CLF <= 1'b0;
                    end
                  end
                end
              end
            end
          end
        end
        `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
        end
        `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
        end
        `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
          if(io_dma_rsp_valid)begin
            reg_hcPeriodCurrentED_PCED_reg <= dmaRspMux_data[31 : 4];
          end
        end
        `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
        end
        default : begin
        end
      endcase
      hc_stateReg <= hc_stateNext;
    end
  end

  always @ (posedge clk) begin
    if(dataBuffer_write_counter_increment)begin
      dataBuffer_write_counter_value <= (dataBuffer_write_counter_value + 9'h001);
    end
    if(dataBuffer_write_counter_clear)begin
      dataBuffer_write_counter_value <= 9'h0;
    end
    if(dataBuffer_read_cmd_ready)begin
      dataBuffer_read_cmdCtx_regNextWhen <= dataBuffer_read_cmdCtx;
    end
    if(dataBuffer_read_counter_increment)begin
      dataBuffer_read_counter_value <= (dataBuffer_read_counter_value + 9'h001);
    end
    if(dataBuffer_read_counter_clear)begin
      dataBuffer_read_counter_value <= 9'h0;
    end
    if(_zz_4)begin
      _zz_7 <= ctrl_rsp_payload_last;
      _zz_8 <= ctrl_rsp_payload_fragment_opcode;
      _zz_9 <= ctrl_rsp_payload_fragment_data;
    end
    frame_decrementTimer <= (frame_decrementTimer + 3'b001);
    if(frame_decrementTimerOverflow)begin
      frame_decrementTimer <= 3'b000;
    end
    if(_zz_72)begin
      if(((! frame_limitHit) && (! frame_decrementTimerOverflow)))begin
        frame_limitCounter <= (frame_limitCounter - 15'h0001);
      end
    end
    if(frame_reload)begin
      frame_limitCounter <= reg_hcFmInterval_FSMPS;
      frame_decrementTimer <= 3'b000;
    end
    if(priority_tick)begin
      priority_counter <= (priority_counter + 2'b01);
    end
    if(priority_skip)begin
      priority_bulk <= (! priority_bulk);
      priority_counter <= 2'b00;
    end
    if((io_dma_rsp_valid && io_dma_rsp_ready))begin
      endpoint_dmaLogic_readRspCounter <= (endpoint_dmaLogic_readRspCounter + 4'b0001);
    end
    if(((endpoint_dmaLogic_readRspCounter == 4'b1111) || ((endpoint_dmaLogic_stateReg == `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT) && (dmaCtx_pendingCounter == 3'b000))))begin
      endpoint_dmaLogic_bufferReady <= 1'b1;
    end
    if(endpoint_dmaLogic_readCmdEnable)begin
      if(endpoint_dmaLogic_bufferReady)begin
        if(dataBuffer_read_cmd_ready)begin
          endpoint_dmaLogic_readByteCounter <= (endpoint_dmaLogic_readByteCounter + 13'h0001);
        end
      end
    end
    if(endpoint_dmaLogic_abord_valid)begin
      endpoint_dmaLogic_abordCounter <= (endpoint_dmaLogic_abordCounter + 2'b01);
    end
    if(((dataBuffer_read_rsp_valid || (! (endpoint_dmaLogic_stateReg == `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT))) || (! dmaCtx_pendingEmpty)))begin
      endpoint_dmaLogic_abordCounter <= 2'b00;
    end
    endpoint_tdCompletion <= (_zz_191 < endpoint_currentAddress);
    case(io_ctrl_cmd_payload_fragment_address)
      12'h034 : begin
        if(ctrl_doWrite)begin
          reg_hcFmInterval_FSMPS <= io_ctrl_cmd_payload_fragment_data[30 : 16];
        end
      end
      12'h04c : begin
        if(ctrl_doWrite)begin
          reg_hcRhDescriptorB_DR <= io_ctrl_cmd_payload_fragment_data[1 : 1];
          reg_hcRhDescriptorB_PPCM <= io_ctrl_cmd_payload_fragment_data[17 : 17];
        end
      end
      default : begin
      end
    endcase
    case(sof_stateReg)
      `sof_enumDefinition_binary_sequential_sof_FRAME_TX : begin
        sof_doInterruptDelay <= (interruptDelay_done && (! reg_hcInterrupt_WDH_status));
        sof_unmaskedInterruptDelay <= reg_hcInterrupt_WDH_enable;
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_CMD : begin
      end
      `sof_enumDefinition_binary_sequential_sof_FRAME_NUMBER_RSP : begin
      end
      default : begin
      end
    endcase
    case(endpoint_stateReg)
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_READ_RSP : begin
        if((io_dma_rsp_valid && (dmaReadCtx_counter == 4'b0000)))begin
          endpoint_ED_words_0 <= dmaRspMux_vec_0[31 : 0];
        end
        if((io_dma_rsp_valid && (dmaReadCtx_counter == 4'b0001)))begin
          endpoint_ED_words_1 <= dmaRspMux_vec_0[31 : 0];
        end
        if((io_dma_rsp_valid && (dmaReadCtx_counter == 4'b0010)))begin
          endpoint_ED_words_2 <= dmaRspMux_vec_0[31 : 0];
        end
        if((io_dma_rsp_valid && (dmaReadCtx_counter == 4'b0011)))begin
          endpoint_ED_words_3 <= dmaRspMux_vec_0[31 : 0];
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ED_ANALYSE : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_READ_RSP : begin
        if((io_dma_rsp_valid && (dmaReadCtx_counter == 4'b0000)))begin
          endpoint_TD_words_0 <= dmaRspMux_vec_0[31 : 0];
        end
        if((io_dma_rsp_valid && (dmaReadCtx_counter == 4'b0001)))begin
          endpoint_TD_words_1 <= dmaRspMux_vec_0[31 : 0];
        end
        if((io_dma_rsp_valid && (dmaReadCtx_counter == 4'b0010)))begin
          endpoint_TD_words_2 <= dmaRspMux_vec_0[31 : 0];
        end
        if((io_dma_rsp_valid && (dmaReadCtx_counter == 4'b0011)))begin
          endpoint_TD_words_3 <= dmaRspMux_vec_0[31 : 0];
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_ANALYSE : begin
        endpoint_dmaLogic_readByteCounter <= {1'd0, endpoint_currentAddressCalc};
        endpoint_currentAddress <= {2'd0, endpoint_currentAddressCalc};
        endpoint_lastAddress <= ((endpoint_lastAddressNoSat < _zz_208) ? endpoint_lastAddressNoSat : _zz_209);
        endpoint_zeroLength <= (endpoint_TD_CBP == 32'h0);
        endpoint_dataPhase <= (endpoint_TD_T[1] ? endpoint_TD_T[0] : endpoint_ED_C);
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TD_CHECK_TIME : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_BUFFER_READ : begin
        if(_zz_78)begin
          endpoint_status_1 <= `endpoint_Status_binary_sequential_FRAME_TIME;
        end
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_TOKEN : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_TX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_DATA_RX : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_TD_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_ED_CMD : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_UPDATE_SYNC : begin
      end
      `endpoint_enumDefinition_binary_sequential_endpoint_ABORD : begin
      end
      default : begin
      end
    endcase
    if(((endpoint_stateReg == `endpoint_enumDefinition_binary_sequential_endpoint_BOOT) && (! (endpoint_stateNext == `endpoint_enumDefinition_binary_sequential_endpoint_BOOT))))begin
      endpoint_status_1 <= `endpoint_Status_binary_sequential_OK;
    end
    case(endpoint_dmaLogic_stateReg)
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_INIT : begin
        if(! endpoint_dataDone) begin
          endpoint_dmaLogic_predictedWriteCounter <= 2'b01;
          endpoint_dmaLogic_readRspCounter <= 4'b0000;
        end
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CALC : begin
        endpoint_dmaLogic_length <= endpoint_dmaLogic_lengthCalc;
      end
      `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_CMD : begin
        if(io_dma_cmd_ready)begin
          endpoint_currentAddress <= (_zz_217 + 14'h0001);
          endpoint_dmaLogic_predictedWriteCounter <= (endpoint_dmaLogic_predictedWriteCounter + 2'b01);
        end
      end
      default : begin
      end
    endcase
    if(((endpoint_dmaLogic_stateReg == `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT) && (! (endpoint_dmaLogic_stateNext == `endpoint_dmaLogic_enumDefinition_binary_sequential_endpoint_dmaLogic_BOOT))))begin
      endpoint_dmaLogic_bufferReady <= 1'b0;
    end
    case(operational_stateReg)
      `operational_enumDefinition_binary_sequential_operational_SOF : begin
        if(sof_wantExit)begin
          operational_allowBulk <= reg_hcControl_BLE;
          operational_allowControl <= reg_hcControl_CLE;
          operational_allowPeriodic <= reg_hcControl_PLE;
          operational_allowIsochronous <= reg_hcControl_IE;
          operational_periodicDone <= 1'b0;
          operational_periodicHeadFetched <= 1'b0;
          priority_bulk <= 1'b0;
          priority_counter <= 2'b00;
        end
      end
      `operational_enumDefinition_binary_sequential_operational_ARBITER : begin
        if(reg_hcControl_BLE)begin
          operational_allowBulk <= 1'b1;
        end
        if(reg_hcControl_CLE)begin
          operational_allowControl <= 1'b1;
        end
        if(! frame_limitHit) begin
          if(_zz_73)begin
            if(! _zz_76) begin
              if(reg_hcPeriodCurrentED_isZero)begin
                operational_periodicDone <= 1'b1;
              end else begin
                endpoint_flowType <= `FlowType_binary_sequential_PERIODIC;
                endpoint_ED_address <= reg_hcPeriodCurrentED_PCED_address;
              end
            end
          end else begin
            if(priority_bulk)begin
              if(operational_allowBulk)begin
                if(! reg_hcBulkCurrentED_isZero) begin
                  endpoint_flowType <= `FlowType_binary_sequential_BULK;
                  endpoint_ED_address <= reg_hcBulkCurrentED_BCED_address;
                end
              end
            end else begin
              if(operational_allowControl)begin
                if(! reg_hcControlCurrentED_isZero) begin
                  endpoint_flowType <= `FlowType_binary_sequential_CONTROL;
                  endpoint_ED_address <= reg_hcControlCurrentED_CCED_address;
                end
              end
            end
          end
        end
      end
      `operational_enumDefinition_binary_sequential_operational_END_POINT : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_CMD : begin
      end
      `operational_enumDefinition_binary_sequential_operational_PERIODIC_HEAD_RSP : begin
        if(io_dma_rsp_valid)begin
          operational_periodicHeadFetched <= 1'b1;
        end
      end
      `operational_enumDefinition_binary_sequential_operational_WAIT_SOF : begin
      end
      default : begin
      end
    endcase
    if(_zz_74)begin
      operational_allowPeriodic <= 1'b0;
    end
  end


endmodule

module UsbLsFsPhyFilter (
  input               io_fullSpeed,
  input               io_usb_dp,
  input               io_usb_dm,
  output              io_filtred_dp,
  output              io_filtred_dm,
  output              io_filtred_d,
  output              io_filtred_sample,
  input               clk,
  input               reset
);
  wire                frontend_valid;
  reg                 frontend_valueOld;
  wire                frontend_edge;
  reg                 timer_clear;
  reg        [4:0]    timer_counter;
  wire       [4:0]    timer_sampleAt;
  wire                timer_sampleDo;

  assign frontend_valid = (io_usb_dp != io_usb_dm);
  assign frontend_edge = (io_usb_dp ^ frontend_valueOld);
  always @ (*) begin
    timer_clear = 1'b0;
    if((frontend_valid && frontend_edge))begin
      timer_clear = 1'b1;
    end
  end

  assign timer_sampleAt = (io_fullSpeed ? 5'h02 : 5'h10);
  assign timer_sampleDo = (timer_counter == timer_sampleAt);
  assign io_filtred_dp = io_usb_dp;
  assign io_filtred_dm = io_usb_dm;
  assign io_filtred_d = io_usb_dp;
  assign io_filtred_sample = timer_sampleDo;
  always @ (posedge clk) begin
    if(frontend_valid)begin
      frontend_valueOld <= io_usb_dp;
    end
    timer_counter <= (timer_counter + 5'h01);
    if(((timer_counter == 5'h03) || timer_clear))begin
      timer_counter <= 5'h0;
    end
  end


endmodule

module Crc_1 (
  input               io_flush,
  input               io_input_valid,
  input      [7:0]    io_input_payload,
  output     [15:0]   io_result,
  output     [15:0]   io_resultNext,
  input               clk,
  input               reset
);
  wire       [15:0]   _zz_1;
  wire       [15:0]   _zz_2;
  wire       [15:0]   _zz_3;
  wire       [15:0]   _zz_4;
  wire       [15:0]   _zz_5;
  wire       [15:0]   _zz_6;
  wire       [15:0]   _zz_7;
  wire       [15:0]   _zz_8;
  wire                _zz_9;
  wire       [0:0]    _zz_10;
  wire       [4:0]    _zz_11;
  wire                _zz_12;
  wire       [0:0]    _zz_13;
  wire       [4:0]    _zz_14;
  reg        [15:0]   state_8;
  reg        [15:0]   state_7;
  reg        [15:0]   state_6;
  reg        [15:0]   state_5;
  reg        [15:0]   state_4;
  reg        [15:0]   state_3;
  reg        [15:0]   state_2;
  reg        [15:0]   state_1;
  reg        [15:0]   state;
  wire       [15:0]   stateXor;
  wire       [15:0]   accXor;

  assign _zz_1 = (state <<< 1);
  assign _zz_2 = (state_1 <<< 1);
  assign _zz_3 = (state_2 <<< 1);
  assign _zz_4 = (state_3 <<< 1);
  assign _zz_5 = (state_4 <<< 1);
  assign _zz_6 = (state_5 <<< 1);
  assign _zz_7 = (state_6 <<< 1);
  assign _zz_8 = (state_7 <<< 1);
  assign _zz_9 = stateXor[9];
  assign _zz_10 = stateXor[10];
  assign _zz_11 = {stateXor[11],{stateXor[12],{stateXor[13],{stateXor[14],stateXor[15]}}}};
  assign _zz_12 = accXor[9];
  assign _zz_13 = accXor[10];
  assign _zz_14 = {accXor[11],{accXor[12],{accXor[13],{accXor[14],accXor[15]}}}};
  always @ (*) begin
    state_8 = state_7;
    state_8 = (_zz_8 ^ ((io_input_payload[7] ^ state_7[15]) ? 16'h8005 : 16'h0));
  end

  always @ (*) begin
    state_7 = state_6;
    state_7 = (_zz_7 ^ ((io_input_payload[6] ^ state_6[15]) ? 16'h8005 : 16'h0));
  end

  always @ (*) begin
    state_6 = state_5;
    state_6 = (_zz_6 ^ ((io_input_payload[5] ^ state_5[15]) ? 16'h8005 : 16'h0));
  end

  always @ (*) begin
    state_5 = state_4;
    state_5 = (_zz_5 ^ ((io_input_payload[4] ^ state_4[15]) ? 16'h8005 : 16'h0));
  end

  always @ (*) begin
    state_4 = state_3;
    state_4 = (_zz_4 ^ ((io_input_payload[3] ^ state_3[15]) ? 16'h8005 : 16'h0));
  end

  always @ (*) begin
    state_3 = state_2;
    state_3 = (_zz_3 ^ ((io_input_payload[2] ^ state_2[15]) ? 16'h8005 : 16'h0));
  end

  always @ (*) begin
    state_2 = state_1;
    state_2 = (_zz_2 ^ ((io_input_payload[1] ^ state_1[15]) ? 16'h8005 : 16'h0));
  end

  always @ (*) begin
    state_1 = state;
    state_1 = (_zz_1 ^ ((io_input_payload[0] ^ state[15]) ? 16'h8005 : 16'h0));
  end

  assign stateXor = (state ^ 16'hffff);
  assign accXor = (state_8 ^ 16'hffff);
  assign io_result = {stateXor[0],{stateXor[1],{stateXor[2],{stateXor[3],{stateXor[4],{stateXor[5],{stateXor[6],{stateXor[7],{stateXor[8],{_zz_9,{_zz_10,_zz_11}}}}}}}}}}};
  assign io_resultNext = {accXor[0],{accXor[1],{accXor[2],{accXor[3],{accXor[4],{accXor[5],{accXor[6],{accXor[7],{accXor[8],{_zz_12,{_zz_13,_zz_14}}}}}}}}}}};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      state <= 16'hffff;
    end else begin
      if(io_input_valid)begin
        state <= state_8;
      end
      if(io_flush)begin
        state <= 16'hffff;
      end
    end
  end


endmodule

module Crc (
  input               io_flush,
  input               io_input_valid,
  input      [10:0]   io_input_payload,
  output     [4:0]    io_result,
  output     [4:0]    io_resultNext,
  input               clk,
  input               reset
);
  wire       [4:0]    _zz_1;
  wire       [4:0]    _zz_2;
  wire       [4:0]    _zz_3;
  wire       [4:0]    _zz_4;
  wire       [4:0]    _zz_5;
  wire       [4:0]    _zz_6;
  wire       [4:0]    _zz_7;
  wire       [4:0]    _zz_8;
  wire       [4:0]    _zz_9;
  wire       [4:0]    _zz_10;
  wire       [4:0]    _zz_11;
  reg        [4:0]    state_11;
  reg        [4:0]    state_10;
  reg        [4:0]    state_9;
  reg        [4:0]    state_8;
  reg        [4:0]    state_7;
  reg        [4:0]    state_6;
  reg        [4:0]    state_5;
  reg        [4:0]    state_4;
  reg        [4:0]    state_3;
  reg        [4:0]    state_2;
  reg        [4:0]    state_1;
  reg        [4:0]    state;
  wire       [4:0]    stateXor;
  wire       [4:0]    accXor;

  assign _zz_1 = (state <<< 1);
  assign _zz_2 = (state_1 <<< 1);
  assign _zz_3 = (state_2 <<< 1);
  assign _zz_4 = (state_3 <<< 1);
  assign _zz_5 = (state_4 <<< 1);
  assign _zz_6 = (state_5 <<< 1);
  assign _zz_7 = (state_6 <<< 1);
  assign _zz_8 = (state_7 <<< 1);
  assign _zz_9 = (state_8 <<< 1);
  assign _zz_10 = (state_9 <<< 1);
  assign _zz_11 = (state_10 <<< 1);
  always @ (*) begin
    state_11 = state_10;
    state_11 = (_zz_11 ^ ((io_input_payload[10] ^ state_10[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_10 = state_9;
    state_10 = (_zz_10 ^ ((io_input_payload[9] ^ state_9[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_9 = state_8;
    state_9 = (_zz_9 ^ ((io_input_payload[8] ^ state_8[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_8 = state_7;
    state_8 = (_zz_8 ^ ((io_input_payload[7] ^ state_7[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_7 = state_6;
    state_7 = (_zz_7 ^ ((io_input_payload[6] ^ state_6[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_6 = state_5;
    state_6 = (_zz_6 ^ ((io_input_payload[5] ^ state_5[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_5 = state_4;
    state_5 = (_zz_5 ^ ((io_input_payload[4] ^ state_4[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_4 = state_3;
    state_4 = (_zz_4 ^ ((io_input_payload[3] ^ state_3[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_3 = state_2;
    state_3 = (_zz_3 ^ ((io_input_payload[2] ^ state_2[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_2 = state_1;
    state_2 = (_zz_2 ^ ((io_input_payload[1] ^ state_1[4]) ? 5'h05 : 5'h0));
  end

  always @ (*) begin
    state_1 = state;
    state_1 = (_zz_1 ^ ((io_input_payload[0] ^ state[4]) ? 5'h05 : 5'h0));
  end

  assign stateXor = (state ^ 5'h1f);
  assign accXor = (state_11 ^ 5'h1f);
  assign io_result = {stateXor[0],{stateXor[1],{stateXor[2],{stateXor[3],stateXor[4]}}}};
  assign io_resultNext = {accXor[0],{accXor[1],{accXor[2],{accXor[3],accXor[4]}}}};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      state <= 5'h1f;
    end else begin
      if(io_input_valid)begin
        state <= state_11;
      end
      if(io_flush)begin
        state <= 5'h1f;
      end
    end
  end


endmodule
