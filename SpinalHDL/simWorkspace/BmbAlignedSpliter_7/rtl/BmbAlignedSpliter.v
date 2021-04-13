// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : BmbAlignedSpliter
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module BmbAlignedSpliter (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [3:0]    io_input_cmd_payload_fragment_source,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [15:0]   io_input_cmd_payload_fragment_address,
  input      [5:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [7:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [3:0]    io_input_rsp_payload_fragment_source,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [7:0]    io_input_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [15:0]   io_output_cmd_payload_fragment_address,
  output     [2:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [13:0]   io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output reg          io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [13:0]   io_output_rsp_payload_fragment_context,
  output              io_outputBurstLast,
  input               clk,
  input               reset
);
  wire                _zz_3;
  wire       [1:0]    _zz_4;
  wire       [2:0]    _zz_5;
  wire       [6:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [1:0]    _zz_8;
  wire       [1:0]    _zz_9;
  wire       [1:0]    _zz_10;
  wire       [11:0]   _zz_11;
  wire       [11:0]   _zz_12;
  wire       [11:0]   _zz_13;
  wire       [6:0]    _zz_14;
  wire       [11:0]   _zz_15;
  wire       [0:0]    _zz_16;
  wire       [3:0]    _zz_17;
  wire       [0:0]    _zz_18;
  wire       [0:0]    _zz_19;
  reg        [0:0]    cmdLogic_beatCounter;
  reg        [3:0]    cmdLogic_splitCounter;
  wire       [2:0]    cmdLogic_headLenghtMax;
  wire       [6:0]    cmdLogic_lastAddress;
  wire       [2:0]    cmdLogic_tailLength;
  wire       [3:0]    cmdLogic_splitCount;
  reg                 cmdLogic_firstSplit;
  wire                cmdLogic_lastSplit;
  reg        [15:0]   cmdLogic_addressBase;
  wire       [1:0]    cmdLogic_beatsInSplit;
  wire       [3:0]    cmdLogic_context_source;
  wire                cmdLogic_context_last;
  wire                cmdLogic_context_write;
  wire       [7:0]    cmdLogic_context_input;
  reg        [2:0]    _zz_1;
  wire       [3:0]    rspLogic_context_source;
  wire                rspLogic_context_last;
  wire                rspLogic_context_write;
  wire       [7:0]    rspLogic_context_input;
  wire       [13:0]   _zz_2;
  reg                 io_output_rsp_thrown_valid;
  wire                io_output_rsp_thrown_ready;
  wire                io_output_rsp_thrown_payload_last;
  wire       [0:0]    io_output_rsp_thrown_payload_fragment_opcode;
  wire       [31:0]   io_output_rsp_thrown_payload_fragment_data;
  wire       [13:0]   io_output_rsp_thrown_payload_fragment_context;

  assign _zz_3 = (! ((! rspLogic_context_write) || (rspLogic_context_last && io_output_rsp_payload_last)));
  assign _zz_4 = {cmdLogic_firstSplit,cmdLogic_lastSplit};
  assign _zz_5 = io_input_cmd_payload_fragment_address[2 : 0];
  assign _zz_6 = {4'd0, _zz_5};
  assign _zz_7 = (cmdLogic_firstSplit ? io_input_cmd_payload_fragment_address[2 : 2] : 1'b0);
  assign _zz_8 = {1'd0, _zz_7};
  assign _zz_9 = {1'd0, cmdLogic_beatCounter};
  assign _zz_10 = (cmdLogic_beatsInSplit - 2'b01);
  assign _zz_11 = (_zz_13 + _zz_15);
  assign _zz_12 = cmdLogic_addressBase[11 : 0];
  assign _zz_13 = _zz_12;
  assign _zz_14 = ({3'd0,cmdLogic_splitCounter} <<< 3);
  assign _zz_15 = {5'd0, _zz_14};
  assign _zz_16 = 1'b1;
  assign _zz_17 = {3'd0, _zz_16};
  assign _zz_18 = _zz_2[4 : 4];
  assign _zz_19 = _zz_2[5 : 5];
  assign cmdLogic_headLenghtMax = (3'b111 - io_input_cmd_payload_fragment_address[2 : 0]);
  assign cmdLogic_lastAddress = (_zz_6 + {1'b0,io_input_cmd_payload_fragment_length});
  assign cmdLogic_tailLength = cmdLogic_lastAddress[2 : 0];
  assign cmdLogic_splitCount = (cmdLogic_lastAddress >>> 3);
  assign cmdLogic_lastSplit = (cmdLogic_splitCounter == cmdLogic_splitCount);
  always @ (*) begin
    cmdLogic_addressBase = io_input_cmd_payload_fragment_address;
    if((! cmdLogic_firstSplit))begin
      cmdLogic_addressBase[2 : 0] = 3'b000;
    end
  end

  assign cmdLogic_beatsInSplit = (2'b10 - _zz_8);
  assign cmdLogic_context_input = io_input_cmd_payload_fragment_context;
  assign cmdLogic_context_last = cmdLogic_lastSplit;
  assign cmdLogic_context_write = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign cmdLogic_context_source = io_input_cmd_payload_fragment_source;
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_output_cmd_payload_last = (io_input_cmd_payload_last || (_zz_9 == _zz_10));
  assign io_output_cmd_payload_fragment_address = {cmdLogic_addressBase[15 : 12],_zz_11};
  assign io_output_cmd_payload_fragment_context = {cmdLogic_context_input,{cmdLogic_context_write,{cmdLogic_context_last,cmdLogic_context_source}}};
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  always @ (*) begin
    case(_zz_4)
      2'b10 : begin
        _zz_1 = cmdLogic_headLenghtMax;
      end
      2'b00 : begin
        _zz_1 = 3'b111;
      end
      2'b01 : begin
        _zz_1 = cmdLogic_tailLength;
      end
      default : begin
        _zz_1 = io_input_cmd_payload_fragment_length[2:0];
      end
    endcase
  end

  assign io_output_cmd_payload_fragment_length = _zz_1;
  assign io_output_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign io_output_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign io_outputBurstLast = cmdLogic_context_last;
  assign io_input_cmd_ready = (io_output_cmd_ready && ((io_input_cmd_payload_fragment_opcode == 1'b1) || cmdLogic_context_last));
  assign _zz_2 = io_output_rsp_payload_fragment_context;
  assign rspLogic_context_source = _zz_2[3 : 0];
  assign rspLogic_context_last = _zz_18[0];
  assign rspLogic_context_write = _zz_19[0];
  assign rspLogic_context_input = _zz_2[13 : 6];
  always @ (*) begin
    io_output_rsp_thrown_valid = io_output_rsp_valid;
    if(_zz_3)begin
      io_output_rsp_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_output_rsp_ready = io_output_rsp_thrown_ready;
    if(_zz_3)begin
      io_output_rsp_ready = 1'b1;
    end
  end

  assign io_output_rsp_thrown_payload_last = io_output_rsp_payload_last;
  assign io_output_rsp_thrown_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_output_rsp_thrown_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_output_rsp_thrown_payload_fragment_context = io_output_rsp_payload_fragment_context;
  assign io_input_rsp_valid = io_output_rsp_thrown_valid;
  assign io_output_rsp_thrown_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_last = (io_output_rsp_payload_last && rspLogic_context_last);
  assign io_input_rsp_payload_fragment_source = rspLogic_context_source;
  assign io_input_rsp_payload_fragment_opcode = io_output_rsp_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = io_output_rsp_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = rspLogic_context_input;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      cmdLogic_beatCounter <= 1'b0;
      cmdLogic_splitCounter <= 4'b0000;
      cmdLogic_firstSplit <= 1'b1;
    end else begin
      if(((io_output_cmd_valid && io_output_cmd_ready) && io_output_cmd_payload_last))begin
        cmdLogic_firstSplit <= 1'b0;
      end
      if((io_output_cmd_valid && io_output_cmd_ready))begin
        cmdLogic_beatCounter <= (cmdLogic_beatCounter + (io_input_cmd_payload_fragment_opcode == 1'b1));
        if(io_output_cmd_payload_last)begin
          cmdLogic_splitCounter <= (cmdLogic_splitCounter + _zz_17);
          cmdLogic_beatCounter <= 1'b0;
        end
      end
      if(((io_input_cmd_valid && io_input_cmd_ready) && io_input_cmd_payload_last))begin
        cmdLogic_splitCounter <= 4'b0000;
        cmdLogic_firstSplit <= 1'b1;
      end
    end
  end


endmodule
