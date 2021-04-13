// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : MacRxChecker
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module MacRxChecker (
  input               io_input_valid,
  output              io_input_ready,
  input               io_input_payload_last,
  input               io_input_payload_fragment_error,
  input      [3:0]    io_input_payload_fragment_data,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output              io_output_payload_fragment_error,
  output     [3:0]    io_output_payload_fragment_data,
  input               clk,
  input               reset
);
  wire                _zz_1;
  wire       [31:0]   crc_1_io_result;
  wire       [31:0]   crc_1_io_resultNext;
  wire                crcHit;

  Crc crc_1 (
    .io_flush            (_zz_1                                ), //i
    .io_input_valid      (io_input_valid                       ), //i
    .io_input_payload    (io_input_payload_fragment_data[3:0]  ), //i
    .io_result           (crc_1_io_result[31:0]                ), //o
    .io_resultNext       (crc_1_io_resultNext[31:0]            ), //o
    .clk                 (clk                                  ), //i
    .reset               (reset                                )  //i
  );
  assign _zz_1 = ((io_output_valid && io_output_ready) && io_output_payload_last);
  assign crcHit = (crc_1_io_resultNext == 32'h2144df1c);
  assign io_output_valid = io_input_valid;
  assign io_output_payload_last = io_input_payload_last;
  assign io_output_payload_fragment_data = io_input_payload_fragment_data;
  assign io_output_payload_fragment_error = (io_input_payload_fragment_error || (io_input_payload_last && (! crcHit)));
  assign io_input_ready = io_output_ready;

endmodule

module Crc (
  input               io_flush,
  input               io_input_valid,
  input      [3:0]    io_input_payload,
  output     [31:0]   io_result,
  output     [31:0]   io_resultNext,
  input               clk,
  input               reset
);
  wire       [31:0]   _zz_1;
  wire       [31:0]   _zz_2;
  wire       [31:0]   _zz_3;
  wire       [31:0]   _zz_4;
  wire                _zz_5;
  wire       [0:0]    _zz_6;
  wire       [20:0]   _zz_7;
  wire                _zz_8;
  wire       [0:0]    _zz_9;
  wire       [9:0]    _zz_10;
  wire                _zz_11;
  wire       [0:0]    _zz_12;
  wire       [20:0]   _zz_13;
  wire                _zz_14;
  wire       [0:0]    _zz_15;
  wire       [9:0]    _zz_16;
  reg        [31:0]   state_4;
  reg        [31:0]   state_3;
  reg        [31:0]   state_2;
  reg        [31:0]   state_1;
  reg        [31:0]   state;
  wire       [31:0]   stateXor;
  wire       [31:0]   accXor;

  assign _zz_1 = (state <<< 1);
  assign _zz_2 = (state_1 <<< 1);
  assign _zz_3 = (state_2 <<< 1);
  assign _zz_4 = (state_3 <<< 1);
  assign _zz_5 = stateXor[9];
  assign _zz_6 = stateXor[10];
  assign _zz_7 = {stateXor[11],{stateXor[12],{stateXor[13],{stateXor[14],{stateXor[15],{stateXor[16],{stateXor[17],{stateXor[18],{stateXor[19],{_zz_8,{_zz_9,_zz_10}}}}}}}}}}};
  assign _zz_8 = stateXor[20];
  assign _zz_9 = stateXor[21];
  assign _zz_10 = {stateXor[22],{stateXor[23],{stateXor[24],{stateXor[25],{stateXor[26],{stateXor[27],{stateXor[28],{stateXor[29],{stateXor[30],stateXor[31]}}}}}}}}};
  assign _zz_11 = accXor[9];
  assign _zz_12 = accXor[10];
  assign _zz_13 = {accXor[11],{accXor[12],{accXor[13],{accXor[14],{accXor[15],{accXor[16],{accXor[17],{accXor[18],{accXor[19],{_zz_14,{_zz_15,_zz_16}}}}}}}}}}};
  assign _zz_14 = accXor[20];
  assign _zz_15 = accXor[21];
  assign _zz_16 = {accXor[22],{accXor[23],{accXor[24],{accXor[25],{accXor[26],{accXor[27],{accXor[28],{accXor[29],{accXor[30],accXor[31]}}}}}}}}};
  always @ (*) begin
    state_4 = state_3;
    state_4 = (_zz_4 ^ ((io_input_payload[3] ^ state_3[31]) ? 32'h04c11db7 : 32'h0));
  end

  always @ (*) begin
    state_3 = state_2;
    state_3 = (_zz_3 ^ ((io_input_payload[2] ^ state_2[31]) ? 32'h04c11db7 : 32'h0));
  end

  always @ (*) begin
    state_2 = state_1;
    state_2 = (_zz_2 ^ ((io_input_payload[1] ^ state_1[31]) ? 32'h04c11db7 : 32'h0));
  end

  always @ (*) begin
    state_1 = state;
    state_1 = (_zz_1 ^ ((io_input_payload[0] ^ state[31]) ? 32'h04c11db7 : 32'h0));
  end

  assign stateXor = (state ^ 32'hffffffff);
  assign accXor = (state_4 ^ 32'hffffffff);
  assign io_result = {stateXor[0],{stateXor[1],{stateXor[2],{stateXor[3],{stateXor[4],{stateXor[5],{stateXor[6],{stateXor[7],{stateXor[8],{_zz_5,{_zz_6,_zz_7}}}}}}}}}}};
  assign io_resultNext = {accXor[0],{accXor[1],{accXor[2],{accXor[3],{accXor[4],{accXor[5],{accXor[6],{accXor[7],{accXor[8],{_zz_11,{_zz_12,_zz_13}}}}}}}}}}};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      state <= 32'hffffffff;
    end else begin
      if(io_input_valid)begin
        state <= state_4;
      end
      if(io_flush)begin
        state <= 32'hffffffff;
      end
    end
  end


endmodule
