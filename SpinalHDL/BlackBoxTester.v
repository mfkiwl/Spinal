// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : BlackBoxTester
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module BlackBoxTester (
  input      [7:0]    io_inA,
  input      [15:0]   io_inB,
  output     [7:0]    io_outA,
  output     [15:0]   io_outB,
  input               reset,
  input               clk
);
  wire       [7:0]    blackBoxtoTest_1_io_outA;
  wire       [15:0]   blackBoxtoTest_1_io_outB;

  BlackBoxToTest #(
    .aWidth(8),
    .bWidth(16) 
  ) blackBoxtoTest_1 (
    .io_clockPin    (clk                             ), //i
    .io_resetPin    (reset                           ), //i
    .io_inA         (io_inA[7:0]                     ), //i
    .io_inB         (io_inB[15:0]                    ), //i
    .io_outA        (blackBoxtoTest_1_io_outA[7:0]   ), //o
    .io_outB        (blackBoxtoTest_1_io_outB[15:0]  )  //o
  );
  assign io_outA = blackBoxtoTest_1_io_outA;
  assign io_outB = blackBoxtoTest_1_io_outB;

endmodule
