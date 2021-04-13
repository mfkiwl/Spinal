// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [4:0]    input_1,
  output     [0:0]    output_0,
  output     [1:0]    output_1,
  output     [1:0]    output_2,
  output     [2:0]    output_3,
  output     [2:0]    output_4
);
  reg        [0:0]    _zz_21;
  reg        [1:0]    _zz_22;
  reg        [1:0]    _zz_23;
  reg        [2:0]    _zz_24;
  reg        [2:0]    _zz_25;
  reg        [2:0]    _zz_26;
  reg        [2:0]    _zz_27;
  wire       [0:0]    _zz_28;
  wire       [2:0]    _zz_29;
  wire       [1:0]    _zz_30;
  wire       [2:0]    _zz_31;
  wire       [0:0]    _zz_32;
  wire       [1:0]    _zz_33;
  wire       [2:0]    _zz_34;
  wire       [2:0]    _zz_35;
  wire       [2:0]    _zz_36;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire       [2:0]    _zz_5;
  wire       [2:0]    _zz_6;
  wire       [2:0]    _zz_7;
  wire       [2:0]    _zz_8;
  wire       [2:0]    _zz_9;
  wire       [2:0]    _zz_10;
  wire       [2:0]    _zz_11;
  wire       [2:0]    _zz_12;
  wire       [2:0]    _zz_13;
  wire       [2:0]    _zz_14;
  wire       [2:0]    _zz_15;
  wire       [2:0]    _zz_16;
  wire       [2:0]    _zz_17;
  wire       [2:0]    _zz_18;
  wire       [2:0]    _zz_19;
  wire       [2:0]    _zz_20;

  assign _zz_28 = _zz_4;
  assign _zz_29 = {2'd0, _zz_28};
  assign _zz_30 = {input_1[4],_zz_4};
  assign _zz_31 = {1'd0, _zz_30};
  assign _zz_32 = _zz_1;
  assign _zz_33 = {_zz_2,_zz_1};
  assign _zz_34 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_35 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_36 = {_zz_3,{_zz_2,_zz_1}};
  always @(*) begin
    case(_zz_32)
      1'b0 : begin
        _zz_21 = 1'b0;
      end
      default : begin
        _zz_21 = 1'b1;
      end
    endcase
  end

  always @(*) begin
    case(_zz_33)
      2'b00 : begin
        _zz_22 = 2'b00;
      end
      2'b01 : begin
        _zz_22 = 2'b01;
      end
      2'b10 : begin
        _zz_22 = 2'b01;
      end
      default : begin
        _zz_22 = 2'b10;
      end
    endcase
  end

  always @(*) begin
    case(_zz_34)
      3'b000 : begin
        _zz_23 = 2'b00;
      end
      3'b001 : begin
        _zz_23 = 2'b01;
      end
      3'b010 : begin
        _zz_23 = 2'b01;
      end
      3'b011 : begin
        _zz_23 = 2'b10;
      end
      3'b100 : begin
        _zz_23 = 2'b01;
      end
      3'b101 : begin
        _zz_23 = 2'b10;
      end
      3'b110 : begin
        _zz_23 = 2'b10;
      end
      default : begin
        _zz_23 = 2'b11;
      end
    endcase
  end

  always @(*) begin
    case(_zz_35)
      3'b000 : begin
        _zz_24 = _zz_5;
      end
      3'b001 : begin
        _zz_24 = _zz_6;
      end
      3'b010 : begin
        _zz_24 = _zz_7;
      end
      3'b011 : begin
        _zz_24 = _zz_8;
      end
      3'b100 : begin
        _zz_24 = _zz_9;
      end
      3'b101 : begin
        _zz_24 = _zz_10;
      end
      3'b110 : begin
        _zz_24 = _zz_11;
      end
      default : begin
        _zz_24 = _zz_12;
      end
    endcase
  end

  always @(*) begin
    case(_zz_29)
      3'b000 : begin
        _zz_25 = _zz_5;
      end
      3'b001 : begin
        _zz_25 = _zz_6;
      end
      3'b010 : begin
        _zz_25 = _zz_7;
      end
      3'b011 : begin
        _zz_25 = _zz_8;
      end
      3'b100 : begin
        _zz_25 = _zz_9;
      end
      3'b101 : begin
        _zz_25 = _zz_10;
      end
      3'b110 : begin
        _zz_25 = _zz_11;
      end
      default : begin
        _zz_25 = _zz_12;
      end
    endcase
  end

  always @(*) begin
    case(_zz_36)
      3'b000 : begin
        _zz_26 = _zz_13;
      end
      3'b001 : begin
        _zz_26 = _zz_14;
      end
      3'b010 : begin
        _zz_26 = _zz_15;
      end
      3'b011 : begin
        _zz_26 = _zz_16;
      end
      3'b100 : begin
        _zz_26 = _zz_17;
      end
      3'b101 : begin
        _zz_26 = _zz_18;
      end
      3'b110 : begin
        _zz_26 = _zz_19;
      end
      default : begin
        _zz_26 = _zz_20;
      end
    endcase
  end

  always @(*) begin
    case(_zz_31)
      3'b000 : begin
        _zz_27 = _zz_13;
      end
      3'b001 : begin
        _zz_27 = _zz_14;
      end
      3'b010 : begin
        _zz_27 = _zz_15;
      end
      3'b011 : begin
        _zz_27 = _zz_16;
      end
      3'b100 : begin
        _zz_27 = _zz_17;
      end
      3'b101 : begin
        _zz_27 = _zz_18;
      end
      3'b110 : begin
        _zz_27 = _zz_19;
      end
      default : begin
        _zz_27 = _zz_20;
      end
    endcase
  end

  assign _zz_1 = input_1[0];
  assign _zz_2 = input_1[1];
  assign _zz_3 = input_1[2];
  assign _zz_4 = input_1[3];
  assign output_0 = _zz_21;
  assign output_1 = _zz_22;
  assign output_2 = _zz_23;
  assign _zz_5 = 3'b000;
  assign _zz_6 = 3'b001;
  assign _zz_7 = 3'b001;
  assign _zz_8 = 3'b010;
  assign _zz_9 = 3'b001;
  assign _zz_10 = 3'b010;
  assign _zz_11 = 3'b010;
  assign _zz_12 = 3'b011;
  assign output_3 = (_zz_24 + _zz_25);
  assign _zz_13 = 3'b000;
  assign _zz_14 = 3'b001;
  assign _zz_15 = 3'b001;
  assign _zz_16 = 3'b010;
  assign _zz_17 = 3'b001;
  assign _zz_18 = 3'b010;
  assign _zz_19 = 3'b010;
  assign _zz_20 = 3'b011;
  assign output_4 = (_zz_26 + _zz_27);

endmodule
