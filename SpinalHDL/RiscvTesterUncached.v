// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : RiscvTesterUncached
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26


`define BR_opt_type [3:0]
`define BR_opt_N 4'b1000
`define BR_opt_NE 4'b0001
`define BR_opt_EQ 4'b0000
`define BR_opt_GE 4'b0101
`define BR_opt_GEU 4'b0111
`define BR_opt_LT 4'b0100
`define BR_opt_LTU 4'b0110
`define BR_opt_J 4'b0010
`define BR_opt_JR 4'b0011

`define OP0_binary_sequential_type [1:0]
`define OP0_binary_sequential_RS 2'b00
`define OP0_binary_sequential_IMU 2'b01
`define OP0_binary_sequential_IMZ 2'b10
`define OP0_binary_sequential_IMJB 2'b11

`define OP1_binary_sequential_type [1:0]
`define OP1_binary_sequential_RS 2'b00
`define OP1_binary_sequential_IMI 2'b01
`define OP1_binary_sequential_IMS 2'b10
`define OP1_binary_sequential_PC_1 2'b11

`define ALU_opt_type [3:0]
`define ALU_opt_ADD 4'b0000
`define ALU_opt_SLL1 4'b0001
`define ALU_opt_SLT 4'b0010
`define ALU_opt_SLTU 4'b0011
`define ALU_opt_XOR_1 4'b0100
`define ALU_opt_SRL_1 4'b0101
`define ALU_opt_OR_1 4'b0110
`define ALU_opt_AND_1 4'b0111
`define ALU_opt_SUB 4'b1000
`define ALU_opt_COPY 4'b1111
`define ALU_opt_SRA_1 4'b1101

`define WB_binary_sequential_type [1:0]
`define WB_binary_sequential_ALU_1 2'b00
`define WB_binary_sequential_MEM 2'b01
`define WB_binary_sequential_PC4 2'b10
`define WB_binary_sequential_CSR1 2'b11

`define M_binary_sequential_type [0:0]
`define M_binary_sequential_XRD 1'b0
`define M_binary_sequential_XWR 1'b1

`define MSK_binary_sequential_type [1:0]
`define MSK_binary_sequential_B 2'b00
`define MSK_binary_sequential_H 2'b01
`define MSK_binary_sequential_W 2'b10

`define CSR_binary_sequential_type [1:0]
`define CSR_binary_sequential_N 2'b00
`define CSR_binary_sequential_W 2'b01
`define CSR_binary_sequential_S 2'b10
`define CSR_binary_sequential_C 2'b11

`define MFS_binary_sequential_type [2:0]
`define MFS_binary_sequential_N 3'b000
`define MFS_binary_sequential_SI 3'b001
`define MFS_binary_sequential_SD 3'b010
`define MFS_binary_sequential_FA 3'b011
`define MFS_binary_sequential_FD 3'b100

`define PC_binary_sequential_type [1:0]
`define PC_binary_sequential_INC 2'b00
`define PC_binary_sequential_BRA 2'b01
`define PC_binary_sequential_J 2'b10
`define PC_binary_sequential_JR 2'b11


