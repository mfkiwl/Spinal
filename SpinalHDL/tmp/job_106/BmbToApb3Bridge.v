// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : BmbToApb3Bridge
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module BmbToApb3Bridge (
  input               io_input_cmd_valid,
  output              io_input_cmd_ready,
  input               io_input_cmd_payload_last,
  input      [3:0]    io_input_cmd_payload_fragment_source,
  input      [0:0]    io_input_cmd_payload_fragment_opcode,
  input      [15:0]   io_input_cmd_payload_fragment_address,
  input      [1:0]    io_input_cmd_payload_fragment_length,
  input      [31:0]   io_input_cmd_payload_fragment_data,
  input      [3:0]    io_input_cmd_payload_fragment_mask,
  input      [3:0]    io_input_cmd_payload_fragment_context,
  output              io_input_rsp_valid,
  input               io_input_rsp_ready,
  output              io_input_rsp_payload_last,
  output     [3:0]    io_input_rsp_payload_fragment_source,
  output     [0:0]    io_input_rsp_payload_fragment_opcode,
  output     [31:0]   io_input_rsp_payload_fragment_data,
  output     [3:0]    io_input_rsp_payload_fragment_context,
  output     [15:0]   io_output_PADDR,
  output     [0:0]    io_output_PSEL,
  output              io_output_PENABLE,
  input               io_output_PREADY,
  output              io_output_PWRITE,
  output     [31:0]   io_output_PWDATA,
  input      [31:0]   io_output_PRDATA,
  input               io_output_PSLVERROR,
  input               clk,
  input               reset
);
  wire                _zz_2;
  wire                bmbBuffer_cmd_valid;
  reg                 bmbBuffer_cmd_ready;
  wire                bmbBuffer_cmd_payload_last;
  wire       [3:0]    bmbBuffer_cmd_payload_fragment_source;
  wire       [0:0]    bmbBuffer_cmd_payload_fragment_opcode;
  wire       [15:0]   bmbBuffer_cmd_payload_fragment_address;
  wire       [1:0]    bmbBuffer_cmd_payload_fragment_length;
  wire       [31:0]   bmbBuffer_cmd_payload_fragment_data;
  wire       [3:0]    bmbBuffer_cmd_payload_fragment_mask;
  wire       [3:0]    bmbBuffer_cmd_payload_fragment_context;
  reg                 bmbBuffer_rsp_valid;
  wire                bmbBuffer_rsp_ready;
  wire                bmbBuffer_rsp_payload_last;
  wire       [3:0]    bmbBuffer_rsp_payload_fragment_source;
  reg        [0:0]    bmbBuffer_rsp_payload_fragment_opcode;
  wire       [31:0]   bmbBuffer_rsp_payload_fragment_data;
  wire       [3:0]    bmbBuffer_rsp_payload_fragment_context;
  wire                _zz_1;
  wire                bmbBuffer_rsp_m2sPipe_valid;
  wire                bmbBuffer_rsp_m2sPipe_ready;
  wire                bmbBuffer_rsp_m2sPipe_payload_last;
  wire       [3:0]    bmbBuffer_rsp_m2sPipe_payload_fragment_source;
  wire       [0:0]    bmbBuffer_rsp_m2sPipe_payload_fragment_opcode;
  wire       [31:0]   bmbBuffer_rsp_m2sPipe_payload_fragment_data;
  wire       [3:0]    bmbBuffer_rsp_m2sPipe_payload_fragment_context;
  reg                 bmbBuffer_rsp_m2sPipe_rValid;
  reg                 bmbBuffer_rsp_m2sPipe_rData_last;
  reg        [3:0]    bmbBuffer_rsp_m2sPipe_rData_fragment_source;
  reg        [0:0]    bmbBuffer_rsp_m2sPipe_rData_fragment_opcode;
  reg        [31:0]   bmbBuffer_rsp_m2sPipe_rData_fragment_data;
  reg        [3:0]    bmbBuffer_rsp_m2sPipe_rData_fragment_context;
  reg                 state;

  assign _zz_2 = (! state);
  assign _zz_1 = (! (io_input_rsp_valid && (! io_input_rsp_ready)));
  assign io_input_cmd_ready = (bmbBuffer_cmd_ready && _zz_1);
  assign bmbBuffer_cmd_valid = (io_input_cmd_valid && _zz_1);
  assign bmbBuffer_cmd_payload_last = io_input_cmd_payload_last;
  assign bmbBuffer_cmd_payload_fragment_source = io_input_cmd_payload_fragment_source;
  assign bmbBuffer_cmd_payload_fragment_opcode = io_input_cmd_payload_fragment_opcode;
  assign bmbBuffer_cmd_payload_fragment_address = io_input_cmd_payload_fragment_address;
  assign bmbBuffer_cmd_payload_fragment_length = io_input_cmd_payload_fragment_length;
  assign bmbBuffer_cmd_payload_fragment_data = io_input_cmd_payload_fragment_data;
  assign bmbBuffer_cmd_payload_fragment_mask = io_input_cmd_payload_fragment_mask;
  assign bmbBuffer_cmd_payload_fragment_context = io_input_cmd_payload_fragment_context;
  assign bmbBuffer_rsp_ready = ((1'b1 && (! bmbBuffer_rsp_m2sPipe_valid)) || bmbBuffer_rsp_m2sPipe_ready);
  assign bmbBuffer_rsp_m2sPipe_valid = bmbBuffer_rsp_m2sPipe_rValid;
  assign bmbBuffer_rsp_m2sPipe_payload_last = bmbBuffer_rsp_m2sPipe_rData_last;
  assign bmbBuffer_rsp_m2sPipe_payload_fragment_source = bmbBuffer_rsp_m2sPipe_rData_fragment_source;
  assign bmbBuffer_rsp_m2sPipe_payload_fragment_opcode = bmbBuffer_rsp_m2sPipe_rData_fragment_opcode;
  assign bmbBuffer_rsp_m2sPipe_payload_fragment_data = bmbBuffer_rsp_m2sPipe_rData_fragment_data;
  assign bmbBuffer_rsp_m2sPipe_payload_fragment_context = bmbBuffer_rsp_m2sPipe_rData_fragment_context;
  assign io_input_rsp_valid = bmbBuffer_rsp_m2sPipe_valid;
  assign bmbBuffer_rsp_m2sPipe_ready = io_input_rsp_ready;
  assign io_input_rsp_payload_last = bmbBuffer_rsp_m2sPipe_payload_last;
  assign io_input_rsp_payload_fragment_source = bmbBuffer_rsp_m2sPipe_payload_fragment_source;
  assign io_input_rsp_payload_fragment_opcode = bmbBuffer_rsp_m2sPipe_payload_fragment_opcode;
  assign io_input_rsp_payload_fragment_data = bmbBuffer_rsp_m2sPipe_payload_fragment_data;
  assign io_input_rsp_payload_fragment_context = bmbBuffer_rsp_m2sPipe_payload_fragment_context;
  always @ (*) begin
    bmbBuffer_cmd_ready = 1'b0;
    if(! _zz_2) begin
      if(io_output_PREADY)begin
        bmbBuffer_cmd_ready = 1'b1;
      end
    end
  end

  assign io_output_PSEL[0] = bmbBuffer_cmd_valid;
  assign io_output_PENABLE = state;
  assign io_output_PWRITE = (bmbBuffer_cmd_payload_fragment_opcode == 1'b1);
  assign io_output_PADDR = bmbBuffer_cmd_payload_fragment_address;
  assign io_output_PWDATA = bmbBuffer_cmd_payload_fragment_data;
  always @ (*) begin
    bmbBuffer_rsp_valid = 1'b0;
    if(! _zz_2) begin
      if(io_output_PREADY)begin
        bmbBuffer_rsp_valid = 1'b1;
      end
    end
  end

  assign bmbBuffer_rsp_payload_fragment_data = io_output_PRDATA;
  assign bmbBuffer_rsp_payload_fragment_source = io_input_cmd_payload_fragment_source;
  assign bmbBuffer_rsp_payload_fragment_context = io_input_cmd_payload_fragment_context;
  assign bmbBuffer_rsp_payload_last = 1'b1;
  always @ (*) begin
    bmbBuffer_rsp_payload_fragment_opcode = 1'b0;
    if(io_output_PSLVERROR)begin
      bmbBuffer_rsp_payload_fragment_opcode = 1'b1;
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      bmbBuffer_rsp_m2sPipe_rValid <= 1'b0;
      state <= 1'b0;
    end else begin
      if(bmbBuffer_rsp_ready)begin
        bmbBuffer_rsp_m2sPipe_rValid <= bmbBuffer_rsp_valid;
      end
      if(_zz_2)begin
        state <= bmbBuffer_cmd_valid;
      end else begin
        if(io_output_PREADY)begin
          state <= 1'b0;
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(bmbBuffer_rsp_ready)begin
      bmbBuffer_rsp_m2sPipe_rData_last <= bmbBuffer_rsp_payload_last;
      bmbBuffer_rsp_m2sPipe_rData_fragment_source <= bmbBuffer_rsp_payload_fragment_source;
      bmbBuffer_rsp_m2sPipe_rData_fragment_opcode <= bmbBuffer_rsp_payload_fragment_opcode;
      bmbBuffer_rsp_m2sPipe_rData_fragment_data <= bmbBuffer_rsp_payload_fragment_data;
      bmbBuffer_rsp_m2sPipe_rData_fragment_context <= bmbBuffer_rsp_payload_fragment_context;
    end
  end


endmodule
