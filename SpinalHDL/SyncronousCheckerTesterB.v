// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : SyncronousCheckerTesterB
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module SyncronousCheckerTesterB (
  input               clk1,
  input               reset,
  input      [7:0]    input_1,
  output     [7:0]    output_1,
  output reg [7:0]    logic2_a
);
  wire                clk2;
  reg        [7:0]    logic1_a;
  reg        [7:0]    logic1_b;

  assign clk2 = clk1;
  assign output_1 = logic1_b;
  always @ (posedge clk1) begin
    logic1_a <= input_1;
    logic1_b <= logic1_a;
  end

  always @ (posedge clk2) begin
    logic2_a <= logic1_a;
  end


endmodule
