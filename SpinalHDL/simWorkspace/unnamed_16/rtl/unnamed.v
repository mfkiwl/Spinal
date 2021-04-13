// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [1:0]    input_1,
  output     [0:0]    output_0,
  output     [1:0]    output_1
);
  reg        [0:0]    _zz_2;
  reg        [1:0]    _zz_3;
  wire       [0:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire                _zz_1;

  assign _zz_4 = _zz_1;
  assign _zz_5 = {input_1[1],_zz_1};
  always @(*) begin
    case(_zz_4)
      1'b0 : begin
        _zz_2 = 1'b0;
      end
      default : begin
        _zz_2 = 1'b1;
      end
    endcase
  end

  always @(*) begin
    case(_zz_5)
      2'b00 : begin
        _zz_3 = 2'b00;
      end
      2'b01 : begin
        _zz_3 = 2'b01;
      end
      2'b10 : begin
        _zz_3 = 2'b01;
      end
      default : begin
        _zz_3 = 2'b10;
      end
    endcase
  end

  assign _zz_1 = input_1[0];
  assign output_0 = _zz_2;
  assign output_1 = _zz_3;

endmodule
