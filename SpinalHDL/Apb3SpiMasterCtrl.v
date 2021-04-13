// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : Apb3SpiMasterCtrl
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26


`define SpiMasterCtrlCmdMode_binary_sequential_type [0:0]
`define SpiMasterCtrlCmdMode_binary_sequential_DATA 1'b0
`define SpiMasterCtrlCmdMode_binary_sequential_SS 1'b1


module Apb3SpiMasterCtrl (
  input      [7:0]    io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [31:0]   io_apb_PWDATA,
  output reg [31:0]   io_apb_PRDATA,
  output     [3:0]    io_spi_ss,
  output              io_spi_sclk,
  output              io_spi_mosi,
  input               io_spi_miso,
  output              io_interrupt,
  input               clk,
  input               reset
);
  wire                _zz_11;
  reg                 _zz_12;
  wire                _zz_13;
  wire                spiCtrl_io_cmd_ready;
  wire                spiCtrl_io_rsp_valid;
  wire       [7:0]    spiCtrl_io_rsp_payload;
  wire                spiCtrl_io_spi_sclk;
  wire                spiCtrl_io_spi_mosi;
  wire       [3:0]    spiCtrl_io_spi_ss;
  wire                bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_push_ready;
  wire                bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_mode;
  wire       [8:0]    bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_args;
  wire       [5:0]    bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_occupancy;
  wire       [5:0]    bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability;
  wire                spiCtrl_io_rsp_queueWithOccupancy_io_push_ready;
  wire                spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload;
  wire       [5:0]    spiCtrl_io_rsp_queueWithOccupancy_io_occupancy;
  wire       [5:0]    spiCtrl_io_rsp_queueWithOccupancy_io_availability;
  wire       [2:0]    _zz_14;
  wire       [0:0]    _zz_15;
  wire       [0:0]    _zz_16;
  wire       [0:0]    _zz_17;
  wire       [0:0]    _zz_18;
  wire       [0:0]    _zz_19;
  wire       [0:0]    _zz_20;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  wire                bridge_cmdLogic_streamUnbuffered_valid;
  wire                bridge_cmdLogic_streamUnbuffered_ready;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type bridge_cmdLogic_streamUnbuffered_payload_mode;
  reg        [8:0]    bridge_cmdLogic_streamUnbuffered_payload_args;
  reg                 _zz_1;
  wire       [7:0]    bridge_cmdLogic_dataCmd_data;
  wire                bridge_cmdLogic_dataCmd_read;
  reg                 bridge_interruptCtrl_cmdIntEnable;
  reg                 bridge_interruptCtrl_rspIntEnable;
  wire                bridge_interruptCtrl_cmdInt;
  wire                bridge_interruptCtrl_rspInt;
  wire                bridge_interruptCtrl_interrupt;
  reg                 _zz_2;
  reg                 _zz_3;
  reg        [11:0]   _zz_4;
  reg        [3:0]    _zz_5;
  reg        [11:0]   _zz_6;
  reg        [11:0]   _zz_7;
  reg        [11:0]   _zz_8;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type _zz_9;
  wire       [1:0]    _zz_10;
  `ifndef SYNTHESIS
  reg [31:0] bridge_cmdLogic_streamUnbuffered_payload_mode_string;
  reg [31:0] _zz_9_string;
  `endif


  assign _zz_14 = {io_apb_PWDATA[1 : 0],_zz_15[0]};
  assign _zz_15 = io_apb_PWDATA[24 : 24];
  assign _zz_16 = io_apb_PWDATA[24 : 24];
  assign _zz_17 = io_apb_PWDATA[0 : 0];
  assign _zz_18 = io_apb_PWDATA[1 : 1];
  assign _zz_19 = _zz_10[0 : 0];
  assign _zz_20 = _zz_10[1 : 1];
  SpiMasterCtrl spiCtrl (
    .io_config_kind_cpol        (_zz_2                                                                            ), //i
    .io_config_kind_cpha        (_zz_3                                                                            ), //i
    .io_config_sclkToogle       (_zz_4[11:0]                                                                      ), //i
    .io_config_ss_activeHigh    (_zz_5[3:0]                                                                       ), //i
    .io_config_ss_setup         (_zz_6[11:0]                                                                      ), //i
    .io_config_ss_hold          (_zz_7[11:0]                                                                      ), //i
    .io_config_ss_disable       (_zz_8[11:0]                                                                      ), //i
    .io_cmd_valid               (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid              ), //i
    .io_cmd_ready               (spiCtrl_io_cmd_ready                                                             ), //o
    .io_cmd_payload_mode        (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_mode       ), //i
    .io_cmd_payload_args        (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_args[8:0]  ), //i
    .io_rsp_valid               (spiCtrl_io_rsp_valid                                                             ), //o
    .io_rsp_payload             (spiCtrl_io_rsp_payload[7:0]                                                      ), //o
    .io_spi_ss                  (spiCtrl_io_spi_ss[3:0]                                                           ), //o
    .io_spi_sclk                (spiCtrl_io_spi_sclk                                                              ), //o
    .io_spi_mosi                (spiCtrl_io_spi_mosi                                                              ), //o
    .io_spi_miso                (io_spi_miso                                                                      ), //i
    .clk                        (clk                                                                              ), //i
    .reset                      (reset                                                                            )  //i
  );
  StreamFifo bridge_cmdLogic_streamUnbuffered_queueWithAvailability (
    .io_push_valid           (bridge_cmdLogic_streamUnbuffered_valid                                           ), //i
    .io_push_ready           (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_push_ready             ), //o
    .io_push_payload_mode    (bridge_cmdLogic_streamUnbuffered_payload_mode                                    ), //i
    .io_push_payload_args    (bridge_cmdLogic_streamUnbuffered_payload_args[8:0]                               ), //i
    .io_pop_valid            (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid              ), //o
    .io_pop_ready            (spiCtrl_io_cmd_ready                                                             ), //i
    .io_pop_payload_mode     (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_mode       ), //o
    .io_pop_payload_args     (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_payload_args[8:0]  ), //o
    .io_flush                (_zz_11                                                                           ), //i
    .io_occupancy            (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_occupancy[5:0]         ), //o
    .io_availability         (bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability[5:0]      ), //o
    .clk                     (clk                                                                              ), //i
    .reset                   (reset                                                                            )  //i
  );
  StreamFifo_1 spiCtrl_io_rsp_queueWithOccupancy (
    .io_push_valid      (spiCtrl_io_rsp_valid                                    ), //i
    .io_push_ready      (spiCtrl_io_rsp_queueWithOccupancy_io_push_ready         ), //o
    .io_push_payload    (spiCtrl_io_rsp_payload[7:0]                             ), //i
    .io_pop_valid       (spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid          ), //o
    .io_pop_ready       (_zz_12                                                  ), //i
    .io_pop_payload     (spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload[7:0]   ), //o
    .io_flush           (_zz_13                                                  ), //i
    .io_occupancy       (spiCtrl_io_rsp_queueWithOccupancy_io_occupancy[5:0]     ), //o
    .io_availability    (spiCtrl_io_rsp_queueWithOccupancy_io_availability[5:0]  ), //o
    .clk                (clk                                                     ), //i
    .reset              (reset                                                   )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(bridge_cmdLogic_streamUnbuffered_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : bridge_cmdLogic_streamUnbuffered_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : bridge_cmdLogic_streamUnbuffered_payload_mode_string = "SS  ";
      default : bridge_cmdLogic_streamUnbuffered_payload_mode_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_9)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : _zz_9_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : _zz_9_string = "SS  ";
      default : _zz_9_string = "????";
    endcase
  end
  `endif

  assign io_spi_ss = spiCtrl_io_spi_ss;
  assign io_spi_sclk = spiCtrl_io_spi_sclk;
  assign io_spi_mosi = spiCtrl_io_spi_mosi;
  assign io_apb_PREADY = 1'b1;
  always @ (*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      8'h0 : begin
        io_apb_PRDATA[31 : 31] = (spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid ^ 1'b0);
        io_apb_PRDATA[7 : 0] = spiCtrl_io_rsp_queueWithOccupancy_io_pop_payload;
        io_apb_PRDATA[21 : 16] = spiCtrl_io_rsp_queueWithOccupancy_io_occupancy;
      end
      8'h04 : begin
        io_apb_PRDATA[21 : 16] = bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_availability;
        io_apb_PRDATA[0 : 0] = bridge_interruptCtrl_cmdIntEnable;
        io_apb_PRDATA[1 : 1] = bridge_interruptCtrl_rspIntEnable;
        io_apb_PRDATA[8 : 8] = bridge_interruptCtrl_cmdInt;
        io_apb_PRDATA[9 : 9] = bridge_interruptCtrl_rspInt;
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
      8'h0 : begin
        if(busCtrl_doWrite)begin
          _zz_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_cmdLogic_streamUnbuffered_valid = _zz_1;
  always @ (*) begin
    case(bridge_cmdLogic_streamUnbuffered_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : begin
        bridge_cmdLogic_streamUnbuffered_payload_args = {bridge_cmdLogic_dataCmd_read,bridge_cmdLogic_dataCmd_data};
      end
      default : begin
        bridge_cmdLogic_streamUnbuffered_payload_args = {6'd0, _zz_14};
      end
    endcase
  end

  assign bridge_cmdLogic_streamUnbuffered_ready = bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_push_ready;
  always @ (*) begin
    _zz_12 = 1'b0;
    case(io_apb_PADDR)
      8'h0 : begin
        if(busCtrl_doRead)begin
          _zz_12 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_interruptCtrl_cmdInt = (bridge_interruptCtrl_cmdIntEnable && (! bridge_cmdLogic_streamUnbuffered_queueWithAvailability_io_pop_valid));
  assign bridge_interruptCtrl_rspInt = (bridge_interruptCtrl_rspIntEnable && spiCtrl_io_rsp_queueWithOccupancy_io_pop_valid);
  assign bridge_interruptCtrl_interrupt = (bridge_interruptCtrl_rspInt || bridge_interruptCtrl_cmdInt);
  assign io_interrupt = bridge_interruptCtrl_interrupt;
  assign bridge_cmdLogic_dataCmd_data = io_apb_PWDATA[7 : 0];
  assign bridge_cmdLogic_dataCmd_read = _zz_16[0];
  assign _zz_9 = io_apb_PWDATA[28 : 28];
  assign bridge_cmdLogic_streamUnbuffered_payload_mode = _zz_9;
  assign _zz_10 = io_apb_PWDATA[1 : 0];
  assign _zz_11 = 1'b0;
  assign _zz_13 = 1'b0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      bridge_interruptCtrl_cmdIntEnable <= 1'b0;
      bridge_interruptCtrl_rspIntEnable <= 1'b0;
      _zz_5 <= 4'b0000;
    end else begin
      case(io_apb_PADDR)
        8'h04 : begin
          if(busCtrl_doWrite)begin
            bridge_interruptCtrl_cmdIntEnable <= _zz_17[0];
            bridge_interruptCtrl_rspIntEnable <= _zz_18[0];
          end
        end
        8'h08 : begin
          if(busCtrl_doWrite)begin
            _zz_5 <= io_apb_PWDATA[7 : 4];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (posedge clk) begin
    case(io_apb_PADDR)
      8'h08 : begin
        if(busCtrl_doWrite)begin
          _zz_2 <= _zz_19[0];
          _zz_3 <= _zz_20[0];
        end
      end
      8'h0c : begin
        if(busCtrl_doWrite)begin
          _zz_4 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h10 : begin
        if(busCtrl_doWrite)begin
          _zz_6 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h14 : begin
        if(busCtrl_doWrite)begin
          _zz_7 <= io_apb_PWDATA[11 : 0];
        end
      end
      8'h18 : begin
        if(busCtrl_doWrite)begin
          _zz_8 <= io_apb_PWDATA[11 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module StreamFifo_1 (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload,
  input               io_flush,
  output     [5:0]    io_occupancy,
  output     [5:0]    io_availability,
  input               clk,
  input               reset
);
  reg        [7:0]    _zz_3;
  wire       [0:0]    _zz_4;
  wire       [4:0]    _zz_5;
  wire       [0:0]    _zz_6;
  wire       [4:0]    _zz_7;
  wire       [4:0]    _zz_8;
  wire                _zz_9;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [4:0]    logic_pushPtr_valueNext;
  reg        [4:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [4:0]    logic_popPtr_valueNext;
  reg        [4:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_2;
  wire       [4:0]    logic_ptrDif;
  reg [7:0] logic_ram [0:31];

  assign _zz_4 = logic_pushPtr_willIncrement;
  assign _zz_5 = {4'd0, _zz_4};
  assign _zz_6 = logic_popPtr_willIncrement;
  assign _zz_7 = {4'd0, _zz_6};
  assign _zz_8 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_9 = 1'b1;
  always @ (posedge clk) begin
    if(_zz_9) begin
      _zz_3 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge clk) begin
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

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 5'h1f);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @ (*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_5);
    if(logic_pushPtr_willClear)begin
      logic_pushPtr_valueNext = 5'h0;
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

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 5'h1f);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @ (*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_7);
    if(logic_popPtr_willClear)begin
      logic_popPtr_valueNext = 5'h0;
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
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      logic_pushPtr_value <= 5'h0;
      logic_popPtr_value <= 5'h0;
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

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      `SpiMasterCtrlCmdMode_binary_sequential_type io_push_payload_mode,
  input      [8:0]    io_push_payload_args,
  output              io_pop_valid,
  input               io_pop_ready,
  output     `SpiMasterCtrlCmdMode_binary_sequential_type io_pop_payload_mode,
  output     [8:0]    io_pop_payload_args,
  input               io_flush,
  output     [5:0]    io_occupancy,
  output     [5:0]    io_availability,
  input               clk,
  input               reset
);
  reg        [9:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [4:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [4:0]    _zz_10;
  wire       [4:0]    _zz_11;
  wire                _zz_12;
  wire       [9:0]    _zz_13;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [4:0]    logic_pushPtr_valueNext;
  reg        [4:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [4:0]    logic_popPtr_valueNext;
  reg        [4:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_2;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type _zz_3;
  wire       [9:0]    _zz_4;
  wire       `SpiMasterCtrlCmdMode_binary_sequential_type _zz_5;
  wire       [4:0]    logic_ptrDif;
  `ifndef SYNTHESIS
  reg [31:0] io_push_payload_mode_string;
  reg [31:0] io_pop_payload_mode_string;
  reg [31:0] _zz_3_string;
  reg [31:0] _zz_5_string;
  `endif

  reg [9:0] logic_ram [0:31];

  assign _zz_7 = logic_pushPtr_willIncrement;
  assign _zz_8 = {4'd0, _zz_7};
  assign _zz_9 = logic_popPtr_willIncrement;
  assign _zz_10 = {4'd0, _zz_9};
  assign _zz_11 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_12 = 1'b1;
  assign _zz_13 = {io_push_payload_args,io_push_payload_mode};
  always @ (posedge clk) begin
    if(_zz_12) begin
      _zz_6 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= _zz_13;
    end
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(io_push_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : io_push_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : io_push_payload_mode_string = "SS  ";
      default : io_push_payload_mode_string = "????";
    endcase
  end
  always @(*) begin
    case(io_pop_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : io_pop_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : io_pop_payload_mode_string = "SS  ";
      default : io_pop_payload_mode_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_3)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : _zz_3_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : _zz_3_string = "SS  ";
      default : _zz_3_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_5)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : _zz_5_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : _zz_5_string = "SS  ";
      default : _zz_5_string = "????";
    endcase
  end
  `endif

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

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 5'h1f);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @ (*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_8);
    if(logic_pushPtr_willClear)begin
      logic_pushPtr_valueNext = 5'h0;
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

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 5'h1f);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @ (*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_10);
    if(logic_popPtr_willClear)begin
      logic_popPtr_valueNext = 5'h0;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_2 && (! logic_full))));
  assign _zz_4 = _zz_6;
  assign _zz_5 = _zz_4[0 : 0];
  assign _zz_3 = _zz_5;
  assign io_pop_payload_mode = _zz_3;
  assign io_pop_payload_args = _zz_4[9 : 1];
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_11};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      logic_pushPtr_value <= 5'h0;
      logic_popPtr_value <= 5'h0;
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

module SpiMasterCtrl (
  input               io_config_kind_cpol,
  input               io_config_kind_cpha,
  input      [11:0]   io_config_sclkToogle,
  input      [3:0]    io_config_ss_activeHigh,
  input      [11:0]   io_config_ss_setup,
  input      [11:0]   io_config_ss_hold,
  input      [11:0]   io_config_ss_disable,
  input               io_cmd_valid,
  output reg          io_cmd_ready,
  input      `SpiMasterCtrlCmdMode_binary_sequential_type io_cmd_payload_mode,
  input      [8:0]    io_cmd_payload_args,
  output              io_rsp_valid,
  output     [7:0]    io_rsp_payload,
  output     [3:0]    io_spi_ss,
  output              io_spi_sclk,
  output              io_spi_mosi,
  input               io_spi_miso,
  input               clk,
  input               reset
);
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  wire       [0:0]    _zz_8;
  wire       [3:0]    _zz_9;
  wire       [8:0]    _zz_10;
  wire       [0:0]    _zz_11;
  wire       [0:0]    _zz_12;
  wire       [7:0]    _zz_13;
  wire       [2:0]    _zz_14;
  wire       [2:0]    _zz_15;
  reg        [11:0]   timer_counter;
  reg                 timer_reset;
  wire                timer_ss_setupHit;
  wire                timer_ss_holdHit;
  wire                timer_ss_disableHit;
  wire                timer_sclkToogleHit;
  reg                 fsm_counter_willIncrement;
  wire                fsm_counter_willClear;
  reg        [3:0]    fsm_counter_valueNext;
  reg        [3:0]    fsm_counter_value;
  wire                fsm_counter_willOverflowIfInc;
  wire                fsm_counter_willOverflow;
  reg        [7:0]    fsm_buffer;
  reg        [3:0]    fsm_ss;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;
  `ifndef SYNTHESIS
  reg [31:0] io_cmd_payload_mode_string;
  `endif


  assign _zz_4 = (io_cmd_payload_mode == `SpiMasterCtrlCmdMode_binary_sequential_DATA);
  assign _zz_5 = _zz_11[0];
  assign _zz_6 = (! fsm_counter_value[0]);
  assign _zz_7 = ((! io_cmd_valid) || io_cmd_ready);
  assign _zz_8 = fsm_counter_willIncrement;
  assign _zz_9 = {3'd0, _zz_8};
  assign _zz_10 = {fsm_buffer,io_spi_miso};
  assign _zz_11 = io_cmd_payload_args[0 : 0];
  assign _zz_12 = io_cmd_payload_args[8 : 8];
  assign _zz_13 = io_cmd_payload_args[7 : 0];
  assign _zz_14 = (3'b111 - _zz_15);
  assign _zz_15 = (fsm_counter_value >>> 1);
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_cmd_payload_mode)
      `SpiMasterCtrlCmdMode_binary_sequential_DATA : io_cmd_payload_mode_string = "DATA";
      `SpiMasterCtrlCmdMode_binary_sequential_SS : io_cmd_payload_mode_string = "SS  ";
      default : io_cmd_payload_mode_string = "????";
    endcase
  end
  `endif

  always @ (*) begin
    timer_reset = 1'b0;
    if(io_cmd_valid)begin
      if(_zz_4)begin
        if(timer_sclkToogleHit)begin
          timer_reset = 1'b1;
        end
      end else begin
        if(! _zz_5) begin
          if(_zz_6)begin
            if(timer_ss_holdHit)begin
              timer_reset = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_7)begin
      timer_reset = 1'b1;
    end
  end

  assign timer_ss_setupHit = (timer_counter == io_config_ss_setup);
  assign timer_ss_holdHit = (timer_counter == io_config_ss_hold);
  assign timer_ss_disableHit = (timer_counter == io_config_ss_disable);
  assign timer_sclkToogleHit = (timer_counter == io_config_sclkToogle);
  always @ (*) begin
    fsm_counter_willIncrement = 1'b0;
    if(io_cmd_valid)begin
      if(_zz_4)begin
        if(timer_sclkToogleHit)begin
          fsm_counter_willIncrement = 1'b1;
        end
      end else begin
        if(! _zz_5) begin
          if(_zz_6)begin
            if(timer_ss_holdHit)begin
              fsm_counter_willIncrement = 1'b1;
            end
          end
        end
      end
    end
  end

  assign fsm_counter_willClear = 1'b0;
  assign fsm_counter_willOverflowIfInc = (fsm_counter_value == 4'b1111);
  assign fsm_counter_willOverflow = (fsm_counter_willOverflowIfInc && fsm_counter_willIncrement);
  always @ (*) begin
    fsm_counter_valueNext = (fsm_counter_value + _zz_9);
    if(fsm_counter_willClear)begin
      fsm_counter_valueNext = 4'b0000;
    end
  end

  always @ (*) begin
    io_cmd_ready = 1'b0;
    if(io_cmd_valid)begin
      if(_zz_4)begin
        if(timer_sclkToogleHit)begin
          io_cmd_ready = fsm_counter_willOverflowIfInc;
        end
      end else begin
        if(_zz_5)begin
          if(timer_ss_setupHit)begin
            io_cmd_ready = 1'b1;
          end
        end else begin
          if(! _zz_6) begin
            if(timer_ss_disableHit)begin
              io_cmd_ready = 1'b1;
            end
          end
        end
      end
    end
  end

  assign io_rsp_valid = _zz_1;
  assign io_rsp_payload = fsm_buffer;
  assign io_spi_ss = (fsm_ss ^ io_config_ss_activeHigh);
  assign io_spi_sclk = _zz_2;
  assign io_spi_mosi = _zz_3;
  always @ (posedge clk) begin
    timer_counter <= (timer_counter + 12'h001);
    if(timer_reset)begin
      timer_counter <= 12'h0;
    end
    if(io_cmd_valid)begin
      if(_zz_4)begin
        if(timer_sclkToogleHit)begin
          if(fsm_counter_value[0])begin
            fsm_buffer <= _zz_10[7:0];
          end
        end
      end
    end
    _zz_2 <= (((io_cmd_valid && (io_cmd_payload_mode == `SpiMasterCtrlCmdMode_binary_sequential_DATA)) && (fsm_counter_value[0] ^ io_config_kind_cpha)) ^ io_config_kind_cpol);
    _zz_3 <= _zz_13[_zz_14];
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      fsm_counter_value <= 4'b0000;
      fsm_ss <= 4'b1111;
      _zz_1 <= 1'b0;
    end else begin
      fsm_counter_value <= fsm_counter_valueNext;
      if(io_cmd_valid)begin
        if(! _zz_4) begin
          if(_zz_5)begin
            fsm_ss[io_cmd_payload_args[2 : 1]] <= 1'b0;
          end else begin
            if(! _zz_6) begin
              fsm_ss[io_cmd_payload_args[2 : 1]] <= 1'b1;
            end
          end
        end
      end
      _zz_1 <= (((io_cmd_valid && io_cmd_ready) && (io_cmd_payload_mode == `SpiMasterCtrlCmdMode_binary_sequential_DATA)) && _zz_12[0]);
      if(_zz_7)begin
        fsm_counter_value <= 4'b0000;
      end
    end
  end


endmodule