module RiscvTesterUncached (
  output              io_i_cmd_valid,
  input               io_i_cmd_ready,
  output     [31:0]   io_i_cmd_payload_pc,
  input               io_i_rsp_valid,
  output              io_i_rsp_ready,
  input      [31:0]   io_i_rsp_payload_instruction,
  input      [31:0]   io_i_rsp_payload_pc,
  output              io_d_cmd_valid,
  input               io_d_cmd_ready,
  output              io_d_cmd_payload_wr,
  output     [31:0]   io_d_cmd_payload_address,
  output     [31:0]   io_d_cmd_payload_data,
  output     [1:0]    io_d_cmd_payload_size,
  input               io_d_rsp_valid,
  output              io_d_rsp_ready,
  input      [31:0]   io_d_rsp_payload,
  output              io_iCheck_valid,
  output     [31:0]   io_iCheck_payload_address,
  output     [31:0]   io_iCheck_payload_data,
  input               io_iCmdDrive,
  input               io_iRspDrive,
  input               io_dCmdDrive,
  input               io_dRspDrive,
  input               io_doCacheFlush,
  output              io_cpuCmdLog_valid,
  output              io_cpuCmdLog_payload_wr,
  output     [31:0]   io_cpuCmdLog_payload_address,
  output     [31:0]   io_cpuCmdLog_payload_data,
  output     [1:0]    io_cpuCmdLog_payload_size,
  output              io_cpuRspLog_valid,
  output     [31:0]   io_cpuRspLog_payload,
  input      [3:0]    io_interrupt,
  input               clk,
  input               reset
);
  wire                _zz_68;
  wire                _zz_69;
  wire                _zz_70;
  wire                _zz_71;
  wire                _zz_72;
  wire                _zz_73;
  wire                _zz_74;
  wire                _zz_75;
  wire                core_io_i_cmd_valid;
  wire       [31:0]   core_io_i_cmd_payload_pc;
  wire                core_io_i_rsp_ready;
  wire                core_io_d_cmd_valid;
  wire                core_io_d_cmd_payload_wr;
  wire       [31:0]   core_io_d_cmd_payload_address;
  wire       [31:0]   core_io_d_cmd_payload_data;
  wire       [1:0]    core_io_d_cmd_payload_size;
  wire                core_io_d_rsp_ready;
  wire                core__zz_32;
  wire       [31:0]   core__zz_33;
  wire       [31:0]   core__zz_34;
  wire                core__zz_35;
  wire                core__zz_36;
  wire                core__zz_37;
  wire       [31:0]   core__zz_38;
  wire       [31:0]   core__zz_39;
  wire       [1:0]    core__zz_40;
  wire                core__zz_41;
  wire       [31:0]   core__zz_42;
  wire                _zz_76;
  wire                _zz_77;
  wire                _zz_78;
  wire                _zz_79;
  wire                _zz_80;
  wire                _zz_81;
  wire                _zz_82;
  wire                _zz_83;
  wire                _zz_84;
  wire                _zz_85;
  wire                _zz_86;
  wire                _zz_87;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire       [31:0]   _zz_4;
  wire       [31:0]   _zz_5;
  wire       [1:0]    _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire       [31:0]   _zz_10;
  wire       [31:0]   _zz_11;
  wire       [1:0]    _zz_12;
  reg                 _zz_13;
  reg                 _zz_14;
  reg        [31:0]   _zz_15;
  reg        [31:0]   _zz_16;
  reg        [1:0]    _zz_17;
  wire                _zz_18;
  wire                _zz_19;
  wire                _zz_20;
  wire       [31:0]   _zz_21;
  wire       [31:0]   _zz_22;
  wire       [1:0]    _zz_23;
  reg                 _zz_24;
  reg                 _zz_25;
  reg        [31:0]   _zz_26;
  reg        [31:0]   _zz_27;
  reg        [1:0]    _zz_28;
  wire                _zz_29;
  wire                _zz_30;
  wire                _zz_31;
  wire       [31:0]   _zz_32;
  wire       [31:0]   _zz_33;
  wire       [1:0]    _zz_34;
  reg                 _zz_35;
  reg                 _zz_36;
  reg        [31:0]   _zz_37;
  reg        [31:0]   _zz_38;
  reg        [1:0]    _zz_39;
  wire                _zz_40;
  wire                _zz_41;
  wire                _zz_42;
  wire       [31:0]   _zz_43;
  wire       [31:0]   _zz_44;
  wire       [1:0]    _zz_45;
  reg                 _zz_46;
  reg                 _zz_47;
  reg        [31:0]   _zz_48;
  reg        [31:0]   _zz_49;
  reg        [1:0]    _zz_50;
  wire                _zz_51;
  wire                _zz_52;
  wire                _zz_53;
  wire       [31:0]   _zz_54;
  wire       [31:0]   _zz_55;
  wire       [1:0]    _zz_56;
  reg                 _zz_57;
  reg                 _zz_58;
  reg        [31:0]   _zz_59;
  reg        [31:0]   _zz_60;
  reg        [1:0]    _zz_61;
  wire                _zz_62;
  reg                 _zz_63;
  reg                 _zz_64;
  reg        [31:0]   _zz_65;
  reg        [31:0]   _zz_66;
  reg        [1:0]    _zz_67;
  wire                io_d_rsp_m2sPipe_valid;
  wire                io_d_rsp_m2sPipe_ready;
  wire       [31:0]   io_d_rsp_m2sPipe_payload;
  reg                 io_d_rsp_m2sPipe_rValid;
  reg        [31:0]   io_d_rsp_m2sPipe_rData;
  wire                io_d_rsp_m2sPipe_s2mPipe_valid;
  wire                io_d_rsp_m2sPipe_s2mPipe_ready;
  wire       [31:0]   io_d_rsp_m2sPipe_s2mPipe_payload;
  reg                 io_d_rsp_m2sPipe_s2mPipe_rValid;
  reg        [31:0]   io_d_rsp_m2sPipe_s2mPipe_rData;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_valid;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready;
  wire       [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_payload;
  reg                 io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid;
  reg        [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rData;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_valid;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready;
  wire       [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_payload;
  reg                 io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid;
  reg        [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rData;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready;
  wire       [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload;
  reg                 io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid;
  reg        [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready;
  wire       [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload;
  reg                 io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid;
  reg        [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid;
  wire                io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready;
  wire       [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload;
  reg                 io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid;
  reg        [31:0]   io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData;

  assign _zz_76 = (_zz_2 && (! _zz_8));
  assign _zz_77 = (_zz_8 && (! _zz_19));
  assign _zz_78 = (_zz_19 && (! _zz_30));
  assign _zz_79 = (_zz_30 && (! _zz_41));
  assign _zz_80 = (_zz_41 && (! _zz_52));
  assign _zz_81 = (_zz_52 && (! _zz_62));
  assign _zz_82 = (io_d_rsp_m2sPipe_ready && (! io_d_rsp_m2sPipe_s2mPipe_ready));
  assign _zz_83 = (io_d_rsp_m2sPipe_s2mPipe_ready && (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready));
  assign _zz_84 = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready && (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready));
  assign _zz_85 = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready && (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready));
  assign _zz_86 = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready && (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready));
  assign _zz_87 = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready && (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready));
  RiscvCore core (
    .io_interrupt_1                  (_zz_68                                                                          ), //i
    .io_interrupt_0                  (_zz_69                                                                          ), //i
    .io_interrupt_3                  (_zz_70                                                                          ), //i
    .io_interrupt_2                  (_zz_71                                                                          ), //i
    .io_i_cmd_valid                  (core_io_i_cmd_valid                                                             ), //o
    .io_i_cmd_ready                  (_zz_72                                                                          ), //i
    .io_i_cmd_payload_pc             (core_io_i_cmd_payload_pc[31:0]                                                  ), //o
    .io_i_rsp_valid                  (_zz_73                                                                          ), //i
    .io_i_rsp_ready                  (core_io_i_rsp_ready                                                             ), //o
    .io_i_rsp_payload_instruction    (io_i_rsp_payload_instruction[31:0]                                              ), //i
    .io_i_rsp_payload_pc             (io_i_rsp_payload_pc[31:0]                                                       ), //i
    .io_d_cmd_valid                  (core_io_d_cmd_valid                                                             ), //o
    .io_d_cmd_ready                  (_zz_74                                                                          ), //i
    .io_d_cmd_payload_wr             (core_io_d_cmd_payload_wr                                                        ), //o
    .io_d_cmd_payload_address        (core_io_d_cmd_payload_address[31:0]                                             ), //o
    .io_d_cmd_payload_data           (core_io_d_cmd_payload_data[31:0]                                                ), //o
    .io_d_cmd_payload_size           (core_io_d_cmd_payload_size[1:0]                                                 ), //o
    .io_d_rsp_valid                  (_zz_75                                                                          ), //i
    .io_d_rsp_ready                  (core_io_d_rsp_ready                                                             ), //o
    .io_d_rsp_payload                (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload[31:0]  ), //i
    ._zz_32                          (core__zz_32                                                                     ), //o
    ._zz_33                          (core__zz_33[31:0]                                                               ), //o
    ._zz_34                          (core__zz_34[31:0]                                                               ), //o
    ._zz_35                          (core__zz_35                                                                     ), //o
    ._zz_36                          (core__zz_36                                                                     ), //o
    ._zz_37                          (core__zz_37                                                                     ), //o
    ._zz_38                          (core__zz_38[31:0]                                                               ), //o
    ._zz_39                          (core__zz_39[31:0]                                                               ), //o
    ._zz_40                          (core__zz_40[1:0]                                                                ), //o
    ._zz_41                          (core__zz_41                                                                     ), //o
    ._zz_42                          (core__zz_42[31:0]                                                               ), //o
    .clk                             (clk                                                                             ), //i
    .reset                           (reset                                                                           )  //i
  );
  assign _zz_68 = io_interrupt[1];
  assign _zz_69 = io_interrupt[0];
  assign _zz_70 = io_interrupt[3];
  assign _zz_71 = io_interrupt[2];
  assign _zz_72 = (io_i_cmd_ready && io_iCmdDrive);
  assign io_i_cmd_valid = (core_io_i_cmd_valid && io_iCmdDrive);
  assign io_i_cmd_payload_pc = core_io_i_cmd_payload_pc;
  assign _zz_73 = (io_i_rsp_valid && io_iRspDrive);
  assign io_i_rsp_ready = (core_io_i_rsp_ready && io_iRspDrive);
  assign _zz_1 = (core_io_d_cmd_valid && io_dCmdDrive);
  assign _zz_74 = (_zz_2 && io_dCmdDrive);
  assign _zz_3 = core_io_d_cmd_payload_wr;
  assign _zz_4 = core_io_d_cmd_payload_address;
  assign _zz_5 = core_io_d_cmd_payload_data;
  assign _zz_6 = core_io_d_cmd_payload_size;
  assign _zz_7 = (_zz_1 || _zz_13);
  assign _zz_2 = (! _zz_13);
  assign _zz_9 = (_zz_13 ? _zz_14 : _zz_3);
  assign _zz_10 = (_zz_13 ? _zz_15 : _zz_4);
  assign _zz_11 = (_zz_13 ? _zz_16 : _zz_5);
  assign _zz_12 = (_zz_13 ? _zz_17 : _zz_6);
  assign _zz_18 = (_zz_7 || _zz_24);
  assign _zz_8 = (! _zz_24);
  assign _zz_20 = (_zz_24 ? _zz_25 : _zz_9);
  assign _zz_21 = (_zz_24 ? _zz_26 : _zz_10);
  assign _zz_22 = (_zz_24 ? _zz_27 : _zz_11);
  assign _zz_23 = (_zz_24 ? _zz_28 : _zz_12);
  assign _zz_29 = (_zz_18 || _zz_35);
  assign _zz_19 = (! _zz_35);
  assign _zz_31 = (_zz_35 ? _zz_36 : _zz_20);
  assign _zz_32 = (_zz_35 ? _zz_37 : _zz_21);
  assign _zz_33 = (_zz_35 ? _zz_38 : _zz_22);
  assign _zz_34 = (_zz_35 ? _zz_39 : _zz_23);
  assign _zz_40 = (_zz_29 || _zz_46);
  assign _zz_30 = (! _zz_46);
  assign _zz_42 = (_zz_46 ? _zz_47 : _zz_31);
  assign _zz_43 = (_zz_46 ? _zz_48 : _zz_32);
  assign _zz_44 = (_zz_46 ? _zz_49 : _zz_33);
  assign _zz_45 = (_zz_46 ? _zz_50 : _zz_34);
  assign _zz_51 = (_zz_40 || _zz_57);
  assign _zz_41 = (! _zz_57);
  assign _zz_53 = (_zz_57 ? _zz_58 : _zz_42);
  assign _zz_54 = (_zz_57 ? _zz_59 : _zz_43);
  assign _zz_55 = (_zz_57 ? _zz_60 : _zz_44);
  assign _zz_56 = (_zz_57 ? _zz_61 : _zz_45);
  assign _zz_52 = (! _zz_63);
  assign io_d_cmd_valid = (_zz_51 || _zz_63);
  assign _zz_62 = io_d_cmd_ready;
  assign io_d_cmd_payload_wr = (_zz_63 ? _zz_64 : _zz_53);
  assign io_d_cmd_payload_address = (_zz_63 ? _zz_65 : _zz_54);
  assign io_d_cmd_payload_data = (_zz_63 ? _zz_66 : _zz_55);
  assign io_d_cmd_payload_size = (_zz_63 ? _zz_67 : _zz_56);
  assign io_d_rsp_ready = ((1'b1 && (! io_d_rsp_m2sPipe_valid)) || io_d_rsp_m2sPipe_ready);
  assign io_d_rsp_m2sPipe_valid = io_d_rsp_m2sPipe_rValid;
  assign io_d_rsp_m2sPipe_payload = io_d_rsp_m2sPipe_rData;
  assign io_d_rsp_m2sPipe_s2mPipe_valid = (io_d_rsp_m2sPipe_valid || io_d_rsp_m2sPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_ready = (! io_d_rsp_m2sPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_payload = (io_d_rsp_m2sPipe_s2mPipe_rValid ? io_d_rsp_m2sPipe_s2mPipe_rData : io_d_rsp_m2sPipe_payload);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_valid = (io_d_rsp_m2sPipe_s2mPipe_valid || io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_ready = (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_payload = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid ? io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rData : io_d_rsp_m2sPipe_s2mPipe_payload);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_valid = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_valid || io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready = (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_payload = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid ? io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rData : io_d_rsp_m2sPipe_s2mPipe_s2mPipe_payload);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_valid || io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready = (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid ? io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData : io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_payload);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid || io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready = (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid ? io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData : io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid || io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready = (! io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid ? io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData : io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload);
  assign io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready = (core_io_d_rsp_ready && io_dRspDrive);
  assign _zz_75 = (io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid && io_dRspDrive);
  assign io_iCheck_valid = core__zz_32;
  assign io_iCheck_payload_address = core__zz_33;
  assign io_iCheck_payload_data = core__zz_34;
  assign io_cpuCmdLog_valid = (core__zz_35 && core__zz_36);
  assign io_cpuCmdLog_payload_wr = core__zz_37;
  assign io_cpuCmdLog_payload_address = core__zz_38;
  assign io_cpuCmdLog_payload_data = core__zz_39;
  assign io_cpuCmdLog_payload_size = core__zz_40;
  assign io_cpuRspLog_valid = core__zz_41;
  assign io_cpuRspLog_payload = core__zz_42;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_13 <= 1'b0;
      _zz_24 <= 1'b0;
      _zz_35 <= 1'b0;
      _zz_46 <= 1'b0;
      _zz_57 <= 1'b0;
      _zz_63 <= 1'b0;
      io_d_rsp_m2sPipe_rValid <= 1'b0;
      io_d_rsp_m2sPipe_s2mPipe_rValid <= 1'b0;
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
    end else begin
      if(_zz_8)begin
        _zz_13 <= 1'b0;
      end
      if(_zz_76)begin
        _zz_13 <= _zz_1;
      end
      if(_zz_19)begin
        _zz_24 <= 1'b0;
      end
      if(_zz_77)begin
        _zz_24 <= _zz_7;
      end
      if(_zz_30)begin
        _zz_35 <= 1'b0;
      end
      if(_zz_78)begin
        _zz_35 <= _zz_18;
      end
      if(_zz_41)begin
        _zz_46 <= 1'b0;
      end
      if(_zz_79)begin
        _zz_46 <= _zz_29;
      end
      if(_zz_52)begin
        _zz_57 <= 1'b0;
      end
      if(_zz_80)begin
        _zz_57 <= _zz_40;
      end
      if(_zz_62)begin
        _zz_63 <= 1'b0;
      end
      if(_zz_81)begin
        _zz_63 <= _zz_51;
      end
      if(io_d_rsp_ready)begin
        io_d_rsp_m2sPipe_rValid <= io_d_rsp_valid;
      end
      if(io_d_rsp_m2sPipe_s2mPipe_ready)begin
        io_d_rsp_m2sPipe_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_82)begin
        io_d_rsp_m2sPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_valid;
      end
      if(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_ready)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_83)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_valid;
      end
      if(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_ready)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_84)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_valid;
      end
      if(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_85)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_valid;
      end
      if(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_86)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid;
      end
      if(io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_ready)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_87)begin
        io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rValid <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_valid;
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_76)begin
      _zz_14 <= _zz_3;
      _zz_15 <= _zz_4;
      _zz_16 <= _zz_5;
      _zz_17 <= _zz_6;
    end
    if(_zz_77)begin
      _zz_25 <= _zz_9;
      _zz_26 <= _zz_10;
      _zz_27 <= _zz_11;
      _zz_28 <= _zz_12;
    end
    if(_zz_78)begin
      _zz_36 <= _zz_20;
      _zz_37 <= _zz_21;
      _zz_38 <= _zz_22;
      _zz_39 <= _zz_23;
    end
    if(_zz_79)begin
      _zz_47 <= _zz_31;
      _zz_48 <= _zz_32;
      _zz_49 <= _zz_33;
      _zz_50 <= _zz_34;
    end
    if(_zz_80)begin
      _zz_58 <= _zz_42;
      _zz_59 <= _zz_43;
      _zz_60 <= _zz_44;
      _zz_61 <= _zz_45;
    end
    if(_zz_81)begin
      _zz_64 <= _zz_53;
      _zz_65 <= _zz_54;
      _zz_66 <= _zz_55;
      _zz_67 <= _zz_56;
    end
    if(io_d_rsp_ready)begin
      io_d_rsp_m2sPipe_rData <= io_d_rsp_payload;
    end
    if(_zz_82)begin
      io_d_rsp_m2sPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_payload;
    end
    if(_zz_83)begin
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_payload;
    end
    if(_zz_84)begin
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_payload;
    end
    if(_zz_85)begin
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_payload;
    end
    if(_zz_86)begin
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload;
    end
    if(_zz_87)begin
      io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_rData <= io_d_rsp_m2sPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_s2mPipe_payload;
    end
  end


endmodule

module RiscvCore (
  input               io_interrupt_1,
  input               io_interrupt_0,
  input               io_interrupt_3,
  input               io_interrupt_2,
  output              io_i_cmd_valid,
  input               io_i_cmd_ready,
  output     [31:0]   io_i_cmd_payload_pc,
  input               io_i_rsp_valid,
  output              io_i_rsp_ready,
  input      [31:0]   io_i_rsp_payload_instruction,
  input      [31:0]   io_i_rsp_payload_pc,
  output              io_d_cmd_valid,
  input               io_d_cmd_ready,
  output              io_d_cmd_payload_wr,
  output     [31:0]   io_d_cmd_payload_address,
  output     [31:0]   io_d_cmd_payload_data,
  output     [1:0]    io_d_cmd_payload_size,
  input               io_d_rsp_valid,
  output              io_d_rsp_ready,
  input      [31:0]   io_d_rsp_payload,
  output              _zz_32,
  output     [31:0]   _zz_33,
  output     [31:0]   _zz_34,
  output              _zz_35,
  output              _zz_36,
  output              _zz_37,
  output     [31:0]   _zz_38,
  output     [31:0]   _zz_39,
  output     [1:0]    _zz_40,
  output              _zz_41,
  output     [31:0]   _zz_42,
  input               clk,
  input               reset
);
  reg                 _zz_43;
  wire                _zz_44;
  reg                 _zz_45;
  reg        [31:0]   _zz_46;
  reg        [31:0]   _zz_47;
  wire       [31:0]   execute0_alu_io_result;
  wire       [31:0]   execute0_alu_io_adder;
  wire                DivExtension_divider_io_cmd_ready;
  wire                DivExtension_divider_io_rsp_valid;
  wire       [31:0]   DivExtension_divider_io_rsp_payload_quotient;
  wire       [31:0]   DivExtension_divider_io_rsp_payload_remainder;
  wire                DivExtension_divider_io_rsp_payload_error;
  wire                _zz_48;
  wire                _zz_49;
  wire                _zz_50;
  wire                _zz_51;
  wire                _zz_52;
  wire                _zz_53;
  wire                _zz_54;
  wire                _zz_55;
  wire                _zz_56;
  wire                _zz_57;
  wire                _zz_58;
  wire                _zz_59;
  wire                _zz_60;
  wire                _zz_61;
  wire                _zz_62;
  wire                _zz_63;
  wire                _zz_64;
  wire                _zz_65;
  wire                _zz_66;
  wire                _zz_67;
  wire                _zz_68;
  wire                _zz_69;
  wire                _zz_70;
  wire                _zz_71;
  wire       [1:0]    _zz_72;
  wire                _zz_73;
  wire                _zz_74;
  wire                _zz_75;
  wire                _zz_76;
  wire                _zz_77;
  wire                _zz_78;
  wire                _zz_79;
  wire                _zz_80;
  wire       [1:0]    _zz_81;
  wire       [1:0]    _zz_82;
  wire       [2:0]    _zz_83;
  wire       [31:0]   _zz_84;
  wire       [0:0]    _zz_85;
  wire       [1:0]    _zz_86;
  wire       [19:0]   _zz_87;
  wire       [11:0]   _zz_88;
  wire       [31:0]   _zz_89;
  wire       [4:0]    _zz_90;
  wire       [11:0]   _zz_91;
  wire       [11:0]   _zz_92;
  wire       [3:0]    _zz_93;
  wire       [32:0]   _zz_94;
  wire       [2:0]    _zz_95;
  wire       [1:0]    _zz_96;
  wire       [2:0]    _zz_97;
  wire       [1:0]    _zz_98;
  wire       [1:0]    _zz_99;
  wire       [0:0]    _zz_100;
  wire       [1:0]    _zz_101;
  wire       [1:0]    _zz_102;
  wire       [1:0]    _zz_103;
  wire       [1:0]    _zz_104;
  wire       [49:0]   _zz_105;
  wire       [35:0]   _zz_106;
  wire       [49:0]   _zz_107;
  wire       [35:0]   _zz_108;
  wire       [32:0]   _zz_109;
  wire       [35:0]   _zz_110;
  wire       [49:0]   _zz_111;
  wire       [49:0]   _zz_112;
  wire       [65:0]   _zz_113;
  wire       [65:0]   _zz_114;
  wire       [31:0]   _zz_115;
  wire       [31:0]   _zz_116;
  wire       [4:0]    _zz_117;
  wire       [32:0]   _zz_118;
  wire       [31:0]   _zz_119;
  wire       [32:0]   _zz_120;
  wire                _zz_121;
  wire                _zz_122;
  wire       [15:0]   _zz_123;
  wire       [15:0]   _zz_124;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 iCmd_valid;
  wire                iCmd_ready;
  wire       [31:0]   iCmd_payload_pc;
  wire                iRsp_valid;
  reg                 iRsp_ready;
  wire       [31:0]   iRsp_payload_instruction;
  wire       [31:0]   iRsp_payload_pc;
  wire                dCmd_valid;
  wire                dCmd_ready;
  wire                dCmd_payload_wr;
  wire       [31:0]   dCmd_payload_address;
  wire       [31:0]   dCmd_payload_data;
  wire       [1:0]    dCmd_payload_size;
  wire                dRsp_valid;
  reg                 dRsp_ready;
  wire       [31:0]   dRsp_payload;
  wire                prefetch_halt;
  reg        [31:0]   prefetch_pc;
  reg                 prefetch_inc;
  reg        [31:0]   prefetch_pcNext;
  reg                 prefetch_pcLoad_valid;
  reg        [31:0]   prefetch_pcLoad_payload;
  reg                 prefetch_resetDone;
  wire                fetch_outInst_valid;
  wire                fetch_outInst_ready;
  wire       [31:0]   fetch_outInst_payload_pc;
  wire       [31:0]   fetch_outInst_payload_instruction;
  wire       [13:0]   fetch_outInst_payload_branchCacheLine_pc;
  wire       [1:0]    fetch_outInst_payload_branchCacheLine_history;
  reg                 fetch_throwIt;
  wire                fetch_flush;
  reg                 fetch_pendingPrefetch_incrementIt;
  reg                 fetch_pendingPrefetch_decrementIt;
  wire       [1:0]    fetch_pendingPrefetch_valueNext;
  reg        [1:0]    fetch_pendingPrefetch_value;
  wire                fetch_pendingPrefetch_willOverflowIfInc;
  wire                fetch_pendingPrefetch_willOverflow;
  reg        [1:0]    fetch_pendingPrefetch_finalIncrement;
  reg        [1:0]    fetch_throwRemaining;
  wire                fetch_throwNextIRsp;
  reg                 iRsp_thrown_valid;
  wire                iRsp_thrown_ready;
  wire       [31:0]   iRsp_thrown_payload_instruction;
  wire       [31:0]   iRsp_thrown_payload_pc;
  wire                decode_inInst_valid;
  reg                 decode_inInst_ready;
  wire       [31:0]   decode_inInst_payload_pc;
  wire       [31:0]   decode_inInst_payload_instruction;
  wire       [13:0]   decode_inInst_payload_branchCacheLine_pc;
  wire       [1:0]    decode_inInst_payload_branchCacheLine_history;
  reg                 fetch_outInst_m2sPipe_rValid;
  reg        [31:0]   fetch_outInst_m2sPipe_rData_pc;
  reg        [31:0]   fetch_outInst_m2sPipe_rData_instruction;
  reg        [13:0]   fetch_outInst_m2sPipe_rData_branchCacheLine_pc;
  reg        [1:0]    fetch_outInst_m2sPipe_rData_branchCacheLine_history;
  reg                 decode_ctrl_instVal;
  reg        `BR_opt_type decode_ctrl_br;
  reg                 decode_ctrl_jmp;
  reg        `OP0_binary_sequential_type decode_ctrl_op0;
  reg        `OP1_binary_sequential_type decode_ctrl_op1;
  reg        `ALU_opt_type decode_ctrl_alu;
  reg        `WB_binary_sequential_type decode_ctrl_wb;
  reg                 decode_ctrl_rfen;
  reg                 decode_ctrl_execute0AluBypass;
  reg                 decode_ctrl_execute1AluBypass;
  wire                decode_ctrl_canInternalyStallWriteBack0;
  reg                 decode_ctrl_men;
  reg        `M_binary_sequential_type decode_ctrl_m;
  wire       `MSK_binary_sequential_type decode_ctrl_msk;
  reg        `CSR_binary_sequential_type decode_ctrl_csr;
  wire       `MFS_binary_sequential_type decode_ctrl_mfs;
  reg                 decode_ctrl_useSrc0;
  reg                 decode_ctrl_useSrc1;
  reg        [1:0]    decode_ctrl_extensionTag;
  reg                 decode_ctrl_fencei;
  wire       `MSK_binary_sequential_type _zz_3;
  wire                _zz_4;
  wire       `ALU_opt_type _zz_5;
  wire       `ALU_opt_type _zz_6;
  wire       `BR_opt_type _zz_7;
  wire       `CSR_binary_sequential_type _zz_8;
  wire                decode_hazard;
  reg                 decode_throwIt;
  reg                 decode_halt;
  wire       [4:0]    decode_addr0;
  wire       [4:0]    decode_addr1;
  wire                decode_addr0IsZero;
  wire                decode_addr1IsZero;
  wire       [31:0]   decode_srcInstruction;
  wire       [4:0]    decode_regFileReadAddress0;
  wire       [4:0]    decode_regFileReadAddress1;
  wire       [31:0]   decode_src0;
  wire       [31:0]   decode_src1;
  wire                _zz_9;
  reg        [10:0]   _zz_10;
  wire                _zz_11;
  reg        [18:0]   _zz_12;
  wire       [31:0]   decode_brjmpImm;
  wire       [31:0]   decode_brJumpPc;
  wire                decode_branchCacheHit;
  wire                decode_staticBranchPrediction;
  wire                decode_shouldTakeBranch;
  wire                decode_outInst_valid;
  wire                decode_outInst_ready;
  wire       [31:0]   decode_outInst_payload_pc;
  wire       [31:0]   decode_outInst_payload_instruction;
  wire                decode_outInst_payload_ctrl_instVal;
  wire       `BR_opt_type decode_outInst_payload_ctrl_br;
  wire                decode_outInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type decode_outInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type decode_outInst_payload_ctrl_op1;
  wire       `ALU_opt_type decode_outInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type decode_outInst_payload_ctrl_wb;
  wire                decode_outInst_payload_ctrl_rfen;
  wire                decode_outInst_payload_ctrl_execute0AluBypass;
  wire                decode_outInst_payload_ctrl_execute1AluBypass;
  wire                decode_outInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                decode_outInst_payload_ctrl_men;
  wire       `M_binary_sequential_type decode_outInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type decode_outInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type decode_outInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type decode_outInst_payload_ctrl_mfs;
  wire                decode_outInst_payload_ctrl_useSrc0;
  wire                decode_outInst_payload_ctrl_useSrc1;
  wire       [1:0]    decode_outInst_payload_ctrl_extensionTag;
  wire                decode_outInst_payload_ctrl_fencei;
  wire       [31:0]   decode_outInst_payload_src0;
  wire       [31:0]   decode_outInst_payload_src1;
  wire       [31:0]   decode_outInst_payload_alu_op0;
  wire       [31:0]   decode_outInst_payload_alu_op1;
  wire                decode_outInst_payload_doSub;
  wire                decode_outInst_payload_predictorHasBranch;
  wire                decode_outInst_payload_branchHistory_valid;
  wire       [1:0]    decode_outInst_payload_branchHistory_payload;
  wire                decode_pcLoad_valid;
  wire       [31:0]   decode_pcLoad_payload;
  reg                 decode_inInst_thrown_valid;
  wire                decode_inInst_thrown_ready;
  wire       [31:0]   decode_inInst_thrown_payload_pc;
  wire       [31:0]   decode_inInst_thrown_payload_instruction;
  wire       [13:0]   decode_inInst_thrown_payload_branchCacheLine_pc;
  wire       [1:0]    decode_inInst_thrown_payload_branchCacheLine_history;
  wire                _zz_13;
  reg        [31:0]   _zz_14;
  wire                _zz_15;
  reg        [19:0]   _zz_16;
  wire                _zz_17;
  reg        [19:0]   _zz_18;
  reg        [31:0]   _zz_19;
  wire                decode_flush;
  wire                execute0_inInst_valid;
  reg                 execute0_inInst_ready;
  wire       [31:0]   execute0_inInst_payload_pc;
  wire       [31:0]   execute0_inInst_payload_instruction;
  wire                execute0_inInst_payload_ctrl_instVal;
  wire       `BR_opt_type execute0_inInst_payload_ctrl_br;
  wire                execute0_inInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute0_inInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute0_inInst_payload_ctrl_op1;
  wire       `ALU_opt_type execute0_inInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute0_inInst_payload_ctrl_wb;
  wire                execute0_inInst_payload_ctrl_rfen;
  wire                execute0_inInst_payload_ctrl_execute0AluBypass;
  wire                execute0_inInst_payload_ctrl_execute1AluBypass;
  wire                execute0_inInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute0_inInst_payload_ctrl_men;
  wire       `M_binary_sequential_type execute0_inInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute0_inInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute0_inInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute0_inInst_payload_ctrl_mfs;
  wire                execute0_inInst_payload_ctrl_useSrc0;
  wire                execute0_inInst_payload_ctrl_useSrc1;
  wire       [1:0]    execute0_inInst_payload_ctrl_extensionTag;
  wire                execute0_inInst_payload_ctrl_fencei;
  wire       [31:0]   execute0_inInst_payload_src0;
  wire       [31:0]   execute0_inInst_payload_src1;
  wire       [31:0]   execute0_inInst_payload_alu_op0;
  wire       [31:0]   execute0_inInst_payload_alu_op1;
  wire                execute0_inInst_payload_doSub;
  wire                execute0_inInst_payload_predictorHasBranch;
  wire                execute0_inInst_payload_branchHistory_valid;
  wire       [1:0]    execute0_inInst_payload_branchHistory_payload;
  reg                 decode_outInst_m2sPipe_rValid;
  reg        [31:0]   decode_outInst_m2sPipe_rData_pc;
  reg        [31:0]   decode_outInst_m2sPipe_rData_instruction;
  reg                 decode_outInst_m2sPipe_rData_ctrl_instVal;
  reg        `BR_opt_type decode_outInst_m2sPipe_rData_ctrl_br;
  reg                 decode_outInst_m2sPipe_rData_ctrl_jmp;
  reg        `OP0_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_op0;
  reg        `OP1_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_op1;
  reg        `ALU_opt_type decode_outInst_m2sPipe_rData_ctrl_alu;
  reg        `WB_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_wb;
  reg                 decode_outInst_m2sPipe_rData_ctrl_rfen;
  reg                 decode_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  reg                 decode_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  reg                 decode_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  reg                 decode_outInst_m2sPipe_rData_ctrl_men;
  reg        `M_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_m;
  reg        `MSK_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_msk;
  reg        `CSR_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_csr;
  reg        `MFS_binary_sequential_type decode_outInst_m2sPipe_rData_ctrl_mfs;
  reg                 decode_outInst_m2sPipe_rData_ctrl_useSrc0;
  reg                 decode_outInst_m2sPipe_rData_ctrl_useSrc1;
  reg        [1:0]    decode_outInst_m2sPipe_rData_ctrl_extensionTag;
  reg                 decode_outInst_m2sPipe_rData_ctrl_fencei;
  reg        [31:0]   decode_outInst_m2sPipe_rData_src0;
  reg        [31:0]   decode_outInst_m2sPipe_rData_src1;
  reg        [31:0]   decode_outInst_m2sPipe_rData_alu_op0;
  reg        [31:0]   decode_outInst_m2sPipe_rData_alu_op1;
  reg                 decode_outInst_m2sPipe_rData_doSub;
  reg                 decode_outInst_m2sPipe_rData_predictorHasBranch;
  reg                 decode_outInst_m2sPipe_rData_branchHistory_valid;
  reg        [1:0]    decode_outInst_m2sPipe_rData_branchHistory_payload;
  reg                 execute0_throwIt;
  reg                 execute0_halt;
  wire                execute0_haltFromDataRequest;
  wire                execute0_br_signed;
  wire       [32:0]   execute0_br_src0Ext;
  wire       [32:0]   execute0_br_src1Ext;
  wire                execute0_br_ltx;
  wire                execute0_br_eq;
  reg        `PC_binary_sequential_type execute0_br_pc_sel;
  wire                execute0_outInst_valid;
  wire                execute0_outInst_ready;
  wire       [31:0]   execute0_outInst_payload_pc;
  wire       [31:0]   execute0_outInst_payload_instruction;
  wire                execute0_outInst_payload_ctrl_instVal;
  wire       `BR_opt_type execute0_outInst_payload_ctrl_br;
  wire                execute0_outInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute0_outInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute0_outInst_payload_ctrl_op1;
  wire       `ALU_opt_type execute0_outInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute0_outInst_payload_ctrl_wb;
  wire                execute0_outInst_payload_ctrl_rfen;
  wire                execute0_outInst_payload_ctrl_execute0AluBypass;
  wire                execute0_outInst_payload_ctrl_execute1AluBypass;
  wire                execute0_outInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute0_outInst_payload_ctrl_men;
  wire       `M_binary_sequential_type execute0_outInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute0_outInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute0_outInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute0_outInst_payload_ctrl_mfs;
  wire                execute0_outInst_payload_ctrl_useSrc0;
  wire                execute0_outInst_payload_ctrl_useSrc1;
  wire       [1:0]    execute0_outInst_payload_ctrl_extensionTag;
  wire                execute0_outInst_payload_ctrl_fencei;
  wire                execute0_outInst_payload_br_eq;
  wire                execute0_outInst_payload_br_ltx;
  wire       [31:0]   execute0_outInst_payload_src1;
  reg        [31:0]   execute0_outInst_payload_result;
  wire       [31:0]   execute0_outInst_payload_adder;
  wire                execute0_outInst_payload_predictorHasBranch;
  wire                execute0_outInst_payload_branchHistory_valid;
  wire       [1:0]    execute0_outInst_payload_branchHistory_payload;
  wire       [31:0]   execute0_outInst_payload_pcPlus4;
  wire       `PC_binary_sequential_type execute0_outInst_payload_pc_sel;
  wire                execute0_outInst_payload_unalignedMemoryAccessException;
  wire                execute0_outInst_payload_needMemRsp;
  wire       [31:0]   execute0_outInst_payload_dCmdAddress;
  reg                 execute0_inInst_thrown_valid;
  wire                execute0_inInst_thrown_ready;
  wire       [31:0]   execute0_inInst_thrown_payload_pc;
  wire       [31:0]   execute0_inInst_thrown_payload_instruction;
  wire                execute0_inInst_thrown_payload_ctrl_instVal;
  wire       `BR_opt_type execute0_inInst_thrown_payload_ctrl_br;
  wire                execute0_inInst_thrown_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute0_inInst_thrown_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute0_inInst_thrown_payload_ctrl_op1;
  wire       `ALU_opt_type execute0_inInst_thrown_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute0_inInst_thrown_payload_ctrl_wb;
  wire                execute0_inInst_thrown_payload_ctrl_rfen;
  wire                execute0_inInst_thrown_payload_ctrl_execute0AluBypass;
  wire                execute0_inInst_thrown_payload_ctrl_execute1AluBypass;
  wire                execute0_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute0_inInst_thrown_payload_ctrl_men;
  wire       `M_binary_sequential_type execute0_inInst_thrown_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute0_inInst_thrown_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute0_inInst_thrown_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute0_inInst_thrown_payload_ctrl_mfs;
  wire                execute0_inInst_thrown_payload_ctrl_useSrc0;
  wire                execute0_inInst_thrown_payload_ctrl_useSrc1;
  wire       [1:0]    execute0_inInst_thrown_payload_ctrl_extensionTag;
  wire                execute0_inInst_thrown_payload_ctrl_fencei;
  wire       [31:0]   execute0_inInst_thrown_payload_src0;
  wire       [31:0]   execute0_inInst_thrown_payload_src1;
  wire       [31:0]   execute0_inInst_thrown_payload_alu_op0;
  wire       [31:0]   execute0_inInst_thrown_payload_alu_op1;
  wire                execute0_inInst_thrown_payload_doSub;
  wire                execute0_inInst_thrown_payload_predictorHasBranch;
  wire                execute0_inInst_thrown_payload_branchHistory_valid;
  wire       [1:0]    execute0_inInst_thrown_payload_branchHistory_payload;
  wire                _zz_20;
  reg                 _zz_21;
  reg        [1:0]    _zz_22;
  reg        [1:0]    execute0_pendingDataCmd_readCount;
  wire                execute0_pendingDataCmd_readCountInc;
  wire                execute0_pendingDataCmd_readCountDec;
  reg                 execute0_flush;
  wire                execute1_inInst_valid;
  reg                 execute1_inInst_ready;
  wire       [31:0]   execute1_inInst_payload_pc;
  wire       [31:0]   execute1_inInst_payload_instruction;
  wire                execute1_inInst_payload_ctrl_instVal;
  wire       `BR_opt_type execute1_inInst_payload_ctrl_br;
  wire                execute1_inInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute1_inInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute1_inInst_payload_ctrl_op1;
  wire       `ALU_opt_type execute1_inInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute1_inInst_payload_ctrl_wb;
  wire                execute1_inInst_payload_ctrl_rfen;
  wire                execute1_inInst_payload_ctrl_execute0AluBypass;
  wire                execute1_inInst_payload_ctrl_execute1AluBypass;
  wire                execute1_inInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute1_inInst_payload_ctrl_men;
  wire       `M_binary_sequential_type execute1_inInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute1_inInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute1_inInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute1_inInst_payload_ctrl_mfs;
  wire                execute1_inInst_payload_ctrl_useSrc0;
  wire                execute1_inInst_payload_ctrl_useSrc1;
  wire       [1:0]    execute1_inInst_payload_ctrl_extensionTag;
  wire                execute1_inInst_payload_ctrl_fencei;
  wire                execute1_inInst_payload_br_eq;
  wire                execute1_inInst_payload_br_ltx;
  wire       [31:0]   execute1_inInst_payload_src1;
  wire       [31:0]   execute1_inInst_payload_result;
  reg        [31:0]   execute1_inInst_payload_adder;
  wire                execute1_inInst_payload_predictorHasBranch;
  wire                execute1_inInst_payload_branchHistory_valid;
  wire       [1:0]    execute1_inInst_payload_branchHistory_payload;
  wire       [31:0]   execute1_inInst_payload_pcPlus4;
  reg        `PC_binary_sequential_type execute1_inInst_payload_pc_sel;
  wire                execute1_inInst_payload_unalignedMemoryAccessException;
  wire                execute1_inInst_payload_needMemRsp;
  wire       [31:0]   execute1_inInst_payload_dCmdAddress;
  reg                 execute0_outInst_m2sPipe_rValid;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_pc;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_instruction;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_instVal;
  reg        `BR_opt_type execute0_outInst_m2sPipe_rData_ctrl_br;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_jmp;
  reg        `OP0_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_op0;
  reg        `OP1_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_op1;
  reg        `ALU_opt_type execute0_outInst_m2sPipe_rData_ctrl_alu;
  reg        `WB_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_wb;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_rfen;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_men;
  reg        `M_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_m;
  reg        `MSK_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_msk;
  reg        `CSR_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_csr;
  reg        `MFS_binary_sequential_type execute0_outInst_m2sPipe_rData_ctrl_mfs;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_useSrc0;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_useSrc1;
  reg        [1:0]    execute0_outInst_m2sPipe_rData_ctrl_extensionTag;
  reg                 execute0_outInst_m2sPipe_rData_ctrl_fencei;
  reg                 execute0_outInst_m2sPipe_rData_br_eq;
  reg                 execute0_outInst_m2sPipe_rData_br_ltx;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_src1;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_result;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_adder;
  reg                 execute0_outInst_m2sPipe_rData_predictorHasBranch;
  reg                 execute0_outInst_m2sPipe_rData_branchHistory_valid;
  reg        [1:0]    execute0_outInst_m2sPipe_rData_branchHistory_payload;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_pcPlus4;
  reg        `PC_binary_sequential_type execute0_outInst_m2sPipe_rData_pc_sel;
  reg                 execute0_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  reg                 execute0_outInst_m2sPipe_rData_needMemRsp;
  reg        [31:0]   execute0_outInst_m2sPipe_rData_dCmdAddress;
  reg                 execute1_halt;
  reg                 execute1_throwIt;
  wire                execute1_pcLoad_valid;
  wire       [31:0]   execute1_pcLoad_payload;
  reg                 _zz_23;
  wire       [13:0]   execute1_line_pc;
  reg        [1:0]    execute1_line_history;
  wire       [2:0]    execute1_newHistory;
  wire                execute1_outInst_valid;
  wire                execute1_outInst_ready;
  wire       [31:0]   execute1_outInst_payload_pc;
  wire       [31:0]   execute1_outInst_payload_instruction;
  wire                execute1_outInst_payload_ctrl_instVal;
  wire       `BR_opt_type execute1_outInst_payload_ctrl_br;
  wire                execute1_outInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute1_outInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute1_outInst_payload_ctrl_op1;
  wire       `ALU_opt_type execute1_outInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute1_outInst_payload_ctrl_wb;
  wire                execute1_outInst_payload_ctrl_rfen;
  wire                execute1_outInst_payload_ctrl_execute0AluBypass;
  wire                execute1_outInst_payload_ctrl_execute1AluBypass;
  wire                execute1_outInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute1_outInst_payload_ctrl_men;
  wire       `M_binary_sequential_type execute1_outInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute1_outInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute1_outInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute1_outInst_payload_ctrl_mfs;
  wire                execute1_outInst_payload_ctrl_useSrc0;
  wire                execute1_outInst_payload_ctrl_useSrc1;
  wire       [1:0]    execute1_outInst_payload_ctrl_extensionTag;
  wire                execute1_outInst_payload_ctrl_fencei;
  reg        [31:0]   execute1_outInst_payload_result;
  wire       [4:0]    execute1_outInst_payload_regFileAddress;
  wire       [31:0]   execute1_outInst_payload_pcPlus4;
  wire                execute1_outInst_payload_unalignedMemoryAccessException;
  wire                execute1_outInst_payload_needMemRsp;
  wire       [31:0]   execute1_outInst_payload_dCmdAddress;
  reg                 execute1_inInst_thrown_valid;
  wire                execute1_inInst_thrown_ready;
  wire       [31:0]   execute1_inInst_thrown_payload_pc;
  wire       [31:0]   execute1_inInst_thrown_payload_instruction;
  wire                execute1_inInst_thrown_payload_ctrl_instVal;
  wire       `BR_opt_type execute1_inInst_thrown_payload_ctrl_br;
  wire                execute1_inInst_thrown_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type execute1_inInst_thrown_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type execute1_inInst_thrown_payload_ctrl_op1;
  wire       `ALU_opt_type execute1_inInst_thrown_payload_ctrl_alu;
  wire       `WB_binary_sequential_type execute1_inInst_thrown_payload_ctrl_wb;
  wire                execute1_inInst_thrown_payload_ctrl_rfen;
  wire                execute1_inInst_thrown_payload_ctrl_execute0AluBypass;
  wire                execute1_inInst_thrown_payload_ctrl_execute1AluBypass;
  wire                execute1_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0;
  wire                execute1_inInst_thrown_payload_ctrl_men;
  wire       `M_binary_sequential_type execute1_inInst_thrown_payload_ctrl_m;
  wire       `MSK_binary_sequential_type execute1_inInst_thrown_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type execute1_inInst_thrown_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type execute1_inInst_thrown_payload_ctrl_mfs;
  wire                execute1_inInst_thrown_payload_ctrl_useSrc0;
  wire                execute1_inInst_thrown_payload_ctrl_useSrc1;
  wire       [1:0]    execute1_inInst_thrown_payload_ctrl_extensionTag;
  wire                execute1_inInst_thrown_payload_ctrl_fencei;
  wire                execute1_inInst_thrown_payload_br_eq;
  wire                execute1_inInst_thrown_payload_br_ltx;
  wire       [31:0]   execute1_inInst_thrown_payload_src1;
  wire       [31:0]   execute1_inInst_thrown_payload_result;
  wire       [31:0]   execute1_inInst_thrown_payload_adder;
  wire                execute1_inInst_thrown_payload_predictorHasBranch;
  wire                execute1_inInst_thrown_payload_branchHistory_valid;
  wire       [1:0]    execute1_inInst_thrown_payload_branchHistory_payload;
  wire       [31:0]   execute1_inInst_thrown_payload_pcPlus4;
  wire       `PC_binary_sequential_type execute1_inInst_thrown_payload_pc_sel;
  wire                execute1_inInst_thrown_payload_unalignedMemoryAccessException;
  wire                execute1_inInst_thrown_payload_needMemRsp;
  wire       [31:0]   execute1_inInst_thrown_payload_dCmdAddress;
  wire                _zz_24;
  reg                 execute1_flush;
  wire                writeBack_inInst_valid;
  reg                 writeBack_inInst_ready;
  wire       [31:0]   writeBack_inInst_payload_pc;
  wire       [31:0]   writeBack_inInst_payload_instruction;
  wire                writeBack_inInst_payload_ctrl_instVal;
  wire       `BR_opt_type writeBack_inInst_payload_ctrl_br;
  wire                writeBack_inInst_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type writeBack_inInst_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type writeBack_inInst_payload_ctrl_op1;
  wire       `ALU_opt_type writeBack_inInst_payload_ctrl_alu;
  wire       `WB_binary_sequential_type writeBack_inInst_payload_ctrl_wb;
  wire                writeBack_inInst_payload_ctrl_rfen;
  wire                writeBack_inInst_payload_ctrl_execute0AluBypass;
  wire                writeBack_inInst_payload_ctrl_execute1AluBypass;
  wire                writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0;
  wire                writeBack_inInst_payload_ctrl_men;
  wire       `M_binary_sequential_type writeBack_inInst_payload_ctrl_m;
  wire       `MSK_binary_sequential_type writeBack_inInst_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type writeBack_inInst_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type writeBack_inInst_payload_ctrl_mfs;
  wire                writeBack_inInst_payload_ctrl_useSrc0;
  wire                writeBack_inInst_payload_ctrl_useSrc1;
  wire       [1:0]    writeBack_inInst_payload_ctrl_extensionTag;
  wire                writeBack_inInst_payload_ctrl_fencei;
  reg        [31:0]   writeBack_inInst_payload_result;
  wire       [4:0]    writeBack_inInst_payload_regFileAddress;
  wire       [31:0]   writeBack_inInst_payload_pcPlus4;
  wire                writeBack_inInst_payload_unalignedMemoryAccessException;
  wire                writeBack_inInst_payload_needMemRsp;
  wire       [31:0]   writeBack_inInst_payload_dCmdAddress;
  reg                 execute1_outInst_m2sPipe_rValid;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_pc;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_instruction;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_instVal;
  reg        `BR_opt_type execute1_outInst_m2sPipe_rData_ctrl_br;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_jmp;
  reg        `OP0_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_op0;
  reg        `OP1_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_op1;
  reg        `ALU_opt_type execute1_outInst_m2sPipe_rData_ctrl_alu;
  reg        `WB_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_wb;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_rfen;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_men;
  reg        `M_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_m;
  reg        `MSK_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_msk;
  reg        `CSR_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_csr;
  reg        `MFS_binary_sequential_type execute1_outInst_m2sPipe_rData_ctrl_mfs;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_useSrc0;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_useSrc1;
  reg        [1:0]    execute1_outInst_m2sPipe_rData_ctrl_extensionTag;
  reg                 execute1_outInst_m2sPipe_rData_ctrl_fencei;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_result;
  reg        [4:0]    execute1_outInst_m2sPipe_rData_regFileAddress;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_pcPlus4;
  reg                 execute1_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  reg                 execute1_outInst_m2sPipe_rData_needMemRsp;
  reg        [31:0]   execute1_outInst_m2sPipe_rData_dCmdAddress;
  reg                 writeBack_throwIt;
  reg                 writeBack_halt;
  reg        [7:0]    writeBack_irq_sources;
  reg        [7:0]    writeBack_irq_mask;
  wire       [7:0]    writeBack_irq_masked;
  wire                writeBack_irq_inhibate;
  reg                 writeBack_pcLoad_valid;
  reg        [31:0]   writeBack_pcLoad_payload;
  reg                 writeBack_flushMemoryResponse;
  wire                _zz_25;
  reg        [31:0]   _zz_26;
  wire                _zz_27;
  reg        [31:0]   _zz_28;
  reg        [31:0]   writeBack_dataRspFormated;
  reg        [31:0]   writeBack_regFileData;
  wire                writeBack_outInst_valid;
  wire                writeBack_outInst_ready;
  wire       [4:0]    writeBack_outInst_payload_addr;
  wire       [31:0]   writeBack_outInst_payload_data;
  reg                 writeBack_inInst_thrown_valid;
  wire                writeBack_inInst_thrown_ready;
  wire       [31:0]   writeBack_inInst_thrown_payload_pc;
  wire       [31:0]   writeBack_inInst_thrown_payload_instruction;
  wire                writeBack_inInst_thrown_payload_ctrl_instVal;
  wire       `BR_opt_type writeBack_inInst_thrown_payload_ctrl_br;
  wire                writeBack_inInst_thrown_payload_ctrl_jmp;
  wire       `OP0_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_op0;
  wire       `OP1_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_op1;
  wire       `ALU_opt_type writeBack_inInst_thrown_payload_ctrl_alu;
  wire       `WB_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_wb;
  wire                writeBack_inInst_thrown_payload_ctrl_rfen;
  wire                writeBack_inInst_thrown_payload_ctrl_execute0AluBypass;
  wire                writeBack_inInst_thrown_payload_ctrl_execute1AluBypass;
  wire                writeBack_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0;
  wire                writeBack_inInst_thrown_payload_ctrl_men;
  wire       `M_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_m;
  wire       `MSK_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_msk;
  wire       `CSR_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_csr;
  wire       `MFS_binary_sequential_type writeBack_inInst_thrown_payload_ctrl_mfs;
  wire                writeBack_inInst_thrown_payload_ctrl_useSrc0;
  wire                writeBack_inInst_thrown_payload_ctrl_useSrc1;
  wire       [1:0]    writeBack_inInst_thrown_payload_ctrl_extensionTag;
  wire                writeBack_inInst_thrown_payload_ctrl_fencei;
  wire       [31:0]   writeBack_inInst_thrown_payload_result;
  wire       [4:0]    writeBack_inInst_thrown_payload_regFileAddress;
  wire       [31:0]   writeBack_inInst_thrown_payload_pcPlus4;
  wire                writeBack_inInst_thrown_payload_unalignedMemoryAccessException;
  wire                writeBack_inInst_thrown_payload_needMemRsp;
  wire       [31:0]   writeBack_inInst_thrown_payload_dCmdAddress;
  wire                _zz_29;
  wire                writeBack_regFileWrite_valid;
  wire       [4:0]    writeBack_regFileWrite_payload_address;
  wire       [31:0]   writeBack_regFileWrite_payload_data;
  wire                writeBack_flush;
  wire                writeBackBuffer_inInst_valid;
  wire                writeBackBuffer_inInst_ready;
  wire       [4:0]    writeBackBuffer_inInst_payload_addr;
  wire       [31:0]   writeBackBuffer_inInst_payload_data;
  reg                 writeBack_outInst_m2sPipe_rValid;
  reg        [4:0]    writeBack_outInst_m2sPipe_rData_addr;
  reg        [31:0]   writeBack_outInst_m2sPipe_rData_data;
  reg                 hazardTracker_src0Hazard;
  reg                 hazardTracker_src1Hazard;
  wire                hazardTracker_W2R_addr0Match;
  wire                hazardTracker_W2R_addr1Match;
  wire                hazardTracker_A_addr0Match;
  wire                hazardTracker_A_addr1Match;
  wire                hazardTracker_E1_addr0Match;
  wire                hazardTracker_E1_addr1Match;
  wire                hazardTracker_E0_addr0Match;
  wire                hazardTracker_E0_addr1Match;
  reg                 MulExtension_s1_aSigned;
  reg                 MulExtension_s1_bSigned;
  wire       [31:0]   MulExtension_s1_a;
  wire       [31:0]   MulExtension_s1_b;
  wire       [15:0]   MulExtension_s1_aULow;
  wire       [15:0]   MulExtension_s1_bULow;
  wire       [16:0]   MulExtension_s1_aSLow;
  wire       [16:0]   MulExtension_s1_bSLow;
  wire       [16:0]   MulExtension_s1_aHigh;
  wire       [16:0]   MulExtension_s1_bHigh;
  wire       [31:0]   MulExtension_s1_mul_ll;
  wire       [33:0]   MulExtension_s1_mul_lh;
  wire       [33:0]   MulExtension_s1_mul_hl;
  wire       [33:0]   MulExtension_s1_mul_hh;
  reg        [31:0]   MulExtension_s2_mul_ll;
  reg        [33:0]   MulExtension_s2_mul_lh;
  reg        [33:0]   MulExtension_s2_mul_hl;
  reg        [33:0]   MulExtension_s2_mul_hh;
  wire       [49:0]   MulExtension_s2_low;
  reg        [49:0]   MulExtension_s3_low;
  reg        [33:0]   MulExtension_s3_mul_hh;
  wire       [65:0]   MulExtension_s3_result;
  reg                 DivExtension_rspReady;
  reg        [31:0]   DivExtension_rsp;
  wire       [4:0]    barrelShifterLight_s1_amplitude;
  wire                barrelShifterLight_s1_isShift;
  reg                 SimpleInterrupExtension_inIrq;
  reg        [31:0]   SimpleInterrupExtension_exitPc;
  reg        [7:0]    SimpleInterrupExtension_irqValue;
  reg                 _zz_30;
  reg                 _zz_31;
  `ifndef SYNTHESIS
  reg [23:0] decode_ctrl_br_string;
  reg [31:0] decode_ctrl_op0_string;
  reg [31:0] decode_ctrl_op1_string;
  reg [39:0] decode_ctrl_alu_string;
  reg [39:0] decode_ctrl_wb_string;
  reg [23:0] decode_ctrl_m_string;
  reg [7:0] decode_ctrl_msk_string;
  reg [7:0] decode_ctrl_csr_string;
  reg [15:0] decode_ctrl_mfs_string;
  reg [7:0] _zz_3_string;
  reg [39:0] _zz_5_string;
  reg [39:0] _zz_6_string;
  reg [23:0] _zz_7_string;
  reg [7:0] _zz_8_string;
  reg [23:0] decode_outInst_payload_ctrl_br_string;
  reg [31:0] decode_outInst_payload_ctrl_op0_string;
  reg [31:0] decode_outInst_payload_ctrl_op1_string;
  reg [39:0] decode_outInst_payload_ctrl_alu_string;
  reg [39:0] decode_outInst_payload_ctrl_wb_string;
  reg [23:0] decode_outInst_payload_ctrl_m_string;
  reg [7:0] decode_outInst_payload_ctrl_msk_string;
  reg [7:0] decode_outInst_payload_ctrl_csr_string;
  reg [15:0] decode_outInst_payload_ctrl_mfs_string;
  reg [23:0] execute0_inInst_payload_ctrl_br_string;
  reg [31:0] execute0_inInst_payload_ctrl_op0_string;
  reg [31:0] execute0_inInst_payload_ctrl_op1_string;
  reg [39:0] execute0_inInst_payload_ctrl_alu_string;
  reg [39:0] execute0_inInst_payload_ctrl_wb_string;
  reg [23:0] execute0_inInst_payload_ctrl_m_string;
  reg [7:0] execute0_inInst_payload_ctrl_msk_string;
  reg [7:0] execute0_inInst_payload_ctrl_csr_string;
  reg [15:0] execute0_inInst_payload_ctrl_mfs_string;
  reg [23:0] decode_outInst_m2sPipe_rData_ctrl_br_string;
  reg [31:0] decode_outInst_m2sPipe_rData_ctrl_op0_string;
  reg [31:0] decode_outInst_m2sPipe_rData_ctrl_op1_string;
  reg [39:0] decode_outInst_m2sPipe_rData_ctrl_alu_string;
  reg [39:0] decode_outInst_m2sPipe_rData_ctrl_wb_string;
  reg [23:0] decode_outInst_m2sPipe_rData_ctrl_m_string;
  reg [7:0] decode_outInst_m2sPipe_rData_ctrl_msk_string;
  reg [7:0] decode_outInst_m2sPipe_rData_ctrl_csr_string;
  reg [15:0] decode_outInst_m2sPipe_rData_ctrl_mfs_string;
  reg [23:0] execute0_br_pc_sel_string;
  reg [23:0] execute0_outInst_payload_ctrl_br_string;
  reg [31:0] execute0_outInst_payload_ctrl_op0_string;
  reg [31:0] execute0_outInst_payload_ctrl_op1_string;
  reg [39:0] execute0_outInst_payload_ctrl_alu_string;
  reg [39:0] execute0_outInst_payload_ctrl_wb_string;
  reg [23:0] execute0_outInst_payload_ctrl_m_string;
  reg [7:0] execute0_outInst_payload_ctrl_msk_string;
  reg [7:0] execute0_outInst_payload_ctrl_csr_string;
  reg [15:0] execute0_outInst_payload_ctrl_mfs_string;
  reg [23:0] execute0_outInst_payload_pc_sel_string;
  reg [23:0] execute0_inInst_thrown_payload_ctrl_br_string;
  reg [31:0] execute0_inInst_thrown_payload_ctrl_op0_string;
  reg [31:0] execute0_inInst_thrown_payload_ctrl_op1_string;
  reg [39:0] execute0_inInst_thrown_payload_ctrl_alu_string;
  reg [39:0] execute0_inInst_thrown_payload_ctrl_wb_string;
  reg [23:0] execute0_inInst_thrown_payload_ctrl_m_string;
  reg [7:0] execute0_inInst_thrown_payload_ctrl_msk_string;
  reg [7:0] execute0_inInst_thrown_payload_ctrl_csr_string;
  reg [15:0] execute0_inInst_thrown_payload_ctrl_mfs_string;
  reg [23:0] execute1_inInst_payload_ctrl_br_string;
  reg [31:0] execute1_inInst_payload_ctrl_op0_string;
  reg [31:0] execute1_inInst_payload_ctrl_op1_string;
  reg [39:0] execute1_inInst_payload_ctrl_alu_string;
  reg [39:0] execute1_inInst_payload_ctrl_wb_string;
  reg [23:0] execute1_inInst_payload_ctrl_m_string;
  reg [7:0] execute1_inInst_payload_ctrl_msk_string;
  reg [7:0] execute1_inInst_payload_ctrl_csr_string;
  reg [15:0] execute1_inInst_payload_ctrl_mfs_string;
  reg [23:0] execute1_inInst_payload_pc_sel_string;
  reg [23:0] execute0_outInst_m2sPipe_rData_ctrl_br_string;
  reg [31:0] execute0_outInst_m2sPipe_rData_ctrl_op0_string;
  reg [31:0] execute0_outInst_m2sPipe_rData_ctrl_op1_string;
  reg [39:0] execute0_outInst_m2sPipe_rData_ctrl_alu_string;
  reg [39:0] execute0_outInst_m2sPipe_rData_ctrl_wb_string;
  reg [23:0] execute0_outInst_m2sPipe_rData_ctrl_m_string;
  reg [7:0] execute0_outInst_m2sPipe_rData_ctrl_msk_string;
  reg [7:0] execute0_outInst_m2sPipe_rData_ctrl_csr_string;
  reg [15:0] execute0_outInst_m2sPipe_rData_ctrl_mfs_string;
  reg [23:0] execute0_outInst_m2sPipe_rData_pc_sel_string;
  reg [23:0] execute1_outInst_payload_ctrl_br_string;
  reg [31:0] execute1_outInst_payload_ctrl_op0_string;
  reg [31:0] execute1_outInst_payload_ctrl_op1_string;
  reg [39:0] execute1_outInst_payload_ctrl_alu_string;
  reg [39:0] execute1_outInst_payload_ctrl_wb_string;
  reg [23:0] execute1_outInst_payload_ctrl_m_string;
  reg [7:0] execute1_outInst_payload_ctrl_msk_string;
  reg [7:0] execute1_outInst_payload_ctrl_csr_string;
  reg [15:0] execute1_outInst_payload_ctrl_mfs_string;
  reg [23:0] execute1_inInst_thrown_payload_ctrl_br_string;
  reg [31:0] execute1_inInst_thrown_payload_ctrl_op0_string;
  reg [31:0] execute1_inInst_thrown_payload_ctrl_op1_string;
  reg [39:0] execute1_inInst_thrown_payload_ctrl_alu_string;
  reg [39:0] execute1_inInst_thrown_payload_ctrl_wb_string;
  reg [23:0] execute1_inInst_thrown_payload_ctrl_m_string;
  reg [7:0] execute1_inInst_thrown_payload_ctrl_msk_string;
  reg [7:0] execute1_inInst_thrown_payload_ctrl_csr_string;
  reg [15:0] execute1_inInst_thrown_payload_ctrl_mfs_string;
  reg [23:0] execute1_inInst_thrown_payload_pc_sel_string;
  reg [23:0] writeBack_inInst_payload_ctrl_br_string;
  reg [31:0] writeBack_inInst_payload_ctrl_op0_string;
  reg [31:0] writeBack_inInst_payload_ctrl_op1_string;
  reg [39:0] writeBack_inInst_payload_ctrl_alu_string;
  reg [39:0] writeBack_inInst_payload_ctrl_wb_string;
  reg [23:0] writeBack_inInst_payload_ctrl_m_string;
  reg [7:0] writeBack_inInst_payload_ctrl_msk_string;
  reg [7:0] writeBack_inInst_payload_ctrl_csr_string;
  reg [15:0] writeBack_inInst_payload_ctrl_mfs_string;
  reg [23:0] execute1_outInst_m2sPipe_rData_ctrl_br_string;
  reg [31:0] execute1_outInst_m2sPipe_rData_ctrl_op0_string;
  reg [31:0] execute1_outInst_m2sPipe_rData_ctrl_op1_string;
  reg [39:0] execute1_outInst_m2sPipe_rData_ctrl_alu_string;
  reg [39:0] execute1_outInst_m2sPipe_rData_ctrl_wb_string;
  reg [23:0] execute1_outInst_m2sPipe_rData_ctrl_m_string;
  reg [7:0] execute1_outInst_m2sPipe_rData_ctrl_msk_string;
  reg [7:0] execute1_outInst_m2sPipe_rData_ctrl_csr_string;
  reg [15:0] execute1_outInst_m2sPipe_rData_ctrl_mfs_string;
  reg [23:0] writeBack_inInst_thrown_payload_ctrl_br_string;
  reg [31:0] writeBack_inInst_thrown_payload_ctrl_op0_string;
  reg [31:0] writeBack_inInst_thrown_payload_ctrl_op1_string;
  reg [39:0] writeBack_inInst_thrown_payload_ctrl_alu_string;
  reg [39:0] writeBack_inInst_thrown_payload_ctrl_wb_string;
  reg [23:0] writeBack_inInst_thrown_payload_ctrl_m_string;
  reg [7:0] writeBack_inInst_thrown_payload_ctrl_msk_string;
  reg [7:0] writeBack_inInst_thrown_payload_ctrl_csr_string;
  reg [15:0] writeBack_inInst_thrown_payload_ctrl_mfs_string;
  `endif

  reg [31:0] regFile [0:31];
  reg [15:0] brancheCache [0:65535];

  assign _zz_48 = (fetch_throwIt || fetch_throwNextIRsp);
  assign _zz_49 = ((decode_inInst_payload_instruction & 32'h00000003) == 32'h00000003);
  assign _zz_50 = ((decode_inInst_payload_instruction & 32'h0000005c) == 32'h0);
  assign _zz_51 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000014);
  assign _zz_52 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000034);
  assign _zz_53 = ((decode_inInst_payload_instruction & 32'h0000005c) == 32'h00000010);
  assign _zz_54 = ((decode_inInst_payload_instruction & 32'h00000020) == 32'h0);
  assign _zz_55 = ((! _zz_4) || (((decode_inInst_payload_instruction & 32'hbe000000) == 32'h0) && (! (decode_inInst_payload_instruction[30] && (! decode_inInst_payload_instruction[14])))));
  assign _zz_56 = ((decode_inInst_payload_instruction & 32'hbe000000) == 32'h0);
  assign _zz_57 = (((decode_inInst_payload_instruction[30] == 1'b0) || (decode_inInst_payload_instruction[14 : 12] == 3'b000)) || (decode_inInst_payload_instruction[14 : 12] == 3'b101));
  assign _zz_58 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h0000006c);
  assign _zz_59 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000064);
  assign _zz_60 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000060);
  assign _zz_61 = ((decode_inInst_payload_instruction & 32'h0000007c) == 32'h00000070);
  assign _zz_62 = ((decode_inInst_payload_instruction & 32'hfe00407f) == 32'h02000033);
  assign _zz_63 = ((decode_inInst_payload_instruction & 32'hfe00407f) == 32'h02004033);
  assign _zz_64 = ((decode_inInst_payload_instruction & 32'hf800007f) == 32'h0000000b);
  assign _zz_65 = ((decode_inInst_payload_instruction & 32'h00000020) == 32'h0);
  assign _zz_66 = ((! SimpleInterrupExtension_inIrq) && (! writeBack_irq_inhibate));
  assign _zz_67 = ((writeBack_irq_masked & 8'h02) != 8'h0);
  assign _zz_68 = (execute0_inInst_valid && (execute0_inInst_payload_ctrl_extensionTag == 2'b10));
  assign _zz_69 = (execute0_inInst_valid && barrelShifterLight_s1_isShift);
  assign _zz_70 = (barrelShifterLight_s1_amplitude != 5'h0);
  assign _zz_71 = (execute1_inInst_payload_ctrl_extensionTag == 2'b11);
  assign _zz_72 = execute1_inInst_payload_instruction[26 : 25];
  assign _zz_73 = (execute1_inInst_valid && (execute1_inInst_payload_ctrl_extensionTag == 2'b10));
  assign _zz_74 = (((decode_inInst_valid && (! execute0_inInst_valid)) && (! execute1_inInst_valid)) && (! writeBack_inInst_valid));
  assign _zz_75 = (writeBack_inInst_valid && writeBack_inInst_payload_ctrl_rfen);
  assign _zz_76 = (1'b1 || (! writeBack_outInst_valid));
  assign _zz_77 = (execute1_inInst_valid && execute1_outInst_payload_ctrl_rfen);
  assign _zz_78 = ((1'b1 || (! execute1_inInst_payload_ctrl_execute1AluBypass)) || (! execute1_outInst_valid));
  assign _zz_79 = (execute0_inInst_valid && execute0_outInst_payload_ctrl_rfen);
  assign _zz_80 = ((1'b1 || (! execute0_inInst_payload_ctrl_execute0AluBypass)) || (! execute0_outInst_valid));
  assign _zz_81 = execute0_inInst_payload_instruction[13 : 12];
  assign _zz_82 = writeBack_inInst_payload_instruction[13 : 12];
  assign _zz_83 = (prefetch_inc ? 3'b100 : 3'b000);
  assign _zz_84 = {29'd0, _zz_83};
  assign _zz_85 = iRsp_valid;
  assign _zz_86 = {1'd0, _zz_85};
  assign _zz_87 = {{{decode_inInst_payload_instruction[31],decode_inInst_payload_instruction[19 : 12]},decode_inInst_payload_instruction[20]},decode_inInst_payload_instruction[30 : 21]};
  assign _zz_88 = {{{decode_inInst_payload_instruction[31],decode_inInst_payload_instruction[7]},decode_inInst_payload_instruction[30 : 25]},decode_inInst_payload_instruction[11 : 8]};
  assign _zz_89 = (decode_inInst_payload_pc + decode_brjmpImm);
  assign _zz_90 = decode_inInst_payload_instruction[19 : 15];
  assign _zz_91 = decode_inInst_payload_instruction[31 : 20];
  assign _zz_92 = {decode_inInst_payload_instruction[31 : 25],decode_inInst_payload_instruction[11 : 7]};
  assign _zz_93 = execute0_inInst_payload_ctrl_br;
  assign _zz_94 = (execute0_br_src0Ext - execute0_br_src1Ext);
  assign _zz_95 = {{1{execute1_inInst_payload_branchHistory_payload[1]}}, execute1_inInst_payload_branchHistory_payload};
  assign _zz_96 = ((execute1_inInst_payload_pc_sel == `PC_binary_sequential_INC) ? _zz_98 : _zz_99);
  assign _zz_97 = {{1{_zz_96[1]}}, _zz_96};
  assign _zz_98 = 2'b01;
  assign _zz_99 = 2'b11;
  assign _zz_100 = (execute1_inInst_payload_pc_sel != `PC_binary_sequential_INC);
  assign _zz_101 = execute1_newHistory[2 : 1];
  assign _zz_102 = 2'b10;
  assign _zz_103 = execute1_newHistory[2 : 1];
  assign _zz_104 = 2'b01;
  assign _zz_105 = ($signed(_zz_107) + $signed(_zz_111));
  assign _zz_106 = ($signed(_zz_108) + $signed(_zz_110));
  assign _zz_107 = {{14{_zz_106[35]}}, _zz_106};
  assign _zz_108 = 36'h0;
  assign _zz_109 = {1'b0,MulExtension_s2_mul_ll};
  assign _zz_110 = {{3{_zz_109[32]}}, _zz_109};
  assign _zz_111 = ({16'd0,MulExtension_s2_mul_lh} <<< 16);
  assign _zz_112 = ({16'd0,MulExtension_s2_mul_hl} <<< 16);
  assign _zz_113 = {{16{MulExtension_s3_low[49]}}, MulExtension_s3_low};
  assign _zz_114 = ({32'd0,MulExtension_s3_mul_hh} <<< 32);
  assign _zz_115 = MulExtension_s3_low[31 : 0];
  assign _zz_116 = MulExtension_s3_result[63 : 32];
  assign _zz_117 = (execute0_inInst_payload_alu_op1[4 : 0] - 5'h01);
  assign _zz_118 = ({1'd0,execute0_inInst_payload_alu_op0} <<< 1);
  assign _zz_119 = (_zz_120 >>> 1);
  assign _zz_120 = {((execute0_inInst_payload_ctrl_alu == `ALU_opt_SRA_1) && execute0_inInst_payload_alu_op0[31]),execute0_inInst_payload_alu_op0};
  assign _zz_121 = 1'b1;
  assign _zz_122 = 1'b1;
  assign _zz_123 = execute1_inInst_payload_pc[17 : 2];
  assign _zz_124 = {execute1_line_history,execute1_line_pc};
  always @ (posedge clk) begin
    if(_zz_121) begin
      _zz_46 <= regFile[decode_regFileReadAddress0];
    end
  end

  always @ (posedge clk) begin
    if(_zz_122) begin
      _zz_47 <= regFile[decode_regFileReadAddress1];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1) begin
      regFile[writeBack_regFileWrite_payload_address] <= writeBack_regFileWrite_payload_data;
    end
  end

integer verilogIndex;

initial begin
  for (verilogIndex = 0; verilogIndex < 65536; verilogIndex = verilogIndex + 1)begin
brancheCache[verilogIndex] = -1;
  end
end
  always @ (posedge clk) begin
    if(_zz_2) begin
      brancheCache[_zz_123] <= _zz_124;
    end
  end

  Alu_1 execute0_alu (
    .io_func      (execute0_inInst_payload_ctrl_alu[3:0]  ), //i
    .io_doSub     (execute0_inInst_payload_doSub          ), //i
    .io_src0      (execute0_inInst_payload_alu_op0[31:0]  ), //i
    .io_src1      (execute0_inInst_payload_alu_op1[31:0]  ), //i
    .io_result    (execute0_alu_io_result[31:0]           ), //o
    .io_adder     (execute0_alu_io_adder[31:0]            )  //o
  );
  MixedDivider DivExtension_divider (
    .io_flush                      (execute1_throwIt                                     ), //i
    .io_cmd_valid                  (_zz_43                                               ), //i
    .io_cmd_ready                  (DivExtension_divider_io_cmd_ready                    ), //o
    .io_cmd_payload_numerator      (execute0_inInst_payload_alu_op0[31:0]                ), //i
    .io_cmd_payload_denominator    (execute0_inInst_payload_alu_op1[31:0]                ), //i
    .io_cmd_payload_signed         (_zz_44                                               ), //i
    .io_rsp_valid                  (DivExtension_divider_io_rsp_valid                    ), //o
    .io_rsp_ready                  (_zz_45                                               ), //i
    .io_rsp_payload_quotient       (DivExtension_divider_io_rsp_payload_quotient[31:0]   ), //o
    .io_rsp_payload_remainder      (DivExtension_divider_io_rsp_payload_remainder[31:0]  ), //o
    .io_rsp_payload_error          (DivExtension_divider_io_rsp_payload_error            ), //o
    .clk                           (clk                                                  ), //i
    .reset                         (reset                                                )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(decode_ctrl_br)
      `BR_opt_N : decode_ctrl_br_string = "N  ";
      `BR_opt_NE : decode_ctrl_br_string = "NE ";
      `BR_opt_EQ : decode_ctrl_br_string = "EQ ";
      `BR_opt_GE : decode_ctrl_br_string = "GE ";
      `BR_opt_GEU : decode_ctrl_br_string = "GEU";
      `BR_opt_LT : decode_ctrl_br_string = "LT ";
      `BR_opt_LTU : decode_ctrl_br_string = "LTU";
      `BR_opt_J : decode_ctrl_br_string = "J  ";
      `BR_opt_JR : decode_ctrl_br_string = "JR ";
      default : decode_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_op0)
      `OP0_binary_sequential_RS : decode_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : decode_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : decode_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : decode_ctrl_op0_string = "IMJB";
      default : decode_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_op1)
      `OP1_binary_sequential_RS : decode_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : decode_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : decode_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : decode_ctrl_op1_string = "PC_1";
      default : decode_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_alu)
      `ALU_opt_ADD : decode_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : decode_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : decode_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : decode_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : decode_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : decode_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : decode_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : decode_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : decode_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : decode_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : decode_ctrl_alu_string = "SRA_1";
      default : decode_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_wb)
      `WB_binary_sequential_ALU_1 : decode_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : decode_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : decode_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : decode_ctrl_wb_string = "CSR1 ";
      default : decode_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_m)
      `M_binary_sequential_XRD : decode_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : decode_ctrl_m_string = "XWR";
      default : decode_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_msk)
      `MSK_binary_sequential_B : decode_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : decode_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : decode_ctrl_msk_string = "W";
      default : decode_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_csr)
      `CSR_binary_sequential_N : decode_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : decode_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : decode_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : decode_ctrl_csr_string = "C";
      default : decode_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_ctrl_mfs)
      `MFS_binary_sequential_N : decode_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : decode_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : decode_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : decode_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : decode_ctrl_mfs_string = "FD";
      default : decode_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(_zz_3)
      `MSK_binary_sequential_B : _zz_3_string = "B";
      `MSK_binary_sequential_H : _zz_3_string = "H";
      `MSK_binary_sequential_W : _zz_3_string = "W";
      default : _zz_3_string = "?";
    endcase
  end
  always @(*) begin
    case(_zz_5)
      `ALU_opt_ADD : _zz_5_string = "ADD  ";
      `ALU_opt_SLL1 : _zz_5_string = "SLL1 ";
      `ALU_opt_SLT : _zz_5_string = "SLT  ";
      `ALU_opt_SLTU : _zz_5_string = "SLTU ";
      `ALU_opt_XOR_1 : _zz_5_string = "XOR_1";
      `ALU_opt_SRL_1 : _zz_5_string = "SRL_1";
      `ALU_opt_OR_1 : _zz_5_string = "OR_1 ";
      `ALU_opt_AND_1 : _zz_5_string = "AND_1";
      `ALU_opt_SUB : _zz_5_string = "SUB  ";
      `ALU_opt_COPY : _zz_5_string = "COPY ";
      `ALU_opt_SRA_1 : _zz_5_string = "SRA_1";
      default : _zz_5_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_6)
      `ALU_opt_ADD : _zz_6_string = "ADD  ";
      `ALU_opt_SLL1 : _zz_6_string = "SLL1 ";
      `ALU_opt_SLT : _zz_6_string = "SLT  ";
      `ALU_opt_SLTU : _zz_6_string = "SLTU ";
      `ALU_opt_XOR_1 : _zz_6_string = "XOR_1";
      `ALU_opt_SRL_1 : _zz_6_string = "SRL_1";
      `ALU_opt_OR_1 : _zz_6_string = "OR_1 ";
      `ALU_opt_AND_1 : _zz_6_string = "AND_1";
      `ALU_opt_SUB : _zz_6_string = "SUB  ";
      `ALU_opt_COPY : _zz_6_string = "COPY ";
      `ALU_opt_SRA_1 : _zz_6_string = "SRA_1";
      default : _zz_6_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_7)
      `BR_opt_N : _zz_7_string = "N  ";
      `BR_opt_NE : _zz_7_string = "NE ";
      `BR_opt_EQ : _zz_7_string = "EQ ";
      `BR_opt_GE : _zz_7_string = "GE ";
      `BR_opt_GEU : _zz_7_string = "GEU";
      `BR_opt_LT : _zz_7_string = "LT ";
      `BR_opt_LTU : _zz_7_string = "LTU";
      `BR_opt_J : _zz_7_string = "J  ";
      `BR_opt_JR : _zz_7_string = "JR ";
      default : _zz_7_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_8)
      `CSR_binary_sequential_N : _zz_8_string = "N";
      `CSR_binary_sequential_W : _zz_8_string = "W";
      `CSR_binary_sequential_S : _zz_8_string = "S";
      `CSR_binary_sequential_C : _zz_8_string = "C";
      default : _zz_8_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_br)
      `BR_opt_N : decode_outInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : decode_outInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : decode_outInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : decode_outInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : decode_outInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : decode_outInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : decode_outInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : decode_outInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : decode_outInst_payload_ctrl_br_string = "JR ";
      default : decode_outInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : decode_outInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : decode_outInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : decode_outInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : decode_outInst_payload_ctrl_op0_string = "IMJB";
      default : decode_outInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : decode_outInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : decode_outInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : decode_outInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : decode_outInst_payload_ctrl_op1_string = "PC_1";
      default : decode_outInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_alu)
      `ALU_opt_ADD : decode_outInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : decode_outInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : decode_outInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : decode_outInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : decode_outInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : decode_outInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : decode_outInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : decode_outInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : decode_outInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : decode_outInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : decode_outInst_payload_ctrl_alu_string = "SRA_1";
      default : decode_outInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : decode_outInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : decode_outInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : decode_outInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : decode_outInst_payload_ctrl_wb_string = "CSR1 ";
      default : decode_outInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_m)
      `M_binary_sequential_XRD : decode_outInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : decode_outInst_payload_ctrl_m_string = "XWR";
      default : decode_outInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : decode_outInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : decode_outInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : decode_outInst_payload_ctrl_msk_string = "W";
      default : decode_outInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : decode_outInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : decode_outInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : decode_outInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : decode_outInst_payload_ctrl_csr_string = "C";
      default : decode_outInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : decode_outInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : decode_outInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : decode_outInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : decode_outInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : decode_outInst_payload_ctrl_mfs_string = "FD";
      default : decode_outInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_br)
      `BR_opt_N : execute0_inInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute0_inInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute0_inInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute0_inInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute0_inInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute0_inInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute0_inInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute0_inInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute0_inInst_payload_ctrl_br_string = "JR ";
      default : execute0_inInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute0_inInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute0_inInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute0_inInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute0_inInst_payload_ctrl_op0_string = "IMJB";
      default : execute0_inInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute0_inInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute0_inInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute0_inInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute0_inInst_payload_ctrl_op1_string = "PC_1";
      default : execute0_inInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_alu)
      `ALU_opt_ADD : execute0_inInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute0_inInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute0_inInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute0_inInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute0_inInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute0_inInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute0_inInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute0_inInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute0_inInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute0_inInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute0_inInst_payload_ctrl_alu_string = "SRA_1";
      default : execute0_inInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute0_inInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute0_inInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute0_inInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute0_inInst_payload_ctrl_wb_string = "CSR1 ";
      default : execute0_inInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_m)
      `M_binary_sequential_XRD : execute0_inInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute0_inInst_payload_ctrl_m_string = "XWR";
      default : execute0_inInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute0_inInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute0_inInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute0_inInst_payload_ctrl_msk_string = "W";
      default : execute0_inInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute0_inInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute0_inInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute0_inInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute0_inInst_payload_ctrl_csr_string = "C";
      default : execute0_inInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute0_inInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute0_inInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute0_inInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute0_inInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute0_inInst_payload_ctrl_mfs_string = "FD";
      default : execute0_inInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_br)
      `BR_opt_N : decode_outInst_m2sPipe_rData_ctrl_br_string = "N  ";
      `BR_opt_NE : decode_outInst_m2sPipe_rData_ctrl_br_string = "NE ";
      `BR_opt_EQ : decode_outInst_m2sPipe_rData_ctrl_br_string = "EQ ";
      `BR_opt_GE : decode_outInst_m2sPipe_rData_ctrl_br_string = "GE ";
      `BR_opt_GEU : decode_outInst_m2sPipe_rData_ctrl_br_string = "GEU";
      `BR_opt_LT : decode_outInst_m2sPipe_rData_ctrl_br_string = "LT ";
      `BR_opt_LTU : decode_outInst_m2sPipe_rData_ctrl_br_string = "LTU";
      `BR_opt_J : decode_outInst_m2sPipe_rData_ctrl_br_string = "J  ";
      `BR_opt_JR : decode_outInst_m2sPipe_rData_ctrl_br_string = "JR ";
      default : decode_outInst_m2sPipe_rData_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_op0)
      `OP0_binary_sequential_RS : decode_outInst_m2sPipe_rData_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : decode_outInst_m2sPipe_rData_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : decode_outInst_m2sPipe_rData_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : decode_outInst_m2sPipe_rData_ctrl_op0_string = "IMJB";
      default : decode_outInst_m2sPipe_rData_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_op1)
      `OP1_binary_sequential_RS : decode_outInst_m2sPipe_rData_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : decode_outInst_m2sPipe_rData_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : decode_outInst_m2sPipe_rData_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : decode_outInst_m2sPipe_rData_ctrl_op1_string = "PC_1";
      default : decode_outInst_m2sPipe_rData_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_alu)
      `ALU_opt_ADD : decode_outInst_m2sPipe_rData_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : decode_outInst_m2sPipe_rData_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : decode_outInst_m2sPipe_rData_ctrl_alu_string = "SRA_1";
      default : decode_outInst_m2sPipe_rData_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_wb)
      `WB_binary_sequential_ALU_1 : decode_outInst_m2sPipe_rData_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : decode_outInst_m2sPipe_rData_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : decode_outInst_m2sPipe_rData_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : decode_outInst_m2sPipe_rData_ctrl_wb_string = "CSR1 ";
      default : decode_outInst_m2sPipe_rData_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_m)
      `M_binary_sequential_XRD : decode_outInst_m2sPipe_rData_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : decode_outInst_m2sPipe_rData_ctrl_m_string = "XWR";
      default : decode_outInst_m2sPipe_rData_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_msk)
      `MSK_binary_sequential_B : decode_outInst_m2sPipe_rData_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : decode_outInst_m2sPipe_rData_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : decode_outInst_m2sPipe_rData_ctrl_msk_string = "W";
      default : decode_outInst_m2sPipe_rData_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_csr)
      `CSR_binary_sequential_N : decode_outInst_m2sPipe_rData_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : decode_outInst_m2sPipe_rData_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : decode_outInst_m2sPipe_rData_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : decode_outInst_m2sPipe_rData_ctrl_csr_string = "C";
      default : decode_outInst_m2sPipe_rData_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(decode_outInst_m2sPipe_rData_ctrl_mfs)
      `MFS_binary_sequential_N : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "FD";
      default : decode_outInst_m2sPipe_rData_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute0_br_pc_sel)
      `PC_binary_sequential_INC : execute0_br_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute0_br_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute0_br_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute0_br_pc_sel_string = "JR ";
      default : execute0_br_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_br)
      `BR_opt_N : execute0_outInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute0_outInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute0_outInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute0_outInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute0_outInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute0_outInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute0_outInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute0_outInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute0_outInst_payload_ctrl_br_string = "JR ";
      default : execute0_outInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute0_outInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute0_outInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute0_outInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute0_outInst_payload_ctrl_op0_string = "IMJB";
      default : execute0_outInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute0_outInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute0_outInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute0_outInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute0_outInst_payload_ctrl_op1_string = "PC_1";
      default : execute0_outInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_alu)
      `ALU_opt_ADD : execute0_outInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute0_outInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute0_outInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute0_outInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute0_outInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute0_outInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute0_outInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute0_outInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute0_outInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute0_outInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute0_outInst_payload_ctrl_alu_string = "SRA_1";
      default : execute0_outInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute0_outInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute0_outInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute0_outInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute0_outInst_payload_ctrl_wb_string = "CSR1 ";
      default : execute0_outInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_m)
      `M_binary_sequential_XRD : execute0_outInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute0_outInst_payload_ctrl_m_string = "XWR";
      default : execute0_outInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute0_outInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute0_outInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute0_outInst_payload_ctrl_msk_string = "W";
      default : execute0_outInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute0_outInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute0_outInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute0_outInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute0_outInst_payload_ctrl_csr_string = "C";
      default : execute0_outInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute0_outInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute0_outInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute0_outInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute0_outInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute0_outInst_payload_ctrl_mfs_string = "FD";
      default : execute0_outInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_payload_pc_sel)
      `PC_binary_sequential_INC : execute0_outInst_payload_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute0_outInst_payload_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute0_outInst_payload_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute0_outInst_payload_pc_sel_string = "JR ";
      default : execute0_outInst_payload_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_br)
      `BR_opt_N : execute0_inInst_thrown_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute0_inInst_thrown_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute0_inInst_thrown_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute0_inInst_thrown_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute0_inInst_thrown_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute0_inInst_thrown_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute0_inInst_thrown_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute0_inInst_thrown_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute0_inInst_thrown_payload_ctrl_br_string = "JR ";
      default : execute0_inInst_thrown_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute0_inInst_thrown_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute0_inInst_thrown_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute0_inInst_thrown_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute0_inInst_thrown_payload_ctrl_op0_string = "IMJB";
      default : execute0_inInst_thrown_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute0_inInst_thrown_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute0_inInst_thrown_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute0_inInst_thrown_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute0_inInst_thrown_payload_ctrl_op1_string = "PC_1";
      default : execute0_inInst_thrown_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_alu)
      `ALU_opt_ADD : execute0_inInst_thrown_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute0_inInst_thrown_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute0_inInst_thrown_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute0_inInst_thrown_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute0_inInst_thrown_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute0_inInst_thrown_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute0_inInst_thrown_payload_ctrl_alu_string = "SRA_1";
      default : execute0_inInst_thrown_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute0_inInst_thrown_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute0_inInst_thrown_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute0_inInst_thrown_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute0_inInst_thrown_payload_ctrl_wb_string = "CSR1 ";
      default : execute0_inInst_thrown_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_m)
      `M_binary_sequential_XRD : execute0_inInst_thrown_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute0_inInst_thrown_payload_ctrl_m_string = "XWR";
      default : execute0_inInst_thrown_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute0_inInst_thrown_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute0_inInst_thrown_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute0_inInst_thrown_payload_ctrl_msk_string = "W";
      default : execute0_inInst_thrown_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute0_inInst_thrown_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute0_inInst_thrown_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute0_inInst_thrown_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute0_inInst_thrown_payload_ctrl_csr_string = "C";
      default : execute0_inInst_thrown_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_inInst_thrown_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute0_inInst_thrown_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute0_inInst_thrown_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute0_inInst_thrown_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute0_inInst_thrown_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute0_inInst_thrown_payload_ctrl_mfs_string = "FD";
      default : execute0_inInst_thrown_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_br)
      `BR_opt_N : execute1_inInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute1_inInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute1_inInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute1_inInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute1_inInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute1_inInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute1_inInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute1_inInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute1_inInst_payload_ctrl_br_string = "JR ";
      default : execute1_inInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute1_inInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute1_inInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute1_inInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute1_inInst_payload_ctrl_op0_string = "IMJB";
      default : execute1_inInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute1_inInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute1_inInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute1_inInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute1_inInst_payload_ctrl_op1_string = "PC_1";
      default : execute1_inInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_alu)
      `ALU_opt_ADD : execute1_inInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute1_inInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute1_inInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute1_inInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute1_inInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute1_inInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute1_inInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute1_inInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute1_inInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute1_inInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute1_inInst_payload_ctrl_alu_string = "SRA_1";
      default : execute1_inInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute1_inInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute1_inInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute1_inInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute1_inInst_payload_ctrl_wb_string = "CSR1 ";
      default : execute1_inInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_m)
      `M_binary_sequential_XRD : execute1_inInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute1_inInst_payload_ctrl_m_string = "XWR";
      default : execute1_inInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute1_inInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute1_inInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute1_inInst_payload_ctrl_msk_string = "W";
      default : execute1_inInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute1_inInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute1_inInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute1_inInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute1_inInst_payload_ctrl_csr_string = "C";
      default : execute1_inInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute1_inInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute1_inInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute1_inInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute1_inInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute1_inInst_payload_ctrl_mfs_string = "FD";
      default : execute1_inInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_payload_pc_sel)
      `PC_binary_sequential_INC : execute1_inInst_payload_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute1_inInst_payload_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute1_inInst_payload_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute1_inInst_payload_pc_sel_string = "JR ";
      default : execute1_inInst_payload_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_br)
      `BR_opt_N : execute0_outInst_m2sPipe_rData_ctrl_br_string = "N  ";
      `BR_opt_NE : execute0_outInst_m2sPipe_rData_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute0_outInst_m2sPipe_rData_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute0_outInst_m2sPipe_rData_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute0_outInst_m2sPipe_rData_ctrl_br_string = "GEU";
      `BR_opt_LT : execute0_outInst_m2sPipe_rData_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute0_outInst_m2sPipe_rData_ctrl_br_string = "LTU";
      `BR_opt_J : execute0_outInst_m2sPipe_rData_ctrl_br_string = "J  ";
      `BR_opt_JR : execute0_outInst_m2sPipe_rData_ctrl_br_string = "JR ";
      default : execute0_outInst_m2sPipe_rData_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_op0)
      `OP0_binary_sequential_RS : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "IMJB";
      default : execute0_outInst_m2sPipe_rData_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_op1)
      `OP1_binary_sequential_RS : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "PC_1";
      default : execute0_outInst_m2sPipe_rData_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_alu)
      `ALU_opt_ADD : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "SRA_1";
      default : execute0_outInst_m2sPipe_rData_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "CSR1 ";
      default : execute0_outInst_m2sPipe_rData_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_m)
      `M_binary_sequential_XRD : execute0_outInst_m2sPipe_rData_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute0_outInst_m2sPipe_rData_ctrl_m_string = "XWR";
      default : execute0_outInst_m2sPipe_rData_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_msk)
      `MSK_binary_sequential_B : execute0_outInst_m2sPipe_rData_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute0_outInst_m2sPipe_rData_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute0_outInst_m2sPipe_rData_ctrl_msk_string = "W";
      default : execute0_outInst_m2sPipe_rData_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_csr)
      `CSR_binary_sequential_N : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "C";
      default : execute0_outInst_m2sPipe_rData_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_ctrl_mfs)
      `MFS_binary_sequential_N : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "FD";
      default : execute0_outInst_m2sPipe_rData_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute0_outInst_m2sPipe_rData_pc_sel)
      `PC_binary_sequential_INC : execute0_outInst_m2sPipe_rData_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute0_outInst_m2sPipe_rData_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute0_outInst_m2sPipe_rData_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute0_outInst_m2sPipe_rData_pc_sel_string = "JR ";
      default : execute0_outInst_m2sPipe_rData_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_br)
      `BR_opt_N : execute1_outInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute1_outInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute1_outInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute1_outInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute1_outInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute1_outInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute1_outInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute1_outInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute1_outInst_payload_ctrl_br_string = "JR ";
      default : execute1_outInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute1_outInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute1_outInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute1_outInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute1_outInst_payload_ctrl_op0_string = "IMJB";
      default : execute1_outInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute1_outInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute1_outInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute1_outInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute1_outInst_payload_ctrl_op1_string = "PC_1";
      default : execute1_outInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_alu)
      `ALU_opt_ADD : execute1_outInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute1_outInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute1_outInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute1_outInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute1_outInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute1_outInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute1_outInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute1_outInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute1_outInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute1_outInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute1_outInst_payload_ctrl_alu_string = "SRA_1";
      default : execute1_outInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute1_outInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute1_outInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute1_outInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute1_outInst_payload_ctrl_wb_string = "CSR1 ";
      default : execute1_outInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_m)
      `M_binary_sequential_XRD : execute1_outInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute1_outInst_payload_ctrl_m_string = "XWR";
      default : execute1_outInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute1_outInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute1_outInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute1_outInst_payload_ctrl_msk_string = "W";
      default : execute1_outInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute1_outInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute1_outInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute1_outInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute1_outInst_payload_ctrl_csr_string = "C";
      default : execute1_outInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute1_outInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute1_outInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute1_outInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute1_outInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute1_outInst_payload_ctrl_mfs_string = "FD";
      default : execute1_outInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_br)
      `BR_opt_N : execute1_inInst_thrown_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : execute1_inInst_thrown_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute1_inInst_thrown_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute1_inInst_thrown_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute1_inInst_thrown_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : execute1_inInst_thrown_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute1_inInst_thrown_payload_ctrl_br_string = "LTU";
      `BR_opt_J : execute1_inInst_thrown_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : execute1_inInst_thrown_payload_ctrl_br_string = "JR ";
      default : execute1_inInst_thrown_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_op0)
      `OP0_binary_sequential_RS : execute1_inInst_thrown_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute1_inInst_thrown_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute1_inInst_thrown_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute1_inInst_thrown_payload_ctrl_op0_string = "IMJB";
      default : execute1_inInst_thrown_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_op1)
      `OP1_binary_sequential_RS : execute1_inInst_thrown_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute1_inInst_thrown_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute1_inInst_thrown_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute1_inInst_thrown_payload_ctrl_op1_string = "PC_1";
      default : execute1_inInst_thrown_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_alu)
      `ALU_opt_ADD : execute1_inInst_thrown_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute1_inInst_thrown_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute1_inInst_thrown_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute1_inInst_thrown_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute1_inInst_thrown_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute1_inInst_thrown_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute1_inInst_thrown_payload_ctrl_alu_string = "SRA_1";
      default : execute1_inInst_thrown_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute1_inInst_thrown_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute1_inInst_thrown_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute1_inInst_thrown_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute1_inInst_thrown_payload_ctrl_wb_string = "CSR1 ";
      default : execute1_inInst_thrown_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_m)
      `M_binary_sequential_XRD : execute1_inInst_thrown_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute1_inInst_thrown_payload_ctrl_m_string = "XWR";
      default : execute1_inInst_thrown_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_msk)
      `MSK_binary_sequential_B : execute1_inInst_thrown_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute1_inInst_thrown_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute1_inInst_thrown_payload_ctrl_msk_string = "W";
      default : execute1_inInst_thrown_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_csr)
      `CSR_binary_sequential_N : execute1_inInst_thrown_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute1_inInst_thrown_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute1_inInst_thrown_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute1_inInst_thrown_payload_ctrl_csr_string = "C";
      default : execute1_inInst_thrown_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_ctrl_mfs)
      `MFS_binary_sequential_N : execute1_inInst_thrown_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute1_inInst_thrown_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute1_inInst_thrown_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute1_inInst_thrown_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute1_inInst_thrown_payload_ctrl_mfs_string = "FD";
      default : execute1_inInst_thrown_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_inInst_thrown_payload_pc_sel)
      `PC_binary_sequential_INC : execute1_inInst_thrown_payload_pc_sel_string = "INC";
      `PC_binary_sequential_BRA : execute1_inInst_thrown_payload_pc_sel_string = "BRA";
      `PC_binary_sequential_J : execute1_inInst_thrown_payload_pc_sel_string = "J  ";
      `PC_binary_sequential_JR : execute1_inInst_thrown_payload_pc_sel_string = "JR ";
      default : execute1_inInst_thrown_payload_pc_sel_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_br)
      `BR_opt_N : writeBack_inInst_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : writeBack_inInst_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : writeBack_inInst_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : writeBack_inInst_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : writeBack_inInst_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : writeBack_inInst_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : writeBack_inInst_payload_ctrl_br_string = "LTU";
      `BR_opt_J : writeBack_inInst_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : writeBack_inInst_payload_ctrl_br_string = "JR ";
      default : writeBack_inInst_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_op0)
      `OP0_binary_sequential_RS : writeBack_inInst_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : writeBack_inInst_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : writeBack_inInst_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : writeBack_inInst_payload_ctrl_op0_string = "IMJB";
      default : writeBack_inInst_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_op1)
      `OP1_binary_sequential_RS : writeBack_inInst_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : writeBack_inInst_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : writeBack_inInst_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : writeBack_inInst_payload_ctrl_op1_string = "PC_1";
      default : writeBack_inInst_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_alu)
      `ALU_opt_ADD : writeBack_inInst_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : writeBack_inInst_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : writeBack_inInst_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : writeBack_inInst_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : writeBack_inInst_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : writeBack_inInst_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : writeBack_inInst_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : writeBack_inInst_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : writeBack_inInst_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : writeBack_inInst_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : writeBack_inInst_payload_ctrl_alu_string = "SRA_1";
      default : writeBack_inInst_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : writeBack_inInst_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : writeBack_inInst_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : writeBack_inInst_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : writeBack_inInst_payload_ctrl_wb_string = "CSR1 ";
      default : writeBack_inInst_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_m)
      `M_binary_sequential_XRD : writeBack_inInst_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : writeBack_inInst_payload_ctrl_m_string = "XWR";
      default : writeBack_inInst_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : writeBack_inInst_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : writeBack_inInst_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : writeBack_inInst_payload_ctrl_msk_string = "W";
      default : writeBack_inInst_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_csr)
      `CSR_binary_sequential_N : writeBack_inInst_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : writeBack_inInst_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : writeBack_inInst_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : writeBack_inInst_payload_ctrl_csr_string = "C";
      default : writeBack_inInst_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_payload_ctrl_mfs)
      `MFS_binary_sequential_N : writeBack_inInst_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : writeBack_inInst_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : writeBack_inInst_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : writeBack_inInst_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : writeBack_inInst_payload_ctrl_mfs_string = "FD";
      default : writeBack_inInst_payload_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_br)
      `BR_opt_N : execute1_outInst_m2sPipe_rData_ctrl_br_string = "N  ";
      `BR_opt_NE : execute1_outInst_m2sPipe_rData_ctrl_br_string = "NE ";
      `BR_opt_EQ : execute1_outInst_m2sPipe_rData_ctrl_br_string = "EQ ";
      `BR_opt_GE : execute1_outInst_m2sPipe_rData_ctrl_br_string = "GE ";
      `BR_opt_GEU : execute1_outInst_m2sPipe_rData_ctrl_br_string = "GEU";
      `BR_opt_LT : execute1_outInst_m2sPipe_rData_ctrl_br_string = "LT ";
      `BR_opt_LTU : execute1_outInst_m2sPipe_rData_ctrl_br_string = "LTU";
      `BR_opt_J : execute1_outInst_m2sPipe_rData_ctrl_br_string = "J  ";
      `BR_opt_JR : execute1_outInst_m2sPipe_rData_ctrl_br_string = "JR ";
      default : execute1_outInst_m2sPipe_rData_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_op0)
      `OP0_binary_sequential_RS : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "IMJB";
      default : execute1_outInst_m2sPipe_rData_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_op1)
      `OP1_binary_sequential_RS : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "PC_1";
      default : execute1_outInst_m2sPipe_rData_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_alu)
      `ALU_opt_ADD : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "SRA_1";
      default : execute1_outInst_m2sPipe_rData_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_wb)
      `WB_binary_sequential_ALU_1 : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "CSR1 ";
      default : execute1_outInst_m2sPipe_rData_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_m)
      `M_binary_sequential_XRD : execute1_outInst_m2sPipe_rData_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : execute1_outInst_m2sPipe_rData_ctrl_m_string = "XWR";
      default : execute1_outInst_m2sPipe_rData_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_msk)
      `MSK_binary_sequential_B : execute1_outInst_m2sPipe_rData_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : execute1_outInst_m2sPipe_rData_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : execute1_outInst_m2sPipe_rData_ctrl_msk_string = "W";
      default : execute1_outInst_m2sPipe_rData_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_csr)
      `CSR_binary_sequential_N : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "C";
      default : execute1_outInst_m2sPipe_rData_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(execute1_outInst_m2sPipe_rData_ctrl_mfs)
      `MFS_binary_sequential_N : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "FD";
      default : execute1_outInst_m2sPipe_rData_ctrl_mfs_string = "??";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_br)
      `BR_opt_N : writeBack_inInst_thrown_payload_ctrl_br_string = "N  ";
      `BR_opt_NE : writeBack_inInst_thrown_payload_ctrl_br_string = "NE ";
      `BR_opt_EQ : writeBack_inInst_thrown_payload_ctrl_br_string = "EQ ";
      `BR_opt_GE : writeBack_inInst_thrown_payload_ctrl_br_string = "GE ";
      `BR_opt_GEU : writeBack_inInst_thrown_payload_ctrl_br_string = "GEU";
      `BR_opt_LT : writeBack_inInst_thrown_payload_ctrl_br_string = "LT ";
      `BR_opt_LTU : writeBack_inInst_thrown_payload_ctrl_br_string = "LTU";
      `BR_opt_J : writeBack_inInst_thrown_payload_ctrl_br_string = "J  ";
      `BR_opt_JR : writeBack_inInst_thrown_payload_ctrl_br_string = "JR ";
      default : writeBack_inInst_thrown_payload_ctrl_br_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_op0)
      `OP0_binary_sequential_RS : writeBack_inInst_thrown_payload_ctrl_op0_string = "RS  ";
      `OP0_binary_sequential_IMU : writeBack_inInst_thrown_payload_ctrl_op0_string = "IMU ";
      `OP0_binary_sequential_IMZ : writeBack_inInst_thrown_payload_ctrl_op0_string = "IMZ ";
      `OP0_binary_sequential_IMJB : writeBack_inInst_thrown_payload_ctrl_op0_string = "IMJB";
      default : writeBack_inInst_thrown_payload_ctrl_op0_string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_op1)
      `OP1_binary_sequential_RS : writeBack_inInst_thrown_payload_ctrl_op1_string = "RS  ";
      `OP1_binary_sequential_IMI : writeBack_inInst_thrown_payload_ctrl_op1_string = "IMI ";
      `OP1_binary_sequential_IMS : writeBack_inInst_thrown_payload_ctrl_op1_string = "IMS ";
      `OP1_binary_sequential_PC_1 : writeBack_inInst_thrown_payload_ctrl_op1_string = "PC_1";
      default : writeBack_inInst_thrown_payload_ctrl_op1_string = "????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_alu)
      `ALU_opt_ADD : writeBack_inInst_thrown_payload_ctrl_alu_string = "ADD  ";
      `ALU_opt_SLL1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "SLL1 ";
      `ALU_opt_SLT : writeBack_inInst_thrown_payload_ctrl_alu_string = "SLT  ";
      `ALU_opt_SLTU : writeBack_inInst_thrown_payload_ctrl_alu_string = "SLTU ";
      `ALU_opt_XOR_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "XOR_1";
      `ALU_opt_SRL_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "SRL_1";
      `ALU_opt_OR_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "OR_1 ";
      `ALU_opt_AND_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "AND_1";
      `ALU_opt_SUB : writeBack_inInst_thrown_payload_ctrl_alu_string = "SUB  ";
      `ALU_opt_COPY : writeBack_inInst_thrown_payload_ctrl_alu_string = "COPY ";
      `ALU_opt_SRA_1 : writeBack_inInst_thrown_payload_ctrl_alu_string = "SRA_1";
      default : writeBack_inInst_thrown_payload_ctrl_alu_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : writeBack_inInst_thrown_payload_ctrl_wb_string = "ALU_1";
      `WB_binary_sequential_MEM : writeBack_inInst_thrown_payload_ctrl_wb_string = "MEM  ";
      `WB_binary_sequential_PC4 : writeBack_inInst_thrown_payload_ctrl_wb_string = "PC4  ";
      `WB_binary_sequential_CSR1 : writeBack_inInst_thrown_payload_ctrl_wb_string = "CSR1 ";
      default : writeBack_inInst_thrown_payload_ctrl_wb_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_m)
      `M_binary_sequential_XRD : writeBack_inInst_thrown_payload_ctrl_m_string = "XRD";
      `M_binary_sequential_XWR : writeBack_inInst_thrown_payload_ctrl_m_string = "XWR";
      default : writeBack_inInst_thrown_payload_ctrl_m_string = "???";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_msk)
      `MSK_binary_sequential_B : writeBack_inInst_thrown_payload_ctrl_msk_string = "B";
      `MSK_binary_sequential_H : writeBack_inInst_thrown_payload_ctrl_msk_string = "H";
      `MSK_binary_sequential_W : writeBack_inInst_thrown_payload_ctrl_msk_string = "W";
      default : writeBack_inInst_thrown_payload_ctrl_msk_string = "?";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_csr)
      `CSR_binary_sequential_N : writeBack_inInst_thrown_payload_ctrl_csr_string = "N";
      `CSR_binary_sequential_W : writeBack_inInst_thrown_payload_ctrl_csr_string = "W";
      `CSR_binary_sequential_S : writeBack_inInst_thrown_payload_ctrl_csr_string = "S";
      `CSR_binary_sequential_C : writeBack_inInst_thrown_payload_ctrl_csr_string = "C";
      default : writeBack_inInst_thrown_payload_ctrl_csr_string = "?";
    endcase
  end
  always @(*) begin
    case(writeBack_inInst_thrown_payload_ctrl_mfs)
      `MFS_binary_sequential_N : writeBack_inInst_thrown_payload_ctrl_mfs_string = "N ";
      `MFS_binary_sequential_SI : writeBack_inInst_thrown_payload_ctrl_mfs_string = "SI";
      `MFS_binary_sequential_SD : writeBack_inInst_thrown_payload_ctrl_mfs_string = "SD";
      `MFS_binary_sequential_FA : writeBack_inInst_thrown_payload_ctrl_mfs_string = "FA";
      `MFS_binary_sequential_FD : writeBack_inInst_thrown_payload_ctrl_mfs_string = "FD";
      default : writeBack_inInst_thrown_payload_ctrl_mfs_string = "??";
    endcase
  end
  `endif

  always @ (*) begin
    _zz_1 = 1'b0;
    if(writeBack_regFileWrite_valid)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(((((execute1_inInst_valid && execute1_inInst_ready) && (execute1_inInst_payload_ctrl_br != `BR_opt_JR)) && (execute1_inInst_payload_ctrl_br != `BR_opt_N)) && (execute1_inInst_payload_ctrl_br != `BR_opt_J)))begin
      if((($signed(_zz_101) != $signed(_zz_102)) && ($signed(_zz_103) != $signed(_zz_104))))begin
        _zz_2 = 1'b1;
      end
    end
  end

  assign prefetch_halt = 1'b0;
  always @ (*) begin
    prefetch_pcNext = (prefetch_pc + _zz_84);
    if(prefetch_pcLoad_valid)begin
      prefetch_pcNext = prefetch_pcLoad_payload;
    end
  end

  always @ (*) begin
    iCmd_valid = (prefetch_resetDone && (! prefetch_halt));
    if((fetch_pendingPrefetch_value == 2'b11))begin
      iCmd_valid = 1'b0;
    end
  end

  assign iCmd_payload_pc = prefetch_pcNext;
  always @ (*) begin
    fetch_throwIt = 1'b0;
    if(fetch_flush)begin
      fetch_throwIt = 1'b1;
    end
    if(decode_flush)begin
      fetch_throwIt = 1'b1;
    end
    if(execute0_flush)begin
      fetch_throwIt = 1'b1;
    end
    if(execute1_flush)begin
      fetch_throwIt = 1'b1;
    end
    if(writeBack_flush)begin
      fetch_throwIt = 1'b1;
    end
  end

  assign fetch_flush = 1'b0;
  always @ (*) begin
    fetch_pendingPrefetch_incrementIt = 1'b0;
    if((iCmd_valid && iCmd_ready))begin
      fetch_pendingPrefetch_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    fetch_pendingPrefetch_decrementIt = 1'b0;
    if((iRsp_valid && iRsp_ready))begin
      fetch_pendingPrefetch_decrementIt = 1'b1;
    end
  end

  assign fetch_pendingPrefetch_willOverflowIfInc = ((fetch_pendingPrefetch_value == 2'b11) && (! fetch_pendingPrefetch_decrementIt));
  assign fetch_pendingPrefetch_willOverflow = (fetch_pendingPrefetch_willOverflowIfInc && fetch_pendingPrefetch_incrementIt);
  always @ (*) begin
    if((fetch_pendingPrefetch_incrementIt && (! fetch_pendingPrefetch_decrementIt)))begin
      fetch_pendingPrefetch_finalIncrement = 2'b01;
    end else begin
      if(((! fetch_pendingPrefetch_incrementIt) && fetch_pendingPrefetch_decrementIt))begin
        fetch_pendingPrefetch_finalIncrement = 2'b11;
      end else begin
        fetch_pendingPrefetch_finalIncrement = 2'b00;
      end
    end
  end

  assign fetch_pendingPrefetch_valueNext = (fetch_pendingPrefetch_value + fetch_pendingPrefetch_finalIncrement);
  assign fetch_throwNextIRsp = (fetch_throwRemaining != 2'b00);
  always @ (*) begin
    iRsp_thrown_valid = iRsp_valid;
    if(_zz_48)begin
      iRsp_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    iRsp_ready = iRsp_thrown_ready;
    if(_zz_48)begin
      iRsp_ready = 1'b1;
    end
  end

  assign iRsp_thrown_payload_instruction = iRsp_payload_instruction;
  assign iRsp_thrown_payload_pc = iRsp_payload_pc;
  assign fetch_outInst_valid = iRsp_thrown_valid;
  assign iRsp_thrown_ready = fetch_outInst_ready;
  assign fetch_outInst_payload_pc = iRsp_payload_pc;
  assign fetch_outInst_payload_instruction = iRsp_payload_instruction;
  assign fetch_outInst_payload_branchCacheLine_pc = 14'h0;
  assign fetch_outInst_payload_branchCacheLine_history = 2'b00;
  assign fetch_outInst_ready = ((1'b1 && (! decode_inInst_valid)) || decode_inInst_ready);
  assign decode_inInst_valid = fetch_outInst_m2sPipe_rValid;
  assign decode_inInst_payload_pc = fetch_outInst_m2sPipe_rData_pc;
  assign decode_inInst_payload_instruction = fetch_outInst_m2sPipe_rData_instruction;
  assign decode_inInst_payload_branchCacheLine_pc = fetch_outInst_m2sPipe_rData_branchCacheLine_pc;
  assign decode_inInst_payload_branchCacheLine_history = fetch_outInst_m2sPipe_rData_branchCacheLine_history;
  always @ (*) begin
    decode_ctrl_instVal = 1'b0;
    if(_zz_49)begin
      if(_zz_50)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_51)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_52)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_53)begin
        if(_zz_54)begin
          if(_zz_55)begin
            decode_ctrl_instVal = 1'b1;
          end
        end else begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_instVal = 1'b1;
            end
          end
        end
      end
      if(_zz_58)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_59)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_60)begin
        decode_ctrl_instVal = 1'b1;
      end
      if(_zz_61)begin
        decode_ctrl_instVal = 1'b1;
      end
    end
    if(_zz_62)begin
      decode_ctrl_instVal = 1'b1;
    end
    if(_zz_63)begin
      decode_ctrl_instVal = 1'b1;
    end
    if(_zz_64)begin
      decode_ctrl_instVal = 1'b1;
    end
  end

  always @ (*) begin
    decode_ctrl_br = `BR_opt_N;
    if(_zz_49)begin
      if(_zz_58)begin
        decode_ctrl_br = `BR_opt_J;
      end
      if(_zz_59)begin
        decode_ctrl_br = `BR_opt_JR;
      end
      if(_zz_60)begin
        decode_ctrl_br = _zz_7;
      end
    end
  end

  always @ (*) begin
    decode_ctrl_jmp = 1'b0;
    if(_zz_49)begin
      if(_zz_58)begin
        decode_ctrl_jmp = 1'b1;
      end
      if(_zz_59)begin
        decode_ctrl_jmp = 1'b1;
      end
    end
  end

  always @ (*) begin
    decode_ctrl_op0 = `OP0_binary_sequential_RS;
    if(_zz_49)begin
      if(_zz_50)begin
        decode_ctrl_op0 = `OP0_binary_sequential_RS;
      end
      if(_zz_51)begin
        decode_ctrl_op0 = `OP0_binary_sequential_IMU;
      end
      if(_zz_52)begin
        decode_ctrl_op0 = `OP0_binary_sequential_IMU;
      end
      if(_zz_53)begin
        if(_zz_54)begin
          if(_zz_55)begin
            decode_ctrl_op0 = `OP0_binary_sequential_RS;
          end
        end else begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_op0 = `OP0_binary_sequential_RS;
            end
          end
        end
      end
      if(_zz_58)begin
        decode_ctrl_op0 = `OP0_binary_sequential_IMJB;
      end
      if(_zz_59)begin
        decode_ctrl_op0 = `OP0_binary_sequential_RS;
      end
      if(_zz_60)begin
        decode_ctrl_op0 = `OP0_binary_sequential_IMJB;
      end
      if(_zz_61)begin
        if(((decode_inInst_payload_instruction & 32'h00004000) == 32'h00004000))begin
          decode_ctrl_op0 = `OP0_binary_sequential_IMZ;
        end else begin
          decode_ctrl_op0 = `OP0_binary_sequential_RS;
        end
      end
    end
    if(_zz_62)begin
      decode_ctrl_op0 = `OP0_binary_sequential_RS;
    end
    if(_zz_63)begin
      decode_ctrl_op0 = `OP0_binary_sequential_RS;
    end
  end

  always @ (*) begin
    decode_ctrl_op1 = `OP1_binary_sequential_RS;
    if(_zz_49)begin
      if(_zz_50)begin
        if(_zz_65)begin
          decode_ctrl_op1 = `OP1_binary_sequential_IMI;
        end else begin
          decode_ctrl_op1 = `OP1_binary_sequential_IMS;
        end
      end
      if(_zz_51)begin
        decode_ctrl_op1 = `OP1_binary_sequential_PC_1;
      end
      if(_zz_53)begin
        if(_zz_54)begin
          if(_zz_55)begin
            decode_ctrl_op1 = `OP1_binary_sequential_IMI;
          end
        end else begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_op1 = `OP1_binary_sequential_RS;
            end
          end
        end
      end
      if(_zz_58)begin
        decode_ctrl_op1 = `OP1_binary_sequential_PC_1;
      end
      if(_zz_59)begin
        decode_ctrl_op1 = `OP1_binary_sequential_IMI;
      end
      if(_zz_60)begin
        decode_ctrl_op1 = `OP1_binary_sequential_PC_1;
      end
    end
    if(_zz_62)begin
      decode_ctrl_op1 = `OP1_binary_sequential_RS;
    end
    if(_zz_63)begin
      decode_ctrl_op1 = `OP1_binary_sequential_RS;
    end
  end

  always @ (*) begin
    decode_ctrl_alu = `ALU_opt_ADD;
    if(_zz_49)begin
      if(_zz_50)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_51)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_52)begin
        decode_ctrl_alu = `ALU_opt_COPY;
      end
      if(_zz_53)begin
        if(_zz_54)begin
          if(_zz_55)begin
            decode_ctrl_alu = _zz_5;
          end
        end else begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_alu = _zz_6;
            end
          end
        end
      end
      if(_zz_58)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_59)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_60)begin
        decode_ctrl_alu = `ALU_opt_ADD;
      end
      if(_zz_61)begin
        decode_ctrl_alu = `ALU_opt_COPY;
      end
    end
    if(_zz_64)begin
      decode_ctrl_alu = `ALU_opt_COPY;
    end
  end

  always @ (*) begin
    decode_ctrl_wb = `WB_binary_sequential_ALU_1;
    if(_zz_49)begin
      if(_zz_50)begin
        if(_zz_65)begin
          decode_ctrl_wb = `WB_binary_sequential_MEM;
        end
      end
      if(_zz_51)begin
        decode_ctrl_wb = `WB_binary_sequential_ALU_1;
      end
      if(_zz_52)begin
        decode_ctrl_wb = `WB_binary_sequential_ALU_1;
      end
      if(_zz_53)begin
        if(_zz_54)begin
          if(_zz_55)begin
            decode_ctrl_wb = `WB_binary_sequential_ALU_1;
          end
        end else begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_wb = `WB_binary_sequential_ALU_1;
            end
          end
        end
      end
      if(_zz_58)begin
        decode_ctrl_wb = `WB_binary_sequential_PC4;
      end
      if(_zz_59)begin
        decode_ctrl_wb = `WB_binary_sequential_PC4;
      end
      if(_zz_61)begin
        decode_ctrl_wb = `WB_binary_sequential_CSR1;
      end
    end
    if(_zz_62)begin
      decode_ctrl_wb = `WB_binary_sequential_ALU_1;
    end
    if(_zz_63)begin
      decode_ctrl_wb = `WB_binary_sequential_ALU_1;
    end
    if(_zz_64)begin
      decode_ctrl_wb = `WB_binary_sequential_ALU_1;
    end
  end

  always @ (*) begin
    decode_ctrl_rfen = 1'b0;
    if(_zz_49)begin
      if(_zz_50)begin
        if(_zz_65)begin
          decode_ctrl_rfen = 1'b1;
        end
      end
      if(_zz_51)begin
        decode_ctrl_rfen = 1'b1;
      end
      if(_zz_52)begin
        decode_ctrl_rfen = 1'b1;
      end
      if(_zz_53)begin
        if(_zz_54)begin
          if(_zz_55)begin
            decode_ctrl_rfen = 1'b1;
          end
        end else begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_rfen = 1'b1;
            end
          end
        end
      end
      if(_zz_58)begin
        decode_ctrl_rfen = 1'b1;
      end
      if(_zz_59)begin
        decode_ctrl_rfen = 1'b1;
      end
      if(_zz_61)begin
        decode_ctrl_rfen = 1'b1;
      end
    end
    if(_zz_62)begin
      decode_ctrl_rfen = 1'b1;
    end
    if(_zz_63)begin
      decode_ctrl_rfen = 1'b1;
    end
    if(_zz_64)begin
      if(decode_inInst_payload_instruction[25])begin
        decode_ctrl_rfen = 1'b1;
      end
    end
  end

  always @ (*) begin
    decode_ctrl_execute0AluBypass = 1'b0;
    if(_zz_49)begin
      if(_zz_51)begin
        decode_ctrl_execute0AluBypass = 1'b1;
      end
      if(_zz_52)begin
        decode_ctrl_execute0AluBypass = 1'b1;
      end
      if(_zz_53)begin
        if(_zz_54)begin
          if(_zz_55)begin
            decode_ctrl_execute0AluBypass = (! _zz_4);
          end
        end else begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_execute0AluBypass = (! _zz_4);
            end
          end
        end
      end
    end
    if(_zz_62)begin
      decode_ctrl_execute0AluBypass = 1'b0;
    end
    if(_zz_63)begin
      decode_ctrl_execute0AluBypass = 1'b0;
    end
  end

  always @ (*) begin
    decode_ctrl_execute1AluBypass = 1'b0;
    if(_zz_49)begin
      if(_zz_51)begin
        decode_ctrl_execute1AluBypass = 1'b1;
      end
      if(_zz_52)begin
        decode_ctrl_execute1AluBypass = 1'b1;
      end
      if(_zz_53)begin
        if(_zz_54)begin
          if(_zz_55)begin
            decode_ctrl_execute1AluBypass = 1'b1;
          end
        end else begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_execute1AluBypass = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_62)begin
      decode_ctrl_execute1AluBypass = 1'b0;
    end
    if(_zz_63)begin
      decode_ctrl_execute1AluBypass = 1'b1;
    end
  end

  assign decode_ctrl_canInternalyStallWriteBack0 = 1'b0;
  always @ (*) begin
    decode_ctrl_men = 1'b0;
    if(_zz_49)begin
      if(_zz_50)begin
        decode_ctrl_men = 1'b1;
      end
    end
  end

  always @ (*) begin
    decode_ctrl_m = `M_binary_sequential_XRD;
    if(_zz_49)begin
      if(_zz_50)begin
        if(_zz_65)begin
          decode_ctrl_m = `M_binary_sequential_XRD;
        end else begin
          decode_ctrl_m = `M_binary_sequential_XWR;
        end
      end
    end
  end

  assign _zz_3 = decode_inInst_payload_instruction[13 : 12];
  assign decode_ctrl_msk = _zz_3;
  always @ (*) begin
    decode_ctrl_csr = `CSR_binary_sequential_N;
    if(_zz_49)begin
      if(_zz_61)begin
        decode_ctrl_csr = _zz_8;
      end
    end
  end

  assign decode_ctrl_mfs = `MFS_binary_sequential_N;
  always @ (*) begin
    decode_ctrl_useSrc0 = 1'b0;
    if(_zz_49)begin
      if(_zz_50)begin
        decode_ctrl_useSrc0 = 1'b1;
      end
      if(_zz_53)begin
        if(_zz_54)begin
          if(_zz_55)begin
            decode_ctrl_useSrc0 = 1'b1;
          end
        end else begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_useSrc0 = 1'b1;
            end
          end
        end
      end
      if(_zz_59)begin
        decode_ctrl_useSrc0 = 1'b1;
      end
      if(_zz_60)begin
        decode_ctrl_useSrc0 = 1'b1;
      end
    end
    if(_zz_62)begin
      decode_ctrl_useSrc0 = 1'b1;
    end
    if(_zz_63)begin
      decode_ctrl_useSrc0 = 1'b1;
    end
  end

  always @ (*) begin
    decode_ctrl_useSrc1 = 1'b0;
    if(_zz_49)begin
      if(_zz_50)begin
        if(! _zz_65) begin
          decode_ctrl_useSrc1 = 1'b1;
        end
      end
      if(_zz_53)begin
        if(! _zz_54) begin
          if(_zz_56)begin
            if(_zz_57)begin
              decode_ctrl_useSrc1 = 1'b1;
            end
          end
        end
      end
      if(_zz_60)begin
        decode_ctrl_useSrc1 = 1'b1;
      end
    end
    if(_zz_62)begin
      decode_ctrl_useSrc1 = 1'b1;
    end
    if(_zz_63)begin
      decode_ctrl_useSrc1 = 1'b1;
    end
  end

  always @ (*) begin
    decode_ctrl_extensionTag = 2'b00;
    if(_zz_62)begin
      decode_ctrl_extensionTag = 2'b01;
    end
    if(_zz_63)begin
      decode_ctrl_extensionTag = 2'b10;
    end
    if(_zz_64)begin
      decode_ctrl_extensionTag = 2'b11;
    end
  end

  always @ (*) begin
    decode_ctrl_fencei = 1'b0;
    if(_zz_49)begin
      decode_ctrl_fencei = ((decode_inInst_payload_instruction & 32'hfffffffc) == 32'h0000100c);
    end
  end

  assign _zz_4 = ((decode_inInst_payload_instruction & 32'h00003000) == 32'h00001000);
  assign _zz_5 = {(_zz_4 && decode_inInst_payload_instruction[30]),decode_inInst_payload_instruction[14 : 12]};
  assign _zz_6 = {decode_inInst_payload_instruction[30],decode_inInst_payload_instruction[14 : 12]};
  assign _zz_7 = {1'b0,decode_inInst_payload_instruction[14 : 12]};
  assign _zz_8 = decode_inInst_payload_instruction[13 : 12];
  always @ (*) begin
    decode_throwIt = 1'b0;
    if(decode_flush)begin
      decode_throwIt = 1'b1;
    end
    if(execute0_flush)begin
      decode_throwIt = 1'b1;
    end
    if(execute1_flush)begin
      decode_throwIt = 1'b1;
    end
    if(writeBack_flush)begin
      decode_throwIt = 1'b1;
    end
  end

  always @ (*) begin
    decode_halt = 1'b0;
    if(decode_hazard)begin
      decode_halt = 1'b1;
    end
    if(_zz_66)begin
      if(! _zz_67) begin
        if(_zz_31)begin
          decode_halt = 1'b1;
        end
      end
    end
  end

  assign decode_addr0 = decode_inInst_payload_instruction[19 : 15];
  assign decode_addr1 = decode_inInst_payload_instruction[24 : 20];
  assign decode_addr0IsZero = (decode_addr0 == 5'h0);
  assign decode_addr1IsZero = (decode_addr1 == 5'h0);
  assign decode_srcInstruction = ((decode_inInst_valid && (! decode_inInst_ready)) ? decode_inInst_payload_instruction : fetch_outInst_payload_instruction);
  assign decode_regFileReadAddress0 = decode_srcInstruction[19 : 15];
  assign decode_regFileReadAddress1 = decode_srcInstruction[24 : 20];
  assign decode_src0 = _zz_46;
  assign decode_src1 = _zz_47;
  assign _zz_9 = _zz_87[19];
  always @ (*) begin
    _zz_10[10] = _zz_9;
    _zz_10[9] = _zz_9;
    _zz_10[8] = _zz_9;
    _zz_10[7] = _zz_9;
    _zz_10[6] = _zz_9;
    _zz_10[5] = _zz_9;
    _zz_10[4] = _zz_9;
    _zz_10[3] = _zz_9;
    _zz_10[2] = _zz_9;
    _zz_10[1] = _zz_9;
    _zz_10[0] = _zz_9;
  end

  assign _zz_11 = _zz_88[11];
  always @ (*) begin
    _zz_12[18] = _zz_11;
    _zz_12[17] = _zz_11;
    _zz_12[16] = _zz_11;
    _zz_12[15] = _zz_11;
    _zz_12[14] = _zz_11;
    _zz_12[13] = _zz_11;
    _zz_12[12] = _zz_11;
    _zz_12[11] = _zz_11;
    _zz_12[10] = _zz_11;
    _zz_12[9] = _zz_11;
    _zz_12[8] = _zz_11;
    _zz_12[7] = _zz_11;
    _zz_12[6] = _zz_11;
    _zz_12[5] = _zz_11;
    _zz_12[4] = _zz_11;
    _zz_12[3] = _zz_11;
    _zz_12[2] = _zz_11;
    _zz_12[1] = _zz_11;
    _zz_12[0] = _zz_11;
  end

  assign decode_brjmpImm = (decode_ctrl_jmp ? {{_zz_10,{{{decode_inInst_payload_instruction[31],decode_inInst_payload_instruction[19 : 12]},decode_inInst_payload_instruction[20]},decode_inInst_payload_instruction[30 : 21]}},1'b0} : {{_zz_12,{{{decode_inInst_payload_instruction[31],decode_inInst_payload_instruction[7]},decode_inInst_payload_instruction[30 : 25]},decode_inInst_payload_instruction[11 : 8]}},1'b0});
  assign decode_brJumpPc = _zz_89;
  assign decode_branchCacheHit = (decode_inInst_payload_branchCacheLine_pc == decode_inInst_payload_pc[31 : 18]);
  assign decode_staticBranchPrediction = (decode_brjmpImm[31] || (decode_ctrl_br == `BR_opt_J));
  assign decode_shouldTakeBranch = 1'b0;
  assign decode_pcLoad_valid = ((((((decode_inInst_valid && (! decode_throwIt)) && (! decode_hazard)) && decode_outInst_ready) && ((decode_ctrl_br != `BR_opt_JR) && (decode_ctrl_br != `BR_opt_N))) && decode_ctrl_instVal) && decode_shouldTakeBranch);
  assign decode_pcLoad_payload = decode_brJumpPc;
  always @ (*) begin
    decode_inInst_thrown_valid = decode_inInst_valid;
    if(decode_throwIt)begin
      decode_inInst_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    decode_inInst_ready = decode_inInst_thrown_ready;
    if(decode_throwIt)begin
      decode_inInst_ready = 1'b1;
    end
  end

  assign decode_inInst_thrown_payload_pc = decode_inInst_payload_pc;
  assign decode_inInst_thrown_payload_instruction = decode_inInst_payload_instruction;
  assign decode_inInst_thrown_payload_branchCacheLine_pc = decode_inInst_payload_branchCacheLine_pc;
  assign decode_inInst_thrown_payload_branchCacheLine_history = decode_inInst_payload_branchCacheLine_history;
  assign _zz_13 = (! decode_halt);
  assign decode_inInst_thrown_ready = (decode_outInst_ready && _zz_13);
  assign decode_outInst_valid = (decode_inInst_thrown_valid && _zz_13);
  assign decode_outInst_payload_pc = decode_inInst_payload_pc;
  assign decode_outInst_payload_instruction = decode_inInst_payload_instruction;
  assign decode_outInst_payload_ctrl_instVal = decode_ctrl_instVal;
  assign decode_outInst_payload_ctrl_br = decode_ctrl_br;
  assign decode_outInst_payload_ctrl_jmp = decode_ctrl_jmp;
  assign decode_outInst_payload_ctrl_op0 = decode_ctrl_op0;
  assign decode_outInst_payload_ctrl_op1 = decode_ctrl_op1;
  assign decode_outInst_payload_ctrl_alu = decode_ctrl_alu;
  assign decode_outInst_payload_ctrl_wb = decode_ctrl_wb;
  assign decode_outInst_payload_ctrl_rfen = decode_ctrl_rfen;
  assign decode_outInst_payload_ctrl_execute0AluBypass = decode_ctrl_execute0AluBypass;
  assign decode_outInst_payload_ctrl_execute1AluBypass = decode_ctrl_execute1AluBypass;
  assign decode_outInst_payload_ctrl_canInternalyStallWriteBack0 = decode_ctrl_canInternalyStallWriteBack0;
  assign decode_outInst_payload_ctrl_men = decode_ctrl_men;
  assign decode_outInst_payload_ctrl_m = decode_ctrl_m;
  assign decode_outInst_payload_ctrl_msk = decode_ctrl_msk;
  assign decode_outInst_payload_ctrl_csr = decode_ctrl_csr;
  assign decode_outInst_payload_ctrl_mfs = decode_ctrl_mfs;
  assign decode_outInst_payload_ctrl_useSrc0 = decode_ctrl_useSrc0;
  assign decode_outInst_payload_ctrl_useSrc1 = decode_ctrl_useSrc1;
  assign decode_outInst_payload_ctrl_extensionTag = decode_ctrl_extensionTag;
  assign decode_outInst_payload_ctrl_fencei = decode_ctrl_fencei;
  assign decode_outInst_payload_doSub = (decode_outInst_payload_ctrl_alu != `ALU_opt_ADD);
  assign decode_outInst_payload_src0 = ((! decode_addr0IsZero) ? decode_src0 : 32'h0);
  assign decode_outInst_payload_src1 = ((! decode_addr1IsZero) ? decode_src1 : 32'h0);
  always @ (*) begin
    case(decode_outInst_payload_ctrl_op0)
      `OP0_binary_sequential_IMU : begin
        _zz_14 = {decode_inInst_payload_instruction[31 : 12],12'h0};
      end
      `OP0_binary_sequential_IMZ : begin
        _zz_14 = {27'd0, _zz_90};
      end
      `OP0_binary_sequential_IMJB : begin
        _zz_14 = decode_brjmpImm;
      end
      default : begin
        _zz_14 = decode_outInst_payload_src0;
      end
    endcase
  end

  assign decode_outInst_payload_alu_op0 = _zz_14;
  assign _zz_15 = _zz_91[11];
  always @ (*) begin
    _zz_16[19] = _zz_15;
    _zz_16[18] = _zz_15;
    _zz_16[17] = _zz_15;
    _zz_16[16] = _zz_15;
    _zz_16[15] = _zz_15;
    _zz_16[14] = _zz_15;
    _zz_16[13] = _zz_15;
    _zz_16[12] = _zz_15;
    _zz_16[11] = _zz_15;
    _zz_16[10] = _zz_15;
    _zz_16[9] = _zz_15;
    _zz_16[8] = _zz_15;
    _zz_16[7] = _zz_15;
    _zz_16[6] = _zz_15;
    _zz_16[5] = _zz_15;
    _zz_16[4] = _zz_15;
    _zz_16[3] = _zz_15;
    _zz_16[2] = _zz_15;
    _zz_16[1] = _zz_15;
    _zz_16[0] = _zz_15;
  end

  assign _zz_17 = _zz_92[11];
  always @ (*) begin
    _zz_18[19] = _zz_17;
    _zz_18[18] = _zz_17;
    _zz_18[17] = _zz_17;
    _zz_18[16] = _zz_17;
    _zz_18[15] = _zz_17;
    _zz_18[14] = _zz_17;
    _zz_18[13] = _zz_17;
    _zz_18[12] = _zz_17;
    _zz_18[11] = _zz_17;
    _zz_18[10] = _zz_17;
    _zz_18[9] = _zz_17;
    _zz_18[8] = _zz_17;
    _zz_18[7] = _zz_17;
    _zz_18[6] = _zz_17;
    _zz_18[5] = _zz_17;
    _zz_18[4] = _zz_17;
    _zz_18[3] = _zz_17;
    _zz_18[2] = _zz_17;
    _zz_18[1] = _zz_17;
    _zz_18[0] = _zz_17;
  end

  always @ (*) begin
    case(decode_outInst_payload_ctrl_op1)
      `OP1_binary_sequential_IMI : begin
        _zz_19 = {_zz_16,decode_inInst_payload_instruction[31 : 20]};
      end
      `OP1_binary_sequential_IMS : begin
        _zz_19 = {_zz_18,{decode_inInst_payload_instruction[31 : 25],decode_inInst_payload_instruction[11 : 7]}};
      end
      `OP1_binary_sequential_PC_1 : begin
        _zz_19 = decode_inInst_payload_pc;
      end
      default : begin
        _zz_19 = decode_outInst_payload_src1;
      end
    endcase
  end

  assign decode_outInst_payload_alu_op1 = _zz_19;
  assign decode_outInst_payload_predictorHasBranch = decode_pcLoad_valid;
  assign decode_outInst_payload_branchHistory_valid = decode_branchCacheHit;
  assign decode_outInst_payload_branchHistory_payload = decode_inInst_payload_branchCacheLine_history;
  assign decode_flush = 1'b0;
  assign decode_outInst_ready = ((1'b0 && (! execute0_inInst_valid)) || execute0_inInst_ready);
  assign execute0_inInst_valid = decode_outInst_m2sPipe_rValid;
  assign execute0_inInst_payload_pc = decode_outInst_m2sPipe_rData_pc;
  assign execute0_inInst_payload_instruction = decode_outInst_m2sPipe_rData_instruction;
  assign execute0_inInst_payload_ctrl_instVal = decode_outInst_m2sPipe_rData_ctrl_instVal;
  assign execute0_inInst_payload_ctrl_br = decode_outInst_m2sPipe_rData_ctrl_br;
  assign execute0_inInst_payload_ctrl_jmp = decode_outInst_m2sPipe_rData_ctrl_jmp;
  assign execute0_inInst_payload_ctrl_op0 = decode_outInst_m2sPipe_rData_ctrl_op0;
  assign execute0_inInst_payload_ctrl_op1 = decode_outInst_m2sPipe_rData_ctrl_op1;
  assign execute0_inInst_payload_ctrl_alu = decode_outInst_m2sPipe_rData_ctrl_alu;
  assign execute0_inInst_payload_ctrl_wb = decode_outInst_m2sPipe_rData_ctrl_wb;
  assign execute0_inInst_payload_ctrl_rfen = decode_outInst_m2sPipe_rData_ctrl_rfen;
  assign execute0_inInst_payload_ctrl_execute0AluBypass = decode_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  assign execute0_inInst_payload_ctrl_execute1AluBypass = decode_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  assign execute0_inInst_payload_ctrl_canInternalyStallWriteBack0 = decode_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  assign execute0_inInst_payload_ctrl_men = decode_outInst_m2sPipe_rData_ctrl_men;
  assign execute0_inInst_payload_ctrl_m = decode_outInst_m2sPipe_rData_ctrl_m;
  assign execute0_inInst_payload_ctrl_msk = decode_outInst_m2sPipe_rData_ctrl_msk;
  assign execute0_inInst_payload_ctrl_csr = decode_outInst_m2sPipe_rData_ctrl_csr;
  assign execute0_inInst_payload_ctrl_mfs = decode_outInst_m2sPipe_rData_ctrl_mfs;
  assign execute0_inInst_payload_ctrl_useSrc0 = decode_outInst_m2sPipe_rData_ctrl_useSrc0;
  assign execute0_inInst_payload_ctrl_useSrc1 = decode_outInst_m2sPipe_rData_ctrl_useSrc1;
  assign execute0_inInst_payload_ctrl_extensionTag = decode_outInst_m2sPipe_rData_ctrl_extensionTag;
  assign execute0_inInst_payload_ctrl_fencei = decode_outInst_m2sPipe_rData_ctrl_fencei;
  assign execute0_inInst_payload_src0 = decode_outInst_m2sPipe_rData_src0;
  assign execute0_inInst_payload_src1 = decode_outInst_m2sPipe_rData_src1;
  assign execute0_inInst_payload_alu_op0 = decode_outInst_m2sPipe_rData_alu_op0;
  assign execute0_inInst_payload_alu_op1 = decode_outInst_m2sPipe_rData_alu_op1;
  assign execute0_inInst_payload_doSub = decode_outInst_m2sPipe_rData_doSub;
  assign execute0_inInst_payload_predictorHasBranch = decode_outInst_m2sPipe_rData_predictorHasBranch;
  assign execute0_inInst_payload_branchHistory_valid = decode_outInst_m2sPipe_rData_branchHistory_valid;
  assign execute0_inInst_payload_branchHistory_payload = decode_outInst_m2sPipe_rData_branchHistory_payload;
  always @ (*) begin
    execute0_throwIt = 1'b0;
    if(execute0_flush)begin
      execute0_throwIt = 1'b1;
    end
    if(execute1_flush)begin
      execute0_throwIt = 1'b1;
    end
    if(writeBack_flush)begin
      execute0_throwIt = 1'b1;
    end
  end

  always @ (*) begin
    execute0_halt = 1'b0;
    if((((execute0_inInst_valid && execute0_inInst_payload_ctrl_men) && (execute0_inInst_payload_ctrl_m == `M_binary_sequential_XRD)) && (execute0_pendingDataCmd_readCount == 2'b10)))begin
      execute0_halt = 1'b1;
    end
    if(((execute0_inInst_valid && execute0_inInst_payload_ctrl_men) && (execute0_inInst_payload_ctrl_m == `M_binary_sequential_XRD)))begin
      if((execute1_inInst_valid && execute1_inInst_payload_ctrl_canInternalyStallWriteBack0))begin
        execute0_halt = 1'b1;
      end
      if(((writeBack_inInst_valid && (! writeBack_inInst_ready)) && writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0))begin
        execute0_halt = 1'b1;
      end
    end
    if(_zz_68)begin
      if((! DivExtension_divider_io_cmd_ready))begin
        execute0_halt = 1'b1;
      end
    end
    if(_zz_69)begin
      if(_zz_70)begin
        execute0_halt = 1'b1;
      end
    end
  end

  assign execute0_haltFromDataRequest = ((execute0_inInst_valid && execute0_inInst_payload_ctrl_men) && (! dCmd_ready));
  assign execute0_br_signed = (! _zz_93[1]);
  assign execute0_br_src0Ext = {(execute0_inInst_payload_src0[31] && execute0_br_signed),execute0_inInst_payload_src0};
  assign execute0_br_src1Ext = {(execute0_inInst_payload_src1[31] && execute0_br_signed),execute0_inInst_payload_src1};
  assign execute0_br_ltx = _zz_94[32];
  assign execute0_br_eq = (execute0_inInst_payload_src0 == execute0_inInst_payload_src1);
  always @ (*) begin
    case(execute0_inInst_payload_ctrl_br)
      `BR_opt_NE : begin
        execute0_br_pc_sel = ((! execute0_br_eq) ? `PC_binary_sequential_BRA : `PC_binary_sequential_INC);
      end
      `BR_opt_EQ : begin
        execute0_br_pc_sel = (execute0_br_eq ? `PC_binary_sequential_BRA : `PC_binary_sequential_INC);
      end
      `BR_opt_GE, `BR_opt_GEU : begin
        execute0_br_pc_sel = ((! execute0_br_ltx) ? `PC_binary_sequential_BRA : `PC_binary_sequential_INC);
      end
      `BR_opt_LT, `BR_opt_LTU : begin
        execute0_br_pc_sel = (execute0_br_ltx ? `PC_binary_sequential_BRA : `PC_binary_sequential_INC);
      end
      `BR_opt_J : begin
        execute0_br_pc_sel = `PC_binary_sequential_J;
      end
      `BR_opt_JR : begin
        execute0_br_pc_sel = `PC_binary_sequential_JR;
      end
      default : begin
        execute0_br_pc_sel = `PC_binary_sequential_INC;
      end
    endcase
  end

  always @ (*) begin
    execute0_inInst_thrown_valid = execute0_inInst_valid;
    if(execute0_throwIt)begin
      execute0_inInst_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    execute0_inInst_ready = execute0_inInst_thrown_ready;
    if(execute0_throwIt)begin
      execute0_inInst_ready = 1'b1;
    end
  end

  assign execute0_inInst_thrown_payload_pc = execute0_inInst_payload_pc;
  assign execute0_inInst_thrown_payload_instruction = execute0_inInst_payload_instruction;
  assign execute0_inInst_thrown_payload_ctrl_instVal = execute0_inInst_payload_ctrl_instVal;
  assign execute0_inInst_thrown_payload_ctrl_br = execute0_inInst_payload_ctrl_br;
  assign execute0_inInst_thrown_payload_ctrl_jmp = execute0_inInst_payload_ctrl_jmp;
  assign execute0_inInst_thrown_payload_ctrl_op0 = execute0_inInst_payload_ctrl_op0;
  assign execute0_inInst_thrown_payload_ctrl_op1 = execute0_inInst_payload_ctrl_op1;
  assign execute0_inInst_thrown_payload_ctrl_alu = execute0_inInst_payload_ctrl_alu;
  assign execute0_inInst_thrown_payload_ctrl_wb = execute0_inInst_payload_ctrl_wb;
  assign execute0_inInst_thrown_payload_ctrl_rfen = execute0_inInst_payload_ctrl_rfen;
  assign execute0_inInst_thrown_payload_ctrl_execute0AluBypass = execute0_inInst_payload_ctrl_execute0AluBypass;
  assign execute0_inInst_thrown_payload_ctrl_execute1AluBypass = execute0_inInst_payload_ctrl_execute1AluBypass;
  assign execute0_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 = execute0_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign execute0_inInst_thrown_payload_ctrl_men = execute0_inInst_payload_ctrl_men;
  assign execute0_inInst_thrown_payload_ctrl_m = execute0_inInst_payload_ctrl_m;
  assign execute0_inInst_thrown_payload_ctrl_msk = execute0_inInst_payload_ctrl_msk;
  assign execute0_inInst_thrown_payload_ctrl_csr = execute0_inInst_payload_ctrl_csr;
  assign execute0_inInst_thrown_payload_ctrl_mfs = execute0_inInst_payload_ctrl_mfs;
  assign execute0_inInst_thrown_payload_ctrl_useSrc0 = execute0_inInst_payload_ctrl_useSrc0;
  assign execute0_inInst_thrown_payload_ctrl_useSrc1 = execute0_inInst_payload_ctrl_useSrc1;
  assign execute0_inInst_thrown_payload_ctrl_extensionTag = execute0_inInst_payload_ctrl_extensionTag;
  assign execute0_inInst_thrown_payload_ctrl_fencei = execute0_inInst_payload_ctrl_fencei;
  assign execute0_inInst_thrown_payload_src0 = execute0_inInst_payload_src0;
  assign execute0_inInst_thrown_payload_src1 = execute0_inInst_payload_src1;
  assign execute0_inInst_thrown_payload_alu_op0 = execute0_inInst_payload_alu_op0;
  assign execute0_inInst_thrown_payload_alu_op1 = execute0_inInst_payload_alu_op1;
  assign execute0_inInst_thrown_payload_doSub = execute0_inInst_payload_doSub;
  assign execute0_inInst_thrown_payload_predictorHasBranch = execute0_inInst_payload_predictorHasBranch;
  assign execute0_inInst_thrown_payload_branchHistory_valid = execute0_inInst_payload_branchHistory_valid;
  assign execute0_inInst_thrown_payload_branchHistory_payload = execute0_inInst_payload_branchHistory_payload;
  assign _zz_20 = (! (execute0_halt || execute0_haltFromDataRequest));
  assign execute0_inInst_thrown_ready = (execute0_outInst_ready && _zz_20);
  assign execute0_outInst_valid = (execute0_inInst_thrown_valid && _zz_20);
  assign execute0_outInst_payload_pc = execute0_inInst_payload_pc;
  assign execute0_outInst_payload_instruction = execute0_inInst_payload_instruction;
  assign execute0_outInst_payload_predictorHasBranch = execute0_inInst_payload_predictorHasBranch;
  assign execute0_outInst_payload_branchHistory_valid = execute0_inInst_payload_branchHistory_valid;
  assign execute0_outInst_payload_branchHistory_payload = execute0_inInst_payload_branchHistory_payload;
  assign execute0_outInst_payload_ctrl_instVal = execute0_inInst_payload_ctrl_instVal;
  assign execute0_outInst_payload_ctrl_br = execute0_inInst_payload_ctrl_br;
  assign execute0_outInst_payload_ctrl_jmp = execute0_inInst_payload_ctrl_jmp;
  assign execute0_outInst_payload_ctrl_op0 = execute0_inInst_payload_ctrl_op0;
  assign execute0_outInst_payload_ctrl_op1 = execute0_inInst_payload_ctrl_op1;
  assign execute0_outInst_payload_ctrl_alu = execute0_inInst_payload_ctrl_alu;
  assign execute0_outInst_payload_ctrl_wb = execute0_inInst_payload_ctrl_wb;
  assign execute0_outInst_payload_ctrl_rfen = execute0_inInst_payload_ctrl_rfen;
  assign execute0_outInst_payload_ctrl_execute0AluBypass = execute0_inInst_payload_ctrl_execute0AluBypass;
  assign execute0_outInst_payload_ctrl_execute1AluBypass = execute0_inInst_payload_ctrl_execute1AluBypass;
  assign execute0_outInst_payload_ctrl_canInternalyStallWriteBack0 = execute0_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign execute0_outInst_payload_ctrl_men = execute0_inInst_payload_ctrl_men;
  assign execute0_outInst_payload_ctrl_m = execute0_inInst_payload_ctrl_m;
  assign execute0_outInst_payload_ctrl_msk = execute0_inInst_payload_ctrl_msk;
  assign execute0_outInst_payload_ctrl_csr = execute0_inInst_payload_ctrl_csr;
  assign execute0_outInst_payload_ctrl_mfs = execute0_inInst_payload_ctrl_mfs;
  assign execute0_outInst_payload_ctrl_useSrc0 = execute0_inInst_payload_ctrl_useSrc0;
  assign execute0_outInst_payload_ctrl_useSrc1 = execute0_inInst_payload_ctrl_useSrc1;
  assign execute0_outInst_payload_ctrl_extensionTag = execute0_inInst_payload_ctrl_extensionTag;
  assign execute0_outInst_payload_ctrl_fencei = execute0_inInst_payload_ctrl_fencei;
  assign execute0_outInst_payload_br_eq = execute0_br_eq;
  assign execute0_outInst_payload_br_ltx = execute0_br_ltx;
  assign execute0_outInst_payload_pc_sel = execute0_br_pc_sel;
  assign execute0_outInst_payload_src1 = execute0_inInst_payload_src1;
  always @ (*) begin
    execute0_outInst_payload_result = execute0_alu_io_result;
    if(_zz_69)begin
      execute0_outInst_payload_result = execute0_inInst_payload_alu_op0;
    end
  end

  assign execute0_outInst_payload_adder = execute0_alu_io_adder;
  assign execute0_outInst_payload_pcPlus4 = (execute0_inInst_payload_pc + 32'h00000004);
  assign execute0_outInst_payload_needMemRsp = (execute0_inInst_payload_ctrl_men && (execute0_inInst_payload_ctrl_m == `M_binary_sequential_XRD));
  assign execute0_outInst_payload_dCmdAddress = dCmd_payload_address;
  always @ (*) begin
    case(execute0_outInst_payload_ctrl_msk)
      `MSK_binary_sequential_H : begin
        _zz_21 = dCmd_payload_address[0];
      end
      `MSK_binary_sequential_W : begin
        _zz_21 = (dCmd_payload_address[0] || dCmd_payload_address[1]);
      end
      default : begin
        _zz_21 = 1'b0;
      end
    endcase
  end

  assign execute0_outInst_payload_unalignedMemoryAccessException = (execute0_inInst_payload_ctrl_men && _zz_21);
  assign dCmd_valid = (((((execute0_inInst_valid && execute0_inInst_payload_ctrl_men) && (! execute0_outInst_payload_unalignedMemoryAccessException)) && (! execute0_halt)) && (! execute0_throwIt)) && execute0_outInst_ready);
  assign dCmd_payload_wr = (execute0_inInst_payload_ctrl_m == `M_binary_sequential_XWR);
  assign dCmd_payload_address = execute0_outInst_payload_adder;
  assign dCmd_payload_data = execute0_inInst_payload_src1;
  always @ (*) begin
    case(execute0_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : begin
        _zz_22 = 2'b00;
      end
      `MSK_binary_sequential_H : begin
        _zz_22 = 2'b01;
      end
      default : begin
        _zz_22 = 2'b10;
      end
    endcase
  end

  assign dCmd_payload_size = _zz_22;
  assign execute0_pendingDataCmd_readCountInc = ((dCmd_valid && dCmd_ready) && (! dCmd_payload_wr));
  assign execute0_pendingDataCmd_readCountDec = (dRsp_valid && dRsp_ready);
  always @ (*) begin
    execute0_flush = 1'b0;
    if(execute1_pcLoad_valid)begin
      execute0_flush = 1'b1;
    end
  end

  assign execute0_outInst_ready = ((1'b0 && (! execute1_inInst_valid)) || execute1_inInst_ready);
  assign execute1_inInst_valid = execute0_outInst_m2sPipe_rValid;
  assign execute1_inInst_payload_pc = execute0_outInst_m2sPipe_rData_pc;
  assign execute1_inInst_payload_instruction = execute0_outInst_m2sPipe_rData_instruction;
  assign execute1_inInst_payload_ctrl_instVal = execute0_outInst_m2sPipe_rData_ctrl_instVal;
  assign execute1_inInst_payload_ctrl_br = execute0_outInst_m2sPipe_rData_ctrl_br;
  assign execute1_inInst_payload_ctrl_jmp = execute0_outInst_m2sPipe_rData_ctrl_jmp;
  assign execute1_inInst_payload_ctrl_op0 = execute0_outInst_m2sPipe_rData_ctrl_op0;
  assign execute1_inInst_payload_ctrl_op1 = execute0_outInst_m2sPipe_rData_ctrl_op1;
  assign execute1_inInst_payload_ctrl_alu = execute0_outInst_m2sPipe_rData_ctrl_alu;
  assign execute1_inInst_payload_ctrl_wb = execute0_outInst_m2sPipe_rData_ctrl_wb;
  assign execute1_inInst_payload_ctrl_rfen = execute0_outInst_m2sPipe_rData_ctrl_rfen;
  assign execute1_inInst_payload_ctrl_execute0AluBypass = execute0_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  assign execute1_inInst_payload_ctrl_execute1AluBypass = execute0_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  assign execute1_inInst_payload_ctrl_canInternalyStallWriteBack0 = execute0_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  assign execute1_inInst_payload_ctrl_men = execute0_outInst_m2sPipe_rData_ctrl_men;
  assign execute1_inInst_payload_ctrl_m = execute0_outInst_m2sPipe_rData_ctrl_m;
  assign execute1_inInst_payload_ctrl_msk = execute0_outInst_m2sPipe_rData_ctrl_msk;
  assign execute1_inInst_payload_ctrl_csr = execute0_outInst_m2sPipe_rData_ctrl_csr;
  assign execute1_inInst_payload_ctrl_mfs = execute0_outInst_m2sPipe_rData_ctrl_mfs;
  assign execute1_inInst_payload_ctrl_useSrc0 = execute0_outInst_m2sPipe_rData_ctrl_useSrc0;
  assign execute1_inInst_payload_ctrl_useSrc1 = execute0_outInst_m2sPipe_rData_ctrl_useSrc1;
  assign execute1_inInst_payload_ctrl_extensionTag = execute0_outInst_m2sPipe_rData_ctrl_extensionTag;
  assign execute1_inInst_payload_ctrl_fencei = execute0_outInst_m2sPipe_rData_ctrl_fencei;
  assign execute1_inInst_payload_br_eq = execute0_outInst_m2sPipe_rData_br_eq;
  assign execute1_inInst_payload_br_ltx = execute0_outInst_m2sPipe_rData_br_ltx;
  assign execute1_inInst_payload_src1 = execute0_outInst_m2sPipe_rData_src1;
  assign execute1_inInst_payload_result = execute0_outInst_m2sPipe_rData_result;
  always @ (*) begin
    execute1_inInst_payload_adder = execute0_outInst_m2sPipe_rData_adder;
    if(execute1_inInst_valid)begin
      if(_zz_71)begin
        case(_zz_72)
          2'b00 : begin
            execute1_inInst_payload_adder = SimpleInterrupExtension_exitPc;
          end
          2'b01 : begin
          end
          2'b10 : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  assign execute1_inInst_payload_predictorHasBranch = execute0_outInst_m2sPipe_rData_predictorHasBranch;
  assign execute1_inInst_payload_branchHistory_valid = execute0_outInst_m2sPipe_rData_branchHistory_valid;
  assign execute1_inInst_payload_branchHistory_payload = execute0_outInst_m2sPipe_rData_branchHistory_payload;
  assign execute1_inInst_payload_pcPlus4 = execute0_outInst_m2sPipe_rData_pcPlus4;
  always @ (*) begin
    execute1_inInst_payload_pc_sel = execute0_outInst_m2sPipe_rData_pc_sel;
    if(execute1_inInst_valid)begin
      if(_zz_71)begin
        case(_zz_72)
          2'b00 : begin
            execute1_inInst_payload_pc_sel = `PC_binary_sequential_J;
          end
          2'b01 : begin
          end
          2'b10 : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  assign execute1_inInst_payload_unalignedMemoryAccessException = execute0_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  assign execute1_inInst_payload_needMemRsp = execute0_outInst_m2sPipe_rData_needMemRsp;
  assign execute1_inInst_payload_dCmdAddress = execute0_outInst_m2sPipe_rData_dCmdAddress;
  always @ (*) begin
    execute1_halt = 1'b0;
    if(_zz_73)begin
      if((! DivExtension_rspReady))begin
        execute1_halt = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute1_throwIt = 1'b0;
    if(execute1_flush)begin
      execute1_throwIt = 1'b1;
    end
    if(writeBack_flush)begin
      execute1_throwIt = 1'b1;
    end
  end

  always @ (*) begin
    case(execute1_inInst_payload_pc_sel)
      `PC_binary_sequential_INC : begin
        _zz_23 = execute1_inInst_payload_predictorHasBranch;
      end
      default : begin
        _zz_23 = (! execute1_inInst_payload_predictorHasBranch);
      end
    endcase
  end

  assign execute1_pcLoad_valid = (((! execute1_throwIt) && (execute1_inInst_valid && execute1_inInst_ready)) && _zz_23);
  assign execute1_pcLoad_payload = execute1_inInst_payload_adder;
  assign execute1_newHistory = ($signed(_zz_95) + $signed(_zz_97));
  assign execute1_line_pc = execute1_inInst_payload_pc[31 : 18];
  always @ (*) begin
    if(execute1_inInst_payload_branchHistory_valid)begin
      execute1_line_history = execute1_newHistory[1:0];
    end else begin
      execute1_line_history = {{1{_zz_100[0]}}, _zz_100};
    end
  end

  always @ (*) begin
    execute1_inInst_thrown_valid = execute1_inInst_valid;
    if(execute1_throwIt)begin
      execute1_inInst_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    execute1_inInst_ready = execute1_inInst_thrown_ready;
    if(execute1_throwIt)begin
      execute1_inInst_ready = 1'b1;
    end
  end

  assign execute1_inInst_thrown_payload_pc = execute1_inInst_payload_pc;
  assign execute1_inInst_thrown_payload_instruction = execute1_inInst_payload_instruction;
  assign execute1_inInst_thrown_payload_ctrl_instVal = execute1_inInst_payload_ctrl_instVal;
  assign execute1_inInst_thrown_payload_ctrl_br = execute1_inInst_payload_ctrl_br;
  assign execute1_inInst_thrown_payload_ctrl_jmp = execute1_inInst_payload_ctrl_jmp;
  assign execute1_inInst_thrown_payload_ctrl_op0 = execute1_inInst_payload_ctrl_op0;
  assign execute1_inInst_thrown_payload_ctrl_op1 = execute1_inInst_payload_ctrl_op1;
  assign execute1_inInst_thrown_payload_ctrl_alu = execute1_inInst_payload_ctrl_alu;
  assign execute1_inInst_thrown_payload_ctrl_wb = execute1_inInst_payload_ctrl_wb;
  assign execute1_inInst_thrown_payload_ctrl_rfen = execute1_inInst_payload_ctrl_rfen;
  assign execute1_inInst_thrown_payload_ctrl_execute0AluBypass = execute1_inInst_payload_ctrl_execute0AluBypass;
  assign execute1_inInst_thrown_payload_ctrl_execute1AluBypass = execute1_inInst_payload_ctrl_execute1AluBypass;
  assign execute1_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 = execute1_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign execute1_inInst_thrown_payload_ctrl_men = execute1_inInst_payload_ctrl_men;
  assign execute1_inInst_thrown_payload_ctrl_m = execute1_inInst_payload_ctrl_m;
  assign execute1_inInst_thrown_payload_ctrl_msk = execute1_inInst_payload_ctrl_msk;
  assign execute1_inInst_thrown_payload_ctrl_csr = execute1_inInst_payload_ctrl_csr;
  assign execute1_inInst_thrown_payload_ctrl_mfs = execute1_inInst_payload_ctrl_mfs;
  assign execute1_inInst_thrown_payload_ctrl_useSrc0 = execute1_inInst_payload_ctrl_useSrc0;
  assign execute1_inInst_thrown_payload_ctrl_useSrc1 = execute1_inInst_payload_ctrl_useSrc1;
  assign execute1_inInst_thrown_payload_ctrl_extensionTag = execute1_inInst_payload_ctrl_extensionTag;
  assign execute1_inInst_thrown_payload_ctrl_fencei = execute1_inInst_payload_ctrl_fencei;
  assign execute1_inInst_thrown_payload_br_eq = execute1_inInst_payload_br_eq;
  assign execute1_inInst_thrown_payload_br_ltx = execute1_inInst_payload_br_ltx;
  assign execute1_inInst_thrown_payload_src1 = execute1_inInst_payload_src1;
  assign execute1_inInst_thrown_payload_result = execute1_inInst_payload_result;
  assign execute1_inInst_thrown_payload_adder = execute1_inInst_payload_adder;
  assign execute1_inInst_thrown_payload_predictorHasBranch = execute1_inInst_payload_predictorHasBranch;
  assign execute1_inInst_thrown_payload_branchHistory_valid = execute1_inInst_payload_branchHistory_valid;
  assign execute1_inInst_thrown_payload_branchHistory_payload = execute1_inInst_payload_branchHistory_payload;
  assign execute1_inInst_thrown_payload_pcPlus4 = execute1_inInst_payload_pcPlus4;
  assign execute1_inInst_thrown_payload_pc_sel = execute1_inInst_payload_pc_sel;
  assign execute1_inInst_thrown_payload_unalignedMemoryAccessException = execute1_inInst_payload_unalignedMemoryAccessException;
  assign execute1_inInst_thrown_payload_needMemRsp = execute1_inInst_payload_needMemRsp;
  assign execute1_inInst_thrown_payload_dCmdAddress = execute1_inInst_payload_dCmdAddress;
  assign _zz_24 = (! execute1_halt);
  assign execute1_inInst_thrown_ready = (execute1_outInst_ready && _zz_24);
  assign execute1_outInst_valid = (execute1_inInst_thrown_valid && _zz_24);
  assign execute1_outInst_payload_pc = execute1_inInst_payload_pc;
  always @ (*) begin
    execute1_outInst_payload_result = execute1_inInst_payload_result;
    if(_zz_73)begin
      execute1_outInst_payload_result = DivExtension_rsp;
    end
    if(execute1_inInst_valid)begin
      if(_zz_71)begin
        case(_zz_72)
          2'b00 : begin
          end
          2'b01 : begin
            execute1_outInst_payload_result = {24'd0, SimpleInterrupExtension_irqValue};
          end
          2'b10 : begin
          end
          default : begin
            execute1_outInst_payload_result = {24'd0, writeBack_irq_mask};
          end
        endcase
      end
    end
  end

  assign execute1_outInst_payload_regFileAddress = execute1_inInst_payload_instruction[11 : 7];
  assign execute1_outInst_payload_ctrl_instVal = execute1_inInst_payload_ctrl_instVal;
  assign execute1_outInst_payload_ctrl_br = execute1_inInst_payload_ctrl_br;
  assign execute1_outInst_payload_ctrl_jmp = execute1_inInst_payload_ctrl_jmp;
  assign execute1_outInst_payload_ctrl_op0 = execute1_inInst_payload_ctrl_op0;
  assign execute1_outInst_payload_ctrl_op1 = execute1_inInst_payload_ctrl_op1;
  assign execute1_outInst_payload_ctrl_alu = execute1_inInst_payload_ctrl_alu;
  assign execute1_outInst_payload_ctrl_wb = execute1_inInst_payload_ctrl_wb;
  assign execute1_outInst_payload_ctrl_rfen = execute1_inInst_payload_ctrl_rfen;
  assign execute1_outInst_payload_ctrl_execute0AluBypass = execute1_inInst_payload_ctrl_execute0AluBypass;
  assign execute1_outInst_payload_ctrl_execute1AluBypass = execute1_inInst_payload_ctrl_execute1AluBypass;
  assign execute1_outInst_payload_ctrl_canInternalyStallWriteBack0 = execute1_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign execute1_outInst_payload_ctrl_men = execute1_inInst_payload_ctrl_men;
  assign execute1_outInst_payload_ctrl_m = execute1_inInst_payload_ctrl_m;
  assign execute1_outInst_payload_ctrl_msk = execute1_inInst_payload_ctrl_msk;
  assign execute1_outInst_payload_ctrl_csr = execute1_inInst_payload_ctrl_csr;
  assign execute1_outInst_payload_ctrl_mfs = execute1_inInst_payload_ctrl_mfs;
  assign execute1_outInst_payload_ctrl_useSrc0 = execute1_inInst_payload_ctrl_useSrc0;
  assign execute1_outInst_payload_ctrl_useSrc1 = execute1_inInst_payload_ctrl_useSrc1;
  assign execute1_outInst_payload_ctrl_extensionTag = execute1_inInst_payload_ctrl_extensionTag;
  assign execute1_outInst_payload_ctrl_fencei = execute1_inInst_payload_ctrl_fencei;
  assign execute1_outInst_payload_instruction = execute1_inInst_payload_instruction;
  assign execute1_outInst_payload_pcPlus4 = execute1_inInst_payload_pcPlus4;
  assign execute1_outInst_payload_unalignedMemoryAccessException = execute1_inInst_payload_unalignedMemoryAccessException;
  assign execute1_outInst_payload_needMemRsp = execute1_inInst_payload_needMemRsp;
  assign execute1_outInst_payload_dCmdAddress = execute1_inInst_payload_dCmdAddress;
  always @ (*) begin
    execute1_flush = 1'b0;
    if(writeBack_pcLoad_valid)begin
      execute1_flush = 1'b1;
    end
  end

  assign execute1_outInst_ready = ((1'b0 && (! writeBack_inInst_valid)) || writeBack_inInst_ready);
  assign writeBack_inInst_valid = execute1_outInst_m2sPipe_rValid;
  assign writeBack_inInst_payload_pc = execute1_outInst_m2sPipe_rData_pc;
  assign writeBack_inInst_payload_instruction = execute1_outInst_m2sPipe_rData_instruction;
  assign writeBack_inInst_payload_ctrl_instVal = execute1_outInst_m2sPipe_rData_ctrl_instVal;
  assign writeBack_inInst_payload_ctrl_br = execute1_outInst_m2sPipe_rData_ctrl_br;
  assign writeBack_inInst_payload_ctrl_jmp = execute1_outInst_m2sPipe_rData_ctrl_jmp;
  assign writeBack_inInst_payload_ctrl_op0 = execute1_outInst_m2sPipe_rData_ctrl_op0;
  assign writeBack_inInst_payload_ctrl_op1 = execute1_outInst_m2sPipe_rData_ctrl_op1;
  assign writeBack_inInst_payload_ctrl_alu = execute1_outInst_m2sPipe_rData_ctrl_alu;
  assign writeBack_inInst_payload_ctrl_wb = execute1_outInst_m2sPipe_rData_ctrl_wb;
  assign writeBack_inInst_payload_ctrl_rfen = execute1_outInst_m2sPipe_rData_ctrl_rfen;
  assign writeBack_inInst_payload_ctrl_execute0AluBypass = execute1_outInst_m2sPipe_rData_ctrl_execute0AluBypass;
  assign writeBack_inInst_payload_ctrl_execute1AluBypass = execute1_outInst_m2sPipe_rData_ctrl_execute1AluBypass;
  assign writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0 = execute1_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0;
  assign writeBack_inInst_payload_ctrl_men = execute1_outInst_m2sPipe_rData_ctrl_men;
  assign writeBack_inInst_payload_ctrl_m = execute1_outInst_m2sPipe_rData_ctrl_m;
  assign writeBack_inInst_payload_ctrl_msk = execute1_outInst_m2sPipe_rData_ctrl_msk;
  assign writeBack_inInst_payload_ctrl_csr = execute1_outInst_m2sPipe_rData_ctrl_csr;
  assign writeBack_inInst_payload_ctrl_mfs = execute1_outInst_m2sPipe_rData_ctrl_mfs;
  assign writeBack_inInst_payload_ctrl_useSrc0 = execute1_outInst_m2sPipe_rData_ctrl_useSrc0;
  assign writeBack_inInst_payload_ctrl_useSrc1 = execute1_outInst_m2sPipe_rData_ctrl_useSrc1;
  assign writeBack_inInst_payload_ctrl_extensionTag = execute1_outInst_m2sPipe_rData_ctrl_extensionTag;
  assign writeBack_inInst_payload_ctrl_fencei = execute1_outInst_m2sPipe_rData_ctrl_fencei;
  always @ (*) begin
    writeBack_inInst_payload_result = execute1_outInst_m2sPipe_rData_result;
    if((writeBack_inInst_payload_ctrl_extensionTag == 2'b01))begin
      case(_zz_82)
        2'b00 : begin
          writeBack_inInst_payload_result = _zz_115;
        end
        default : begin
          writeBack_inInst_payload_result = _zz_116;
        end
      endcase
    end
  end

  assign writeBack_inInst_payload_regFileAddress = execute1_outInst_m2sPipe_rData_regFileAddress;
  assign writeBack_inInst_payload_pcPlus4 = execute1_outInst_m2sPipe_rData_pcPlus4;
  assign writeBack_inInst_payload_unalignedMemoryAccessException = execute1_outInst_m2sPipe_rData_unalignedMemoryAccessException;
  assign writeBack_inInst_payload_needMemRsp = execute1_outInst_m2sPipe_rData_needMemRsp;
  assign writeBack_inInst_payload_dCmdAddress = execute1_outInst_m2sPipe_rData_dCmdAddress;
  always @ (*) begin
    writeBack_throwIt = (! writeBack_inInst_payload_ctrl_rfen);
    if(writeBack_flush)begin
      writeBack_throwIt = 1'b1;
    end
    if(_zz_66)begin
      if(_zz_67)begin
        writeBack_throwIt = 1'b1;
      end
    end
  end

  always @ (*) begin
    writeBack_halt = 1'b0;
    if((((writeBack_irq_sources & (~ writeBack_irq_mask)) & 8'h02) != 8'h0))begin
      writeBack_halt = 1'b1;
    end
    if((writeBack_inInst_valid && writeBack_inInst_payload_needMemRsp))begin
      if((! dRsp_valid))begin
        writeBack_halt = 1'b1;
      end
    end
    if(writeBack_flushMemoryResponse)begin
      writeBack_halt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_irq_sources = 8'h0;
    if(writeBack_inInst_valid)begin
      if((! writeBack_inInst_payload_ctrl_instVal))begin
        writeBack_irq_sources[0] = 1'b1;
      end
      if(writeBack_inInst_payload_unalignedMemoryAccessException)begin
        writeBack_irq_sources[1] = 1'b1;
      end
    end
    writeBack_irq_sources[5] = io_interrupt_1;
    writeBack_irq_sources[4] = io_interrupt_0;
    writeBack_irq_sources[7] = io_interrupt_3;
    writeBack_irq_sources[6] = io_interrupt_2;
  end

  assign writeBack_irq_masked = (writeBack_irq_sources & writeBack_irq_mask);
  assign writeBack_irq_inhibate = 1'b0;
  always @ (*) begin
    writeBack_pcLoad_valid = 1'b0;
    if(_zz_66)begin
      if(_zz_67)begin
        writeBack_pcLoad_valid = 1'b1;
      end else begin
        if(_zz_31)begin
          if(_zz_74)begin
            writeBack_pcLoad_valid = 1'b1;
          end
        end
      end
    end
  end

  always @ (*) begin
    writeBack_pcLoad_payload = 32'h0;
    if(_zz_66)begin
      if(_zz_67)begin
        writeBack_pcLoad_payload = 32'h0;
      end else begin
        if(_zz_31)begin
          if(_zz_74)begin
            writeBack_pcLoad_payload = 32'h0;
          end
        end
      end
    end
  end

  always @ (*) begin
    dRsp_ready = 1'b1;
    if(writeBack_flushMemoryResponse)begin
      dRsp_ready = 1'b1;
    end
  end

  assign _zz_25 = (dRsp_payload[7] && (! writeBack_inInst_payload_instruction[14]));
  always @ (*) begin
    _zz_26[31] = _zz_25;
    _zz_26[30] = _zz_25;
    _zz_26[29] = _zz_25;
    _zz_26[28] = _zz_25;
    _zz_26[27] = _zz_25;
    _zz_26[26] = _zz_25;
    _zz_26[25] = _zz_25;
    _zz_26[24] = _zz_25;
    _zz_26[23] = _zz_25;
    _zz_26[22] = _zz_25;
    _zz_26[21] = _zz_25;
    _zz_26[20] = _zz_25;
    _zz_26[19] = _zz_25;
    _zz_26[18] = _zz_25;
    _zz_26[17] = _zz_25;
    _zz_26[16] = _zz_25;
    _zz_26[15] = _zz_25;
    _zz_26[14] = _zz_25;
    _zz_26[13] = _zz_25;
    _zz_26[12] = _zz_25;
    _zz_26[11] = _zz_25;
    _zz_26[10] = _zz_25;
    _zz_26[9] = _zz_25;
    _zz_26[8] = _zz_25;
    _zz_26[7 : 0] = dRsp_payload[7 : 0];
  end

  assign _zz_27 = (dRsp_payload[15] && (! writeBack_inInst_payload_instruction[14]));
  always @ (*) begin
    _zz_28[31] = _zz_27;
    _zz_28[30] = _zz_27;
    _zz_28[29] = _zz_27;
    _zz_28[28] = _zz_27;
    _zz_28[27] = _zz_27;
    _zz_28[26] = _zz_27;
    _zz_28[25] = _zz_27;
    _zz_28[24] = _zz_27;
    _zz_28[23] = _zz_27;
    _zz_28[22] = _zz_27;
    _zz_28[21] = _zz_27;
    _zz_28[20] = _zz_27;
    _zz_28[19] = _zz_27;
    _zz_28[18] = _zz_27;
    _zz_28[17] = _zz_27;
    _zz_28[16] = _zz_27;
    _zz_28[15 : 0] = dRsp_payload[15 : 0];
  end

  always @ (*) begin
    case(writeBack_inInst_payload_ctrl_msk)
      `MSK_binary_sequential_B : begin
        writeBack_dataRspFormated = _zz_26;
      end
      `MSK_binary_sequential_H : begin
        writeBack_dataRspFormated = _zz_28;
      end
      default : begin
        writeBack_dataRspFormated = dRsp_payload;
      end
    endcase
  end

  always @ (*) begin
    case(writeBack_inInst_payload_ctrl_wb)
      `WB_binary_sequential_ALU_1 : begin
        writeBack_regFileData = writeBack_inInst_payload_result;
      end
      `WB_binary_sequential_MEM : begin
        writeBack_regFileData = writeBack_dataRspFormated;
      end
      `WB_binary_sequential_PC4 : begin
        writeBack_regFileData = writeBack_inInst_payload_pcPlus4;
      end
      default : begin
        writeBack_regFileData = 32'h0;
      end
    endcase
  end

  always @ (*) begin
    writeBack_inInst_thrown_valid = writeBack_inInst_valid;
    if(writeBack_throwIt)begin
      writeBack_inInst_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    writeBack_inInst_ready = writeBack_inInst_thrown_ready;
    if(writeBack_throwIt)begin
      writeBack_inInst_ready = 1'b1;
    end
  end

  assign writeBack_inInst_thrown_payload_pc = writeBack_inInst_payload_pc;
  assign writeBack_inInst_thrown_payload_instruction = writeBack_inInst_payload_instruction;
  assign writeBack_inInst_thrown_payload_ctrl_instVal = writeBack_inInst_payload_ctrl_instVal;
  assign writeBack_inInst_thrown_payload_ctrl_br = writeBack_inInst_payload_ctrl_br;
  assign writeBack_inInst_thrown_payload_ctrl_jmp = writeBack_inInst_payload_ctrl_jmp;
  assign writeBack_inInst_thrown_payload_ctrl_op0 = writeBack_inInst_payload_ctrl_op0;
  assign writeBack_inInst_thrown_payload_ctrl_op1 = writeBack_inInst_payload_ctrl_op1;
  assign writeBack_inInst_thrown_payload_ctrl_alu = writeBack_inInst_payload_ctrl_alu;
  assign writeBack_inInst_thrown_payload_ctrl_wb = writeBack_inInst_payload_ctrl_wb;
  assign writeBack_inInst_thrown_payload_ctrl_rfen = writeBack_inInst_payload_ctrl_rfen;
  assign writeBack_inInst_thrown_payload_ctrl_execute0AluBypass = writeBack_inInst_payload_ctrl_execute0AluBypass;
  assign writeBack_inInst_thrown_payload_ctrl_execute1AluBypass = writeBack_inInst_payload_ctrl_execute1AluBypass;
  assign writeBack_inInst_thrown_payload_ctrl_canInternalyStallWriteBack0 = writeBack_inInst_payload_ctrl_canInternalyStallWriteBack0;
  assign writeBack_inInst_thrown_payload_ctrl_men = writeBack_inInst_payload_ctrl_men;
  assign writeBack_inInst_thrown_payload_ctrl_m = writeBack_inInst_payload_ctrl_m;
  assign writeBack_inInst_thrown_payload_ctrl_msk = writeBack_inInst_payload_ctrl_msk;
  assign writeBack_inInst_thrown_payload_ctrl_csr = writeBack_inInst_payload_ctrl_csr;
  assign writeBack_inInst_thrown_payload_ctrl_mfs = writeBack_inInst_payload_ctrl_mfs;
  assign writeBack_inInst_thrown_payload_ctrl_useSrc0 = writeBack_inInst_payload_ctrl_useSrc0;
  assign writeBack_inInst_thrown_payload_ctrl_useSrc1 = writeBack_inInst_payload_ctrl_useSrc1;
  assign writeBack_inInst_thrown_payload_ctrl_extensionTag = writeBack_inInst_payload_ctrl_extensionTag;
  assign writeBack_inInst_thrown_payload_ctrl_fencei = writeBack_inInst_payload_ctrl_fencei;
  assign writeBack_inInst_thrown_payload_result = writeBack_inInst_payload_result;
  assign writeBack_inInst_thrown_payload_regFileAddress = writeBack_inInst_payload_regFileAddress;
  assign writeBack_inInst_thrown_payload_pcPlus4 = writeBack_inInst_payload_pcPlus4;
  assign writeBack_inInst_thrown_payload_unalignedMemoryAccessException = writeBack_inInst_payload_unalignedMemoryAccessException;
  assign writeBack_inInst_thrown_payload_needMemRsp = writeBack_inInst_payload_needMemRsp;
  assign writeBack_inInst_thrown_payload_dCmdAddress = writeBack_inInst_payload_dCmdAddress;
  assign _zz_29 = (! writeBack_halt);
  assign writeBack_inInst_thrown_ready = (writeBack_outInst_ready && _zz_29);
  assign writeBack_outInst_valid = (writeBack_inInst_thrown_valid && _zz_29);
  assign writeBack_outInst_payload_addr = writeBack_inInst_payload_regFileAddress;
  assign writeBack_outInst_payload_data = writeBack_regFileData;
  assign writeBack_regFileWrite_valid = (writeBack_outInst_valid && writeBack_outInst_ready);
  assign writeBack_regFileWrite_payload_address = writeBack_outInst_payload_addr;
  assign writeBack_regFileWrite_payload_data = writeBack_regFileData;
  assign writeBack_flush = 1'b0;
  assign writeBack_outInst_ready = ((1'b0 && (! writeBackBuffer_inInst_valid)) || writeBackBuffer_inInst_ready);
  assign writeBackBuffer_inInst_valid = writeBack_outInst_m2sPipe_rValid;
  assign writeBackBuffer_inInst_payload_addr = writeBack_outInst_m2sPipe_rData_addr;
  assign writeBackBuffer_inInst_payload_data = writeBack_outInst_m2sPipe_rData_data;
  assign writeBackBuffer_inInst_ready = 1'b1;
  always @ (*) begin
    prefetch_pcLoad_valid = execute1_pcLoad_valid;
    if(writeBack_pcLoad_valid)begin
      prefetch_pcLoad_valid = 1'b1;
    end
  end

  always @ (*) begin
    prefetch_pcLoad_payload = execute1_pcLoad_payload;
    if(writeBack_pcLoad_valid)begin
      prefetch_pcLoad_payload = writeBack_pcLoad_payload;
    end
  end

  always @ (*) begin
    hazardTracker_src0Hazard = 1'b0;
    if(writeBackBuffer_inInst_valid)begin
      if(hazardTracker_W2R_addr0Match)begin
        hazardTracker_src0Hazard = 1'b1;
      end
    end
    if(_zz_75)begin
      if(_zz_76)begin
        if(hazardTracker_A_addr0Match)begin
          hazardTracker_src0Hazard = 1'b1;
        end
      end
    end
    if(_zz_77)begin
      if(_zz_78)begin
        if(hazardTracker_E1_addr0Match)begin
          hazardTracker_src0Hazard = 1'b1;
        end
      end
    end
    if(_zz_79)begin
      if(_zz_80)begin
        if(hazardTracker_E0_addr0Match)begin
          hazardTracker_src0Hazard = 1'b1;
        end
      end
    end
    if((decode_addr0IsZero || (! decode_ctrl_useSrc0)))begin
      hazardTracker_src0Hazard = 1'b0;
    end
  end

  always @ (*) begin
    hazardTracker_src1Hazard = 1'b0;
    if(writeBackBuffer_inInst_valid)begin
      if(hazardTracker_W2R_addr1Match)begin
        hazardTracker_src1Hazard = 1'b1;
      end
    end
    if(_zz_75)begin
      if(_zz_76)begin
        if(hazardTracker_A_addr1Match)begin
          hazardTracker_src1Hazard = 1'b1;
        end
      end
    end
    if(_zz_77)begin
      if(_zz_78)begin
        if(hazardTracker_E1_addr1Match)begin
          hazardTracker_src1Hazard = 1'b1;
        end
      end
    end
    if(_zz_79)begin
      if(_zz_80)begin
        if(hazardTracker_E0_addr1Match)begin
          hazardTracker_src1Hazard = 1'b1;
        end
      end
    end
    if((decode_addr1IsZero || (! decode_ctrl_useSrc1)))begin
      hazardTracker_src1Hazard = 1'b0;
    end
  end

  assign decode_hazard = (hazardTracker_src0Hazard || hazardTracker_src1Hazard);
  assign hazardTracker_W2R_addr0Match = (writeBackBuffer_inInst_payload_addr == decode_addr0);
  assign hazardTracker_W2R_addr1Match = (writeBackBuffer_inInst_payload_addr == decode_addr1);
  assign hazardTracker_A_addr0Match = (writeBack_outInst_payload_addr == decode_addr0);
  assign hazardTracker_A_addr1Match = (writeBack_outInst_payload_addr == decode_addr1);
  assign hazardTracker_E1_addr0Match = (execute1_outInst_payload_instruction[11 : 7] == decode_addr0);
  assign hazardTracker_E1_addr1Match = (execute1_outInst_payload_instruction[11 : 7] == decode_addr1);
  assign hazardTracker_E0_addr0Match = (execute0_outInst_payload_instruction[11 : 7] == decode_addr0);
  assign hazardTracker_E0_addr1Match = (execute0_outInst_payload_instruction[11 : 7] == decode_addr1);
  assign MulExtension_s1_a = execute0_inInst_payload_alu_op0;
  assign MulExtension_s1_b = execute0_inInst_payload_alu_op1;
  always @ (*) begin
    case(_zz_81)
      2'b01 : begin
        MulExtension_s1_aSigned = 1'b1;
      end
      2'b10 : begin
        MulExtension_s1_aSigned = 1'b1;
      end
      default : begin
        MulExtension_s1_aSigned = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    case(_zz_81)
      2'b01 : begin
        MulExtension_s1_bSigned = 1'b1;
      end
      2'b10 : begin
        MulExtension_s1_bSigned = 1'b0;
      end
      default : begin
        MulExtension_s1_bSigned = 1'b0;
      end
    endcase
  end

  assign MulExtension_s1_aULow = MulExtension_s1_a[15 : 0];
  assign MulExtension_s1_bULow = MulExtension_s1_b[15 : 0];
  assign MulExtension_s1_aSLow = {1'b0,MulExtension_s1_a[15 : 0]};
  assign MulExtension_s1_bSLow = {1'b0,MulExtension_s1_b[15 : 0]};
  assign MulExtension_s1_aHigh = {(MulExtension_s1_aSigned && MulExtension_s1_a[31]),MulExtension_s1_a[31 : 16]};
  assign MulExtension_s1_bHigh = {(MulExtension_s1_bSigned && MulExtension_s1_b[31]),MulExtension_s1_b[31 : 16]};
  assign MulExtension_s1_mul_ll = (MulExtension_s1_aULow * MulExtension_s1_bULow);
  assign MulExtension_s1_mul_lh = ($signed(MulExtension_s1_aSLow) * $signed(MulExtension_s1_bHigh));
  assign MulExtension_s1_mul_hl = ($signed(MulExtension_s1_aHigh) * $signed(MulExtension_s1_bSLow));
  assign MulExtension_s1_mul_hh = ($signed(MulExtension_s1_aHigh) * $signed(MulExtension_s1_bHigh));
  assign MulExtension_s2_low = ($signed(_zz_105) + $signed(_zz_112));
  assign MulExtension_s3_result = ($signed(_zz_113) + $signed(_zz_114));
  always @ (*) begin
    _zz_43 = 1'b0;
    if(_zz_68)begin
      _zz_43 = execute0_outInst_valid;
    end
  end

  assign _zz_44 = (! execute0_inInst_payload_instruction[12]);
  always @ (*) begin
    _zz_45 = 1'b0;
    if(_zz_73)begin
      _zz_45 = (execute1_inInst_ready && DivExtension_rspReady);
    end
  end

  assign barrelShifterLight_s1_amplitude = execute0_inInst_payload_alu_op1[4 : 0];
  assign barrelShifterLight_s1_isShift = (((execute0_inInst_payload_ctrl_alu == `ALU_opt_SLL1) || (execute0_inInst_payload_ctrl_alu == `ALU_opt_SRL_1)) || (execute0_inInst_payload_ctrl_alu == `ALU_opt_SRA_1));
  always @ (*) begin
    SimpleInterrupExtension_irqValue = 8'h0;
    SimpleInterrupExtension_irqValue[5] = writeBack_irq_masked[5];
    SimpleInterrupExtension_irqValue[4] = writeBack_irq_masked[4];
    SimpleInterrupExtension_irqValue[7] = writeBack_irq_masked[7];
    SimpleInterrupExtension_irqValue[1] = _zz_30;
    SimpleInterrupExtension_irqValue[6] = writeBack_irq_masked[6];
  end

  assign io_i_cmd_valid = iCmd_valid;
  assign iCmd_ready = io_i_cmd_ready;
  assign io_i_cmd_payload_pc = iCmd_payload_pc;
  assign iRsp_valid = io_i_rsp_valid;
  assign io_i_rsp_ready = iRsp_ready;
  assign iRsp_payload_instruction = io_i_rsp_payload_instruction;
  assign iRsp_payload_pc = io_i_rsp_payload_pc;
  assign io_d_cmd_valid = dCmd_valid;
  assign dCmd_ready = io_d_cmd_ready;
  assign io_d_cmd_payload_wr = dCmd_payload_wr;
  assign io_d_cmd_payload_address = dCmd_payload_address;
  assign io_d_cmd_payload_data = dCmd_payload_data;
  assign io_d_cmd_payload_size = dCmd_payload_size;
  assign dRsp_valid = io_d_rsp_valid;
  assign io_d_rsp_ready = dRsp_ready;
  assign dRsp_payload = io_d_rsp_payload;
  assign _zz_32 = execute0_outInst_valid;
  assign _zz_33 = execute0_outInst_payload_pc;
  assign _zz_34 = execute0_outInst_payload_instruction;
  assign _zz_35 = dCmd_valid;
  assign _zz_36 = dCmd_ready;
  assign _zz_37 = dCmd_payload_wr;
  assign _zz_38 = dCmd_payload_address;
  assign _zz_39 = dCmd_payload_data;
  assign _zz_40 = dCmd_payload_size;
  assign _zz_41 = dRsp_valid;
  assign _zz_42 = writeBack_dataRspFormated;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      prefetch_pc <= 32'h00000200;
      prefetch_inc <= 1'b0;
      prefetch_resetDone <= 1'b0;
      fetch_pendingPrefetch_value <= 2'b00;
      fetch_throwRemaining <= 2'b00;
      fetch_outInst_m2sPipe_rValid <= 1'b0;
      decode_outInst_m2sPipe_rValid <= 1'b0;
      execute0_pendingDataCmd_readCount <= 2'b00;
      execute0_outInst_m2sPipe_rValid <= 1'b0;
      execute1_outInst_m2sPipe_rValid <= 1'b0;
      writeBack_irq_mask <= 8'h0;
      writeBack_flushMemoryResponse <= 1'b0;
      writeBack_outInst_m2sPipe_rValid <= 1'b0;
      DivExtension_rspReady <= 1'b0;
      SimpleInterrupExtension_inIrq <= 1'b0;
    end else begin
      prefetch_resetDone <= 1'b1;
      if(((iCmd_valid && iCmd_ready) || prefetch_pcLoad_valid))begin
        prefetch_pc <= prefetch_pcNext;
      end
      if((iCmd_valid && iCmd_ready))begin
        prefetch_inc <= 1'b1;
      end else begin
        if(prefetch_pcLoad_valid)begin
          prefetch_inc <= 1'b0;
        end
      end
      fetch_pendingPrefetch_value <= fetch_pendingPrefetch_valueNext;
      if((fetch_throwNextIRsp && (iRsp_valid && iRsp_ready)))begin
        fetch_throwRemaining <= (fetch_throwRemaining - 2'b01);
      end
      if(fetch_throwIt)begin
        fetch_throwRemaining <= (fetch_pendingPrefetch_value - _zz_86);
      end
      if(fetch_outInst_ready)begin
        fetch_outInst_m2sPipe_rValid <= fetch_outInst_valid;
      end
      if(decode_outInst_ready)begin
        decode_outInst_m2sPipe_rValid <= decode_outInst_valid;
      end
      if((execute0_pendingDataCmd_readCountInc != execute0_pendingDataCmd_readCountDec))begin
        execute0_pendingDataCmd_readCount <= (execute0_pendingDataCmd_readCount + (execute0_pendingDataCmd_readCountInc ? 2'b01 : 2'b11));
      end
      if(execute0_outInst_ready)begin
        execute0_outInst_m2sPipe_rValid <= execute0_outInst_valid;
      end
      if(execute1_outInst_ready)begin
        execute1_outInst_m2sPipe_rValid <= execute1_outInst_valid;
      end
      if((execute0_pendingDataCmd_readCount == 2'b00))begin
        writeBack_flushMemoryResponse <= 1'b0;
      end
      if(writeBack_outInst_ready)begin
        writeBack_outInst_m2sPipe_rValid <= writeBack_outInst_valid;
      end
      if(_zz_73)begin
        DivExtension_rspReady <= (DivExtension_divider_io_rsp_valid && (! execute1_inInst_ready));
      end
      if(execute1_throwIt)begin
        DivExtension_rspReady <= 1'b0;
      end
      if(_zz_66)begin
        if(_zz_67)begin
          writeBack_flushMemoryResponse <= 1'b1;
          SimpleInterrupExtension_inIrq <= 1'b1;
        end else begin
          if(_zz_31)begin
            if(_zz_74)begin
              SimpleInterrupExtension_inIrq <= 1'b1;
            end
          end
        end
      end
      if(execute1_inInst_valid)begin
        if(_zz_71)begin
          case(_zz_72)
            2'b00 : begin
              if((execute1_outInst_valid && execute1_outInst_ready))begin
                SimpleInterrupExtension_inIrq <= 1'b0;
              end
            end
            2'b01 : begin
            end
            2'b10 : begin
              writeBack_irq_mask <= execute1_inInst_payload_result[7:0];
            end
            default : begin
            end
          endcase
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(fetch_outInst_ready)begin
      fetch_outInst_m2sPipe_rData_pc <= fetch_outInst_payload_pc;
      fetch_outInst_m2sPipe_rData_instruction <= fetch_outInst_payload_instruction;
      fetch_outInst_m2sPipe_rData_branchCacheLine_pc <= fetch_outInst_payload_branchCacheLine_pc;
      fetch_outInst_m2sPipe_rData_branchCacheLine_history <= fetch_outInst_payload_branchCacheLine_history;
    end
    if(decode_outInst_ready)begin
      decode_outInst_m2sPipe_rData_pc <= decode_outInst_payload_pc;
      decode_outInst_m2sPipe_rData_instruction <= decode_outInst_payload_instruction;
      decode_outInst_m2sPipe_rData_ctrl_instVal <= decode_outInst_payload_ctrl_instVal;
      decode_outInst_m2sPipe_rData_ctrl_br <= decode_outInst_payload_ctrl_br;
      decode_outInst_m2sPipe_rData_ctrl_jmp <= decode_outInst_payload_ctrl_jmp;
      decode_outInst_m2sPipe_rData_ctrl_op0 <= decode_outInst_payload_ctrl_op0;
      decode_outInst_m2sPipe_rData_ctrl_op1 <= decode_outInst_payload_ctrl_op1;
      decode_outInst_m2sPipe_rData_ctrl_alu <= decode_outInst_payload_ctrl_alu;
      decode_outInst_m2sPipe_rData_ctrl_wb <= decode_outInst_payload_ctrl_wb;
      decode_outInst_m2sPipe_rData_ctrl_rfen <= decode_outInst_payload_ctrl_rfen;
      decode_outInst_m2sPipe_rData_ctrl_execute0AluBypass <= decode_outInst_payload_ctrl_execute0AluBypass;
      decode_outInst_m2sPipe_rData_ctrl_execute1AluBypass <= decode_outInst_payload_ctrl_execute1AluBypass;
      decode_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 <= decode_outInst_payload_ctrl_canInternalyStallWriteBack0;
      decode_outInst_m2sPipe_rData_ctrl_men <= decode_outInst_payload_ctrl_men;
      decode_outInst_m2sPipe_rData_ctrl_m <= decode_outInst_payload_ctrl_m;
      decode_outInst_m2sPipe_rData_ctrl_msk <= decode_outInst_payload_ctrl_msk;
      decode_outInst_m2sPipe_rData_ctrl_csr <= decode_outInst_payload_ctrl_csr;
      decode_outInst_m2sPipe_rData_ctrl_mfs <= decode_outInst_payload_ctrl_mfs;
      decode_outInst_m2sPipe_rData_ctrl_useSrc0 <= decode_outInst_payload_ctrl_useSrc0;
      decode_outInst_m2sPipe_rData_ctrl_useSrc1 <= decode_outInst_payload_ctrl_useSrc1;
      decode_outInst_m2sPipe_rData_ctrl_extensionTag <= decode_outInst_payload_ctrl_extensionTag;
      decode_outInst_m2sPipe_rData_ctrl_fencei <= decode_outInst_payload_ctrl_fencei;
      decode_outInst_m2sPipe_rData_src0 <= decode_outInst_payload_src0;
      decode_outInst_m2sPipe_rData_src1 <= decode_outInst_payload_src1;
      decode_outInst_m2sPipe_rData_alu_op0 <= decode_outInst_payload_alu_op0;
      decode_outInst_m2sPipe_rData_alu_op1 <= decode_outInst_payload_alu_op1;
      decode_outInst_m2sPipe_rData_doSub <= decode_outInst_payload_doSub;
      decode_outInst_m2sPipe_rData_predictorHasBranch <= decode_outInst_payload_predictorHasBranch;
      decode_outInst_m2sPipe_rData_branchHistory_valid <= decode_outInst_payload_branchHistory_valid;
      decode_outInst_m2sPipe_rData_branchHistory_payload <= decode_outInst_payload_branchHistory_payload;
    end
    if(execute0_outInst_ready)begin
      execute0_outInst_m2sPipe_rData_pc <= execute0_outInst_payload_pc;
      execute0_outInst_m2sPipe_rData_instruction <= execute0_outInst_payload_instruction;
      execute0_outInst_m2sPipe_rData_ctrl_instVal <= execute0_outInst_payload_ctrl_instVal;
      execute0_outInst_m2sPipe_rData_ctrl_br <= execute0_outInst_payload_ctrl_br;
      execute0_outInst_m2sPipe_rData_ctrl_jmp <= execute0_outInst_payload_ctrl_jmp;
      execute0_outInst_m2sPipe_rData_ctrl_op0 <= execute0_outInst_payload_ctrl_op0;
      execute0_outInst_m2sPipe_rData_ctrl_op1 <= execute0_outInst_payload_ctrl_op1;
      execute0_outInst_m2sPipe_rData_ctrl_alu <= execute0_outInst_payload_ctrl_alu;
      execute0_outInst_m2sPipe_rData_ctrl_wb <= execute0_outInst_payload_ctrl_wb;
      execute0_outInst_m2sPipe_rData_ctrl_rfen <= execute0_outInst_payload_ctrl_rfen;
      execute0_outInst_m2sPipe_rData_ctrl_execute0AluBypass <= execute0_outInst_payload_ctrl_execute0AluBypass;
      execute0_outInst_m2sPipe_rData_ctrl_execute1AluBypass <= execute0_outInst_payload_ctrl_execute1AluBypass;
      execute0_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 <= execute0_outInst_payload_ctrl_canInternalyStallWriteBack0;
      execute0_outInst_m2sPipe_rData_ctrl_men <= execute0_outInst_payload_ctrl_men;
      execute0_outInst_m2sPipe_rData_ctrl_m <= execute0_outInst_payload_ctrl_m;
      execute0_outInst_m2sPipe_rData_ctrl_msk <= execute0_outInst_payload_ctrl_msk;
      execute0_outInst_m2sPipe_rData_ctrl_csr <= execute0_outInst_payload_ctrl_csr;
      execute0_outInst_m2sPipe_rData_ctrl_mfs <= execute0_outInst_payload_ctrl_mfs;
      execute0_outInst_m2sPipe_rData_ctrl_useSrc0 <= execute0_outInst_payload_ctrl_useSrc0;
      execute0_outInst_m2sPipe_rData_ctrl_useSrc1 <= execute0_outInst_payload_ctrl_useSrc1;
      execute0_outInst_m2sPipe_rData_ctrl_extensionTag <= execute0_outInst_payload_ctrl_extensionTag;
      execute0_outInst_m2sPipe_rData_ctrl_fencei <= execute0_outInst_payload_ctrl_fencei;
      execute0_outInst_m2sPipe_rData_br_eq <= execute0_outInst_payload_br_eq;
      execute0_outInst_m2sPipe_rData_br_ltx <= execute0_outInst_payload_br_ltx;
      execute0_outInst_m2sPipe_rData_src1 <= execute0_outInst_payload_src1;
      execute0_outInst_m2sPipe_rData_result <= execute0_outInst_payload_result;
      execute0_outInst_m2sPipe_rData_adder <= execute0_outInst_payload_adder;
      execute0_outInst_m2sPipe_rData_predictorHasBranch <= execute0_outInst_payload_predictorHasBranch;
      execute0_outInst_m2sPipe_rData_branchHistory_valid <= execute0_outInst_payload_branchHistory_valid;
      execute0_outInst_m2sPipe_rData_branchHistory_payload <= execute0_outInst_payload_branchHistory_payload;
      execute0_outInst_m2sPipe_rData_pcPlus4 <= execute0_outInst_payload_pcPlus4;
      execute0_outInst_m2sPipe_rData_pc_sel <= execute0_outInst_payload_pc_sel;
      execute0_outInst_m2sPipe_rData_unalignedMemoryAccessException <= execute0_outInst_payload_unalignedMemoryAccessException;
      execute0_outInst_m2sPipe_rData_needMemRsp <= execute0_outInst_payload_needMemRsp;
      execute0_outInst_m2sPipe_rData_dCmdAddress <= execute0_outInst_payload_dCmdAddress;
    end
    if(execute1_outInst_ready)begin
      execute1_outInst_m2sPipe_rData_pc <= execute1_outInst_payload_pc;
      execute1_outInst_m2sPipe_rData_instruction <= execute1_outInst_payload_instruction;
      execute1_outInst_m2sPipe_rData_ctrl_instVal <= execute1_outInst_payload_ctrl_instVal;
      execute1_outInst_m2sPipe_rData_ctrl_br <= execute1_outInst_payload_ctrl_br;
      execute1_outInst_m2sPipe_rData_ctrl_jmp <= execute1_outInst_payload_ctrl_jmp;
      execute1_outInst_m2sPipe_rData_ctrl_op0 <= execute1_outInst_payload_ctrl_op0;
      execute1_outInst_m2sPipe_rData_ctrl_op1 <= execute1_outInst_payload_ctrl_op1;
      execute1_outInst_m2sPipe_rData_ctrl_alu <= execute1_outInst_payload_ctrl_alu;
      execute1_outInst_m2sPipe_rData_ctrl_wb <= execute1_outInst_payload_ctrl_wb;
      execute1_outInst_m2sPipe_rData_ctrl_rfen <= execute1_outInst_payload_ctrl_rfen;
      execute1_outInst_m2sPipe_rData_ctrl_execute0AluBypass <= execute1_outInst_payload_ctrl_execute0AluBypass;
      execute1_outInst_m2sPipe_rData_ctrl_execute1AluBypass <= execute1_outInst_payload_ctrl_execute1AluBypass;
      execute1_outInst_m2sPipe_rData_ctrl_canInternalyStallWriteBack0 <= execute1_outInst_payload_ctrl_canInternalyStallWriteBack0;
      execute1_outInst_m2sPipe_rData_ctrl_men <= execute1_outInst_payload_ctrl_men;
      execute1_outInst_m2sPipe_rData_ctrl_m <= execute1_outInst_payload_ctrl_m;
      execute1_outInst_m2sPipe_rData_ctrl_msk <= execute1_outInst_payload_ctrl_msk;
      execute1_outInst_m2sPipe_rData_ctrl_csr <= execute1_outInst_payload_ctrl_csr;
      execute1_outInst_m2sPipe_rData_ctrl_mfs <= execute1_outInst_payload_ctrl_mfs;
      execute1_outInst_m2sPipe_rData_ctrl_useSrc0 <= execute1_outInst_payload_ctrl_useSrc0;
      execute1_outInst_m2sPipe_rData_ctrl_useSrc1 <= execute1_outInst_payload_ctrl_useSrc1;
      execute1_outInst_m2sPipe_rData_ctrl_extensionTag <= execute1_outInst_payload_ctrl_extensionTag;
      execute1_outInst_m2sPipe_rData_ctrl_fencei <= execute1_outInst_payload_ctrl_fencei;
      execute1_outInst_m2sPipe_rData_result <= execute1_outInst_payload_result;
      execute1_outInst_m2sPipe_rData_regFileAddress <= execute1_outInst_payload_regFileAddress;
      execute1_outInst_m2sPipe_rData_pcPlus4 <= execute1_outInst_payload_pcPlus4;
      execute1_outInst_m2sPipe_rData_unalignedMemoryAccessException <= execute1_outInst_payload_unalignedMemoryAccessException;
      execute1_outInst_m2sPipe_rData_needMemRsp <= execute1_outInst_payload_needMemRsp;
      execute1_outInst_m2sPipe_rData_dCmdAddress <= execute1_outInst_payload_dCmdAddress;
    end
    if(writeBack_outInst_ready)begin
      writeBack_outInst_m2sPipe_rData_addr <= writeBack_outInst_payload_addr;
      writeBack_outInst_m2sPipe_rData_data <= writeBack_outInst_payload_data;
    end
    if(execute0_outInst_ready)begin
      MulExtension_s2_mul_ll <= MulExtension_s1_mul_ll;
    end
    if(execute0_outInst_ready)begin
      MulExtension_s2_mul_lh <= MulExtension_s1_mul_lh;
    end
    if(execute0_outInst_ready)begin
      MulExtension_s2_mul_hl <= MulExtension_s1_mul_hl;
    end
    if(execute0_outInst_ready)begin
      MulExtension_s2_mul_hh <= MulExtension_s1_mul_hh;
    end
    if(execute1_outInst_ready)begin
      MulExtension_s3_low <= MulExtension_s2_low;
    end
    if(execute1_outInst_ready)begin
      MulExtension_s3_mul_hh <= MulExtension_s2_mul_hh;
    end
    DivExtension_rsp <= (execute1_inInst_payload_instruction[13] ? DivExtension_divider_io_rsp_payload_remainder : DivExtension_divider_io_rsp_payload_quotient);
    if(_zz_69)begin
      if(_zz_70)begin
        decode_outInst_m2sPipe_rData_alu_op1[4 : 0] <= _zz_117;
        case(execute0_inInst_payload_ctrl_alu)
          `ALU_opt_SLL1 : begin
            decode_outInst_m2sPipe_rData_alu_op0 <= _zz_118[31:0];
          end
          `ALU_opt_SRL_1, `ALU_opt_SRA_1 : begin
            decode_outInst_m2sPipe_rData_alu_op0 <= _zz_119;
          end
          default : begin
          end
        endcase
      end
    end
    if((! SimpleInterrupExtension_inIrq))begin
      _zz_30 <= writeBack_irq_masked[1];
    end
    if(_zz_66)begin
      if(_zz_67)begin
        SimpleInterrupExtension_exitPc <= writeBack_inInst_payload_pc;
      end else begin
        if(_zz_31)begin
          if(_zz_74)begin
            SimpleInterrupExtension_exitPc <= decode_inInst_payload_pc;
          end
        end
      end
    end
  end

  always @ (posedge clk) begin
    _zz_31 <= ((writeBack_irq_masked & (~ 8'h02)) != 8'h0);
  end


endmodule

module MixedDivider (
  input               io_flush,
  input               io_cmd_valid,
  output              io_cmd_ready,
  input      [31:0]   io_cmd_payload_numerator,
  input      [31:0]   io_cmd_payload_denominator,
  input               io_cmd_payload_signed,
  output              io_rsp_valid,
  input               io_rsp_ready,
  output     [31:0]   io_rsp_payload_quotient,
  output     [31:0]   io_rsp_payload_remainder,
  output              io_rsp_payload_error,
  input               clk,
  input               reset
);
  wire       [31:0]   _zz_5;
  wire       [31:0]   _zz_6;
  reg        [1:0]    _zz_7;
  wire                divider_io_cmd_ready;
  wire                divider_io_rsp_valid;
  wire       [31:0]   divider_io_rsp_payload_quotient;
  wire       [31:0]   divider_io_rsp_payload_remainder;
  wire                divider_io_rsp_payload_error;
  wire       [1:0]    divider_io_rsp_payload_context;
  wire       [31:0]   _zz_8;
  wire       [31:0]   _zz_9;
  wire       [0:0]    _zz_10;
  wire       [31:0]   _zz_11;
  wire       [31:0]   _zz_12;
  wire       [31:0]   _zz_13;
  wire       [0:0]    _zz_14;
  wire       [31:0]   _zz_15;
  wire       [32:0]   _zz_16;
  wire       [32:0]   _zz_17;
  wire       [32:0]   _zz_18;
  wire       [0:0]    _zz_19;
  wire       [32:0]   _zz_20;
  wire       [32:0]   _zz_21;
  wire       [32:0]   _zz_22;
  wire       [32:0]   _zz_23;
  wire       [0:0]    _zz_24;
  wire       [32:0]   _zz_25;
  wire       [31:0]   _zz_1;
  wire       [31:0]   _zz_2;
  wire                _zz_3;
  wire                _zz_4;

  assign _zz_8 = ((_zz_1[31] && io_cmd_payload_signed) ? _zz_9 : _zz_1);
  assign _zz_9 = (~ _zz_1);
  assign _zz_10 = (_zz_1[31] && io_cmd_payload_signed);
  assign _zz_11 = {31'd0, _zz_10};
  assign _zz_12 = ((_zz_2[31] && io_cmd_payload_signed) ? _zz_13 : _zz_2);
  assign _zz_13 = (~ _zz_2);
  assign _zz_14 = (_zz_2[31] && io_cmd_payload_signed);
  assign _zz_15 = {31'd0, _zz_14};
  assign _zz_16 = _zz_17;
  assign _zz_17 = _zz_18;
  assign _zz_18 = ({_zz_3,(_zz_3 ? (~ divider_io_rsp_payload_quotient) : divider_io_rsp_payload_quotient)} + _zz_20);
  assign _zz_19 = _zz_3;
  assign _zz_20 = {32'd0, _zz_19};
  assign _zz_21 = _zz_22;
  assign _zz_22 = _zz_23;
  assign _zz_23 = ({_zz_4,(_zz_4 ? (~ divider_io_rsp_payload_remainder) : divider_io_rsp_payload_remainder)} + _zz_25);
  assign _zz_24 = _zz_4;
  assign _zz_25 = {32'd0, _zz_24};
  UnsignedDivider divider (
    .io_flush                      (io_flush                                ), //i
    .io_cmd_valid                  (io_cmd_valid                            ), //i
    .io_cmd_ready                  (divider_io_cmd_ready                    ), //o
    .io_cmd_payload_numerator      (_zz_5[31:0]                             ), //i
    .io_cmd_payload_denominator    (_zz_6[31:0]                             ), //i
    .io_cmd_payload_context        (_zz_7[1:0]                              ), //i
    .io_rsp_valid                  (divider_io_rsp_valid                    ), //o
    .io_rsp_ready                  (io_rsp_ready                            ), //i
    .io_rsp_payload_quotient       (divider_io_rsp_payload_quotient[31:0]   ), //o
    .io_rsp_payload_remainder      (divider_io_rsp_payload_remainder[31:0]  ), //o
    .io_rsp_payload_error          (divider_io_rsp_payload_error            ), //o
    .io_rsp_payload_context        (divider_io_rsp_payload_context[1:0]     ), //o
    .clk                           (clk                                     ), //i
    .reset                         (reset                                   )  //i
  );
  assign io_cmd_ready = divider_io_cmd_ready;
  assign _zz_1 = io_cmd_payload_numerator;
  assign _zz_5 = (_zz_8 + _zz_11);
  assign _zz_2 = io_cmd_payload_denominator;
  assign _zz_6 = (_zz_12 + _zz_15);
  always @ (*) begin
    _zz_7[0] = (io_cmd_payload_signed && (io_cmd_payload_numerator[31] ^ io_cmd_payload_denominator[31]));
    _zz_7[1] = (io_cmd_payload_signed && io_cmd_payload_numerator[31]);
  end

  assign io_rsp_valid = divider_io_rsp_valid;
  assign _zz_3 = divider_io_rsp_payload_context[0];
  assign io_rsp_payload_quotient = _zz_16[31:0];
  assign _zz_4 = divider_io_rsp_payload_context[1];
  assign io_rsp_payload_remainder = _zz_21[31:0];
  assign io_rsp_payload_error = divider_io_rsp_payload_error;

endmodule

module Alu_1 (
  input      `ALU_opt_type io_func,
  input               io_doSub,
  input      [31:0]   io_src0,
  input      [31:0]   io_src1,
  output     [31:0]   io_result,
  output     [31:0]   io_adder
);
  wire       [31:0]   _zz_2;
  wire       [31:0]   _zz_3;
  wire       [31:0]   _zz_4;
  wire       [31:0]   _zz_5;
  wire       [1:0]    _zz_6;
  wire       [31:0]   _zz_7;
  wire       [1:0]    _zz_8;
  wire       [1:0]    _zz_9;
  wire       [0:0]    _zz_10;
  wire       [31:0]   addSub;
  reg        [31:0]   bitwise;
  wire                less;
  reg        [31:0]   _zz_1;
  `ifndef SYNTHESIS
  reg [39:0] io_func_string;
  `endif


  assign _zz_2 = ($signed(_zz_3) + $signed(_zz_7));
  assign _zz_3 = ($signed(_zz_4) + $signed(_zz_5));
  assign _zz_4 = io_src0;
  assign _zz_5 = (io_doSub ? (~ io_src1) : io_src1);
  assign _zz_6 = (io_doSub ? _zz_8 : _zz_9);
  assign _zz_7 = {{30{_zz_6[1]}}, _zz_6};
  assign _zz_8 = 2'b01;
  assign _zz_9 = 2'b00;
  assign _zz_10 = less;
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_func)
      `ALU_opt_ADD : io_func_string = "ADD  ";
      `ALU_opt_SLL1 : io_func_string = "SLL1 ";
      `ALU_opt_SLT : io_func_string = "SLT  ";
      `ALU_opt_SLTU : io_func_string = "SLTU ";
      `ALU_opt_XOR_1 : io_func_string = "XOR_1";
      `ALU_opt_SRL_1 : io_func_string = "SRL_1";
      `ALU_opt_OR_1 : io_func_string = "OR_1 ";
      `ALU_opt_AND_1 : io_func_string = "AND_1";
      `ALU_opt_SUB : io_func_string = "SUB  ";
      `ALU_opt_COPY : io_func_string = "COPY ";
      `ALU_opt_SRA_1 : io_func_string = "SRA_1";
      default : io_func_string = "?????";
    endcase
  end
  `endif

  assign addSub = _zz_2;
  always @ (*) begin
    case(io_func)
      `ALU_opt_AND_1 : begin
        bitwise = (io_src0 & io_src1);
      end
      `ALU_opt_OR_1 : begin
        bitwise = (io_src0 | io_src1);
      end
      `ALU_opt_XOR_1 : begin
        bitwise = (io_src0 ^ io_src1);
      end
      default : begin
        bitwise = io_src0;
      end
    endcase
  end

  assign less = ((io_src0[31] == io_src1[31]) ? addSub[31] : ((io_func == `ALU_opt_SLTU) ? io_src1[31] : io_src0[31]));
  always @ (*) begin
    case(io_func)
      `ALU_opt_SLT, `ALU_opt_SLTU : begin
        _zz_1 = {31'd0, _zz_10};
      end
      `ALU_opt_ADD, `ALU_opt_SUB : begin
        _zz_1 = addSub;
      end
      default : begin
        _zz_1 = bitwise;
      end
    endcase
  end

  assign io_result = _zz_1;
  assign io_adder = addSub;

endmodule

module UnsignedDivider (
  input               io_flush,
  input               io_cmd_valid,
  output reg          io_cmd_ready,
  input      [31:0]   io_cmd_payload_numerator,
  input      [31:0]   io_cmd_payload_denominator,
  input      [1:0]    io_cmd_payload_context,
  output              io_rsp_valid,
  input               io_rsp_ready,
  output     [31:0]   io_rsp_payload_quotient,
  output     [31:0]   io_rsp_payload_remainder,
  output              io_rsp_payload_error,
  output     [1:0]    io_rsp_payload_context,
  input               clk,
  input               reset
);
  wire                _zz_1;
  wire       [0:0]    _zz_2;
  wire       [4:0]    _zz_3;
  wire       [32:0]   _zz_4;
  wire       [32:0]   _zz_5;
  reg                 done;
  reg                 waitRsp;
  reg                 counter_willIncrement;
  reg                 counter_willClear;
  reg        [4:0]    counter_valueNext;
  reg        [4:0]    counter_value;
  wire                counter_willOverflowIfInc;
  wire                counter_willOverflow;
  reg        [31:0]   numerator;
  reg        [31:0]   denominator;
  reg        [1:0]    context_1;
  reg        [31:0]   remainder;
  wire       [32:0]   remainderShifted;
  wire       [32:0]   remainderMinusDenominator;

  assign _zz_1 = ((! waitRsp) || io_rsp_ready);
  assign _zz_2 = counter_willIncrement;
  assign _zz_3 = {4'd0, _zz_2};
  assign _zz_4 = {1'd0, denominator};
  assign _zz_5 = {numerator,(! remainderMinusDenominator[32])};
  always @ (*) begin
    counter_willIncrement = 1'b0;
    if(! done) begin
      counter_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    counter_willClear = 1'b0;
    if(done)begin
      if(_zz_1)begin
        counter_willClear = 1'b1;
      end
    end
  end

  assign counter_willOverflowIfInc = (counter_value == 5'h1f);
  assign counter_willOverflow = (counter_willOverflowIfInc && counter_willIncrement);
  always @ (*) begin
    counter_valueNext = (counter_value + _zz_3);
    if(counter_willClear)begin
      counter_valueNext = 5'h0;
    end
  end

  assign remainderShifted = {remainder,numerator[31]};
  assign remainderMinusDenominator = (remainderShifted - _zz_4);
  always @ (*) begin
    io_cmd_ready = 1'b0;
    if(done)begin
      if(_zz_1)begin
        io_cmd_ready = 1'b1;
      end
    end else begin
      if(counter_willOverflowIfInc)begin
        io_cmd_ready = 1'b1;
      end
    end
  end

  assign io_rsp_valid = waitRsp;
  assign io_rsp_payload_quotient = numerator;
  assign io_rsp_payload_remainder = remainder;
  assign io_rsp_payload_context = context_1;
  assign io_rsp_payload_error = (denominator == 32'h0);
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      done <= 1'b1;
      waitRsp <= 1'b0;
      counter_value <= 5'h0;
    end else begin
      counter_value <= counter_valueNext;
      if(io_rsp_ready)begin
        waitRsp <= 1'b0;
      end
      if(done)begin
        if(_zz_1)begin
          done <= (! io_cmd_valid);
        end
      end else begin
        if(counter_willOverflowIfInc)begin
          done <= 1'b1;
          waitRsp <= 1'b1;
        end
      end
      if(io_flush)begin
        done <= 1'b1;
        waitRsp <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(done)begin
      if(_zz_1)begin
        remainder <= 32'h0;
        numerator <= io_cmd_payload_numerator;
        denominator <= io_cmd_payload_denominator;
        context_1 <= io_cmd_payload_context;
      end
    end else begin
      remainder <= remainderShifted[31:0];
      numerator <= _zz_5[31:0];
      if((! remainderMinusDenominator[32]))begin
        remainder <= remainderMinusDenominator[31:0];
      end
    end
  end


endmodule
