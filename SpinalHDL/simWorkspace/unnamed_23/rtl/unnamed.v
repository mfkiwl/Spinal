// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [3:0]    input_1,
  output     [0:0]    output_0,
  output     [1:0]    output_1,
  output     [1:0]    output_2,
  output     [2:0]    output_3
);
  reg        [0:0]    _zz_12;
  reg        [1:0]    _zz_13;
  reg        [1:0]    _zz_14;
  reg        [2:0]    _zz_15;
  reg        [2:0]    _zz_16;
  wire       [0:0]    _zz_17;
  wire       [2:0]    _zz_18;
  wire       [0:0]    _zz_19;
  wire       [1:0]    _zz_20;
  wire       [2:0]    _zz_21;
  wire       [2:0]    _zz_22;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire       [2:0]    _zz_4;
  wire       [2:0]    _zz_5;
  wire       [2:0]    _zz_6;
  wire       [2:0]    _zz_7;
  wire       [2:0]    _zz_8;
  wire       [2:0]    _zz_9;
  wire       [2:0]    _zz_10;
  wire       [2:0]    _zz_11;

  assign _zz_17 = input_1[3];
  assign _zz_18 = {2'd0, _zz_17};
  assign _zz_19 = _zz_1;
  assign _zz_20 = {_zz_2,_zz_1};
  assign _zz_21 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_22 = {_zz_3,{_zz_2,_zz_1}};
  always @(*) begin
    case(_zz_19)
      1'b0 : begin
        _zz_12 = 1'b0;
      end
      default : begin
        _zz_12 = 1'b1;
      end
    endcase
  end

  always @(*) begin
    case(_zz_20)
      2'b00 : begin
        _zz_13 = 2'b00;
      end
      2'b01 : begin
        _zz_13 = 2'b01;
      end
      2'b10 : begin
        _zz_13 = 2'b01;
      end
      default : begin
        _zz_13 = 2'b10;
      end
    endcase
  end

  always @(*) begin
    case(_zz_21)
      3'b000 : begin
        _zz_14 = 2'b00;
      end
      3'b001 : begin
        _zz_14 = 2'b01;
      end
      3'b010 : begin
        _zz_14 = 2'b01;
      end
      3'b011 : begin
        _zz_14 = 2'b10;
      end
      3'b100 : begin
        _zz_14 = 2'b01;
      end
      3'b101 : begin
        _zz_14 = 2'b10;
      end
      3'b110 : begin
        _zz_14 = 2'b10;
      end
      default : begin
        _zz_14 = 2'b11;
      end
    endcase
  end

  always @(*) begin
    case(_zz_22)
      3'b000 : begin
        _zz_15 = _zz_4;
      end
      3'b001 : begin
        _zz_15 = _zz_5;
      end
      3'b010 : begin
        _zz_15 = _zz_6;
      end
      3'b011 : begin
        _zz_15 = _zz_7;
      end
      3'b100 : begin
        _zz_15 = _zz_8;
      end
      3'b101 : begin
        _zz_15 = _zz_9;
      end
      3'b110 : begin
        _zz_15 = _zz_10;
      end
      default : begin
        _zz_15 = _zz_11;
      end
    endcase
  end

  always @(*) begin
    case(_zz_18)
      3'b000 : begin
        _zz_16 = _zz_4;
      end
      3'b001 : begin
        _zz_16 = _zz_5;
      end
      3'b010 : begin
        _zz_16 = _zz_6;
      end
      3'b011 : begin
        _zz_16 = _zz_7;
      end
      3'b100 : begin
        _zz_16 = _zz_8;
      end
      3'b101 : begin
        _zz_16 = _zz_9;
      end
      3'b110 : begin
        _zz_16 = _zz_10;
      end
      default : begin
        _zz_16 = _zz_11;
      end
    endcase
  end

  assign _zz_1 = input_1[0];
  assign _zz_2 = input_1[1];
  assign _zz_3 = input_1[2];
  assign output_0 = _zz_12;
  assign output_1 = _zz_13;
  assign output_2 = _zz_14;
  assign _zz_4 = 3'b000;
  assign _zz_5 = 3'b001;
  assign _zz_6 = 3'b001;
  assign _zz_7 = 3'b010;
  assign _zz_8 = 3'b001;
  assign _zz_9 = 3'b010;
  assign _zz_10 = 3'b010;
  assign _zz_11 = 3'b011;
  assign output_3 = (_zz_15 + _zz_16);

endmodule
