// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : MacRxPreamble
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module MacRxPreamble (
  input               io_input_valid,
  output              io_input_ready,
  input               io_input_payload_last,
  input               io_input_payload_fragment_error,
  input      [3:0]    io_input_payload_fragment_data,
  output reg          io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output              io_output_payload_fragment_error,
  output     [3:0]    io_output_payload_fragment_data,
  input               clk,
  input               reset
);
  wire                _zz_11;
  wire                history_0_valid;
  wire                history_0_ready;
  wire                history_0_payload_last;
  wire                history_0_payload_fragment_error;
  wire       [3:0]    history_0_payload_fragment_data;
  wire                history_1_valid;
  wire                history_1_ready;
  wire                history_1_payload_last;
  wire                history_1_payload_fragment_error;
  wire       [3:0]    history_1_payload_fragment_data;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire       [3:0]    _zz_5;
  reg                 _zz_6;
  reg                 _zz_7;
  reg                 _zz_8;
  reg                 _zz_9;
  reg        [3:0]    _zz_10;
  wire       [7:0]    historyDataCat;
  wire                hit;
  reg                 inFrame;

  assign _zz_11 = (! inFrame);
  assign _zz_1 = io_input_valid;
  assign _zz_2 = io_input_ready;
  assign _zz_3 = io_input_payload_last;
  assign _zz_4 = io_input_payload_fragment_error;
  assign _zz_5 = io_input_payload_fragment_data;
  assign history_0_valid = _zz_1;
  assign history_0_ready = _zz_2;
  assign history_0_payload_last = _zz_3;
  assign history_0_payload_fragment_error = _zz_4;
  assign history_0_payload_fragment_data = _zz_5;
  assign history_1_valid = _zz_6;
  assign history_1_ready = _zz_7;
  assign history_1_payload_last = _zz_8;
  assign history_1_payload_fragment_error = _zz_9;
  assign history_1_payload_fragment_data = _zz_10;
  assign historyDataCat = {history_0_payload_fragment_data,history_1_payload_fragment_data};
  assign hit = ((history_0_valid && history_1_valid) && (historyDataCat == 8'hd5));
  always @ (*) begin
    io_output_valid = 1'b0;
    if(! _zz_11) begin
      if(io_input_valid)begin
        io_output_valid = 1'b1;
      end
    end
  end

  assign io_output_payload_last = io_input_payload_last;
  assign io_output_payload_fragment_error = io_input_payload_fragment_error;
  assign io_output_payload_fragment_data = io_input_payload_fragment_data;
  assign io_input_ready = ((! inFrame) || io_output_ready);
  always @ (posedge clk) begin
    if((io_input_valid && io_input_ready))begin
      _zz_6 <= _zz_1;
      _zz_7 <= _zz_2;
      _zz_8 <= _zz_3;
      _zz_9 <= _zz_4;
      _zz_10 <= _zz_5;
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      inFrame <= 1'b0;
    end else begin
      if(_zz_11)begin
        if(hit)begin
          inFrame <= 1'b1;
        end
      end else begin
        if(io_input_valid)begin
          if((io_output_ready && io_input_payload_last))begin
            inFrame <= 1'b0;
          end
        end
      end
    end
  end


endmodule
