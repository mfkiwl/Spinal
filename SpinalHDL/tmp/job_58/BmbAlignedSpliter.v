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
  input      [2:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [3:0]    io_input_rsp_payload_fragment_source,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [2:0]    io_input_rsp_payload_fragment_context,
  output              io_output_cmd_valid,
  input               io_output_cmd_ready,
  output              io_output_cmd_payload_last,
  output     [0:0]    io_output_cmd_payload_fragment_opcode,
  output     [15:0]   io_output_cmd_payload_fragment_address,
  output     [1:0]    io_output_cmd_payload_fragment_length,
  output     [31:0]   io_output_cmd_payload_fragment_data,
  output     [3:0]    io_output_cmd_payload_fragment_mask,
  output     [8:0]    io_output_cmd_payload_fragment_context,
  input               io_output_rsp_valid,
  output reg          io_output_rsp_ready,
  input               io_output_rsp_payload_last,
  input      [0:0]    io_output_rsp_payload_fragment_opcode,
  input      [31:0]   io_output_rsp_payload_fragment_data,
  input      [8:0]    io_output_rsp_payload_fragment_context,
  output              io_outputBurstLast,
  input               clk,
  input               reset
);
  wire                _zz_3;
  wire       [1:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire       [6:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [11:0]   _zz_8;
  wire       [11:0]   _zz_9;
  wire       [11:0]   _zz_10;
  wire       [6:0]    _zz_11;
  wire       [11:0]   _zz_12;
  wire       [0:0]    _zz_13;
  wire       [4:0]    _zz_14;
  wire       [0:0]    _zz_15;
  wire       [0:0]    _zz_16;
  reg        [4:0]    cmdLogic_splitCounter;
  wire       [1:0]    cmdLogic_headLenghtMax;
  wire       [6:0]    cmdLogic_lastAddress;
  wire       [1:0]    cmdLogic_tailLength;
  wire       [4:0]    cmdLogic_splitCount;
  reg                 cmdLogic_firstSplit;
  wire                cmdLogic_lastSplit;
  reg        [15:0]   cmdLogic_addressBase;
  wire       [0:0]    cmdLogic_beatsInSplit;
  wire       [3:0]    cmdLogic_context_source;
  wire                cmdLogic_context_last;
  wire                cmdLogic_context_write;
  wire       [2:0]    cmdLogic_context_input;
  reg        [1:0]    _zz_1;
  wire       [3:0]    rspLogic_context_source;
  wire                rspLogic_context_last;
  wire                rspLogic_context_write;
  wire       [2:0]    rspLogic_context_input;
  wire       [8:0]    _zz_2;
  reg                 io_output_rsp_thrown_valid;
  wire                io_output_rsp_thrown_ready;
  wire                io_output_rsp_thrown_payload_last;
  wire       [0:0]    io_output_rsp_thrown_payload_fragment_opcode;
  wire       [31:0]   io_output_rsp_thrown_payload_fragment_data;
  wire       [8:0]    io_output_rsp_thrown_payload_fragment_context;

  assign _zz_3 = (! ((! rspLogic_context_write) || (rspLogic_context_last && io_output_rsp_payload_last)));
  assign _zz_4 = {cmdLogic_firstSplit,cmdLogic_lastSplit};
  assign _zz_5 = io_input_cmd_payload_fragment_address[1 : 0];
  assign _zz_6 = {5'd0, _zz_5};
  assign _zz_7 = (cmdLogic_beatsInSplit - 1'b1);
  assign _zz_8 = (_zz_10 + _zz_12);
  assign _zz_9 = cmdLogic_addressBase[11 : 0];
  assign _zz_10 = _zz_9;
  assign _zz_11 = ({2'd0,cmdLogic_splitCounter} <<< 2);
  assign _zz_12 = {5'd0, _zz_11};
  assign _zz_13 = 1'b1;
  assign _zz_14 = {4'd0, _zz_13};
  assign _zz_15 = _zz_2[4 : 4];
  assign _zz_16 = _zz_2[5 : 5];
  assign cmdLogic_headLenghtMax = (2'b11 - io_input_cmd_payload_fragment_address[1 : 0]);
  assign cmdLogic_lastAddress = (_zz_6 + {1'b0,io_input_cmd_payload_fragment_length});
  assign cmdLogic_tailLength = cmdLogic_lastAddress[1 : 0];
  assign cmdLogic_splitCount = (cmdLogic_lastAddress >>> 2);
  assign cmdLogic_lastSplit = (cmdLogic_splitCounter == cmdLogic_splitCount);
  always @ (*) begin
    cmdLogic_addressBase = io_input_cmd_payload_fragment_address;
    if((! cmdLogic_firstSplit))begin
      cmdLogic_addressBase[1 : 0] = 2'b00;
    end
  end

  assign cmdLogic_beatsInSplit = (1'b1 - 1'b0);
  assign cmdLogic_context_input = io_input_cmd_payload_fragment_context;
  assign cmdLogic_context_last = cmdLogic_lastSplit;
  assign cmdLogic_context_write = (io_input_cmd_payload_fragment_opcode == 1'b1);
  assign cmdLogic_context_source = io_input_cmd_payload_fragment_source;
  assign io_output_cmd_valid = io_input_cmd_valid;
  assign io_output_cmd_payload_last = (io_input_cmd_payload_last || (1'b0 == _zz_7));
  assign io_output_cmd_payload_fragment_address = {cmdLogic_addressBase[15 : 12],_zz_8};
  assign io_output_cmd_payload_fragment_context = {cmdLogic_context_input,{cmdLogic_context_write,{cmdLogic_context_last,cmdLogic_context_source}}};
  assign io_output_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  always @ (*) begin
    case(_zz_4)
      2'b10 : begin
        _zz_1 = cmdLogic_headLenghtMax;
      end
      2'b00 : begin
        _zz_1 = 2'b11;
      end
      2'b01 : begin
        _zz_1 = cmdLogic_tailLength;
      end
      default : begin
        _zz_1 = io_input_cmd_payload_fragment_length[1:0];
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
  assign rspLogic_context_last = _zz_15[0];
  assign rspLogic_context_write = _zz_16[0];
  assign rspLogic_context_input = _zz_2[8 : 6];
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
      cmdLogic_splitCounter <= 5'h0;
      cmdLogic_firstSplit <= 1'b1;
    end else begin
      if(((io_output_cmd_valid && io_output_cmd_ready) && io_output_cmd_payload_last))begin
        cmdLogic_firstSplit <= 1'b0;
      end
      if((io_output_cmd_valid && io_output_cmd_ready))begin
        if(io_output_cmd_payload_last)begin
          cmdLogic_splitCounter <= (cmdLogic_splitCounter + _zz_14);
        end
      end
      if(((io_input_cmd_valid && io_input_cmd_ready) && io_input_cmd_payload_last))begin
        cmdLogic_splitCounter <= 5'h0;
        cmdLogic_firstSplit <= 1'b1;
      end
    end
  end


endmodule
