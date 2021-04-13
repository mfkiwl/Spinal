// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [7:0]    input_1,
  output     [0:0]    output_0,
  output     [1:0]    output_1,
  output     [1:0]    output_2,
  output     [2:0]    output_3,
  output     [2:0]    output_4,
  output     [2:0]    output_5,
  output     [2:0]    output_6,
  output     [3:0]    output_7
);
  reg        [0:0]    _zz_48;
  reg        [1:0]    _zz_49;
  reg        [1:0]    _zz_50;
  reg        [2:0]    _zz_51;
  reg        [2:0]    _zz_52;
  reg        [2:0]    _zz_53;
  reg        [2:0]    _zz_54;
  reg        [2:0]    _zz_55;
  reg        [2:0]    _zz_56;
  reg        [2:0]    _zz_57;
  reg        [2:0]    _zz_58;
  reg        [2:0]    _zz_59;
  reg        [3:0]    _zz_60;
  reg        [3:0]    _zz_61;
  reg        [3:0]    _zz_62;
  wire       [0:0]    _zz_63;
  wire       [2:0]    _zz_64;
  wire       [1:0]    _zz_65;
  wire       [2:0]    _zz_66;
  wire       [2:0]    _zz_67;
  wire       [0:0]    _zz_68;
  wire       [2:0]    _zz_69;
  wire       [3:0]    _zz_70;
  wire       [1:0]    _zz_71;
  wire       [2:0]    _zz_72;
  wire       [0:0]    _zz_73;
  wire       [1:0]    _zz_74;
  wire       [2:0]    _zz_75;
  wire       [2:0]    _zz_76;
  wire       [2:0]    _zz_77;
  wire       [2:0]    _zz_78;
  wire       [2:0]    _zz_79;
  wire       [2:0]    _zz_80;
  wire       [2:0]    _zz_81;
  wire       [2:0]    _zz_82;
  wire       [2:0]    _zz_83;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
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
  wire       [2:0]    _zz_21;
  wire       [2:0]    _zz_22;
  wire       [2:0]    _zz_23;
  wire       [2:0]    _zz_24;
  wire       [2:0]    _zz_25;
  wire       [2:0]    _zz_26;
  wire       [2:0]    _zz_27;
  wire       [2:0]    _zz_28;
  wire       [2:0]    _zz_29;
  wire       [2:0]    _zz_30;
  wire       [2:0]    _zz_31;
  wire       [2:0]    _zz_32;
  wire       [2:0]    _zz_33;
  wire       [2:0]    _zz_34;
  wire       [2:0]    _zz_35;
  wire       [2:0]    _zz_36;
  wire       [2:0]    _zz_37;
  wire       [2:0]    _zz_38;
  wire       [2:0]    _zz_39;
  wire       [3:0]    _zz_40;
  wire       [3:0]    _zz_41;
  wire       [3:0]    _zz_42;
  wire       [3:0]    _zz_43;
  wire       [3:0]    _zz_44;
  wire       [3:0]    _zz_45;
  wire       [3:0]    _zz_46;
  wire       [3:0]    _zz_47;

  assign _zz_63 = _zz_4;
  assign _zz_64 = {2'd0, _zz_63};
  assign _zz_65 = {_zz_5,_zz_4};
  assign _zz_66 = {1'd0, _zz_65};
  assign _zz_67 = (_zz_57 + _zz_58);
  assign _zz_68 = _zz_7;
  assign _zz_69 = {2'd0, _zz_68};
  assign _zz_70 = (_zz_60 + _zz_61);
  assign _zz_71 = {input_1[7],_zz_7};
  assign _zz_72 = {1'd0, _zz_71};
  assign _zz_73 = _zz_1;
  assign _zz_74 = {_zz_2,_zz_1};
  assign _zz_75 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_76 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_77 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_78 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_79 = {_zz_6,{_zz_5,_zz_4}};
  assign _zz_80 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_81 = {_zz_6,{_zz_5,_zz_4}};
  assign _zz_82 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_83 = {_zz_6,{_zz_5,_zz_4}};
  always @(*) begin
    case(_zz_73)
      1'b0 : begin
        _zz_48 = 1'b0;
      end
      default : begin
        _zz_48 = 1'b1;
      end
    endcase
  end

  always @(*) begin
    case(_zz_74)
      2'b00 : begin
        _zz_49 = 2'b00;
      end
      2'b01 : begin
        _zz_49 = 2'b01;
      end
      2'b10 : begin
        _zz_49 = 2'b01;
      end
      default : begin
        _zz_49 = 2'b10;
      end
    endcase
  end

  always @(*) begin
    case(_zz_75)
      3'b000 : begin
        _zz_50 = 2'b00;
      end
      3'b001 : begin
        _zz_50 = 2'b01;
      end
      3'b010 : begin
        _zz_50 = 2'b01;
      end
      3'b011 : begin
        _zz_50 = 2'b10;
      end
      3'b100 : begin
        _zz_50 = 2'b01;
      end
      3'b101 : begin
        _zz_50 = 2'b10;
      end
      3'b110 : begin
        _zz_50 = 2'b10;
      end
      default : begin
        _zz_50 = 2'b11;
      end
    endcase
  end

  always @(*) begin
    case(_zz_76)
      3'b000 : begin
        _zz_51 = _zz_8;
      end
      3'b001 : begin
        _zz_51 = _zz_9;
      end
      3'b010 : begin
        _zz_51 = _zz_10;
      end
      3'b011 : begin
        _zz_51 = _zz_11;
      end
      3'b100 : begin
        _zz_51 = _zz_12;
      end
      3'b101 : begin
        _zz_51 = _zz_13;
      end
      3'b110 : begin
        _zz_51 = _zz_14;
      end
      default : begin
        _zz_51 = _zz_15;
      end
    endcase
  end

  always @(*) begin
    case(_zz_64)
      3'b000 : begin
        _zz_52 = _zz_8;
      end
      3'b001 : begin
        _zz_52 = _zz_9;
      end
      3'b010 : begin
        _zz_52 = _zz_10;
      end
      3'b011 : begin
        _zz_52 = _zz_11;
      end
      3'b100 : begin
        _zz_52 = _zz_12;
      end
      3'b101 : begin
        _zz_52 = _zz_13;
      end
      3'b110 : begin
        _zz_52 = _zz_14;
      end
      default : begin
        _zz_52 = _zz_15;
      end
    endcase
  end

  always @(*) begin
    case(_zz_77)
      3'b000 : begin
        _zz_53 = _zz_16;
      end
      3'b001 : begin
        _zz_53 = _zz_17;
      end
      3'b010 : begin
        _zz_53 = _zz_18;
      end
      3'b011 : begin
        _zz_53 = _zz_19;
      end
      3'b100 : begin
        _zz_53 = _zz_20;
      end
      3'b101 : begin
        _zz_53 = _zz_21;
      end
      3'b110 : begin
        _zz_53 = _zz_22;
      end
      default : begin
        _zz_53 = _zz_23;
      end
    endcase
  end

  always @(*) begin
    case(_zz_66)
      3'b000 : begin
        _zz_54 = _zz_16;
      end
      3'b001 : begin
        _zz_54 = _zz_17;
      end
      3'b010 : begin
        _zz_54 = _zz_18;
      end
      3'b011 : begin
        _zz_54 = _zz_19;
      end
      3'b100 : begin
        _zz_54 = _zz_20;
      end
      3'b101 : begin
        _zz_54 = _zz_21;
      end
      3'b110 : begin
        _zz_54 = _zz_22;
      end
      default : begin
        _zz_54 = _zz_23;
      end
    endcase
  end

  always @(*) begin
    case(_zz_78)
      3'b000 : begin
        _zz_55 = _zz_24;
      end
      3'b001 : begin
        _zz_55 = _zz_25;
      end
      3'b010 : begin
        _zz_55 = _zz_26;
      end
      3'b011 : begin
        _zz_55 = _zz_27;
      end
      3'b100 : begin
        _zz_55 = _zz_28;
      end
      3'b101 : begin
        _zz_55 = _zz_29;
      end
      3'b110 : begin
        _zz_55 = _zz_30;
      end
      default : begin
        _zz_55 = _zz_31;
      end
    endcase
  end

  always @(*) begin
    case(_zz_79)
      3'b000 : begin
        _zz_56 = _zz_24;
      end
      3'b001 : begin
        _zz_56 = _zz_25;
      end
      3'b010 : begin
        _zz_56 = _zz_26;
      end
      3'b011 : begin
        _zz_56 = _zz_27;
      end
      3'b100 : begin
        _zz_56 = _zz_28;
      end
      3'b101 : begin
        _zz_56 = _zz_29;
      end
      3'b110 : begin
        _zz_56 = _zz_30;
      end
      default : begin
        _zz_56 = _zz_31;
      end
    endcase
  end

  always @(*) begin
    case(_zz_80)
      3'b000 : begin
        _zz_57 = _zz_32;
      end
      3'b001 : begin
        _zz_57 = _zz_33;
      end
      3'b010 : begin
        _zz_57 = _zz_34;
      end
      3'b011 : begin
        _zz_57 = _zz_35;
      end
      3'b100 : begin
        _zz_57 = _zz_36;
      end
      3'b101 : begin
        _zz_57 = _zz_37;
      end
      3'b110 : begin
        _zz_57 = _zz_38;
      end
      default : begin
        _zz_57 = _zz_39;
      end
    endcase
  end

  always @(*) begin
    case(_zz_81)
      3'b000 : begin
        _zz_58 = _zz_32;
      end
      3'b001 : begin
        _zz_58 = _zz_33;
      end
      3'b010 : begin
        _zz_58 = _zz_34;
      end
      3'b011 : begin
        _zz_58 = _zz_35;
      end
      3'b100 : begin
        _zz_58 = _zz_36;
      end
      3'b101 : begin
        _zz_58 = _zz_37;
      end
      3'b110 : begin
        _zz_58 = _zz_38;
      end
      default : begin
        _zz_58 = _zz_39;
      end
    endcase
  end

  always @(*) begin
    case(_zz_69)
      3'b000 : begin
        _zz_59 = _zz_32;
      end
      3'b001 : begin
        _zz_59 = _zz_33;
      end
      3'b010 : begin
        _zz_59 = _zz_34;
      end
      3'b011 : begin
        _zz_59 = _zz_35;
      end
      3'b100 : begin
        _zz_59 = _zz_36;
      end
      3'b101 : begin
        _zz_59 = _zz_37;
      end
      3'b110 : begin
        _zz_59 = _zz_38;
      end
      default : begin
        _zz_59 = _zz_39;
      end
    endcase
  end

  always @(*) begin
    case(_zz_82)
      3'b000 : begin
        _zz_60 = _zz_40;
      end
      3'b001 : begin
        _zz_60 = _zz_41;
      end
      3'b010 : begin
        _zz_60 = _zz_42;
      end
      3'b011 : begin
        _zz_60 = _zz_43;
      end
      3'b100 : begin
        _zz_60 = _zz_44;
      end
      3'b101 : begin
        _zz_60 = _zz_45;
      end
      3'b110 : begin
        _zz_60 = _zz_46;
      end
      default : begin
        _zz_60 = _zz_47;
      end
    endcase
  end

  always @(*) begin
    case(_zz_83)
      3'b000 : begin
        _zz_61 = _zz_40;
      end
      3'b001 : begin
        _zz_61 = _zz_41;
      end
      3'b010 : begin
        _zz_61 = _zz_42;
      end
      3'b011 : begin
        _zz_61 = _zz_43;
      end
      3'b100 : begin
        _zz_61 = _zz_44;
      end
      3'b101 : begin
        _zz_61 = _zz_45;
      end
      3'b110 : begin
        _zz_61 = _zz_46;
      end
      default : begin
        _zz_61 = _zz_47;
      end
    endcase
  end

  always @(*) begin
    case(_zz_72)
      3'b000 : begin
        _zz_62 = _zz_40;
      end
      3'b001 : begin
        _zz_62 = _zz_41;
      end
      3'b010 : begin
        _zz_62 = _zz_42;
      end
      3'b011 : begin
        _zz_62 = _zz_43;
      end
      3'b100 : begin
        _zz_62 = _zz_44;
      end
      3'b101 : begin
        _zz_62 = _zz_45;
      end
      3'b110 : begin
        _zz_62 = _zz_46;
      end
      default : begin
        _zz_62 = _zz_47;
      end
    endcase
  end

  assign _zz_1 = input_1[0];
  assign _zz_2 = input_1[1];
  assign _zz_3 = input_1[2];
  assign _zz_4 = input_1[3];
  assign _zz_5 = input_1[4];
  assign _zz_6 = input_1[5];
  assign _zz_7 = input_1[6];
  assign output_0 = _zz_48;
  assign output_1 = _zz_49;
  assign output_2 = _zz_50;
  assign _zz_8 = 3'b000;
  assign _zz_9 = 3'b001;
  assign _zz_10 = 3'b001;
  assign _zz_11 = 3'b010;
  assign _zz_12 = 3'b001;
  assign _zz_13 = 3'b010;
  assign _zz_14 = 3'b010;
  assign _zz_15 = 3'b011;
  assign output_3 = (_zz_51 + _zz_52);
  assign _zz_16 = 3'b000;
  assign _zz_17 = 3'b001;
  assign _zz_18 = 3'b001;
  assign _zz_19 = 3'b010;
  assign _zz_20 = 3'b001;
  assign _zz_21 = 3'b010;
  assign _zz_22 = 3'b010;
  assign _zz_23 = 3'b011;
  assign output_4 = (_zz_53 + _zz_54);
  assign _zz_24 = 3'b000;
  assign _zz_25 = 3'b001;
  assign _zz_26 = 3'b001;
  assign _zz_27 = 3'b010;
  assign _zz_28 = 3'b001;
  assign _zz_29 = 3'b010;
  assign _zz_30 = 3'b010;
  assign _zz_31 = 3'b011;
  assign output_5 = (_zz_55 + _zz_56);
  assign _zz_32 = 3'b000;
  assign _zz_33 = 3'b001;
  assign _zz_34 = 3'b001;
  assign _zz_35 = 3'b010;
  assign _zz_36 = 3'b001;
  assign _zz_37 = 3'b010;
  assign _zz_38 = 3'b010;
  assign _zz_39 = 3'b011;
  assign output_6 = (_zz_67 + _zz_59);
  assign _zz_40 = 4'b0000;
  assign _zz_41 = 4'b0001;
  assign _zz_42 = 4'b0001;
  assign _zz_43 = 4'b0010;
  assign _zz_44 = 4'b0001;
  assign _zz_45 = 4'b0010;
  assign _zz_46 = 4'b0010;
  assign _zz_47 = 4'b0011;
  assign output_7 = (_zz_70 + _zz_62);

endmodule
