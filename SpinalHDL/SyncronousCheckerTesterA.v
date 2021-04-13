// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : SyncronousCheckerTesterA
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module SyncronousCheckerTesterA (
  input               clk,
  input               reset,
  input      [7:0]    input_1,
  output     [7:0]    output_1
);
  reg        [7:0]    logic_a;
  reg        [7:0]    logic_b;

  assign output_1 = logic_b;
  always @ (posedge clk) begin
    logic_a <= input_1;
    logic_b <= logic_a;
  end


endmodule
