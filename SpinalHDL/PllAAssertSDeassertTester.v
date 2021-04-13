// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : PllAAssertSDeassertTester
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module PllAAssertSDeassertTester (
  input               aReset,
  input               clk_100Mhz,
  output reg [3:0]    counter
);
  wire                _zz_5;
  wire                pllBB_clk_out;
  wire                bufferCC_1_io_dataOut;
  wire       [0:0]    _zz_6;
  wire       [3:0]    _zz_7;
  wire                core_clk;
  wire                core_reset;
  wire                _zz_1;
  reg        [3:0]    _zz_2;
  wire                _zz_3;
  wire                _zz_4;

  assign _zz_6 = _zz_1;
  assign _zz_7 = {3'd0, _zz_6};
  PLL pllBB (
    .clk_in     (clk_100Mhz     ), //i
    .clk_out    (pllBB_clk_out  )  //o
  );
  BufferCC bufferCC_1 (
    .io_dataIn     (_zz_5                  ), //i
    .io_dataOut    (bufferCC_1_io_dataOut  ), //o
    .core_clk      (core_clk               ), //i
    .aReset        (aReset                 )  //i
  );
  assign core_clk = pllBB_clk_out;
  assign _zz_5 = 1'b0;
  assign core_reset = bufferCC_1_io_dataOut;
  assign _zz_3 = (counter == 4'b1001);
  assign _zz_4 = (_zz_3 && _zz_1);
  always @ (*) begin
    if(_zz_4)begin
      _zz_2 = 4'b0000;
    end else begin
      _zz_2 = (counter + _zz_7);
    end
    if(1'b0)begin
      _zz_2 = 4'b0000;
    end
  end

  assign _zz_1 = 1'b1;
  always @ (posedge core_clk) begin
    if(core_reset) begin
      counter <= 4'b0000;
    end else begin
      counter <= _zz_2;
    end
  end


endmodule

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               core_clk,
  input               aReset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge core_clk or posedge aReset) begin
    if (aReset) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
