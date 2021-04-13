// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [7:0]    a,
  input      [7:0]    b,
  output     [7:0]    result,
  input               clk,
  input               reset
);
  reg        [7:0]    _zz_1;

  assign result = _zz_1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_1 <= 8'h0;
    end else begin
      _zz_1 <= (a + b);
    end
  end


endmodule
