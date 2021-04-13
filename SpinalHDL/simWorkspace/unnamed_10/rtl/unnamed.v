// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [9:0]    input_1,
  output     [3:0]    output_1
);
  reg        [3:0]    _zz_9;
  reg        [3:0]    _zz_10;
  reg        [3:0]    _zz_11;
  reg        [3:0]    _zz_12;
  wire       [3:0]    _zz_13;
  wire       [3:0]    _zz_14;
  wire       [0:0]    _zz_15;
  wire       [2:0]    _zz_16;
  wire       [2:0]    _zz_17;
  wire       [2:0]    _zz_18;
  wire       [2:0]    _zz_19;
  wire       [3:0]    _zz_1;
  wire       [3:0]    _zz_2;
  wire       [3:0]    _zz_3;
  wire       [3:0]    _zz_4;
  wire       [3:0]    _zz_5;
  wire       [3:0]    _zz_6;
  wire       [3:0]    _zz_7;
  wire       [3:0]    _zz_8;

  assign _zz_13 = (_zz_9 + _zz_10);
  assign _zz_14 = (_zz_11 + _zz_12);
  assign _zz_15 = input_1[9];
  assign _zz_16 = {2'd0, _zz_15};
  assign _zz_17 = {input_1[2],{input_1[1],input_1[0]}};
  assign _zz_18 = {input_1[5],{input_1[4],input_1[3]}};
  assign _zz_19 = {input_1[8],{input_1[7],input_1[6]}};
  always @(*) begin
    case(_zz_17)
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
    case(_zz_18)
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

  always @(*) begin
    case(_zz_19)
      3'b000 : begin
        _zz_11 = _zz_1;
      end
      3'b001 : begin
        _zz_11 = _zz_2;
      end
      3'b010 : begin
        _zz_11 = _zz_3;
      end
      3'b011 : begin
        _zz_11 = _zz_4;
      end
      3'b100 : begin
        _zz_11 = _zz_5;
      end
      3'b101 : begin
        _zz_11 = _zz_6;
      end
      3'b110 : begin
        _zz_11 = _zz_7;
      end
      default : begin
        _zz_11 = _zz_8;
      end
    endcase
  end

  always @(*) begin
    case(_zz_16)
      3'b000 : begin
        _zz_12 = _zz_1;
      end
      3'b001 : begin
        _zz_12 = _zz_2;
      end
      3'b010 : begin
        _zz_12 = _zz_3;
      end
      3'b011 : begin
        _zz_12 = _zz_4;
      end
      3'b100 : begin
        _zz_12 = _zz_5;
      end
      3'b101 : begin
        _zz_12 = _zz_6;
      end
      3'b110 : begin
        _zz_12 = _zz_7;
      end
      default : begin
        _zz_12 = _zz_8;
      end
    endcase
  end

  assign _zz_1 = 4'b0000;
  assign _zz_2 = 4'b0001;
  assign _zz_3 = 4'b0001;
  assign _zz_4 = 4'b0010;
  assign _zz_5 = 4'b0001;
  assign _zz_6 = 4'b0010;
  assign _zz_7 = 4'b0010;
  assign _zz_8 = 4'b0011;
  assign output_1 = (_zz_13 + _zz_14);

endmodule
