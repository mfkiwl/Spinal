// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : BmbBsbToDeltaSigma
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module BmbBsbToDeltaSigma (
  input               io_ctrl_cmd_valid,
  output              io_ctrl_cmd_ready,
  input               io_ctrl_cmd_payload_last,
  input      [0:0]    io_ctrl_cmd_payload_fragment_opcode,
  input      [11:0]   io_ctrl_cmd_payload_fragment_address,
  input      [1:0]    io_ctrl_cmd_payload_fragment_length,
  input      [31:0]   io_ctrl_cmd_payload_fragment_data,
  input      [3:0]    io_ctrl_cmd_payload_fragment_mask,
  input      [3:0]    io_ctrl_cmd_payload_fragment_context,
  output              io_ctrl_rsp_valid,
  input               io_ctrl_rsp_ready,
  output              io_ctrl_rsp_payload_last,
  output     [0:0]    io_ctrl_rsp_payload_fragment_opcode,
  output     [31:0]   io_ctrl_rsp_payload_fragment_data,
  output     [3:0]    io_ctrl_rsp_payload_fragment_context,
  input               io_input_valid,
  output              io_input_ready,
  input      [31:0]   io_input_payload_data,
  input      [3:0]    io_input_payload_mask,
  input               io_input_payload_last,
  output     [1:0]    io_outputs,
  input               clk,
  input               reset
);
  wire                core_io_input_ready;
  wire       [1:0]    core_io_outputs;
  wire                ctrl_readHaltTrigger;
  wire                ctrl_writeHaltTrigger;
  wire                ctrl_rsp_valid;
  wire                ctrl_rsp_ready;
  wire                ctrl_rsp_payload_last;
  wire       [0:0]    ctrl_rsp_payload_fragment_opcode;
  wire       [31:0]   ctrl_rsp_payload_fragment_data;
  wire       [3:0]    ctrl_rsp_payload_fragment_context;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  reg                 _zz_4;
  reg                 _zz_5;
  reg        [0:0]    _zz_6;
  reg        [31:0]   _zz_7;
  reg        [3:0]    _zz_8;
  wire                ctrl_askWrite;
  wire                ctrl_askRead;
  wire                ctrl_doWrite;
  wire                ctrl_doRead;
  reg        [1:0]    _zz_9;
  reg        [11:0]   _zz_10;

  BsbToDeltaSigma core (
    .io_channelCount          (_zz_9[1:0]                   ), //i
    .io_rate                  (_zz_10[11:0]                 ), //i
    .io_input_valid           (io_input_valid               ), //i
    .io_input_ready           (core_io_input_ready          ), //o
    .io_input_payload_data    (io_input_payload_data[31:0]  ), //i
    .io_input_payload_mask    (io_input_payload_mask[3:0]   ), //i
    .io_input_payload_last    (io_input_payload_last        ), //i
    .io_outputs               (core_io_outputs[1:0]         ), //o
    .clk                      (clk                          ), //i
    .reset                    (reset                        )  //i
  );
  assign ctrl_readHaltTrigger = 1'b0;
  assign ctrl_writeHaltTrigger = 1'b0;
  assign _zz_1 = (! (ctrl_readHaltTrigger || ctrl_writeHaltTrigger));
  assign ctrl_rsp_ready = (_zz_2 && _zz_1);
  assign _zz_2 = ((1'b1 && (! _zz_3)) || io_ctrl_rsp_ready);
  assign _zz_3 = _zz_4;
  assign io_ctrl_rsp_valid = _zz_3;
  assign io_ctrl_rsp_payload_last = _zz_5;
  assign io_ctrl_rsp_payload_fragment_opcode = _zz_6;
  assign io_ctrl_rsp_payload_fragment_data = _zz_7;
  assign io_ctrl_rsp_payload_fragment_context = _zz_8;
  assign ctrl_askWrite = (io_ctrl_cmd_valid && (io_ctrl_cmd_payload_fragment_opcode == 1'b1));
  assign ctrl_askRead = (io_ctrl_cmd_valid && (io_ctrl_cmd_payload_fragment_opcode == 1'b0));
  assign ctrl_doWrite = ((io_ctrl_cmd_valid && io_ctrl_cmd_ready) && (io_ctrl_cmd_payload_fragment_opcode == 1'b1));
  assign ctrl_doRead = ((io_ctrl_cmd_valid && io_ctrl_cmd_ready) && (io_ctrl_cmd_payload_fragment_opcode == 1'b0));
  assign ctrl_rsp_valid = io_ctrl_cmd_valid;
  assign io_ctrl_cmd_ready = ctrl_rsp_ready;
  assign ctrl_rsp_payload_last = 1'b1;
  assign ctrl_rsp_payload_fragment_opcode = 1'b0;
  assign ctrl_rsp_payload_fragment_data = 32'h0;
  assign ctrl_rsp_payload_fragment_context = io_ctrl_cmd_payload_fragment_context;
  assign io_input_ready = core_io_input_ready;
  assign io_outputs = core_io_outputs;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_4 <= 1'b0;
    end else begin
      if(_zz_2)begin
        _zz_4 <= (ctrl_rsp_valid && _zz_1);
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_2)begin
      _zz_5 <= ctrl_rsp_payload_last;
      _zz_6 <= ctrl_rsp_payload_fragment_opcode;
      _zz_7 <= ctrl_rsp_payload_fragment_data;
      _zz_8 <= ctrl_rsp_payload_fragment_context;
    end
    case(io_ctrl_cmd_payload_fragment_address)
      12'h010 : begin
        if(ctrl_doWrite)begin
          _zz_9 <= io_ctrl_cmd_payload_fragment_data[1 : 0];
        end
      end
      12'h014 : begin
        if(ctrl_doWrite)begin
          _zz_10 <= io_ctrl_cmd_payload_fragment_data[11 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module BsbToDeltaSigma (
  input      [1:0]    io_channelCount,
  input      [11:0]   io_rate,
  input               io_input_valid,
  output              io_input_ready,
  input      [31:0]   io_input_payload_data,
  input      [3:0]    io_input_payload_mask,
  input               io_input_payload_last,
  output reg [1:0]    io_outputs,
  input               clk,
  input               reset
);
  wire       [0:0]    _zz_1;
  reg                 _zz_2;
  wire       [15:0]   _zz_3;
  wire       [15:0]   _zz_4;
  wire                decoder_downSizer_io_input_ready;
  wire                decoder_downSizer_io_output_valid;
  wire       [31:0]   decoder_downSizer_io_output_payload_data;
  wire       [3:0]    decoder_downSizer_io_output_payload_mask;
  wire                decoder_downSizer_io_output_payload_last;
  wire                channels_0_toSigmaDelta_io_output;
  wire                channels_1_toSigmaDelta_io_output;
  wire                _zz_5;
  wire       [1:0]    _zz_6;
  reg                 decoder_downSizer_io_output_thrown_valid;
  wire                decoder_downSizer_io_output_thrown_ready;
  wire       [31:0]   decoder_downSizer_io_output_thrown_payload_data;
  wire       [3:0]    decoder_downSizer_io_output_thrown_payload_mask;
  wire                decoder_downSizer_io_output_thrown_payload_last;
  wire                decoder_toStream_valid;
  wire                decoder_toStream_ready;
  wire       [31:0]   decoder_toStream_payload;
  wire                decoder_output_valid;
  wire                decoder_output_ready;
  reg        [15:0]   decoder_output_payload_0;
  reg        [15:0]   decoder_output_payload_1;
  wire                decoder_adapter_valid;
  wire                decoder_adapter_ready;
  wire       [15:0]   decoder_adapter_payload_0;
  wire       [15:0]   decoder_adapter_payload_1;
  reg        [11:0]   sampler_counter = 12'b000000000000;
  wire                sampler_fire;
  wire                decoder_output_m2sPipe_valid;
  wire                decoder_output_m2sPipe_ready;
  wire       [15:0]   decoder_output_m2sPipe_payload_0;
  wire       [15:0]   decoder_output_m2sPipe_payload_1;
  reg                 decoder_output_m2sPipe_rValid;
  reg        [15:0]   decoder_output_m2sPipe_rData_0;
  reg        [15:0]   decoder_output_m2sPipe_rData_1;
  reg        [15:0]   sampler_state_0;
  reg        [15:0]   sampler_state_1;
  reg                 channels_0_buffer;
  reg                 channels_1_buffer;

  assign _zz_5 = (! decoder_downSizer_io_output_payload_mask[0]);
  assign _zz_6 = (io_channelCount - 2'b01);
  BsbDownSizerAlignedMultiWidth decoder_downSizer (
    .io_sel                    (_zz_1                                           ), //i
    .io_input_valid            (io_input_valid                                  ), //i
    .io_input_ready            (decoder_downSizer_io_input_ready                ), //o
    .io_input_payload_data     (io_input_payload_data[31:0]                     ), //i
    .io_input_payload_mask     (io_input_payload_mask[3:0]                      ), //i
    .io_input_payload_last     (io_input_payload_last                           ), //i
    .io_output_valid           (decoder_downSizer_io_output_valid               ), //o
    .io_output_ready           (_zz_2                                           ), //i
    .io_output_payload_data    (decoder_downSizer_io_output_payload_data[31:0]  ), //o
    .io_output_payload_mask    (decoder_downSizer_io_output_payload_mask[3:0]   ), //o
    .io_output_payload_last    (decoder_downSizer_io_output_payload_last        ), //o
    .clk                       (clk                                             ), //i
    .reset                     (reset                                           )  //i
  );
  UIntToSigmaDeltaFirstOrder channels_0_toSigmaDelta (
    .io_input     (_zz_3[15:0]                        ), //i
    .io_output    (channels_0_toSigmaDelta_io_output  ), //o
    .clk          (clk                                ), //i
    .reset        (reset                              )  //i
  );
  UIntToSigmaDeltaFirstOrder channels_1_toSigmaDelta (
    .io_input     (_zz_4[15:0]                        ), //i
    .io_output    (channels_1_toSigmaDelta_io_output  ), //o
    .clk          (clk                                ), //i
    .reset        (reset                              )  //i
  );
  assign _zz_1 = _zz_6[0:0];
  assign io_input_ready = decoder_downSizer_io_input_ready;
  always @ (*) begin
    decoder_downSizer_io_output_thrown_valid = decoder_downSizer_io_output_valid;
    if(_zz_5)begin
      decoder_downSizer_io_output_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_2 = decoder_downSizer_io_output_thrown_ready;
    if(_zz_5)begin
      _zz_2 = 1'b1;
    end
  end

  assign decoder_downSizer_io_output_thrown_payload_data = decoder_downSizer_io_output_payload_data;
  assign decoder_downSizer_io_output_thrown_payload_mask = decoder_downSizer_io_output_payload_mask;
  assign decoder_downSizer_io_output_thrown_payload_last = decoder_downSizer_io_output_payload_last;
  assign decoder_toStream_valid = decoder_downSizer_io_output_thrown_valid;
  assign decoder_downSizer_io_output_thrown_ready = decoder_toStream_ready;
  assign decoder_toStream_payload = decoder_downSizer_io_output_thrown_payload_data;
  assign decoder_adapter_valid = decoder_toStream_valid;
  assign decoder_toStream_ready = decoder_adapter_ready;
  assign decoder_adapter_payload_0 = decoder_toStream_payload[15 : 0];
  assign decoder_adapter_payload_1 = decoder_toStream_payload[31 : 16];
  assign decoder_output_valid = decoder_adapter_valid;
  assign decoder_adapter_ready = decoder_output_ready;
  always @ (*) begin
    decoder_output_payload_0 = 16'h0;
    case(io_channelCount)
      2'b01 : begin
        decoder_output_payload_0 = decoder_adapter_payload_0;
      end
      2'b10 : begin
        decoder_output_payload_0 = decoder_adapter_payload_0;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    decoder_output_payload_1 = 16'h0;
    case(io_channelCount)
      2'b01 : begin
        decoder_output_payload_1 = decoder_adapter_payload_0;
      end
      2'b10 : begin
        decoder_output_payload_1 = decoder_adapter_payload_1;
      end
      default : begin
      end
    endcase
  end

  assign sampler_fire = ((sampler_counter == io_rate) || (io_channelCount == 2'b00));
  assign decoder_output_ready = ((1'b1 && (! decoder_output_m2sPipe_valid)) || decoder_output_m2sPipe_ready);
  assign decoder_output_m2sPipe_valid = decoder_output_m2sPipe_rValid;
  assign decoder_output_m2sPipe_payload_0 = decoder_output_m2sPipe_rData_0;
  assign decoder_output_m2sPipe_payload_1 = decoder_output_m2sPipe_rData_1;
  assign decoder_output_m2sPipe_ready = (1'b1 && sampler_fire);
  assign _zz_3 = (sampler_state_0 ^ 16'h8000);
  always @ (*) begin
    io_outputs[0] = channels_0_buffer;
    io_outputs[1] = channels_1_buffer;
  end

  assign _zz_4 = (sampler_state_1 ^ 16'h8000);
  always @ (posedge clk) begin
    sampler_counter <= (sampler_counter + 12'h001);
    if(sampler_fire)begin
      sampler_counter <= 12'h0;
    end
    if(decoder_output_ready)begin
      decoder_output_m2sPipe_rData_0 <= decoder_output_payload_0;
      decoder_output_m2sPipe_rData_1 <= decoder_output_payload_1;
    end
    if((decoder_output_m2sPipe_valid && sampler_fire))begin
      sampler_state_0 <= decoder_output_m2sPipe_payload_0;
      sampler_state_1 <= decoder_output_m2sPipe_payload_1;
    end
    channels_0_buffer <= (channels_0_toSigmaDelta_io_output && (io_channelCount != 2'b00));
    channels_1_buffer <= (channels_1_toSigmaDelta_io_output && (io_channelCount != 2'b00));
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      decoder_output_m2sPipe_rValid <= 1'b0;
    end else begin
      if(decoder_output_ready)begin
        decoder_output_m2sPipe_rValid <= decoder_output_valid;
      end
    end
  end


endmodule

//UIntToSigmaDeltaFirstOrder replaced by UIntToSigmaDeltaFirstOrder

module UIntToSigmaDeltaFirstOrder (
  input      [15:0]   io_input,
  output              io_output,
  input               clk,
  input               reset
);
  wire       [0:0]    _zz_1;
  wire       [1:0]    _zz_2;
  wire       [15:0]   _zz_3;
  reg        [16:0]   accumulator = 17'b00000000000000000;
  wire                counter_willIncrement;
  wire                counter_willClear;
  reg        [1:0]    counter_valueNext;
  reg        [1:0]    counter_value;
  wire                counter_willOverflowIfInc;
  wire                counter_willOverflow;
  wire       [2:0]    symbol;

  assign _zz_1 = counter_willIncrement;
  assign _zz_2 = {1'd0, _zz_1};
  assign _zz_3 = accumulator[15:0];
  assign counter_willClear = 1'b0;
  assign counter_willOverflowIfInc = (counter_value == 2'b10);
  assign counter_willOverflow = (counter_willOverflowIfInc && counter_willIncrement);
  always @ (*) begin
    if(counter_willOverflow)begin
      counter_valueNext = 2'b00;
    end else begin
      counter_valueNext = (counter_value + _zz_2);
    end
    if(counter_willClear)begin
      counter_valueNext = 2'b00;
    end
  end

  assign counter_willIncrement = 1'b1;
  assign symbol = (accumulator[16] ? 3'b110 : 3'b100);
  assign io_output = symbol[counter_value];
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      counter_value <= 2'b00;
    end else begin
      counter_value <= counter_valueNext;
    end
  end

  always @ (posedge clk) begin
    if((counter_value == 2'b10))begin
      accumulator <= ({1'b0,_zz_3} + {1'b0,io_input});
    end
  end


endmodule

module BsbDownSizerAlignedMultiWidth (
  input      [0:0]    io_sel,
  input               io_input_valid,
  output              io_input_ready,
  input      [31:0]   io_input_payload_data,
  input      [3:0]    io_input_payload_mask,
  input               io_input_payload_last,
  output              io_output_valid,
  input               io_output_ready,
  output reg [31:0]   io_output_payload_data,
  output reg [3:0]    io_output_payload_mask,
  output              io_output_payload_last,
  input               clk,
  input               reset
);
  reg        [2:0]    _zz_1;
  reg        [15:0]   _zz_2;
  reg        [1:0]    _zz_3;
  wire       [1:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire       [2:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [0:0]    _zz_8;
  reg        [1:0]    counter;
  reg                 end_1;

  assign _zz_4 = _zz_1[1:0];
  assign _zz_5 = 2'b10;
  assign _zz_6 = {1'd0, _zz_5};
  assign _zz_7 = (counter >>> 1);
  assign _zz_8 = (counter >>> 1);
  always @(*) begin
    case(io_sel)
      1'b0 : begin
        _zz_1 = _zz_6;
      end
      default : begin
        _zz_1 = 3'b100;
      end
    endcase
  end

  always @(*) begin
    case(_zz_7)
      1'b0 : begin
        _zz_2 = io_input_payload_data[15 : 0];
      end
      default : begin
        _zz_2 = io_input_payload_data[31 : 16];
      end
    endcase
  end

  always @(*) begin
    case(_zz_8)
      1'b0 : begin
        _zz_3 = io_input_payload_mask[1 : 0];
      end
      default : begin
        _zz_3 = io_input_payload_mask[3 : 2];
      end
    endcase
  end

  always @ (*) begin
    end_1 = 1'b0;
    case(io_sel)
      1'b0 : begin
        if((counter == 2'b10))begin
          end_1 = 1'b1;
        end
      end
      default : begin
        if((counter == 2'b00))begin
          end_1 = 1'b1;
        end
      end
    endcase
  end

  assign io_input_ready = (io_output_ready && end_1);
  assign io_output_valid = io_input_valid;
  assign io_output_payload_last = (io_input_payload_last && end_1);
  always @ (*) begin
    io_output_payload_data = 32'h0;
    case(io_sel)
      1'b0 : begin
        io_output_payload_data[15 : 0] = _zz_2;
      end
      default : begin
        io_output_payload_data[31 : 0] = io_input_payload_data[31 : 0];
      end
    endcase
  end

  always @ (*) begin
    io_output_payload_mask = 4'b0000;
    case(io_sel)
      1'b0 : begin
        io_output_payload_mask[1 : 0] = _zz_3;
      end
      default : begin
        io_output_payload_mask[3 : 0] = io_input_payload_mask[3 : 0];
      end
    endcase
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      counter <= 2'b00;
    end else begin
      if((io_output_valid && io_output_ready))begin
        counter <= (counter + _zz_4);
      end
      if((io_input_valid && io_input_ready))begin
        counter <= 2'b00;
      end
    end
  end


endmodule
