// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [2:0]    input_1,
  output     [0:0]    output_0,
  output     [1:0]    output_1,
  output     [1:0]    output_2
);
  reg        [0:0]    _zz_3;
  reg        [1:0]    _zz_4;
  reg        [1:0]    _zz_5;
  wire       [0:0]    _zz_6;
  wire       [1:0]    _zz_7;
  wire       [2:0]    _zz_8;
  wire                _zz_1;
  wire                _zz_2;

  assign _zz_6 = _zz_1;
  assign _zz_7 = {_zz_2,_zz_1};
  assign _zz_8 = {input_1[2],{_zz_2,_zz_1}};
  always @(*) begin
    case(_zz_6)
      1'b0 : begin
        _zz_3 = 1'b0;
      end
      default : begin
        _zz_3 = 1'b1;
      end
    endcase
  end

  always @(*) begin
    case(_zz_7)
      2'b00 : begin
        _zz_4 = 2'b00;
      end
      2'b01 : begin
        _zz_4 = 2'b01;
      end
      2'b10 : begin
        _zz_4 = 2'b01;
      end
      default : begin
        _zz_4 = 2'b10;
      end
    endcase
  end

  always @(*) begin
    case(_zz_8)
      3'b000 : begin
        _zz_5 = 2'b00;
      end
      3'b001 : begin
        _zz_5 = 2'b01;
      end
      3'b010 : begin
        _zz_5 = 2'b01;
      end
      3'b011 : begin
        _zz_5 = 2'b10;
      end
      3'b100 : begin
        _zz_5 = 2'b01;
      end
      3'b101 : begin
        _zz_5 = 2'b10;
      end
      3'b110 : begin
        _zz_5 = 2'b10;
      end
      default : begin
        _zz_5 = 2'b11;
      end
    endcase
  end

  assign _zz_1 = input_1[0];
  assign _zz_2 = input_1[1];
  assign output_0 = _zz_3;
  assign output_1 = _zz_4;
  assign output_2 = _zz_5;

endmodule
