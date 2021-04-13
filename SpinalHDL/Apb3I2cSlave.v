// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : Apb3I2cSlave
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26


`define I2cSlaveCmdMode_binary_sequential_type [2:0]
`define I2cSlaveCmdMode_binary_sequential_NONE 3'b000
`define I2cSlaveCmdMode_binary_sequential_START 3'b001
`define I2cSlaveCmdMode_binary_sequential_RESTART 3'b010
`define I2cSlaveCmdMode_binary_sequential_STOP 3'b011
`define I2cSlaveCmdMode_binary_sequential_DROP 3'b100
`define I2cSlaveCmdMode_binary_sequential_DRIVE 3'b101
`define I2cSlaveCmdMode_binary_sequential_READ 3'b110


module Apb3I2cSlave (
  input      [7:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output              io_i2c_sda_write,
  input               io_i2c_sda_read,
  output              io_i2c_scl_write,
  input               io_i2c_scl_read,
  output              io_interrupt,
  input               clk,
  input               reset
);
  reg                 _zz_13;
  reg                 _zz_14;
  reg                 _zz_15;
  wire                i2cCtrl_io_i2c_scl_write;
  wire                i2cCtrl_io_i2c_sda_write;
  wire       `I2cSlaveCmdMode_binary_sequential_type i2cCtrl_io_bus_cmd_kind;
  wire                i2cCtrl_io_bus_cmd_data;
  wire                i2cCtrl_io_internals_inFrame;
  wire                i2cCtrl_io_internals_sdaRead;
  wire                i2cCtrl_io_internals_sclRead;
  wire                _zz_16;
  wire                _zz_17;
  wire                _zz_18;
  wire                _zz_19;
  wire       [6:0]    _zz_20;
  wire       [6:0]    _zz_21;
  wire       [6:0]    _zz_22;
  wire       [6:0]    _zz_23;
  wire       [2:0]    _zz_24;
  wire       [2:0]    _zz_25;
  wire       [0:0]    _zz_26;
  wire       [0:0]    _zz_27;
  wire       [0:0]    _zz_28;
  wire       [0:0]    _zz_29;
  wire       [0:0]    _zz_30;
  wire       [0:0]    _zz_31;
  wire       [0:0]    _zz_32;
  wire       [0:0]    _zz_33;
  wire       [0:0]    _zz_34;
  wire       [0:0]    _zz_35;
  wire       [0:0]    _zz_36;
  wire       [0:0]    _zz_37;
  wire       [0:0]    _zz_38;
  wire       [0:0]    _zz_39;
  wire       [0:0]    _zz_40;
  wire       [0:0]    _zz_41;
  wire       [0:0]    _zz_42;
  wire       [0:0]    _zz_43;
  wire       [0:0]    _zz_44;
  wire       [0:0]    _zz_45;
  wire       [0:0]    _zz_46;
  wire       [0:0]    _zz_47;
  wire       [0:0]    _zz_48;
  wire       [0:0]    _zz_49;
  wire       [0:0]    _zz_50;
  wire       [0:0]    _zz_51;
  wire       [0:0]    _zz_52;
  wire       [0:0]    _zz_53;
  wire       [0:0]    _zz_54;
  wire       [0:0]    _zz_55;
  wire       [0:0]    _zz_56;
  wire       [0:0]    _zz_57;
  wire       [0:0]    _zz_58;
  wire       [0:0]    _zz_59;
  wire       [0:0]    _zz_60;
  wire       [0:0]    _zz_61;
  wire       [0:0]    _zz_62;
  wire       [0:0]    _zz_63;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  reg                 bridge_frameReset;
  wire                bridge_i2cBuffer_sda_write;
  wire                bridge_i2cBuffer_sda_read;
  wire                bridge_i2cBuffer_scl_write;
  wire                bridge_i2cBuffer_scl_read;
  reg                 bridge_rxData_event;
  reg                 bridge_rxData_listen;
  reg                 bridge_rxData_valid;
  reg        [7:0]    bridge_rxData_value;
  reg                 _zz_1;
  reg                 bridge_rxAck_listen;
  reg                 bridge_rxAck_valid;
  reg                 bridge_rxAck_value;
  reg                 _zz_2;
  reg                 bridge_txData_valid;
  reg                 bridge_txData_repeat;
  reg                 bridge_txData_enable;
  reg        [7:0]    bridge_txData_value;
  reg                 bridge_txData_forceDisable;
  reg                 bridge_txData_disableOnDataConflict;
  reg                 bridge_txAck_valid;
  reg                 bridge_txAck_repeat;
  reg                 bridge_txAck_enable;
  reg                 bridge_txAck_value;
  reg                 bridge_txAck_forceAck;
  reg                 bridge_txAck_disableOnDataConflict;
  reg                 bridge_addressFilter_addresses_0_enable;
  reg        [9:0]    bridge_addressFilter_addresses_0_value;
  reg                 bridge_addressFilter_addresses_0_is10Bit;
  reg                 bridge_addressFilter_addresses_1_enable;
  reg        [9:0]    bridge_addressFilter_addresses_1_value;
  reg                 bridge_addressFilter_addresses_1_is10Bit;
  reg                 bridge_addressFilter_addresses_2_enable;
  reg        [9:0]    bridge_addressFilter_addresses_2_value;
  reg                 bridge_addressFilter_addresses_2_is10Bit;
  reg                 bridge_addressFilter_addresses_3_enable;
  reg        [9:0]    bridge_addressFilter_addresses_3_value;
  reg                 bridge_addressFilter_addresses_3_is10Bit;
  reg        [1:0]    bridge_addressFilter_state;
  reg        [7:0]    bridge_addressFilter_byte0;
  reg        [7:0]    bridge_addressFilter_byte1;
  wire                bridge_addressFilter_byte0Is10Bit;
  wire                bridge_addressFilter_hits_0;
  wire                bridge_addressFilter_hits_1;
  wire                bridge_addressFilter_hits_2;
  wire                bridge_addressFilter_hits_3;
  wire                _zz_3;
  reg                 _zz_3_regNext;
  reg        [2:0]    bridge_dataCounter;
  reg                 bridge_inAckState;
  reg                 bridge_wasntAck;
  wire                bridge_isMasterMode;
  reg                 bridge_interruptCtrl_rxDataEnable;
  reg                 bridge_interruptCtrl_rxAckEnable;
  reg                 bridge_interruptCtrl_txDataEnable;
  reg                 bridge_interruptCtrl_txAckEnable;
  reg                 bridge_interruptCtrl_interrupt;
  reg                 bridge_interruptCtrl_start_enable;
  reg                 bridge_interruptCtrl_start_flag;
  reg                 _zz_4;
  reg                 bridge_interruptCtrl_restart_enable;
  reg                 bridge_interruptCtrl_restart_flag;
  reg                 _zz_5;
  reg                 bridge_interruptCtrl_end_enable;
  reg                 bridge_interruptCtrl_end_flag;
  reg                 _zz_6;
  reg                 bridge_interruptCtrl_drop_enable;
  reg                 bridge_interruptCtrl_drop_flag;
  reg                 _zz_7;
  wire                _zz_8;
  reg                 _zz_8_regNext;
  reg                 bridge_interruptCtrl_filterGen_enable;
  reg                 bridge_interruptCtrl_filterGen_flag;
  reg                 _zz_9;
  reg        [9:0]    _zz_10;
  reg        [19:0]   _zz_11 = 20'b00000000000000000000;
  reg        [5:0]    _zz_12 = 6'b000000;
  reg                 bridge_i2cBuffer_scl_write_regNext;
  reg                 bridge_i2cBuffer_sda_write_regNext;

  assign _zz_16 = ((i2cCtrl_io_bus_cmd_kind == `I2cSlaveCmdMode_binary_sequential_STOP) || (i2cCtrl_io_bus_cmd_kind == `I2cSlaveCmdMode_binary_sequential_DROP));
  assign _zz_17 = (! bridge_inAckState);
  assign _zz_18 = (bridge_wasntAck && (! bridge_isMasterMode));
  assign _zz_19 = (! bridge_inAckState);
  assign _zz_20 = (bridge_addressFilter_byte0 >>> 1);
  assign _zz_21 = (bridge_addressFilter_byte0 >>> 1);
  assign _zz_22 = (bridge_addressFilter_byte0 >>> 1);
  assign _zz_23 = (bridge_addressFilter_byte0 >>> 1);
  assign _zz_24 = (3'b111 - bridge_dataCounter);
  assign _zz_25 = (3'b111 - bridge_dataCounter);
  assign _zz_26 = io_apb_PWDATA[4 : 4];
  assign _zz_27 = 1'b0;
  assign _zz_28 = io_apb_PWDATA[5 : 5];
  assign _zz_29 = 1'b0;
  assign _zz_30 = io_apb_PWDATA[6 : 6];
  assign _zz_31 = 1'b0;
  assign _zz_32 = io_apb_PWDATA[7 : 7];
  assign _zz_33 = 1'b0;
  assign _zz_34 = io_apb_PWDATA[17 : 17];
  assign _zz_35 = 1'b0;
  assign _zz_36 = io_apb_PWDATA[9 : 9];
  assign _zz_37 = io_apb_PWDATA[9 : 9];
  assign _zz_38 = io_apb_PWDATA[10 : 10];
  assign _zz_39 = io_apb_PWDATA[11 : 11];
  assign _zz_40 = io_apb_PWDATA[8 : 8];
  assign _zz_41 = io_apb_PWDATA[9 : 9];
  assign _zz_42 = io_apb_PWDATA[0 : 0];
  assign _zz_43 = io_apb_PWDATA[10 : 10];
  assign _zz_44 = io_apb_PWDATA[11 : 11];
  assign _zz_45 = io_apb_PWDATA[8 : 8];
  assign _zz_46 = io_apb_PWDATA[9 : 9];
  assign _zz_47 = io_apb_PWDATA[14 : 14];
  assign _zz_48 = io_apb_PWDATA[15 : 15];
  assign _zz_49 = io_apb_PWDATA[14 : 14];
  assign _zz_50 = io_apb_PWDATA[15 : 15];
  assign _zz_51 = io_apb_PWDATA[14 : 14];
  assign _zz_52 = io_apb_PWDATA[15 : 15];
  assign _zz_53 = io_apb_PWDATA[14 : 14];
  assign _zz_54 = io_apb_PWDATA[15 : 15];
  assign _zz_55 = io_apb_PWDATA[0 : 0];
  assign _zz_56 = io_apb_PWDATA[1 : 1];
  assign _zz_57 = io_apb_PWDATA[2 : 2];
  assign _zz_58 = io_apb_PWDATA[3 : 3];
  assign _zz_59 = io_apb_PWDATA[4 : 4];
  assign _zz_60 = io_apb_PWDATA[5 : 5];
  assign _zz_61 = io_apb_PWDATA[6 : 6];
  assign _zz_62 = io_apb_PWDATA[7 : 7];
  assign _zz_63 = io_apb_PWDATA[17 : 17];
  I2cSlave i2cCtrl (
    .io_i2c_sda_write                  (i2cCtrl_io_i2c_sda_write      ), //o
    .io_i2c_sda_read                   (bridge_i2cBuffer_sda_read     ), //i
    .io_i2c_scl_write                  (i2cCtrl_io_i2c_scl_write      ), //o
    .io_i2c_scl_read                   (bridge_i2cBuffer_scl_read     ), //i
    .io_config_samplingClockDivider    (_zz_10[9:0]                   ), //i
    .io_config_timeout                 (_zz_11[19:0]                  ), //i
    .io_config_tsuData                 (_zz_12[5:0]                   ), //i
    .io_bus_cmd_kind                   (i2cCtrl_io_bus_cmd_kind[2:0]  ), //o
    .io_bus_cmd_data                   (i2cCtrl_io_bus_cmd_data       ), //o
    .io_bus_rsp_valid                  (_zz_13                        ), //i
    .io_bus_rsp_enable                 (_zz_14                        ), //i
    .io_bus_rsp_data                   (_zz_15                        ), //i
    .io_internals_inFrame              (i2cCtrl_io_internals_inFrame  ), //o
    .io_internals_sdaRead              (i2cCtrl_io_internals_sdaRead  ), //o
    .io_internals_sclRead              (i2cCtrl_io_internals_sclRead  ), //o
    .clk                               (clk                           ), //i
    .reset                             (reset                         )  //i
  );
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      8'h08 : begin
        io_apb_PRDATA[8 : 8] = bridge_rxData_valid;
        io_apb_PRDATA[7 : 0] = bridge_rxData_value;
      end
      8'h0c : begin
        io_apb_PRDATA[8 : 8] = bridge_rxAck_valid;
        io_apb_PRDATA[0 : 0] = bridge_rxAck_value;
      end
      8'h0 : begin
        io_apb_PRDATA[8 : 8] = bridge_txData_valid;
        io_apb_PRDATA[9 : 9] = bridge_txData_enable;
      end
      8'h04 : begin
        io_apb_PRDATA[8 : 8] = bridge_txAck_valid;
        io_apb_PRDATA[9 : 9] = bridge_txAck_enable;
      end
      8'h80 : begin
        io_apb_PRDATA[3 : 0] = {bridge_addressFilter_hits_3,{bridge_addressFilter_hits_2,{bridge_addressFilter_hits_1,bridge_addressFilter_hits_0}}};
      end
      8'h84 : begin
        io_apb_PRDATA[0 : 0] = bridge_addressFilter_byte0[0];
      end
      8'h20 : begin
        io_apb_PRDATA[0 : 0] = bridge_interruptCtrl_rxDataEnable;
        io_apb_PRDATA[1 : 1] = bridge_interruptCtrl_rxAckEnable;
        io_apb_PRDATA[2 : 2] = bridge_interruptCtrl_txDataEnable;
        io_apb_PRDATA[3 : 3] = bridge_interruptCtrl_txAckEnable;
        io_apb_PRDATA[4 : 4] = bridge_interruptCtrl_start_enable;
        io_apb_PRDATA[5 : 5] = bridge_interruptCtrl_restart_enable;
        io_apb_PRDATA[6 : 6] = bridge_interruptCtrl_end_enable;
        io_apb_PRDATA[7 : 7] = bridge_interruptCtrl_drop_enable;
        io_apb_PRDATA[17 : 17] = bridge_interruptCtrl_filterGen_enable;
      end
      8'h24 : begin
        io_apb_PRDATA[4 : 4] = bridge_interruptCtrl_start_flag;
        io_apb_PRDATA[5 : 5] = bridge_interruptCtrl_restart_flag;
        io_apb_PRDATA[6 : 6] = bridge_interruptCtrl_end_flag;
        io_apb_PRDATA[7 : 7] = bridge_interruptCtrl_drop_flag;
        io_apb_PRDATA[17 : 17] = bridge_interruptCtrl_filterGen_flag;
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
    bridge_frameReset = 1'b0;
    case(i2cCtrl_io_bus_cmd_kind)
      `I2cSlaveCmdMode_binary_sequential_START : begin
        bridge_frameReset = 1'b1;
      end
      `I2cSlaveCmdMode_binary_sequential_RESTART : begin
        bridge_frameReset = 1'b1;
      end
      `I2cSlaveCmdMode_binary_sequential_STOP : begin
        bridge_frameReset = 1'b1;
      end
      `I2cSlaveCmdMode_binary_sequential_DROP : begin
        bridge_frameReset = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign bridge_i2cBuffer_sda_write = i2cCtrl_io_i2c_sda_write;
  assign bridge_i2cBuffer_scl_write = i2cCtrl_io_i2c_scl_write;
  always @ (*) begin
    _zz_1 = 1'b0;
    case(io_apb_PADDR)
      8'h08 : begin
        if(busCtrl_doRead)begin
          _zz_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    case(io_apb_PADDR)
      8'h0c : begin
        if(busCtrl_doRead)begin
          _zz_2 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    bridge_txData_forceDisable = 1'b0;
    if(_zz_16)begin
      bridge_txData_forceDisable = 1'b0;
    end
  end

  always @ (*) begin
    bridge_txAck_forceAck = 1'b0;
    if(((bridge_addressFilter_byte0Is10Bit && (bridge_addressFilter_state == 2'b01)) && ({((bridge_addressFilter_addresses_3_enable && bridge_addressFilter_addresses_3_is10Bit) && (bridge_addressFilter_byte0[2 : 1] == bridge_addressFilter_addresses_3_value[9 : 8])),{((bridge_addressFilter_addresses_2_enable && bridge_addressFilter_addresses_2_is10Bit) && (bridge_addressFilter_byte0[2 : 1] == bridge_addressFilter_addresses_2_value[9 : 8])),{((bridge_addressFilter_addresses_1_enable && bridge_addressFilter_addresses_1_is10Bit) && (bridge_addressFilter_byte0[2 : 1] == bridge_addressFilter_addresses_1_value[9 : 8])),((bridge_addressFilter_addresses_0_enable && bridge_addressFilter_addresses_0_is10Bit) && (bridge_addressFilter_byte0[2 : 1] == bridge_addressFilter_addresses_0_value[9 : 8]))}}} != 4'b0000)))begin
      bridge_txAck_forceAck = 1'b1;
    end
  end

  assign bridge_addressFilter_byte0Is10Bit = (bridge_addressFilter_byte0[7 : 3] == 5'h1e);
  assign bridge_addressFilter_hits_0 = (bridge_addressFilter_addresses_0_enable && ((! bridge_addressFilter_addresses_0_is10Bit) ? ((_zz_20 == bridge_addressFilter_addresses_0_value[6 : 0]) && (bridge_addressFilter_state != 2'b00)) : (({bridge_addressFilter_byte0[2 : 1],bridge_addressFilter_byte1} == bridge_addressFilter_addresses_0_value) && (bridge_addressFilter_state == 2'b10))));
  assign bridge_addressFilter_hits_1 = (bridge_addressFilter_addresses_1_enable && ((! bridge_addressFilter_addresses_1_is10Bit) ? ((_zz_21 == bridge_addressFilter_addresses_1_value[6 : 0]) && (bridge_addressFilter_state != 2'b00)) : (({bridge_addressFilter_byte0[2 : 1],bridge_addressFilter_byte1} == bridge_addressFilter_addresses_1_value) && (bridge_addressFilter_state == 2'b10))));
  assign bridge_addressFilter_hits_2 = (bridge_addressFilter_addresses_2_enable && ((! bridge_addressFilter_addresses_2_is10Bit) ? ((_zz_22 == bridge_addressFilter_addresses_2_value[6 : 0]) && (bridge_addressFilter_state != 2'b00)) : (({bridge_addressFilter_byte0[2 : 1],bridge_addressFilter_byte1} == bridge_addressFilter_addresses_2_value) && (bridge_addressFilter_state == 2'b10))));
  assign bridge_addressFilter_hits_3 = (bridge_addressFilter_addresses_3_enable && ((! bridge_addressFilter_addresses_3_is10Bit) ? ((_zz_23 == bridge_addressFilter_addresses_3_value[6 : 0]) && (bridge_addressFilter_state != 2'b00)) : (({bridge_addressFilter_byte0[2 : 1],bridge_addressFilter_byte1} == bridge_addressFilter_addresses_3_value) && (bridge_addressFilter_state == 2'b10))));
  assign _zz_3 = ({bridge_addressFilter_hits_3,{bridge_addressFilter_hits_2,{bridge_addressFilter_hits_1,bridge_addressFilter_hits_0}}} != 4'b0000);
  always @ (*) begin
    if(_zz_17)begin
      _zz_13 = ((bridge_txData_valid && (! (bridge_rxData_valid && bridge_rxData_listen))) && (i2cCtrl_io_bus_cmd_kind == `I2cSlaveCmdMode_binary_sequential_DRIVE));
      if(bridge_txData_forceDisable)begin
        _zz_13 = 1'b1;
      end
    end else begin
      _zz_13 = ((bridge_txAck_valid && (! (bridge_rxAck_valid && bridge_rxAck_listen))) && (i2cCtrl_io_bus_cmd_kind == `I2cSlaveCmdMode_binary_sequential_DRIVE));
      if(bridge_txAck_forceAck)begin
        _zz_13 = 1'b1;
      end
    end
    if(_zz_18)begin
      _zz_13 = (i2cCtrl_io_bus_cmd_kind == `I2cSlaveCmdMode_binary_sequential_DRIVE);
    end
  end

  always @ (*) begin
    if(_zz_17)begin
      _zz_14 = bridge_txData_enable;
      if(bridge_txData_forceDisable)begin
        _zz_14 = 1'b0;
      end
    end else begin
      _zz_14 = bridge_txAck_enable;
      if(bridge_txAck_forceAck)begin
        _zz_14 = 1'b1;
      end
    end
    if(_zz_18)begin
      _zz_14 = 1'b0;
    end
  end

  always @ (*) begin
    if(_zz_17)begin
      _zz_15 = bridge_txData_value[_zz_24];
    end else begin
      _zz_15 = bridge_txAck_value;
      if(bridge_txAck_forceAck)begin
        _zz_15 = 1'b0;
      end
    end
  end

  assign bridge_isMasterMode = 1'b0;
  always @ (*) begin
    bridge_interruptCtrl_interrupt = ((((bridge_interruptCtrl_rxDataEnable && bridge_rxData_valid) || (bridge_interruptCtrl_rxAckEnable && bridge_rxAck_valid)) || (bridge_interruptCtrl_txDataEnable && (! bridge_txData_valid))) || (bridge_interruptCtrl_txAckEnable && (! bridge_txAck_valid)));
    if(bridge_interruptCtrl_start_flag)begin
      bridge_interruptCtrl_interrupt = 1'b1;
    end
    if(bridge_interruptCtrl_restart_flag)begin
      bridge_interruptCtrl_interrupt = 1'b1;
    end
    if(bridge_interruptCtrl_end_flag)begin
      bridge_interruptCtrl_interrupt = 1'b1;
    end
    if(bridge_interruptCtrl_drop_flag)begin
      bridge_interruptCtrl_interrupt = 1'b1;
    end
    if(bridge_interruptCtrl_filterGen_flag)begin
      bridge_interruptCtrl_interrupt = 1'b1;
    end
  end

  always @ (*) begin
    _zz_4 = 1'b0;
    case(io_apb_PADDR)
      8'h24 : begin
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
      8'h24 : begin
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
      8'h24 : begin
        if(busCtrl_doWrite)begin
          _zz_6 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    _zz_7 = 1'b0;
    case(io_apb_PADDR)
      8'h24 : begin
        if(busCtrl_doWrite)begin
          _zz_7 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign _zz_8 = ({bridge_addressFilter_hits_3,{bridge_addressFilter_hits_2,{bridge_addressFilter_hits_1,bridge_addressFilter_hits_0}}} != 4'b0000);
  always @ (*) begin
    _zz_9 = 1'b0;
    case(io_apb_PADDR)
      8'h24 : begin
        if(busCtrl_doWrite)begin
          _zz_9 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign io_i2c_scl_write = bridge_i2cBuffer_scl_write_regNext;
  assign io_i2c_sda_write = bridge_i2cBuffer_sda_write_regNext;
  assign bridge_i2cBuffer_scl_read = io_i2c_scl_read;
  assign bridge_i2cBuffer_sda_read = io_i2c_sda_read;
  assign io_interrupt = bridge_interruptCtrl_interrupt;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      bridge_rxData_event <= 1'b0;
      bridge_rxData_listen <= 1'b0;
      bridge_rxData_valid <= 1'b0;
      bridge_rxAck_listen <= 1'b0;
      bridge_rxAck_valid <= 1'b0;
      bridge_txData_valid <= 1'b1;
      bridge_txData_repeat <= 1'b1;
      bridge_txData_enable <= 1'b0;
      bridge_txAck_valid <= 1'b1;
      bridge_txAck_repeat <= 1'b1;
      bridge_txAck_enable <= 1'b0;
      bridge_addressFilter_addresses_0_enable <= 1'b0;
      bridge_addressFilter_addresses_1_enable <= 1'b0;
      bridge_addressFilter_addresses_2_enable <= 1'b0;
      bridge_addressFilter_addresses_3_enable <= 1'b0;
      bridge_addressFilter_state <= 2'b00;
      bridge_dataCounter <= 3'b000;
      bridge_inAckState <= 1'b0;
      bridge_wasntAck <= 1'b0;
      bridge_interruptCtrl_rxDataEnable <= 1'b0;
      bridge_interruptCtrl_rxAckEnable <= 1'b0;
      bridge_interruptCtrl_txDataEnable <= 1'b0;
      bridge_interruptCtrl_txAckEnable <= 1'b0;
      bridge_interruptCtrl_start_enable <= 1'b0;
      bridge_interruptCtrl_start_flag <= 1'b0;
      bridge_interruptCtrl_restart_enable <= 1'b0;
      bridge_interruptCtrl_restart_flag <= 1'b0;
      bridge_interruptCtrl_end_enable <= 1'b0;
      bridge_interruptCtrl_end_flag <= 1'b0;
      bridge_interruptCtrl_drop_enable <= 1'b0;
      bridge_interruptCtrl_drop_flag <= 1'b0;
      bridge_interruptCtrl_filterGen_enable <= 1'b0;
      bridge_interruptCtrl_filterGen_flag <= 1'b0;
      _zz_10 <= 10'h0;
      bridge_i2cBuffer_scl_write_regNext <= 1'b1;
      bridge_i2cBuffer_sda_write_regNext <= 1'b1;
    end else begin
      bridge_rxData_event <= 1'b0;
      if(_zz_1)begin
        bridge_rxData_valid <= 1'b0;
      end
      if(_zz_2)begin
        bridge_rxAck_valid <= 1'b0;
      end
      if(bridge_rxData_event)begin
        case(bridge_addressFilter_state)
          2'b00 : begin
            bridge_addressFilter_state <= 2'b01;
          end
          2'b01 : begin
            bridge_addressFilter_state <= 2'b10;
          end
          default : begin
          end
        endcase
      end
      if(bridge_frameReset)begin
        bridge_addressFilter_state <= 2'b00;
      end
      if((_zz_3 && (! _zz_3_regNext)))begin
        bridge_txAck_valid <= 1'b0;
      end
      case(i2cCtrl_io_bus_cmd_kind)
        `I2cSlaveCmdMode_binary_sequential_READ : begin
          if(_zz_19)begin
            bridge_dataCounter <= (bridge_dataCounter + 3'b001);
            if((_zz_15 != i2cCtrl_io_bus_cmd_data))begin
              if(bridge_txData_disableOnDataConflict)begin
                bridge_txData_enable <= 1'b0;
              end
              if(bridge_txAck_disableOnDataConflict)begin
                bridge_txAck_enable <= 1'b0;
              end
            end
            if((bridge_dataCounter == 3'b111))begin
              if(bridge_rxData_listen)begin
                bridge_rxData_valid <= 1'b1;
              end
              bridge_rxData_event <= 1'b1;
              bridge_inAckState <= 1'b1;
              if((bridge_txData_valid && (! bridge_txData_repeat)))begin
                bridge_txData_valid <= 1'b0;
              end
            end
          end else begin
            if(bridge_rxAck_listen)begin
              bridge_rxAck_valid <= 1'b1;
            end
            bridge_inAckState <= 1'b0;
            bridge_wasntAck <= i2cCtrl_io_bus_cmd_data;
            if((bridge_txAck_valid && (! bridge_txAck_repeat)))begin
              bridge_txAck_valid <= 1'b0;
            end
          end
        end
        default : begin
        end
      endcase
      if(bridge_frameReset)begin
        bridge_inAckState <= 1'b0;
        bridge_dataCounter <= 3'b000;
        bridge_wasntAck <= 1'b0;
      end
      if(_zz_16)begin
        bridge_txData_valid <= 1'b1;
        bridge_txData_enable <= 1'b0;
        bridge_txData_repeat <= 1'b1;
        bridge_txAck_valid <= 1'b1;
        bridge_txAck_enable <= 1'b0;
        bridge_txAck_repeat <= 1'b1;
        bridge_rxData_listen <= 1'b0;
        bridge_rxAck_listen <= 1'b0;
      end
      if((i2cCtrl_io_bus_cmd_kind == `I2cSlaveCmdMode_binary_sequential_START))begin
        bridge_interruptCtrl_start_flag <= 1'b1;
      end
      if((! bridge_interruptCtrl_start_enable))begin
        bridge_interruptCtrl_start_flag <= 1'b0;
      end
      if(_zz_4)begin
        if(_zz_26[0])begin
          bridge_interruptCtrl_start_flag <= _zz_27[0];
        end
      end
      if((i2cCtrl_io_bus_cmd_kind == `I2cSlaveCmdMode_binary_sequential_RESTART))begin
        bridge_interruptCtrl_restart_flag <= 1'b1;
      end
      if((! bridge_interruptCtrl_restart_enable))begin
        bridge_interruptCtrl_restart_flag <= 1'b0;
      end
      if(_zz_5)begin
        if(_zz_28[0])begin
          bridge_interruptCtrl_restart_flag <= _zz_29[0];
        end
      end
      if((i2cCtrl_io_bus_cmd_kind == `I2cSlaveCmdMode_binary_sequential_STOP))begin
        bridge_interruptCtrl_end_flag <= 1'b1;
      end
      if((! bridge_interruptCtrl_end_enable))begin
        bridge_interruptCtrl_end_flag <= 1'b0;
      end
      if(_zz_6)begin
        if(_zz_30[0])begin
          bridge_interruptCtrl_end_flag <= _zz_31[0];
        end
      end
      if((i2cCtrl_io_bus_cmd_kind == `I2cSlaveCmdMode_binary_sequential_DROP))begin
        bridge_interruptCtrl_drop_flag <= 1'b1;
      end
      if((! bridge_interruptCtrl_drop_enable))begin
        bridge_interruptCtrl_drop_flag <= 1'b0;
      end
      if(_zz_7)begin
        if(_zz_32[0])begin
          bridge_interruptCtrl_drop_flag <= _zz_33[0];
        end
      end
      if((_zz_8 && (! _zz_8_regNext)))begin
        bridge_interruptCtrl_filterGen_flag <= 1'b1;
      end
      if((! bridge_interruptCtrl_filterGen_enable))begin
        bridge_interruptCtrl_filterGen_flag <= 1'b0;
      end
      if(_zz_9)begin
        if(_zz_34[0])begin
          bridge_interruptCtrl_filterGen_flag <= _zz_35[0];
        end
      end
      bridge_i2cBuffer_scl_write_regNext <= bridge_i2cBuffer_scl_write;
      bridge_i2cBuffer_sda_write_regNext <= bridge_i2cBuffer_sda_write;
      case(io_apb_PADDR)
        8'h08 : begin
          if(busCtrl_doWrite)begin
            bridge_rxData_listen <= _zz_36[0];
          end
        end
        8'h0c : begin
          if(busCtrl_doWrite)begin
            bridge_rxAck_listen <= _zz_37[0];
          end
        end
        8'h0 : begin
          if(busCtrl_doWrite)begin
            bridge_txData_repeat <= _zz_38[0];
            bridge_txData_valid <= _zz_40[0];
            bridge_txData_enable <= _zz_41[0];
          end
        end
        8'h04 : begin
          if(busCtrl_doWrite)begin
            bridge_txAck_repeat <= _zz_43[0];
            bridge_txAck_valid <= _zz_45[0];
            bridge_txAck_enable <= _zz_46[0];
          end
        end
        8'h88 : begin
          if(busCtrl_doWrite)begin
            bridge_addressFilter_addresses_0_enable <= _zz_48[0];
          end
        end
        8'h8c : begin
          if(busCtrl_doWrite)begin
            bridge_addressFilter_addresses_1_enable <= _zz_50[0];
          end
        end
        8'h90 : begin
          if(busCtrl_doWrite)begin
            bridge_addressFilter_addresses_2_enable <= _zz_52[0];
          end
        end
        8'h94 : begin
          if(busCtrl_doWrite)begin
            bridge_addressFilter_addresses_3_enable <= _zz_54[0];
          end
        end
        8'h20 : begin
          if(busCtrl_doWrite)begin
            bridge_interruptCtrl_rxDataEnable <= _zz_55[0];
            bridge_interruptCtrl_rxAckEnable <= _zz_56[0];
            bridge_interruptCtrl_txDataEnable <= _zz_57[0];
            bridge_interruptCtrl_txAckEnable <= _zz_58[0];
            bridge_interruptCtrl_start_enable <= _zz_59[0];
            bridge_interruptCtrl_restart_enable <= _zz_60[0];
            bridge_interruptCtrl_end_enable <= _zz_61[0];
            bridge_interruptCtrl_drop_enable <= _zz_62[0];
            bridge_interruptCtrl_filterGen_enable <= _zz_63[0];
          end
        end
        8'h28 : begin
          if(busCtrl_doWrite)begin
            _zz_10 <= io_apb_PWDATA[9 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge clk) begin
    if(bridge_rxData_event)begin
      case(bridge_addressFilter_state)
        2'b00 : begin
          bridge_addressFilter_byte0 <= bridge_rxData_value;
        end
        2'b01 : begin
          bridge_addressFilter_byte1 <= bridge_rxData_value;
        end
        default : begin
        end
      endcase
    end
    _zz_3_regNext <= _zz_3;
    case(i2cCtrl_io_bus_cmd_kind)
      `I2cSlaveCmdMode_binary_sequential_READ : begin
        if(_zz_19)begin
          bridge_rxData_value[_zz_25] <= i2cCtrl_io_bus_cmd_data;
        end else begin
          bridge_rxAck_value <= i2cCtrl_io_bus_cmd_data;
        end
      end
      default : begin
      end
    endcase
    if(_zz_16)begin
      bridge_txData_disableOnDataConflict <= 1'b0;
      bridge_txAck_disableOnDataConflict <= 1'b0;
    end
    _zz_8_regNext <= _zz_8;
    case(io_apb_PADDR)
      8'h0 : begin
        if(busCtrl_doWrite)begin
          bridge_txData_value <= io_apb_PWDATA[7 : 0];
          bridge_txData_disableOnDataConflict <= _zz_39[0];
        end
      end
      8'h04 : begin
        if(busCtrl_doWrite)begin
          bridge_txAck_value <= _zz_42[0];
          bridge_txAck_disableOnDataConflict <= _zz_44[0];
        end
      end
      8'h88 : begin
        if(busCtrl_doWrite)begin
          bridge_addressFilter_addresses_0_value <= io_apb_PWDATA[9 : 0];
          bridge_addressFilter_addresses_0_is10Bit <= _zz_47[0];
        end
      end
      8'h8c : begin
        if(busCtrl_doWrite)begin
          bridge_addressFilter_addresses_1_value <= io_apb_PWDATA[9 : 0];
          bridge_addressFilter_addresses_1_is10Bit <= _zz_49[0];
        end
      end
      8'h90 : begin
        if(busCtrl_doWrite)begin
          bridge_addressFilter_addresses_2_value <= io_apb_PWDATA[9 : 0];
          bridge_addressFilter_addresses_2_is10Bit <= _zz_51[0];
        end
      end
      8'h94 : begin
        if(busCtrl_doWrite)begin
          bridge_addressFilter_addresses_3_value <= io_apb_PWDATA[9 : 0];
          bridge_addressFilter_addresses_3_is10Bit <= _zz_53[0];
        end
      end
      8'h2c : begin
        if(busCtrl_doWrite)begin
          _zz_11 <= io_apb_PWDATA[19 : 0];
        end
      end
      8'h30 : begin
        if(busCtrl_doWrite)begin
          _zz_12 <= io_apb_PWDATA[5 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module I2cSlave (
  output              io_i2c_sda_write,
  input               io_i2c_sda_read,
  output              io_i2c_scl_write,
  input               io_i2c_scl_read,
  input      [9:0]    io_config_samplingClockDivider,
  input      [19:0]   io_config_timeout,
  input      [5:0]    io_config_tsuData,
  output reg `I2cSlaveCmdMode_binary_sequential_type io_bus_cmd_kind,
  output              io_bus_cmd_data,
  input               io_bus_rsp_valid,
  input               io_bus_rsp_enable,
  input               io_bus_rsp_data,
  output              io_internals_inFrame,
  output              io_internals_sdaRead,
  output              io_internals_sclRead,
  input               clk,
  input               reset
);
  wire                io_i2c_scl_read_buffercc_io_dataOut;
  wire                io_i2c_sda_read_buffercc_io_dataOut;
  wire                _zz_7;
  wire                _zz_8;
  reg        [9:0]    filter_timer_counter;
  wire                filter_timer_tick;
  wire                filter_sampler_sclSync;
  wire                filter_sampler_sdaSync;
  wire                filter_sampler_sclSamples_0;
  wire                filter_sampler_sclSamples_1;
  wire                filter_sampler_sclSamples_2;
  wire                _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;
  wire                filter_sampler_sdaSamples_0;
  wire                filter_sampler_sdaSamples_1;
  wire                filter_sampler_sdaSamples_2;
  wire                _zz_4;
  reg                 _zz_5;
  reg                 _zz_6;
  reg                 filter_sda;
  reg                 filter_scl;
  wire                sclEdge_rise;
  wire                sclEdge_fall;
  wire                sclEdge_toggle;
  reg                 filter_scl_regNext;
  wire                sdaEdge_rise;
  wire                sdaEdge_fall;
  wire                sdaEdge_toggle;
  reg                 filter_sda_regNext;
  wire                detector_start;
  wire                detector_stop;
  reg        [5:0]    tsuData_counter;
  wire                tsuData_done;
  reg                 tsuData_reset;
  reg                 ctrl_inFrame;
  reg                 ctrl_inFrameData;
  reg                 ctrl_sdaWrite;
  reg                 ctrl_sclWrite;
  wire                ctrl_rspBufferIn_valid;
  wire                ctrl_rspBufferIn_ready;
  wire                ctrl_rspBufferIn_payload_enable;
  wire                ctrl_rspBufferIn_payload_data;
  wire                ctrl_rspBuffer_valid;
  reg                 ctrl_rspBuffer_ready;
  wire                ctrl_rspBuffer_payload_enable;
  wire                ctrl_rspBuffer_payload_data;
  reg                 ctrl_rspBufferIn_m2sPipe_rValid;
  reg                 ctrl_rspBufferIn_m2sPipe_rData_enable;
  reg                 ctrl_rspBufferIn_m2sPipe_rData_data;
  wire                ctrl_rspAhead_valid;
  wire                ctrl_rspAhead_payload_enable;
  wire                ctrl_rspAhead_payload_data;
  reg        [19:0]   timeout_counter;
  reg                 timeout_tick;
  `ifndef SYNTHESIS
  reg [55:0] io_bus_cmd_kind_string;
  `endif


  assign _zz_7 = (detector_stop || timeout_tick);
  assign _zz_8 = (sclEdge_toggle || (! ctrl_inFrame));
  BufferCC io_i2c_scl_read_buffercc (
    .io_dataIn     (io_i2c_scl_read                      ), //i
    .io_dataOut    (io_i2c_scl_read_buffercc_io_dataOut  ), //o
    .clk           (clk                                  ), //i
    .reset         (reset                                )  //i
  );
  BufferCC io_i2c_sda_read_buffercc (
    .io_dataIn     (io_i2c_sda_read                      ), //i
    .io_dataOut    (io_i2c_sda_read_buffercc_io_dataOut  ), //o
    .clk           (clk                                  ), //i
    .reset         (reset                                )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_bus_cmd_kind)
      `I2cSlaveCmdMode_binary_sequential_NONE : io_bus_cmd_kind_string = "NONE   ";
      `I2cSlaveCmdMode_binary_sequential_START : io_bus_cmd_kind_string = "START  ";
      `I2cSlaveCmdMode_binary_sequential_RESTART : io_bus_cmd_kind_string = "RESTART";
      `I2cSlaveCmdMode_binary_sequential_STOP : io_bus_cmd_kind_string = "STOP   ";
      `I2cSlaveCmdMode_binary_sequential_DROP : io_bus_cmd_kind_string = "DROP   ";
      `I2cSlaveCmdMode_binary_sequential_DRIVE : io_bus_cmd_kind_string = "DRIVE  ";
      `I2cSlaveCmdMode_binary_sequential_READ : io_bus_cmd_kind_string = "READ   ";
      default : io_bus_cmd_kind_string = "???????";
    endcase
  end
  `endif

  assign filter_timer_tick = (filter_timer_counter == 10'h0);
  assign filter_sampler_sclSync = io_i2c_scl_read_buffercc_io_dataOut;
  assign filter_sampler_sdaSync = io_i2c_sda_read_buffercc_io_dataOut;
  assign _zz_1 = filter_sampler_sclSync;
  assign filter_sampler_sclSamples_0 = _zz_1;
  assign filter_sampler_sclSamples_1 = _zz_2;
  assign filter_sampler_sclSamples_2 = _zz_3;
  assign _zz_4 = filter_sampler_sdaSync;
  assign filter_sampler_sdaSamples_0 = _zz_4;
  assign filter_sampler_sdaSamples_1 = _zz_5;
  assign filter_sampler_sdaSamples_2 = _zz_6;
  assign sclEdge_rise = ((! filter_scl_regNext) && filter_scl);
  assign sclEdge_fall = (filter_scl_regNext && (! filter_scl));
  assign sclEdge_toggle = (filter_scl_regNext != filter_scl);
  assign sdaEdge_rise = ((! filter_sda_regNext) && filter_sda);
  assign sdaEdge_fall = (filter_sda_regNext && (! filter_sda));
  assign sdaEdge_toggle = (filter_sda_regNext != filter_sda);
  assign detector_start = (filter_scl && sdaEdge_fall);
  assign detector_stop = (filter_scl && sdaEdge_rise);
  assign tsuData_done = (tsuData_counter == 6'h0);
  always @ (*) begin
    tsuData_reset = 1'b0;
    if(ctrl_inFrameData)begin
      tsuData_reset = (! ctrl_rspAhead_valid);
    end
  end

  always @ (*) begin
    ctrl_sdaWrite = 1'b1;
    if(ctrl_inFrameData)begin
      if((ctrl_rspAhead_valid && ctrl_rspAhead_payload_enable))begin
        ctrl_sdaWrite = ctrl_rspAhead_payload_data;
      end
    end
  end

  always @ (*) begin
    ctrl_sclWrite = 1'b1;
    if(ctrl_inFrameData)begin
      if(((! ctrl_rspAhead_valid) || (ctrl_rspAhead_payload_enable && (! tsuData_done))))begin
        ctrl_sclWrite = 1'b0;
      end
    end
  end

  assign ctrl_rspBufferIn_ready = ((1'b1 && (! ctrl_rspBuffer_valid)) || ctrl_rspBuffer_ready);
  assign ctrl_rspBuffer_valid = ctrl_rspBufferIn_m2sPipe_rValid;
  assign ctrl_rspBuffer_payload_enable = ctrl_rspBufferIn_m2sPipe_rData_enable;
  assign ctrl_rspBuffer_payload_data = ctrl_rspBufferIn_m2sPipe_rData_data;
  assign ctrl_rspAhead_valid = (ctrl_rspBuffer_valid ? ctrl_rspBuffer_valid : ctrl_rspBufferIn_valid);
  assign ctrl_rspAhead_payload_enable = (ctrl_rspBuffer_valid ? ctrl_rspBuffer_payload_enable : ctrl_rspBufferIn_payload_enable);
  assign ctrl_rspAhead_payload_data = (ctrl_rspBuffer_valid ? ctrl_rspBuffer_payload_data : ctrl_rspBufferIn_payload_data);
  assign ctrl_rspBufferIn_valid = io_bus_rsp_valid;
  assign ctrl_rspBufferIn_payload_enable = io_bus_rsp_enable;
  assign ctrl_rspBufferIn_payload_data = io_bus_rsp_data;
  always @ (*) begin
    ctrl_rspBuffer_ready = 1'b0;
    if(ctrl_inFrame)begin
      if(sclEdge_fall)begin
        ctrl_rspBuffer_ready = 1'b1;
      end
    end
  end

  always @ (*) begin
    io_bus_cmd_kind = `I2cSlaveCmdMode_binary_sequential_NONE;
    if(ctrl_inFrame)begin
      if(sclEdge_rise)begin
        io_bus_cmd_kind = `I2cSlaveCmdMode_binary_sequential_READ;
      end
    end
    if(ctrl_inFrameData)begin
      if(((! ctrl_rspBuffer_valid) || ctrl_rspBuffer_ready))begin
        io_bus_cmd_kind = `I2cSlaveCmdMode_binary_sequential_DRIVE;
      end
    end
    if(detector_start)begin
      io_bus_cmd_kind = (ctrl_inFrame ? `I2cSlaveCmdMode_binary_sequential_RESTART : `I2cSlaveCmdMode_binary_sequential_START);
    end
    if(_zz_7)begin
      if(ctrl_inFrame)begin
        io_bus_cmd_kind = (timeout_tick ? `I2cSlaveCmdMode_binary_sequential_DROP : `I2cSlaveCmdMode_binary_sequential_STOP);
      end
    end
  end

  assign io_bus_cmd_data = filter_sda;
  always @ (*) begin
    timeout_tick = (timeout_counter == 20'h0);
    if(_zz_8)begin
      timeout_tick = 1'b0;
    end
  end

  assign io_internals_inFrame = ctrl_inFrame;
  assign io_internals_sdaRead = filter_sda;
  assign io_internals_sclRead = filter_scl;
  assign io_i2c_scl_write = ctrl_sclWrite;
  assign io_i2c_sda_write = ctrl_sdaWrite;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      filter_timer_counter <= 10'h0;
      _zz_2 <= 1'b1;
      _zz_3 <= 1'b1;
      _zz_5 <= 1'b1;
      _zz_6 <= 1'b1;
      filter_sda <= 1'b1;
      filter_scl <= 1'b1;
      filter_scl_regNext <= 1'b1;
      filter_sda_regNext <= 1'b1;
      tsuData_counter <= 6'h0;
      ctrl_inFrame <= 1'b0;
      ctrl_inFrameData <= 1'b0;
      ctrl_rspBufferIn_m2sPipe_rValid <= 1'b0;
      timeout_counter <= 20'h0;
    end else begin
      filter_timer_counter <= (filter_timer_counter - 10'h001);
      if(filter_timer_tick)begin
        filter_timer_counter <= io_config_samplingClockDivider;
      end
      if(filter_timer_tick)begin
        _zz_2 <= _zz_1;
      end
      if(filter_timer_tick)begin
        _zz_3 <= _zz_2;
      end
      if(filter_timer_tick)begin
        _zz_5 <= _zz_4;
      end
      if(filter_timer_tick)begin
        _zz_6 <= _zz_5;
      end
      if(filter_timer_tick)begin
        if((((filter_sampler_sdaSamples_0 != filter_sda) && (filter_sampler_sdaSamples_1 != filter_sda)) && (filter_sampler_sdaSamples_2 != filter_sda)))begin
          filter_sda <= filter_sampler_sdaSamples_2;
        end
        if((((filter_sampler_sclSamples_0 != filter_scl) && (filter_sampler_sclSamples_1 != filter_scl)) && (filter_sampler_sclSamples_2 != filter_scl)))begin
          filter_scl <= filter_sampler_sclSamples_2;
        end
      end
      filter_scl_regNext <= filter_scl;
      filter_sda_regNext <= filter_sda;
      if((! tsuData_done))begin
        tsuData_counter <= (tsuData_counter - 6'h01);
      end
      if(tsuData_reset)begin
        tsuData_counter <= io_config_tsuData;
      end
      if(ctrl_rspBufferIn_ready)begin
        ctrl_rspBufferIn_m2sPipe_rValid <= ctrl_rspBufferIn_valid;
      end
      if(ctrl_inFrame)begin
        if(sclEdge_fall)begin
          ctrl_inFrameData <= 1'b1;
        end
      end
      if(detector_start)begin
        ctrl_inFrame <= 1'b1;
        ctrl_inFrameData <= 1'b0;
      end
      timeout_counter <= (timeout_counter - 20'h00001);
      if(_zz_8)begin
        timeout_counter <= io_config_timeout;
      end
      if(_zz_7)begin
        ctrl_inFrame <= 1'b0;
        ctrl_inFrameData <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(ctrl_rspBufferIn_ready)begin
      ctrl_rspBufferIn_m2sPipe_rData_enable <= ctrl_rspBufferIn_payload_enable;
      ctrl_rspBufferIn_m2sPipe_rData_data <= ctrl_rspBufferIn_payload_data;
    end
  end


endmodule

//BufferCC replaced by BufferCC

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               clk,
  input               reset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
