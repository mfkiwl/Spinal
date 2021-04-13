// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : RomTester3
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module RomTester3 (
  input      [2:0]    address,
  output     [31:0]   data,
  input               clk,
  input               reset
);
  wire       [31:0]   _zz_1;
  wire       [2:0]    _zz_2;
  wire       [31:0]   _zz_3;
  wire       [3:0]    _zz_4;
  wire                _zz_5;
  (* ram_style = "distributed" *) reg [7:0] rom_symbol0 [0:7];
  (* ram_style = "distributed" *) reg [7:0] rom_symbol1 [0:7];
  (* ram_style = "distributed" *) reg [7:0] rom_symbol2 [0:7];
  (* ram_style = "distributed" *) reg [7:0] rom_symbol3 [0:7];

  assign _zz_2 = 3'b000;
  assign _zz_3 = 32'h0;
  assign _zz_4 = 4'b0000;
  assign _zz_5 = 1'b0;
  initial begin
    $readmemb("RomTester3.v_toplevel_rom_symbol0.bin",rom_symbol0);
    $readmemb("RomTester3.v_toplevel_rom_symbol1.bin",rom_symbol1);
    $readmemb("RomTester3.v_toplevel_rom_symbol2.bin",rom_symbol2);
    $readmemb("RomTester3.v_toplevel_rom_symbol3.bin",rom_symbol3);
  end
  always @ (posedge clk) begin
    if(_zz_4[0] && _zz_5) begin
      rom_symbol0[_zz_2] <= _zz_3[7 : 0];
    end
    if(_zz_4[1] && _zz_5) begin
      rom_symbol1[_zz_2] <= _zz_3[15 : 8];
    end
    if(_zz_4[2] && _zz_5) begin
      rom_symbol2[_zz_2] <= _zz_3[23 : 16];
    end
    if(_zz_4[3] && _zz_5) begin
      rom_symbol3[_zz_2] <= _zz_3[31 : 24];
    end
  end

  assign _zz_1[7 : 0] = rom_symbol0[address];
  assign _zz_1[15 : 8] = rom_symbol1[address];
  assign _zz_1[23 : 16] = rom_symbol2[address];
  assign _zz_1[31 : 24] = rom_symbol3[address];
  assign data = _zz_1;

endmodule
