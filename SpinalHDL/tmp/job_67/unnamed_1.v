// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed_1
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed_1 (
  input      [7:0]    a,
  input      [7:0]    b,
  output     [7:0]    result
);
  wire       [7:0]    bb_result;

  unnamed bb (
    .a         (a[7:0]          ), //i
    .b         (b[7:0]          ), //i
    .result    (bb_result[7:0]  )  //o
  );
  assign result = bb_result;

endmodule

module unnamed (
  input      [7:0]    a,
  input      [7:0]    b,
  output     [7:0]    result
);

  assign result = (a ^ b);

endmodule
