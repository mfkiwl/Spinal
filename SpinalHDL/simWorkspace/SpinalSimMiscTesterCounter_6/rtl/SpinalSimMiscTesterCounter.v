// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : SpinalSimMiscTesterCounter
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module SpinalSimMiscTesterCounter (
  input               io_enable,
  output     [7:0]    io_value,
  input               clk,
  input               reset
);
  reg        [7:0]    reg_1;

  assign io_value = reg_1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      reg_1 <= 8'h0;
    end else begin
      if(io_enable)begin
        reg_1 <= (reg_1 + 8'h01);
      end
    end
  end


endmodule
