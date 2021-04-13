// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [9:0]    input_1,
  output     [0:0]    output_0,
  output     [1:0]    output_1,
  output     [1:0]    output_2,
  output     [2:0]    output_3,
  output     [2:0]    output_4,
  output     [2:0]    output_5,
  output     [2:0]    output_6,
  output     [3:0]    output_7,
  output     [3:0]    output_8,
  output     [3:0]    output_9
);
  reg        [0:0]    _zz_66;
  reg        [1:0]    _zz_67;
  reg        [1:0]    _zz_68;
  reg        [2:0]    _zz_69;
  reg        [2:0]    _zz_70;
  reg        [2:0]    _zz_71;
  reg        [2:0]    _zz_72;
  reg        [2:0]    _zz_73;
  reg        [2:0]    _zz_74;
  reg        [2:0]    _zz_75;
  reg        [2:0]    _zz_76;
  reg        [2:0]    _zz_77;
  reg        [3:0]    _zz_78;
  reg        [3:0]    _zz_79;
  reg        [3:0]    _zz_80;
  reg        [3:0]    _zz_81;
  reg        [3:0]    _zz_82;
  reg        [3:0]    _zz_83;
  reg        [3:0]    _zz_84;
  reg        [3:0]    _zz_85;
  reg        [3:0]    _zz_86;
  reg        [3:0]    _zz_87;
  wire       [0:0]    _zz_88;
  wire       [2:0]    _zz_89;
  wire       [1:0]    _zz_90;
  wire       [2:0]    _zz_91;
  wire       [2:0]    _zz_92;
  wire       [0:0]    _zz_93;
  wire       [2:0]    _zz_94;
  wire       [3:0]    _zz_95;
  wire       [1:0]    _zz_96;
  wire       [2:0]    _zz_97;
  wire       [3:0]    _zz_98;
  wire       [3:0]    _zz_99;
  wire       [3:0]    _zz_100;
  wire       [0:0]    _zz_101;
  wire       [2:0]    _zz_102;
  wire       [0:0]    _zz_103;
  wire       [1:0]    _zz_104;
  wire       [2:0]    _zz_105;
  wire       [2:0]    _zz_106;
  wire       [2:0]    _zz_107;
  wire       [2:0]    _zz_108;
  wire       [2:0]    _zz_109;
  wire       [2:0]    _zz_110;
  wire       [2:0]    _zz_111;
  wire       [2:0]    _zz_112;
  wire       [2:0]    _zz_113;
  wire       [2:0]    _zz_114;
  wire       [2:0]    _zz_115;
  wire       [2:0]    _zz_116;
  wire       [2:0]    _zz_117;
  wire       [2:0]    _zz_118;
  wire       [2:0]    _zz_119;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  wire                _zz_9;
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
  wire       [2:0]    _zz_40;
  wire       [2:0]    _zz_41;
  wire       [3:0]    _zz_42;
  wire       [3:0]    _zz_43;
  wire       [3:0]    _zz_44;
  wire       [3:0]    _zz_45;
  wire       [3:0]    _zz_46;
  wire       [3:0]    _zz_47;
  wire       [3:0]    _zz_48;
  wire       [3:0]    _zz_49;
  wire       [3:0]    _zz_50;
  wire       [3:0]    _zz_51;
  wire       [3:0]    _zz_52;
  wire       [3:0]    _zz_53;
  wire       [3:0]    _zz_54;
  wire       [3:0]    _zz_55;
  wire       [3:0]    _zz_56;
  wire       [3:0]    _zz_57;
  wire       [3:0]    _zz_58;
  wire       [3:0]    _zz_59;
  wire       [3:0]    _zz_60;
  wire       [3:0]    _zz_61;
  wire       [3:0]    _zz_62;
  wire       [3:0]    _zz_63;
  wire       [3:0]    _zz_64;
  wire       [3:0]    _zz_65;

  assign _zz_88 = _zz_4;
  assign _zz_89 = {2'd0, _zz_88};
  assign _zz_90 = {_zz_5,_zz_4};
  assign _zz_91 = {1'd0, _zz_90};
  assign _zz_92 = (_zz_75 + _zz_76);
  assign _zz_93 = _zz_7;
  assign _zz_94 = {2'd0, _zz_93};
  assign _zz_95 = (_zz_78 + _zz_79);
  assign _zz_96 = {_zz_8,_zz_7};
  assign _zz_97 = {1'd0, _zz_96};
  assign _zz_98 = (_zz_81 + _zz_82);
  assign _zz_99 = (_zz_84 + _zz_85);
  assign _zz_100 = (_zz_86 + _zz_87);
  assign _zz_101 = input_1[9];
  assign _zz_102 = {2'd0, _zz_101};
  assign _zz_103 = _zz_1;
  assign _zz_104 = {_zz_2,_zz_1};
  assign _zz_105 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_106 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_107 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_108 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_109 = {_zz_6,{_zz_5,_zz_4}};
  assign _zz_110 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_111 = {_zz_6,{_zz_5,_zz_4}};
  assign _zz_112 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_113 = {_zz_6,{_zz_5,_zz_4}};
  assign _zz_114 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_115 = {_zz_6,{_zz_5,_zz_4}};
  assign _zz_116 = {_zz_9,{_zz_8,_zz_7}};
  assign _zz_117 = {_zz_3,{_zz_2,_zz_1}};
  assign _zz_118 = {_zz_6,{_zz_5,_zz_4}};
  assign _zz_119 = {_zz_9,{_zz_8,_zz_7}};
  always @(*) begin
    case(_zz_103)
      1'b0 : begin
        _zz_66 = 1'b0;
      end
      default : begin
        _zz_66 = 1'b1;
      end
    endcase
  end

  always @(*) begin
    case(_zz_104)
      2'b00 : begin
        _zz_67 = 2'b00;
      end
      2'b01 : begin
        _zz_67 = 2'b01;
      end
      2'b10 : begin
        _zz_67 = 2'b01;
      end
      default : begin
        _zz_67 = 2'b10;
      end
    endcase
  end

  always @(*) begin
    case(_zz_105)
      3'b000 : begin
        _zz_68 = 2'b00;
      end
      3'b001 : begin
        _zz_68 = 2'b01;
      end
      3'b010 : begin
        _zz_68 = 2'b01;
      end
      3'b011 : begin
        _zz_68 = 2'b10;
      end
      3'b100 : begin
        _zz_68 = 2'b01;
      end
      3'b101 : begin
        _zz_68 = 2'b10;
      end
      3'b110 : begin
        _zz_68 = 2'b10;
      end
      default : begin
        _zz_68 = 2'b11;
      end
    endcase
  end

  always @(*) begin
    case(_zz_106)
      3'b000 : begin
        _zz_69 = _zz_10;
      end
      3'b001 : begin
        _zz_69 = _zz_11;
      end
      3'b010 : begin
        _zz_69 = _zz_12;
      end
      3'b011 : begin
        _zz_69 = _zz_13;
      end
      3'b100 : begin
        _zz_69 = _zz_14;
      end
      3'b101 : begin
        _zz_69 = _zz_15;
      end
      3'b110 : begin
        _zz_69 = _zz_16;
      end
      default : begin
        _zz_69 = _zz_17;
      end
    endcase
  end

  always @(*) begin
    case(_zz_89)
      3'b000 : begin
        _zz_70 = _zz_10;
      end
      3'b001 : begin
        _zz_70 = _zz_11;
      end
      3'b010 : begin
        _zz_70 = _zz_12;
      end
      3'b011 : begin
        _zz_70 = _zz_13;
      end
      3'b100 : begin
        _zz_70 = _zz_14;
      end
      3'b101 : begin
        _zz_70 = _zz_15;
      end
      3'b110 : begin
        _zz_70 = _zz_16;
      end
      default : begin
        _zz_70 = _zz_17;
      end
    endcase
  end

  always @(*) begin
    case(_zz_107)
      3'b000 : begin
        _zz_71 = _zz_18;
      end
      3'b001 : begin
        _zz_71 = _zz_19;
      end
      3'b010 : begin
        _zz_71 = _zz_20;
      end
      3'b011 : begin
        _zz_71 = _zz_21;
      end
      3'b100 : begin
        _zz_71 = _zz_22;
      end
      3'b101 : begin
        _zz_71 = _zz_23;
      end
      3'b110 : begin
        _zz_71 = _zz_24;
      end
      default : begin
        _zz_71 = _zz_25;
      end
    endcase
  end

  always @(*) begin
    case(_zz_91)
      3'b000 : begin
        _zz_72 = _zz_18;
      end
      3'b001 : begin
        _zz_72 = _zz_19;
      end
      3'b010 : begin
        _zz_72 = _zz_20;
      end
      3'b011 : begin
        _zz_72 = _zz_21;
      end
      3'b100 : begin
        _zz_72 = _zz_22;
      end
      3'b101 : begin
        _zz_72 = _zz_23;
      end
      3'b110 : begin
        _zz_72 = _zz_24;
      end
      default : begin
        _zz_72 = _zz_25;
      end
    endcase
  end

  always @(*) begin
    case(_zz_108)
      3'b000 : begin
        _zz_73 = _zz_26;
      end
      3'b001 : begin
        _zz_73 = _zz_27;
      end
      3'b010 : begin
        _zz_73 = _zz_28;
      end
      3'b011 : begin
        _zz_73 = _zz_29;
      end
      3'b100 : begin
        _zz_73 = _zz_30;
      end
      3'b101 : begin
        _zz_73 = _zz_31;
      end
      3'b110 : begin
        _zz_73 = _zz_32;
      end
      default : begin
        _zz_73 = _zz_33;
      end
    endcase
  end

  always @(*) begin
    case(_zz_109)
      3'b000 : begin
        _zz_74 = _zz_26;
      end
      3'b001 : begin
        _zz_74 = _zz_27;
      end
      3'b010 : begin
        _zz_74 = _zz_28;
      end
      3'b011 : begin
        _zz_74 = _zz_29;
      end
      3'b100 : begin
        _zz_74 = _zz_30;
      end
      3'b101 : begin
        _zz_74 = _zz_31;
      end
      3'b110 : begin
        _zz_74 = _zz_32;
      end
      default : begin
        _zz_74 = _zz_33;
      end
    endcase
  end

  always @(*) begin
    case(_zz_110)
      3'b000 : begin
        _zz_75 = _zz_34;
      end
      3'b001 : begin
        _zz_75 = _zz_35;
      end
      3'b010 : begin
        _zz_75 = _zz_36;
      end
      3'b011 : begin
        _zz_75 = _zz_37;
      end
      3'b100 : begin
        _zz_75 = _zz_38;
      end
      3'b101 : begin
        _zz_75 = _zz_39;
      end
      3'b110 : begin
        _zz_75 = _zz_40;
      end
      default : begin
        _zz_75 = _zz_41;
      end
    endcase
  end

  always @(*) begin
    case(_zz_111)
      3'b000 : begin
        _zz_76 = _zz_34;
      end
      3'b001 : begin
        _zz_76 = _zz_35;
      end
      3'b010 : begin
        _zz_76 = _zz_36;
      end
      3'b011 : begin
        _zz_76 = _zz_37;
      end
      3'b100 : begin
        _zz_76 = _zz_38;
      end
      3'b101 : begin
        _zz_76 = _zz_39;
      end
      3'b110 : begin
        _zz_76 = _zz_40;
      end
      default : begin
        _zz_76 = _zz_41;
      end
    endcase
  end

  always @(*) begin
    case(_zz_94)
      3'b000 : begin
        _zz_77 = _zz_34;
      end
      3'b001 : begin
        _zz_77 = _zz_35;
      end
      3'b010 : begin
        _zz_77 = _zz_36;
      end
      3'b011 : begin
        _zz_77 = _zz_37;
      end
      3'b100 : begin
        _zz_77 = _zz_38;
      end
      3'b101 : begin
        _zz_77 = _zz_39;
      end
      3'b110 : begin
        _zz_77 = _zz_40;
      end
      default : begin
        _zz_77 = _zz_41;
      end
    endcase
  end

  always @(*) begin
    case(_zz_112)
      3'b000 : begin
        _zz_78 = _zz_42;
      end
      3'b001 : begin
        _zz_78 = _zz_43;
      end
      3'b010 : begin
        _zz_78 = _zz_44;
      end
      3'b011 : begin
        _zz_78 = _zz_45;
      end
      3'b100 : begin
        _zz_78 = _zz_46;
      end
      3'b101 : begin
        _zz_78 = _zz_47;
      end
      3'b110 : begin
        _zz_78 = _zz_48;
      end
      default : begin
        _zz_78 = _zz_49;
      end
    endcase
  end

  always @(*) begin
    case(_zz_113)
      3'b000 : begin
        _zz_79 = _zz_42;
      end
      3'b001 : begin
        _zz_79 = _zz_43;
      end
      3'b010 : begin
        _zz_79 = _zz_44;
      end
      3'b011 : begin
        _zz_79 = _zz_45;
      end
      3'b100 : begin
        _zz_79 = _zz_46;
      end
      3'b101 : begin
        _zz_79 = _zz_47;
      end
      3'b110 : begin
        _zz_79 = _zz_48;
      end
      default : begin
        _zz_79 = _zz_49;
      end
    endcase
  end

  always @(*) begin
    case(_zz_97)
      3'b000 : begin
        _zz_80 = _zz_42;
      end
      3'b001 : begin
        _zz_80 = _zz_43;
      end
      3'b010 : begin
        _zz_80 = _zz_44;
      end
      3'b011 : begin
        _zz_80 = _zz_45;
      end
      3'b100 : begin
        _zz_80 = _zz_46;
      end
      3'b101 : begin
        _zz_80 = _zz_47;
      end
      3'b110 : begin
        _zz_80 = _zz_48;
      end
      default : begin
        _zz_80 = _zz_49;
      end
    endcase
  end

  always @(*) begin
    case(_zz_114)
      3'b000 : begin
        _zz_81 = _zz_50;
      end
      3'b001 : begin
        _zz_81 = _zz_51;
      end
      3'b010 : begin
        _zz_81 = _zz_52;
      end
      3'b011 : begin
        _zz_81 = _zz_53;
      end
      3'b100 : begin
        _zz_81 = _zz_54;
      end
      3'b101 : begin
        _zz_81 = _zz_55;
      end
      3'b110 : begin
        _zz_81 = _zz_56;
      end
      default : begin
        _zz_81 = _zz_57;
      end
    endcase
  end

  always @(*) begin
    case(_zz_115)
      3'b000 : begin
        _zz_82 = _zz_50;
      end
      3'b001 : begin
        _zz_82 = _zz_51;
      end
      3'b010 : begin
        _zz_82 = _zz_52;
      end
      3'b011 : begin
        _zz_82 = _zz_53;
      end
      3'b100 : begin
        _zz_82 = _zz_54;
      end
      3'b101 : begin
        _zz_82 = _zz_55;
      end
      3'b110 : begin
        _zz_82 = _zz_56;
      end
      default : begin
        _zz_82 = _zz_57;
      end
    endcase
  end

  always @(*) begin
    case(_zz_116)
      3'b000 : begin
        _zz_83 = _zz_50;
      end
      3'b001 : begin
        _zz_83 = _zz_51;
      end
      3'b010 : begin
        _zz_83 = _zz_52;
      end
      3'b011 : begin
        _zz_83 = _zz_53;
      end
      3'b100 : begin
        _zz_83 = _zz_54;
      end
      3'b101 : begin
        _zz_83 = _zz_55;
      end
      3'b110 : begin
        _zz_83 = _zz_56;
      end
      default : begin
        _zz_83 = _zz_57;
      end
    endcase
  end

  always @(*) begin
    case(_zz_117)
      3'b000 : begin
        _zz_84 = _zz_58;
      end
      3'b001 : begin
        _zz_84 = _zz_59;
      end
      3'b010 : begin
        _zz_84 = _zz_60;
      end
      3'b011 : begin
        _zz_84 = _zz_61;
      end
      3'b100 : begin
        _zz_84 = _zz_62;
      end
      3'b101 : begin
        _zz_84 = _zz_63;
      end
      3'b110 : begin
        _zz_84 = _zz_64;
      end
      default : begin
        _zz_84 = _zz_65;
      end
    endcase
  end

  always @(*) begin
    case(_zz_118)
      3'b000 : begin
        _zz_85 = _zz_58;
      end
      3'b001 : begin
        _zz_85 = _zz_59;
      end
      3'b010 : begin
        _zz_85 = _zz_60;
      end
      3'b011 : begin
        _zz_85 = _zz_61;
      end
      3'b100 : begin
        _zz_85 = _zz_62;
      end
      3'b101 : begin
        _zz_85 = _zz_63;
      end
      3'b110 : begin
        _zz_85 = _zz_64;
      end
      default : begin
        _zz_85 = _zz_65;
      end
    endcase
  end

  always @(*) begin
    case(_zz_119)
      3'b000 : begin
        _zz_86 = _zz_58;
      end
      3'b001 : begin
        _zz_86 = _zz_59;
      end
      3'b010 : begin
        _zz_86 = _zz_60;
      end
      3'b011 : begin
        _zz_86 = _zz_61;
      end
      3'b100 : begin
        _zz_86 = _zz_62;
      end
      3'b101 : begin
        _zz_86 = _zz_63;
      end
      3'b110 : begin
        _zz_86 = _zz_64;
      end
      default : begin
        _zz_86 = _zz_65;
      end
    endcase
  end

  always @(*) begin
    case(_zz_102)
      3'b000 : begin
        _zz_87 = _zz_58;
      end
      3'b001 : begin
        _zz_87 = _zz_59;
      end
      3'b010 : begin
        _zz_87 = _zz_60;
      end
      3'b011 : begin
        _zz_87 = _zz_61;
      end
      3'b100 : begin
        _zz_87 = _zz_62;
      end
      3'b101 : begin
        _zz_87 = _zz_63;
      end
      3'b110 : begin
        _zz_87 = _zz_64;
      end
      default : begin
        _zz_87 = _zz_65;
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
  assign _zz_8 = input_1[7];
  assign _zz_9 = input_1[8];
  assign output_0 = _zz_66;
  assign output_1 = _zz_67;
  assign output_2 = _zz_68;
  assign _zz_10 = 3'b000;
  assign _zz_11 = 3'b001;
  assign _zz_12 = 3'b001;
  assign _zz_13 = 3'b010;
  assign _zz_14 = 3'b001;
  assign _zz_15 = 3'b010;
  assign _zz_16 = 3'b010;
  assign _zz_17 = 3'b011;
  assign output_3 = (_zz_69 + _zz_70);
  assign _zz_18 = 3'b000;
  assign _zz_19 = 3'b001;
  assign _zz_20 = 3'b001;
  assign _zz_21 = 3'b010;
  assign _zz_22 = 3'b001;
  assign _zz_23 = 3'b010;
  assign _zz_24 = 3'b010;
  assign _zz_25 = 3'b011;
  assign output_4 = (_zz_71 + _zz_72);
  assign _zz_26 = 3'b000;
  assign _zz_27 = 3'b001;
  assign _zz_28 = 3'b001;
  assign _zz_29 = 3'b010;
  assign _zz_30 = 3'b001;
  assign _zz_31 = 3'b010;
  assign _zz_32 = 3'b010;
  assign _zz_33 = 3'b011;
  assign output_5 = (_zz_73 + _zz_74);
  assign _zz_34 = 3'b000;
  assign _zz_35 = 3'b001;
  assign _zz_36 = 3'b001;
  assign _zz_37 = 3'b010;
  assign _zz_38 = 3'b001;
  assign _zz_39 = 3'b010;
  assign _zz_40 = 3'b010;
  assign _zz_41 = 3'b011;
  assign output_6 = (_zz_92 + _zz_77);
  assign _zz_42 = 4'b0000;
  assign _zz_43 = 4'b0001;
  assign _zz_44 = 4'b0001;
  assign _zz_45 = 4'b0010;
  assign _zz_46 = 4'b0001;
  assign _zz_47 = 4'b0010;
  assign _zz_48 = 4'b0010;
  assign _zz_49 = 4'b0011;
  assign output_7 = (_zz_95 + _zz_80);
  assign _zz_50 = 4'b0000;
  assign _zz_51 = 4'b0001;
  assign _zz_52 = 4'b0001;
  assign _zz_53 = 4'b0010;
  assign _zz_54 = 4'b0001;
  assign _zz_55 = 4'b0010;
  assign _zz_56 = 4'b0010;
  assign _zz_57 = 4'b0011;
  assign output_8 = (_zz_98 + _zz_83);
  assign _zz_58 = 4'b0000;
  assign _zz_59 = 4'b0001;
  assign _zz_60 = 4'b0001;
  assign _zz_61 = 4'b0010;
  assign _zz_62 = 4'b0001;
  assign _zz_63 = 4'b0010;
  assign _zz_64 = 4'b0010;
  assign _zz_65 = 4'b0011;
  assign output_9 = (_zz_99 + _zz_100);

endmodule
