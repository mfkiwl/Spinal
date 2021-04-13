// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : RomTester2
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26


`define MyEnum_binary_sequential_type [1:0]
`define MyEnum_binary_sequential_a 2'b00
`define MyEnum_binary_sequential_b 2'b01
`define MyEnum_binary_sequential_c 2'b10


module RomTester2 (
  input      [2:0]    address,
  output              data_bool,
  output     [8:0]    data_bits,
  output     [9:0]    data_uint,
  output     [10:0]   data_sint,
  output     `MyEnum_binary_sequential_type data_enumeration
);
  wire       [32:0]   _zz_3;
  wire       [0:0]    _zz_4;
  wire       [32:0]   _zz_1;
  wire       `MyEnum_binary_sequential_type _zz_2;
  `ifndef SYNTHESIS
  reg [7:0] data_enumeration_string;
  reg [7:0] _zz_2_string;
  `endif

  (* ram_style = "distributed" *) reg [32:0] rom [0:6];

  assign _zz_4 = _zz_1[0 : 0];
  initial begin
    $readmemb("RomTester2.v_toplevel_rom.bin",rom);
  end
  assign _zz_3 = rom[address];
  `ifndef SYNTHESIS
  always @(*) begin
    case(data_enumeration)
      `MyEnum_binary_sequential_a : data_enumeration_string = "a";
      `MyEnum_binary_sequential_b : data_enumeration_string = "b";
      `MyEnum_binary_sequential_c : data_enumeration_string = "c";
      default : data_enumeration_string = "?";
    endcase
  end
  always @(*) begin
    case(_zz_2)
      `MyEnum_binary_sequential_a : _zz_2_string = "a";
      `MyEnum_binary_sequential_b : _zz_2_string = "b";
      `MyEnum_binary_sequential_c : _zz_2_string = "c";
      default : _zz_2_string = "?";
    endcase
  end
  `endif

  assign _zz_1 = _zz_3;
  assign data_bool = _zz_4[0];
  assign data_bits = _zz_1[9 : 1];
  assign data_uint = _zz_1[19 : 10];
  assign data_sint = _zz_1[30 : 20];
  assign _zz_2 = _zz_1[32 : 31];
  assign data_enumeration = _zz_2;

endmodule
