// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [3:0]    input_1,
  output     [2:0]    output_1
);
  reg        [2:0]    _zz_9;
  reg        [2:0]    _zz_10;
  wire       [0:0]    _zz_11;
  wire       [2:0]    _zz_12;
  wire       [2:0]    _zz_13;
  wire       [2:0]    _zz_1;
  wire       [2:0]    _zz_2;
  wire       [2:0]    _zz_3;
  wire       [2:0]    _zz_4;
  wire       [2:0]    _zz_5;
  wire       [2:0]    _zz_6;
  wire       [2:0]    _zz_7;
  wire       [2:0]    _zz_8;

  assign _zz_11 = input_1[3];
  assign _zz_12 = {2'd0, _zz_11};
  assign _zz_13 = {input_1[2],{input_1[1],input_1[0]}};
  always @(*) begin
    case(_zz_13)
      3'b000 : begin
        _zz_9 = _zz_1;
      end
      3'b001 : begin
        _zz_9 = _zz_2;
      end
      3'b010 : begin
        _zz_9 = _zz_3;
      end
      3'b011 : begin
        _zz_9 = _zz_4;
      end
      3'b100 : begin
        _zz_9 = _zz_5;
      end
      3'b101 : begin
        _zz_9 = _zz_6;
      end
      3'b110 : begin
        _zz_9 = _zz_7;
      end
      default : begin
        _zz_9 = _zz_8;
      end
    endcase
  end

  always @(*) begin
    case(_zz_12)
      3'b000 : begin
        _zz_10 = _zz_1;
      end
      3'b001 : begin
        _zz_10 = _zz_2;
      end
      3'b010 : begin
        _zz_10 = _zz_3;
      end
      3'b011 : begin
        _zz_10 = _zz_4;
      end
      3'b100 : begin
        _zz_10 = _zz_5;
      end
      3'b101 : begin
        _zz_10 = _zz_6;
      end
      3'b110 : begin
        _zz_10 = _zz_7;
      end
      default : begin
        _zz_10 = _zz_8;
      end
    endcase
  end

  assign _zz_1 = 3'b000;
  assign _zz_2 = 3'b001;
  assign _zz_3 = 3'b001;
  assign _zz_4 = 3'b010;
  assign _zz_5 = 3'b001;
  assign _zz_6 = 3'b010;
  assign _zz_7 = 3'b010;
  assign _zz_8 = 3'b011;
  assign output_1 = (_zz_9 + _zz_10);

endmodule
