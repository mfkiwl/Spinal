// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : Axi4CrossbarTester
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module Axi4CrossbarTester (
  input               axiMasters_0_aw_valid,
  output              axiMasters_0_aw_ready,
  input      [12:0]   axiMasters_0_aw_payload_addr,
  input      [3:0]    axiMasters_0_aw_payload_id,
  input      [3:0]    axiMasters_0_aw_payload_region,
  input      [7:0]    axiMasters_0_aw_payload_len,
  input      [2:0]    axiMasters_0_aw_payload_size,
  input      [1:0]    axiMasters_0_aw_payload_burst,
  input      [0:0]    axiMasters_0_aw_payload_lock,
  input      [3:0]    axiMasters_0_aw_payload_cache,
  input      [3:0]    axiMasters_0_aw_payload_qos,
  input      [2:0]    axiMasters_0_aw_payload_prot,
  input               axiMasters_0_w_valid,
  output              axiMasters_0_w_ready,
  input      [31:0]   axiMasters_0_w_payload_data,
  input      [3:0]    axiMasters_0_w_payload_strb,
  input               axiMasters_0_w_payload_last,
  output              axiMasters_0_b_valid,
  input               axiMasters_0_b_ready,
  output     [3:0]    axiMasters_0_b_payload_id,
  output     [1:0]    axiMasters_0_b_payload_resp,
  input               axiMasters_0_ar_valid,
  output              axiMasters_0_ar_ready,
  input      [12:0]   axiMasters_0_ar_payload_addr,
  input      [3:0]    axiMasters_0_ar_payload_id,
  input      [3:0]    axiMasters_0_ar_payload_region,
  input      [7:0]    axiMasters_0_ar_payload_len,
  input      [2:0]    axiMasters_0_ar_payload_size,
  input      [1:0]    axiMasters_0_ar_payload_burst,
  input      [0:0]    axiMasters_0_ar_payload_lock,
  input      [3:0]    axiMasters_0_ar_payload_cache,
  input      [3:0]    axiMasters_0_ar_payload_qos,
  input      [2:0]    axiMasters_0_ar_payload_prot,
  output              axiMasters_0_r_valid,
  input               axiMasters_0_r_ready,
  output     [31:0]   axiMasters_0_r_payload_data,
  output     [3:0]    axiMasters_0_r_payload_id,
  output     [1:0]    axiMasters_0_r_payload_resp,
  output              axiMasters_0_r_payload_last,
  input               axiMasters_1_aw_valid,
  output              axiMasters_1_aw_ready,
  input      [12:0]   axiMasters_1_aw_payload_addr,
  input      [3:0]    axiMasters_1_aw_payload_id,
  input      [3:0]    axiMasters_1_aw_payload_region,
  input      [7:0]    axiMasters_1_aw_payload_len,
  input      [2:0]    axiMasters_1_aw_payload_size,
  input      [1:0]    axiMasters_1_aw_payload_burst,
  input      [0:0]    axiMasters_1_aw_payload_lock,
  input      [3:0]    axiMasters_1_aw_payload_cache,
  input      [3:0]    axiMasters_1_aw_payload_qos,
  input      [2:0]    axiMasters_1_aw_payload_prot,
  input               axiMasters_1_w_valid,
  output              axiMasters_1_w_ready,
  input      [31:0]   axiMasters_1_w_payload_data,
  input      [3:0]    axiMasters_1_w_payload_strb,
  input               axiMasters_1_w_payload_last,
  output              axiMasters_1_b_valid,
  input               axiMasters_1_b_ready,
  output     [3:0]    axiMasters_1_b_payload_id,
  output     [1:0]    axiMasters_1_b_payload_resp,
  input               axiMasters_1_ar_valid,
  output              axiMasters_1_ar_ready,
  input      [12:0]   axiMasters_1_ar_payload_addr,
  input      [3:0]    axiMasters_1_ar_payload_id,
  input      [3:0]    axiMasters_1_ar_payload_region,
  input      [7:0]    axiMasters_1_ar_payload_len,
  input      [2:0]    axiMasters_1_ar_payload_size,
  input      [1:0]    axiMasters_1_ar_payload_burst,
  input      [0:0]    axiMasters_1_ar_payload_lock,
  input      [3:0]    axiMasters_1_ar_payload_cache,
  input      [3:0]    axiMasters_1_ar_payload_qos,
  input      [2:0]    axiMasters_1_ar_payload_prot,
  output              axiMasters_1_r_valid,
  input               axiMasters_1_r_ready,
  output     [31:0]   axiMasters_1_r_payload_data,
  output     [3:0]    axiMasters_1_r_payload_id,
  output     [1:0]    axiMasters_1_r_payload_resp,
  output              axiMasters_1_r_payload_last,
  input               axiMasters_2_aw_valid,
  output              axiMasters_2_aw_ready,
  input      [12:0]   axiMasters_2_aw_payload_addr,
  input      [3:0]    axiMasters_2_aw_payload_id,
  input      [3:0]    axiMasters_2_aw_payload_region,
  input      [7:0]    axiMasters_2_aw_payload_len,
  input      [2:0]    axiMasters_2_aw_payload_size,
  input      [1:0]    axiMasters_2_aw_payload_burst,
  input      [0:0]    axiMasters_2_aw_payload_lock,
  input      [3:0]    axiMasters_2_aw_payload_cache,
  input      [3:0]    axiMasters_2_aw_payload_qos,
  input      [2:0]    axiMasters_2_aw_payload_prot,
  input               axiMasters_2_w_valid,
  output              axiMasters_2_w_ready,
  input      [31:0]   axiMasters_2_w_payload_data,
  input      [3:0]    axiMasters_2_w_payload_strb,
  input               axiMasters_2_w_payload_last,
  output              axiMasters_2_b_valid,
  input               axiMasters_2_b_ready,
  output     [3:0]    axiMasters_2_b_payload_id,
  output     [1:0]    axiMasters_2_b_payload_resp,
  input               axiMasters_2_ar_valid,
  output              axiMasters_2_ar_ready,
  input      [12:0]   axiMasters_2_ar_payload_addr,
  input      [3:0]    axiMasters_2_ar_payload_id,
  input      [3:0]    axiMasters_2_ar_payload_region,
  input      [7:0]    axiMasters_2_ar_payload_len,
  input      [2:0]    axiMasters_2_ar_payload_size,
  input      [1:0]    axiMasters_2_ar_payload_burst,
  input      [0:0]    axiMasters_2_ar_payload_lock,
  input      [3:0]    axiMasters_2_ar_payload_cache,
  input      [3:0]    axiMasters_2_ar_payload_qos,
  input      [2:0]    axiMasters_2_ar_payload_prot,
  output              axiMasters_2_r_valid,
  input               axiMasters_2_r_ready,
  output     [31:0]   axiMasters_2_r_payload_data,
  output     [3:0]    axiMasters_2_r_payload_id,
  output     [1:0]    axiMasters_2_r_payload_resp,
  output              axiMasters_2_r_payload_last,
  output              axiSlaves_0_aw_valid,
  input               axiSlaves_0_aw_ready,
  output     [12:0]   axiSlaves_0_aw_payload_addr,
  output     [5:0]    axiSlaves_0_aw_payload_id,
  output     [3:0]    axiSlaves_0_aw_payload_region,
  output     [7:0]    axiSlaves_0_aw_payload_len,
  output     [2:0]    axiSlaves_0_aw_payload_size,
  output     [1:0]    axiSlaves_0_aw_payload_burst,
  output     [0:0]    axiSlaves_0_aw_payload_lock,
  output     [3:0]    axiSlaves_0_aw_payload_cache,
  output     [3:0]    axiSlaves_0_aw_payload_qos,
  output     [2:0]    axiSlaves_0_aw_payload_prot,
  output              axiSlaves_0_w_valid,
  input               axiSlaves_0_w_ready,
  output     [31:0]   axiSlaves_0_w_payload_data,
  output     [3:0]    axiSlaves_0_w_payload_strb,
  output              axiSlaves_0_w_payload_last,
  input               axiSlaves_0_b_valid,
  output              axiSlaves_0_b_ready,
  input      [5:0]    axiSlaves_0_b_payload_id,
  input      [1:0]    axiSlaves_0_b_payload_resp,
  output              axiSlaves_0_ar_valid,
  input               axiSlaves_0_ar_ready,
  output     [12:0]   axiSlaves_0_ar_payload_addr,
  output     [5:0]    axiSlaves_0_ar_payload_id,
  output     [3:0]    axiSlaves_0_ar_payload_region,
  output     [7:0]    axiSlaves_0_ar_payload_len,
  output     [2:0]    axiSlaves_0_ar_payload_size,
  output     [1:0]    axiSlaves_0_ar_payload_burst,
  output     [0:0]    axiSlaves_0_ar_payload_lock,
  output     [3:0]    axiSlaves_0_ar_payload_cache,
  output     [3:0]    axiSlaves_0_ar_payload_qos,
  output     [2:0]    axiSlaves_0_ar_payload_prot,
  input               axiSlaves_0_r_valid,
  output              axiSlaves_0_r_ready,
  input      [31:0]   axiSlaves_0_r_payload_data,
  input      [5:0]    axiSlaves_0_r_payload_id,
  input      [1:0]    axiSlaves_0_r_payload_resp,
  input               axiSlaves_0_r_payload_last,
  output              axiSlaves_1_aw_valid,
  input               axiSlaves_1_aw_ready,
  output     [12:0]   axiSlaves_1_aw_payload_addr,
  output     [5:0]    axiSlaves_1_aw_payload_id,
  output     [3:0]    axiSlaves_1_aw_payload_region,
  output     [7:0]    axiSlaves_1_aw_payload_len,
  output     [2:0]    axiSlaves_1_aw_payload_size,
  output     [1:0]    axiSlaves_1_aw_payload_burst,
  output     [0:0]    axiSlaves_1_aw_payload_lock,
  output     [3:0]    axiSlaves_1_aw_payload_cache,
  output     [3:0]    axiSlaves_1_aw_payload_qos,
  output     [2:0]    axiSlaves_1_aw_payload_prot,
  output              axiSlaves_1_w_valid,
  input               axiSlaves_1_w_ready,
  output     [31:0]   axiSlaves_1_w_payload_data,
  output     [3:0]    axiSlaves_1_w_payload_strb,
  output              axiSlaves_1_w_payload_last,
  input               axiSlaves_1_b_valid,
  output              axiSlaves_1_b_ready,
  input      [5:0]    axiSlaves_1_b_payload_id,
  input      [1:0]    axiSlaves_1_b_payload_resp,
  output              axiSlaves_1_ar_valid,
  input               axiSlaves_1_ar_ready,
  output     [12:0]   axiSlaves_1_ar_payload_addr,
  output     [5:0]    axiSlaves_1_ar_payload_id,
  output     [3:0]    axiSlaves_1_ar_payload_region,
  output     [7:0]    axiSlaves_1_ar_payload_len,
  output     [2:0]    axiSlaves_1_ar_payload_size,
  output     [1:0]    axiSlaves_1_ar_payload_burst,
  output     [0:0]    axiSlaves_1_ar_payload_lock,
  output     [3:0]    axiSlaves_1_ar_payload_cache,
  output     [3:0]    axiSlaves_1_ar_payload_qos,
  output     [2:0]    axiSlaves_1_ar_payload_prot,
  input               axiSlaves_1_r_valid,
  output              axiSlaves_1_r_ready,
  input      [31:0]   axiSlaves_1_r_payload_data,
  input      [5:0]    axiSlaves_1_r_payload_id,
  input      [1:0]    axiSlaves_1_r_payload_resp,
  input               axiSlaves_1_r_payload_last,
  output              axiSlaves_2_aw_valid,
  input               axiSlaves_2_aw_ready,
  output     [12:0]   axiSlaves_2_aw_payload_addr,
  output     [5:0]    axiSlaves_2_aw_payload_id,
  output     [3:0]    axiSlaves_2_aw_payload_region,
  output     [7:0]    axiSlaves_2_aw_payload_len,
  output     [2:0]    axiSlaves_2_aw_payload_size,
  output     [1:0]    axiSlaves_2_aw_payload_burst,
  output     [0:0]    axiSlaves_2_aw_payload_lock,
  output     [3:0]    axiSlaves_2_aw_payload_cache,
  output     [3:0]    axiSlaves_2_aw_payload_qos,
  output     [2:0]    axiSlaves_2_aw_payload_prot,
  output              axiSlaves_2_w_valid,
  input               axiSlaves_2_w_ready,
  output     [31:0]   axiSlaves_2_w_payload_data,
  output     [3:0]    axiSlaves_2_w_payload_strb,
  output              axiSlaves_2_w_payload_last,
  input               axiSlaves_2_b_valid,
  output              axiSlaves_2_b_ready,
  input      [5:0]    axiSlaves_2_b_payload_id,
  input      [1:0]    axiSlaves_2_b_payload_resp,
  output              axiSlaves_2_ar_valid,
  input               axiSlaves_2_ar_ready,
  output     [12:0]   axiSlaves_2_ar_payload_addr,
  output     [5:0]    axiSlaves_2_ar_payload_id,
  output     [3:0]    axiSlaves_2_ar_payload_region,
  output     [7:0]    axiSlaves_2_ar_payload_len,
  output     [2:0]    axiSlaves_2_ar_payload_size,
  output     [1:0]    axiSlaves_2_ar_payload_burst,
  output     [0:0]    axiSlaves_2_ar_payload_lock,
  output     [3:0]    axiSlaves_2_ar_payload_cache,
  output     [3:0]    axiSlaves_2_ar_payload_qos,
  output     [2:0]    axiSlaves_2_ar_payload_prot,
  input               axiSlaves_2_r_valid,
  output              axiSlaves_2_r_ready,
  input      [31:0]   axiSlaves_2_r_payload_data,
  input      [5:0]    axiSlaves_2_r_payload_id,
  input      [1:0]    axiSlaves_2_r_payload_resp,
  input               axiSlaves_2_r_payload_last,
  output              axiSlaves_3_aw_valid,
  input               axiSlaves_3_aw_ready,
  output     [12:0]   axiSlaves_3_aw_payload_addr,
  output     [5:0]    axiSlaves_3_aw_payload_id,
  output     [3:0]    axiSlaves_3_aw_payload_region,
  output     [7:0]    axiSlaves_3_aw_payload_len,
  output     [2:0]    axiSlaves_3_aw_payload_size,
  output     [1:0]    axiSlaves_3_aw_payload_burst,
  output     [0:0]    axiSlaves_3_aw_payload_lock,
  output     [3:0]    axiSlaves_3_aw_payload_cache,
  output     [3:0]    axiSlaves_3_aw_payload_qos,
  output     [2:0]    axiSlaves_3_aw_payload_prot,
  output              axiSlaves_3_w_valid,
  input               axiSlaves_3_w_ready,
  output     [31:0]   axiSlaves_3_w_payload_data,
  output     [3:0]    axiSlaves_3_w_payload_strb,
  output              axiSlaves_3_w_payload_last,
  input               axiSlaves_3_b_valid,
  output              axiSlaves_3_b_ready,
  input      [5:0]    axiSlaves_3_b_payload_id,
  input      [1:0]    axiSlaves_3_b_payload_resp,
  output              axiSlaves_3_ar_valid,
  input               axiSlaves_3_ar_ready,
  output     [12:0]   axiSlaves_3_ar_payload_addr,
  output     [5:0]    axiSlaves_3_ar_payload_id,
  output     [3:0]    axiSlaves_3_ar_payload_region,
  output     [7:0]    axiSlaves_3_ar_payload_len,
  output     [2:0]    axiSlaves_3_ar_payload_size,
  output     [1:0]    axiSlaves_3_ar_payload_burst,
  output     [0:0]    axiSlaves_3_ar_payload_lock,
  output     [3:0]    axiSlaves_3_ar_payload_cache,
  output     [3:0]    axiSlaves_3_ar_payload_qos,
  output     [2:0]    axiSlaves_3_ar_payload_prot,
  input               axiSlaves_3_r_valid,
  output              axiSlaves_3_r_ready,
  input      [31:0]   axiSlaves_3_r_payload_data,
  input      [5:0]    axiSlaves_3_r_payload_id,
  input      [1:0]    axiSlaves_3_r_payload_resp,
  input               axiSlaves_3_r_payload_last,
  input               clk,
  input               reset
);
  wire                _zz_55;
  wire       [3:0]    _zz_56;
  wire                _zz_57;
  wire       [3:0]    _zz_58;
  wire                _zz_59;
  wire                _zz_60;
  wire       [3:0]    _zz_61;
  wire                _zz_62;
  wire       [3:0]    _zz_63;
  wire                _zz_64;
  wire                _zz_65;
  wire       [3:0]    _zz_66;
  wire                _zz_67;
  wire       [3:0]    _zz_68;
  wire                _zz_69;
  wire                _zz_70;
  wire       [3:0]    _zz_71;
  wire                _zz_72;
  wire       [3:0]    _zz_73;
  wire                _zz_74;
  wire                _zz_75;
  wire       [3:0]    _zz_76;
  wire                _zz_77;
  wire       [3:0]    _zz_78;
  wire                _zz_79;
  wire                _zz_80;
  wire       [3:0]    _zz_81;
  wire                _zz_82;
  wire       [3:0]    _zz_83;
  wire                _zz_84;
  wire       [4:0]    _zz_85;
  wire       [4:0]    _zz_86;
  wire       [4:0]    _zz_87;
  wire       [4:0]    _zz_88;
  wire       [4:0]    _zz_89;
  wire       [4:0]    _zz_90;
  wire       [4:0]    _zz_91;
  wire       [4:0]    _zz_92;
  wire       [4:0]    _zz_93;
  wire       [4:0]    _zz_94;
  wire       [4:0]    _zz_95;
  wire       [4:0]    _zz_96;
  wire                axiMasters_0_readOnly_decoder_io_input_ar_ready;
  wire                axiMasters_0_readOnly_decoder_io_input_r_valid;
  wire       [31:0]   axiMasters_0_readOnly_decoder_io_input_r_payload_data;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_input_r_payload_id;
  wire       [1:0]    axiMasters_0_readOnly_decoder_io_input_r_payload_resp;
  wire                axiMasters_0_readOnly_decoder_io_input_r_payload_last;
  wire                axiMasters_0_readOnly_decoder_io_outputs_0_ar_valid;
  wire       [12:0]   axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_addr;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_id;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_region;
  wire       [7:0]    axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_len;
  wire       [2:0]    axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_size;
  wire       [1:0]    axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_burst;
  wire       [0:0]    axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_lock;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_cache;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_qos;
  wire       [2:0]    axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_prot;
  wire                axiMasters_0_readOnly_decoder_io_outputs_0_r_ready;
  wire                axiMasters_0_readOnly_decoder_io_outputs_1_ar_valid;
  wire       [12:0]   axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_addr;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_id;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_region;
  wire       [7:0]    axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_len;
  wire       [2:0]    axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_size;
  wire       [1:0]    axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_burst;
  wire       [0:0]    axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_lock;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_cache;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_qos;
  wire       [2:0]    axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_prot;
  wire                axiMasters_0_readOnly_decoder_io_outputs_1_r_ready;
  wire                axiMasters_0_readOnly_decoder_io_outputs_2_ar_valid;
  wire       [12:0]   axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_addr;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_id;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_region;
  wire       [7:0]    axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_len;
  wire       [2:0]    axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_size;
  wire       [1:0]    axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_burst;
  wire       [0:0]    axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_lock;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_cache;
  wire       [3:0]    axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_qos;
  wire       [2:0]    axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_prot;
  wire                axiMasters_0_readOnly_decoder_io_outputs_2_r_ready;
  wire                axiMasters_0_writeOnly_decoder_io_input_aw_ready;
  wire                axiMasters_0_writeOnly_decoder_io_input_w_ready;
  wire                axiMasters_0_writeOnly_decoder_io_input_b_valid;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_input_b_payload_id;
  wire       [1:0]    axiMasters_0_writeOnly_decoder_io_input_b_payload_resp;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_0_aw_valid;
  wire       [12:0]   axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_addr;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_id;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_region;
  wire       [7:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_len;
  wire       [2:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_size;
  wire       [1:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_burst;
  wire       [0:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_lock;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_cache;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_qos;
  wire       [2:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_prot;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_0_w_valid;
  wire       [31:0]   axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_data;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_strb;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_last;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_0_b_ready;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_1_aw_valid;
  wire       [12:0]   axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_addr;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_id;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_region;
  wire       [7:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_len;
  wire       [2:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_size;
  wire       [1:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_burst;
  wire       [0:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_lock;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_cache;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_qos;
  wire       [2:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_prot;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_1_w_valid;
  wire       [31:0]   axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_data;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_strb;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_last;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_1_b_ready;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_2_aw_valid;
  wire       [12:0]   axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_addr;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_id;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_region;
  wire       [7:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_len;
  wire       [2:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_size;
  wire       [1:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_burst;
  wire       [0:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_lock;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_cache;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_qos;
  wire       [2:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_prot;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_2_w_valid;
  wire       [31:0]   axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_data;
  wire       [3:0]    axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_strb;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_last;
  wire                axiMasters_0_writeOnly_decoder_io_outputs_2_b_ready;
  wire                axiMasters_1_readOnly_decoder_io_input_ar_ready;
  wire                axiMasters_1_readOnly_decoder_io_input_r_valid;
  wire       [31:0]   axiMasters_1_readOnly_decoder_io_input_r_payload_data;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_input_r_payload_id;
  wire       [1:0]    axiMasters_1_readOnly_decoder_io_input_r_payload_resp;
  wire                axiMasters_1_readOnly_decoder_io_input_r_payload_last;
  wire                axiMasters_1_readOnly_decoder_io_outputs_0_ar_valid;
  wire       [12:0]   axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_addr;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_id;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_region;
  wire       [7:0]    axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_len;
  wire       [2:0]    axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_size;
  wire       [1:0]    axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_burst;
  wire       [0:0]    axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_lock;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_cache;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_qos;
  wire       [2:0]    axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_prot;
  wire                axiMasters_1_readOnly_decoder_io_outputs_0_r_ready;
  wire                axiMasters_1_readOnly_decoder_io_outputs_1_ar_valid;
  wire       [12:0]   axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_addr;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_id;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_region;
  wire       [7:0]    axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_len;
  wire       [2:0]    axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_size;
  wire       [1:0]    axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_burst;
  wire       [0:0]    axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_lock;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_cache;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_qos;
  wire       [2:0]    axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_prot;
  wire                axiMasters_1_readOnly_decoder_io_outputs_1_r_ready;
  wire                axiMasters_1_readOnly_decoder_io_outputs_2_ar_valid;
  wire       [12:0]   axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_addr;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_id;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_region;
  wire       [7:0]    axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_len;
  wire       [2:0]    axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_size;
  wire       [1:0]    axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_burst;
  wire       [0:0]    axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_lock;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_cache;
  wire       [3:0]    axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_qos;
  wire       [2:0]    axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_prot;
  wire                axiMasters_1_readOnly_decoder_io_outputs_2_r_ready;
  wire                axiMasters_1_writeOnly_decoder_io_input_aw_ready;
  wire                axiMasters_1_writeOnly_decoder_io_input_w_ready;
  wire                axiMasters_1_writeOnly_decoder_io_input_b_valid;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_input_b_payload_id;
  wire       [1:0]    axiMasters_1_writeOnly_decoder_io_input_b_payload_resp;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_0_aw_valid;
  wire       [12:0]   axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_addr;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_id;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_region;
  wire       [7:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_len;
  wire       [2:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_size;
  wire       [1:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_burst;
  wire       [0:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_lock;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_cache;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_qos;
  wire       [2:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_prot;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_0_w_valid;
  wire       [31:0]   axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_data;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_strb;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_last;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_0_b_ready;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_1_aw_valid;
  wire       [12:0]   axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_addr;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_id;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_region;
  wire       [7:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_len;
  wire       [2:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_size;
  wire       [1:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_burst;
  wire       [0:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_lock;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_cache;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_qos;
  wire       [2:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_prot;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_1_w_valid;
  wire       [31:0]   axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_data;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_strb;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_last;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_1_b_ready;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_2_aw_valid;
  wire       [12:0]   axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_addr;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_id;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_region;
  wire       [7:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_len;
  wire       [2:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_size;
  wire       [1:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_burst;
  wire       [0:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_lock;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_cache;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_qos;
  wire       [2:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_prot;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_2_w_valid;
  wire       [31:0]   axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_data;
  wire       [3:0]    axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_strb;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_last;
  wire                axiMasters_1_writeOnly_decoder_io_outputs_2_b_ready;
  wire                axiMasters_2_readOnly_decoder_io_input_ar_ready;
  wire                axiMasters_2_readOnly_decoder_io_input_r_valid;
  wire       [31:0]   axiMasters_2_readOnly_decoder_io_input_r_payload_data;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_input_r_payload_id;
  wire       [1:0]    axiMasters_2_readOnly_decoder_io_input_r_payload_resp;
  wire                axiMasters_2_readOnly_decoder_io_input_r_payload_last;
  wire                axiMasters_2_readOnly_decoder_io_outputs_0_ar_valid;
  wire       [12:0]   axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_addr;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_id;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_region;
  wire       [7:0]    axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_len;
  wire       [2:0]    axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_size;
  wire       [1:0]    axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_burst;
  wire       [0:0]    axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_lock;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_cache;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_qos;
  wire       [2:0]    axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_prot;
  wire                axiMasters_2_readOnly_decoder_io_outputs_0_r_ready;
  wire                axiMasters_2_readOnly_decoder_io_outputs_1_ar_valid;
  wire       [12:0]   axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_addr;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_id;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_region;
  wire       [7:0]    axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_len;
  wire       [2:0]    axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_size;
  wire       [1:0]    axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_burst;
  wire       [0:0]    axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_lock;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_cache;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_qos;
  wire       [2:0]    axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_prot;
  wire                axiMasters_2_readOnly_decoder_io_outputs_1_r_ready;
  wire                axiMasters_2_readOnly_decoder_io_outputs_2_ar_valid;
  wire       [12:0]   axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_addr;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_id;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_region;
  wire       [7:0]    axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_len;
  wire       [2:0]    axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_size;
  wire       [1:0]    axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_burst;
  wire       [0:0]    axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_lock;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_cache;
  wire       [3:0]    axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_qos;
  wire       [2:0]    axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_prot;
  wire                axiMasters_2_readOnly_decoder_io_outputs_2_r_ready;
  wire                axiMasters_2_writeOnly_decoder_io_input_aw_ready;
  wire                axiMasters_2_writeOnly_decoder_io_input_w_ready;
  wire                axiMasters_2_writeOnly_decoder_io_input_b_valid;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_input_b_payload_id;
  wire       [1:0]    axiMasters_2_writeOnly_decoder_io_input_b_payload_resp;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_0_aw_valid;
  wire       [12:0]   axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_addr;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_id;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_region;
  wire       [7:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_len;
  wire       [2:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_size;
  wire       [1:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_burst;
  wire       [0:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_lock;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_cache;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_qos;
  wire       [2:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_prot;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_0_w_valid;
  wire       [31:0]   axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_data;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_strb;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_last;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_0_b_ready;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_1_aw_valid;
  wire       [12:0]   axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_addr;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_id;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_region;
  wire       [7:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_len;
  wire       [2:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_size;
  wire       [1:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_burst;
  wire       [0:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_lock;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_cache;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_qos;
  wire       [2:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_prot;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_1_w_valid;
  wire       [31:0]   axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_data;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_strb;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_last;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_1_b_ready;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_2_aw_valid;
  wire       [12:0]   axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_addr;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_id;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_region;
  wire       [7:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_len;
  wire       [2:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_size;
  wire       [1:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_burst;
  wire       [0:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_lock;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_cache;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_qos;
  wire       [2:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_prot;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_2_w_valid;
  wire       [31:0]   axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_data;
  wire       [3:0]    axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_strb;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_last;
  wire                axiMasters_2_writeOnly_decoder_io_outputs_2_b_ready;
  wire                axiSlaves_0_readOnly_arbiter_io_inputs_0_ar_ready;
  wire                axiSlaves_0_readOnly_arbiter_io_inputs_0_r_valid;
  wire       [31:0]   axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_data;
  wire       [4:0]    axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_id;
  wire       [1:0]    axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_resp;
  wire                axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_last;
  wire                axiSlaves_0_readOnly_arbiter_io_inputs_1_ar_ready;
  wire                axiSlaves_0_readOnly_arbiter_io_inputs_1_r_valid;
  wire       [31:0]   axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_data;
  wire       [4:0]    axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_id;
  wire       [1:0]    axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_resp;
  wire                axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_last;
  wire                axiSlaves_0_readOnly_arbiter_io_output_ar_valid;
  wire       [12:0]   axiSlaves_0_readOnly_arbiter_io_output_ar_payload_addr;
  wire       [5:0]    axiSlaves_0_readOnly_arbiter_io_output_ar_payload_id;
  wire       [3:0]    axiSlaves_0_readOnly_arbiter_io_output_ar_payload_region;
  wire       [7:0]    axiSlaves_0_readOnly_arbiter_io_output_ar_payload_len;
  wire       [2:0]    axiSlaves_0_readOnly_arbiter_io_output_ar_payload_size;
  wire       [1:0]    axiSlaves_0_readOnly_arbiter_io_output_ar_payload_burst;
  wire       [0:0]    axiSlaves_0_readOnly_arbiter_io_output_ar_payload_lock;
  wire       [3:0]    axiSlaves_0_readOnly_arbiter_io_output_ar_payload_cache;
  wire       [3:0]    axiSlaves_0_readOnly_arbiter_io_output_ar_payload_qos;
  wire       [2:0]    axiSlaves_0_readOnly_arbiter_io_output_ar_payload_prot;
  wire                axiSlaves_0_readOnly_arbiter_io_output_r_ready;
  wire                axiSlaves_0_writeOnly_arbiter_io_inputs_0_aw_ready;
  wire                axiSlaves_0_writeOnly_arbiter_io_inputs_0_w_ready;
  wire                axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_valid;
  wire       [4:0]    axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_id;
  wire       [1:0]    axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_resp;
  wire                axiSlaves_0_writeOnly_arbiter_io_inputs_1_aw_ready;
  wire                axiSlaves_0_writeOnly_arbiter_io_inputs_1_w_ready;
  wire                axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_valid;
  wire       [4:0]    axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_id;
  wire       [1:0]    axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_resp;
  wire                axiSlaves_0_writeOnly_arbiter_io_output_aw_valid;
  wire       [12:0]   axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_addr;
  wire       [5:0]    axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_id;
  wire       [3:0]    axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_region;
  wire       [7:0]    axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_len;
  wire       [2:0]    axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_size;
  wire       [1:0]    axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_burst;
  wire       [0:0]    axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_lock;
  wire       [3:0]    axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_cache;
  wire       [3:0]    axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_qos;
  wire       [2:0]    axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_prot;
  wire                axiSlaves_0_writeOnly_arbiter_io_output_w_valid;
  wire       [31:0]   axiSlaves_0_writeOnly_arbiter_io_output_w_payload_data;
  wire       [3:0]    axiSlaves_0_writeOnly_arbiter_io_output_w_payload_strb;
  wire                axiSlaves_0_writeOnly_arbiter_io_output_w_payload_last;
  wire                axiSlaves_0_writeOnly_arbiter_io_output_b_ready;
  wire                axiSlaves_1_readOnly_arbiter_io_inputs_0_ar_ready;
  wire                axiSlaves_1_readOnly_arbiter_io_inputs_0_r_valid;
  wire       [31:0]   axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_data;
  wire       [4:0]    axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_id;
  wire       [1:0]    axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_resp;
  wire                axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_last;
  wire                axiSlaves_1_readOnly_arbiter_io_inputs_1_ar_ready;
  wire                axiSlaves_1_readOnly_arbiter_io_inputs_1_r_valid;
  wire       [31:0]   axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_data;
  wire       [4:0]    axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_id;
  wire       [1:0]    axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_resp;
  wire                axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_last;
  wire                axiSlaves_1_readOnly_arbiter_io_output_ar_valid;
  wire       [12:0]   axiSlaves_1_readOnly_arbiter_io_output_ar_payload_addr;
  wire       [5:0]    axiSlaves_1_readOnly_arbiter_io_output_ar_payload_id;
  wire       [3:0]    axiSlaves_1_readOnly_arbiter_io_output_ar_payload_region;
  wire       [7:0]    axiSlaves_1_readOnly_arbiter_io_output_ar_payload_len;
  wire       [2:0]    axiSlaves_1_readOnly_arbiter_io_output_ar_payload_size;
  wire       [1:0]    axiSlaves_1_readOnly_arbiter_io_output_ar_payload_burst;
  wire       [0:0]    axiSlaves_1_readOnly_arbiter_io_output_ar_payload_lock;
  wire       [3:0]    axiSlaves_1_readOnly_arbiter_io_output_ar_payload_cache;
  wire       [3:0]    axiSlaves_1_readOnly_arbiter_io_output_ar_payload_qos;
  wire       [2:0]    axiSlaves_1_readOnly_arbiter_io_output_ar_payload_prot;
  wire                axiSlaves_1_readOnly_arbiter_io_output_r_ready;
  wire                axiSlaves_1_writeOnly_arbiter_io_inputs_0_aw_ready;
  wire                axiSlaves_1_writeOnly_arbiter_io_inputs_0_w_ready;
  wire                axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_valid;
  wire       [4:0]    axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_id;
  wire       [1:0]    axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_resp;
  wire                axiSlaves_1_writeOnly_arbiter_io_inputs_1_aw_ready;
  wire                axiSlaves_1_writeOnly_arbiter_io_inputs_1_w_ready;
  wire                axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_valid;
  wire       [4:0]    axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_id;
  wire       [1:0]    axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_resp;
  wire                axiSlaves_1_writeOnly_arbiter_io_output_aw_valid;
  wire       [12:0]   axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_addr;
  wire       [5:0]    axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_id;
  wire       [3:0]    axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_region;
  wire       [7:0]    axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_len;
  wire       [2:0]    axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_size;
  wire       [1:0]    axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_burst;
  wire       [0:0]    axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_lock;
  wire       [3:0]    axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_cache;
  wire       [3:0]    axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_qos;
  wire       [2:0]    axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_prot;
  wire                axiSlaves_1_writeOnly_arbiter_io_output_w_valid;
  wire       [31:0]   axiSlaves_1_writeOnly_arbiter_io_output_w_payload_data;
  wire       [3:0]    axiSlaves_1_writeOnly_arbiter_io_output_w_payload_strb;
  wire                axiSlaves_1_writeOnly_arbiter_io_output_w_payload_last;
  wire                axiSlaves_1_writeOnly_arbiter_io_output_b_ready;
  wire                axiSlaves_2_readOnly_arbiter_io_inputs_0_ar_ready;
  wire                axiSlaves_2_readOnly_arbiter_io_inputs_0_r_valid;
  wire       [31:0]   axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_data;
  wire       [4:0]    axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_id;
  wire       [1:0]    axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_resp;
  wire                axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_last;
  wire                axiSlaves_2_readOnly_arbiter_io_inputs_1_ar_ready;
  wire                axiSlaves_2_readOnly_arbiter_io_inputs_1_r_valid;
  wire       [31:0]   axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_data;
  wire       [4:0]    axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_id;
  wire       [1:0]    axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_resp;
  wire                axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_last;
  wire                axiSlaves_2_readOnly_arbiter_io_output_ar_valid;
  wire       [12:0]   axiSlaves_2_readOnly_arbiter_io_output_ar_payload_addr;
  wire       [5:0]    axiSlaves_2_readOnly_arbiter_io_output_ar_payload_id;
  wire       [3:0]    axiSlaves_2_readOnly_arbiter_io_output_ar_payload_region;
  wire       [7:0]    axiSlaves_2_readOnly_arbiter_io_output_ar_payload_len;
  wire       [2:0]    axiSlaves_2_readOnly_arbiter_io_output_ar_payload_size;
  wire       [1:0]    axiSlaves_2_readOnly_arbiter_io_output_ar_payload_burst;
  wire       [0:0]    axiSlaves_2_readOnly_arbiter_io_output_ar_payload_lock;
  wire       [3:0]    axiSlaves_2_readOnly_arbiter_io_output_ar_payload_cache;
  wire       [3:0]    axiSlaves_2_readOnly_arbiter_io_output_ar_payload_qos;
  wire       [2:0]    axiSlaves_2_readOnly_arbiter_io_output_ar_payload_prot;
  wire                axiSlaves_2_readOnly_arbiter_io_output_r_ready;
  wire                axiSlaves_2_writeOnly_arbiter_io_inputs_0_aw_ready;
  wire                axiSlaves_2_writeOnly_arbiter_io_inputs_0_w_ready;
  wire                axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_valid;
  wire       [4:0]    axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_id;
  wire       [1:0]    axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_resp;
  wire                axiSlaves_2_writeOnly_arbiter_io_inputs_1_aw_ready;
  wire                axiSlaves_2_writeOnly_arbiter_io_inputs_1_w_ready;
  wire                axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_valid;
  wire       [4:0]    axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_id;
  wire       [1:0]    axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_resp;
  wire                axiSlaves_2_writeOnly_arbiter_io_output_aw_valid;
  wire       [12:0]   axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_addr;
  wire       [5:0]    axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_id;
  wire       [3:0]    axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_region;
  wire       [7:0]    axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_len;
  wire       [2:0]    axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_size;
  wire       [1:0]    axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_burst;
  wire       [0:0]    axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_lock;
  wire       [3:0]    axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_cache;
  wire       [3:0]    axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_qos;
  wire       [2:0]    axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_prot;
  wire                axiSlaves_2_writeOnly_arbiter_io_output_w_valid;
  wire       [31:0]   axiSlaves_2_writeOnly_arbiter_io_output_w_payload_data;
  wire       [3:0]    axiSlaves_2_writeOnly_arbiter_io_output_w_payload_strb;
  wire                axiSlaves_2_writeOnly_arbiter_io_output_w_payload_last;
  wire                axiSlaves_2_writeOnly_arbiter_io_output_b_ready;
  wire                axiSlaves_3_readOnly_arbiter_io_inputs_0_ar_ready;
  wire                axiSlaves_3_readOnly_arbiter_io_inputs_0_r_valid;
  wire       [31:0]   axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_data;
  wire       [3:0]    axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_id;
  wire       [1:0]    axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_resp;
  wire                axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_last;
  wire                axiSlaves_3_readOnly_arbiter_io_inputs_1_ar_ready;
  wire                axiSlaves_3_readOnly_arbiter_io_inputs_1_r_valid;
  wire       [31:0]   axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_data;
  wire       [3:0]    axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_id;
  wire       [1:0]    axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_resp;
  wire                axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_last;
  wire                axiSlaves_3_readOnly_arbiter_io_inputs_2_ar_ready;
  wire                axiSlaves_3_readOnly_arbiter_io_inputs_2_r_valid;
  wire       [31:0]   axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_data;
  wire       [3:0]    axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_id;
  wire       [1:0]    axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_resp;
  wire                axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_last;
  wire                axiSlaves_3_readOnly_arbiter_io_output_ar_valid;
  wire       [12:0]   axiSlaves_3_readOnly_arbiter_io_output_ar_payload_addr;
  wire       [5:0]    axiSlaves_3_readOnly_arbiter_io_output_ar_payload_id;
  wire       [3:0]    axiSlaves_3_readOnly_arbiter_io_output_ar_payload_region;
  wire       [7:0]    axiSlaves_3_readOnly_arbiter_io_output_ar_payload_len;
  wire       [2:0]    axiSlaves_3_readOnly_arbiter_io_output_ar_payload_size;
  wire       [1:0]    axiSlaves_3_readOnly_arbiter_io_output_ar_payload_burst;
  wire       [0:0]    axiSlaves_3_readOnly_arbiter_io_output_ar_payload_lock;
  wire       [3:0]    axiSlaves_3_readOnly_arbiter_io_output_ar_payload_cache;
  wire       [3:0]    axiSlaves_3_readOnly_arbiter_io_output_ar_payload_qos;
  wire       [2:0]    axiSlaves_3_readOnly_arbiter_io_output_ar_payload_prot;
  wire                axiSlaves_3_readOnly_arbiter_io_output_r_ready;
  wire                axiSlaves_3_writeOnly_arbiter_io_inputs_0_aw_ready;
  wire                axiSlaves_3_writeOnly_arbiter_io_inputs_0_w_ready;
  wire                axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_valid;
  wire       [3:0]    axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_id;
  wire       [1:0]    axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_resp;
  wire                axiSlaves_3_writeOnly_arbiter_io_inputs_1_aw_ready;
  wire                axiSlaves_3_writeOnly_arbiter_io_inputs_1_w_ready;
  wire                axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_valid;
  wire       [3:0]    axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_id;
  wire       [1:0]    axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_resp;
  wire                axiSlaves_3_writeOnly_arbiter_io_inputs_2_aw_ready;
  wire                axiSlaves_3_writeOnly_arbiter_io_inputs_2_w_ready;
  wire                axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_valid;
  wire       [3:0]    axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_id;
  wire       [1:0]    axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_resp;
  wire                axiSlaves_3_writeOnly_arbiter_io_output_aw_valid;
  wire       [12:0]   axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_addr;
  wire       [5:0]    axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_id;
  wire       [3:0]    axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_region;
  wire       [7:0]    axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_len;
  wire       [2:0]    axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_size;
  wire       [1:0]    axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_burst;
  wire       [0:0]    axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_lock;
  wire       [3:0]    axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_cache;
  wire       [3:0]    axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_qos;
  wire       [2:0]    axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_prot;
  wire                axiSlaves_3_writeOnly_arbiter_io_output_w_valid;
  wire       [31:0]   axiSlaves_3_writeOnly_arbiter_io_output_w_payload_data;
  wire       [3:0]    axiSlaves_3_writeOnly_arbiter_io_output_w_payload_strb;
  wire                axiSlaves_3_writeOnly_arbiter_io_output_w_payload_last;
  wire                axiSlaves_3_writeOnly_arbiter_io_output_b_ready;
  wire                axiSlaves_0_readOnly_ar_valid;
  wire                axiSlaves_0_readOnly_ar_ready;
  wire       [12:0]   axiSlaves_0_readOnly_ar_payload_addr;
  wire       [5:0]    axiSlaves_0_readOnly_ar_payload_id;
  wire       [3:0]    axiSlaves_0_readOnly_ar_payload_region;
  wire       [7:0]    axiSlaves_0_readOnly_ar_payload_len;
  wire       [2:0]    axiSlaves_0_readOnly_ar_payload_size;
  wire       [1:0]    axiSlaves_0_readOnly_ar_payload_burst;
  wire       [0:0]    axiSlaves_0_readOnly_ar_payload_lock;
  wire       [3:0]    axiSlaves_0_readOnly_ar_payload_cache;
  wire       [3:0]    axiSlaves_0_readOnly_ar_payload_qos;
  wire       [2:0]    axiSlaves_0_readOnly_ar_payload_prot;
  wire                axiSlaves_0_readOnly_r_valid;
  wire                axiSlaves_0_readOnly_r_ready;
  wire       [31:0]   axiSlaves_0_readOnly_r_payload_data;
  wire       [5:0]    axiSlaves_0_readOnly_r_payload_id;
  wire       [1:0]    axiSlaves_0_readOnly_r_payload_resp;
  wire                axiSlaves_0_readOnly_r_payload_last;
  wire                axiSlaves_0_writeOnly_aw_valid;
  wire                axiSlaves_0_writeOnly_aw_ready;
  wire       [12:0]   axiSlaves_0_writeOnly_aw_payload_addr;
  wire       [5:0]    axiSlaves_0_writeOnly_aw_payload_id;
  wire       [3:0]    axiSlaves_0_writeOnly_aw_payload_region;
  wire       [7:0]    axiSlaves_0_writeOnly_aw_payload_len;
  wire       [2:0]    axiSlaves_0_writeOnly_aw_payload_size;
  wire       [1:0]    axiSlaves_0_writeOnly_aw_payload_burst;
  wire       [0:0]    axiSlaves_0_writeOnly_aw_payload_lock;
  wire       [3:0]    axiSlaves_0_writeOnly_aw_payload_cache;
  wire       [3:0]    axiSlaves_0_writeOnly_aw_payload_qos;
  wire       [2:0]    axiSlaves_0_writeOnly_aw_payload_prot;
  wire                axiSlaves_0_writeOnly_w_valid;
  wire                axiSlaves_0_writeOnly_w_ready;
  wire       [31:0]   axiSlaves_0_writeOnly_w_payload_data;
  wire       [3:0]    axiSlaves_0_writeOnly_w_payload_strb;
  wire                axiSlaves_0_writeOnly_w_payload_last;
  wire                axiSlaves_0_writeOnly_b_valid;
  wire                axiSlaves_0_writeOnly_b_ready;
  wire       [5:0]    axiSlaves_0_writeOnly_b_payload_id;
  wire       [1:0]    axiSlaves_0_writeOnly_b_payload_resp;
  wire                axiSlaves_1_readOnly_ar_valid;
  wire                axiSlaves_1_readOnly_ar_ready;
  wire       [12:0]   axiSlaves_1_readOnly_ar_payload_addr;
  wire       [5:0]    axiSlaves_1_readOnly_ar_payload_id;
  wire       [3:0]    axiSlaves_1_readOnly_ar_payload_region;
  wire       [7:0]    axiSlaves_1_readOnly_ar_payload_len;
  wire       [2:0]    axiSlaves_1_readOnly_ar_payload_size;
  wire       [1:0]    axiSlaves_1_readOnly_ar_payload_burst;
  wire       [0:0]    axiSlaves_1_readOnly_ar_payload_lock;
  wire       [3:0]    axiSlaves_1_readOnly_ar_payload_cache;
  wire       [3:0]    axiSlaves_1_readOnly_ar_payload_qos;
  wire       [2:0]    axiSlaves_1_readOnly_ar_payload_prot;
  wire                axiSlaves_1_readOnly_r_valid;
  wire                axiSlaves_1_readOnly_r_ready;
  wire       [31:0]   axiSlaves_1_readOnly_r_payload_data;
  wire       [5:0]    axiSlaves_1_readOnly_r_payload_id;
  wire       [1:0]    axiSlaves_1_readOnly_r_payload_resp;
  wire                axiSlaves_1_readOnly_r_payload_last;
  wire                axiSlaves_1_writeOnly_aw_valid;
  wire                axiSlaves_1_writeOnly_aw_ready;
  wire       [12:0]   axiSlaves_1_writeOnly_aw_payload_addr;
  wire       [5:0]    axiSlaves_1_writeOnly_aw_payload_id;
  wire       [3:0]    axiSlaves_1_writeOnly_aw_payload_region;
  wire       [7:0]    axiSlaves_1_writeOnly_aw_payload_len;
  wire       [2:0]    axiSlaves_1_writeOnly_aw_payload_size;
  wire       [1:0]    axiSlaves_1_writeOnly_aw_payload_burst;
  wire       [0:0]    axiSlaves_1_writeOnly_aw_payload_lock;
  wire       [3:0]    axiSlaves_1_writeOnly_aw_payload_cache;
  wire       [3:0]    axiSlaves_1_writeOnly_aw_payload_qos;
  wire       [2:0]    axiSlaves_1_writeOnly_aw_payload_prot;
  wire                axiSlaves_1_writeOnly_w_valid;
  wire                axiSlaves_1_writeOnly_w_ready;
  wire       [31:0]   axiSlaves_1_writeOnly_w_payload_data;
  wire       [3:0]    axiSlaves_1_writeOnly_w_payload_strb;
  wire                axiSlaves_1_writeOnly_w_payload_last;
  wire                axiSlaves_1_writeOnly_b_valid;
  wire                axiSlaves_1_writeOnly_b_ready;
  wire       [5:0]    axiSlaves_1_writeOnly_b_payload_id;
  wire       [1:0]    axiSlaves_1_writeOnly_b_payload_resp;
  wire                axiSlaves_2_readOnly_ar_valid;
  wire                axiSlaves_2_readOnly_ar_ready;
  wire       [12:0]   axiSlaves_2_readOnly_ar_payload_addr;
  wire       [5:0]    axiSlaves_2_readOnly_ar_payload_id;
  wire       [3:0]    axiSlaves_2_readOnly_ar_payload_region;
  wire       [7:0]    axiSlaves_2_readOnly_ar_payload_len;
  wire       [2:0]    axiSlaves_2_readOnly_ar_payload_size;
  wire       [1:0]    axiSlaves_2_readOnly_ar_payload_burst;
  wire       [0:0]    axiSlaves_2_readOnly_ar_payload_lock;
  wire       [3:0]    axiSlaves_2_readOnly_ar_payload_cache;
  wire       [3:0]    axiSlaves_2_readOnly_ar_payload_qos;
  wire       [2:0]    axiSlaves_2_readOnly_ar_payload_prot;
  wire                axiSlaves_2_readOnly_r_valid;
  wire                axiSlaves_2_readOnly_r_ready;
  wire       [31:0]   axiSlaves_2_readOnly_r_payload_data;
  wire       [5:0]    axiSlaves_2_readOnly_r_payload_id;
  wire       [1:0]    axiSlaves_2_readOnly_r_payload_resp;
  wire                axiSlaves_2_readOnly_r_payload_last;
  wire                axiSlaves_2_writeOnly_aw_valid;
  wire                axiSlaves_2_writeOnly_aw_ready;
  wire       [12:0]   axiSlaves_2_writeOnly_aw_payload_addr;
  wire       [5:0]    axiSlaves_2_writeOnly_aw_payload_id;
  wire       [3:0]    axiSlaves_2_writeOnly_aw_payload_region;
  wire       [7:0]    axiSlaves_2_writeOnly_aw_payload_len;
  wire       [2:0]    axiSlaves_2_writeOnly_aw_payload_size;
  wire       [1:0]    axiSlaves_2_writeOnly_aw_payload_burst;
  wire       [0:0]    axiSlaves_2_writeOnly_aw_payload_lock;
  wire       [3:0]    axiSlaves_2_writeOnly_aw_payload_cache;
  wire       [3:0]    axiSlaves_2_writeOnly_aw_payload_qos;
  wire       [2:0]    axiSlaves_2_writeOnly_aw_payload_prot;
  wire                axiSlaves_2_writeOnly_w_valid;
  wire                axiSlaves_2_writeOnly_w_ready;
  wire       [31:0]   axiSlaves_2_writeOnly_w_payload_data;
  wire       [3:0]    axiSlaves_2_writeOnly_w_payload_strb;
  wire                axiSlaves_2_writeOnly_w_payload_last;
  wire                axiSlaves_2_writeOnly_b_valid;
  wire                axiSlaves_2_writeOnly_b_ready;
  wire       [5:0]    axiSlaves_2_writeOnly_b_payload_id;
  wire       [1:0]    axiSlaves_2_writeOnly_b_payload_resp;
  wire                axiSlaves_3_readOnly_ar_valid;
  wire                axiSlaves_3_readOnly_ar_ready;
  wire       [12:0]   axiSlaves_3_readOnly_ar_payload_addr;
  wire       [5:0]    axiSlaves_3_readOnly_ar_payload_id;
  wire       [3:0]    axiSlaves_3_readOnly_ar_payload_region;
  wire       [7:0]    axiSlaves_3_readOnly_ar_payload_len;
  wire       [2:0]    axiSlaves_3_readOnly_ar_payload_size;
  wire       [1:0]    axiSlaves_3_readOnly_ar_payload_burst;
  wire       [0:0]    axiSlaves_3_readOnly_ar_payload_lock;
  wire       [3:0]    axiSlaves_3_readOnly_ar_payload_cache;
  wire       [3:0]    axiSlaves_3_readOnly_ar_payload_qos;
  wire       [2:0]    axiSlaves_3_readOnly_ar_payload_prot;
  wire                axiSlaves_3_readOnly_r_valid;
  wire                axiSlaves_3_readOnly_r_ready;
  wire       [31:0]   axiSlaves_3_readOnly_r_payload_data;
  wire       [5:0]    axiSlaves_3_readOnly_r_payload_id;
  wire       [1:0]    axiSlaves_3_readOnly_r_payload_resp;
  wire                axiSlaves_3_readOnly_r_payload_last;
  wire                axiSlaves_3_writeOnly_aw_valid;
  wire                axiSlaves_3_writeOnly_aw_ready;
  wire       [12:0]   axiSlaves_3_writeOnly_aw_payload_addr;
  wire       [5:0]    axiSlaves_3_writeOnly_aw_payload_id;
  wire       [3:0]    axiSlaves_3_writeOnly_aw_payload_region;
  wire       [7:0]    axiSlaves_3_writeOnly_aw_payload_len;
  wire       [2:0]    axiSlaves_3_writeOnly_aw_payload_size;
  wire       [1:0]    axiSlaves_3_writeOnly_aw_payload_burst;
  wire       [0:0]    axiSlaves_3_writeOnly_aw_payload_lock;
  wire       [3:0]    axiSlaves_3_writeOnly_aw_payload_cache;
  wire       [3:0]    axiSlaves_3_writeOnly_aw_payload_qos;
  wire       [2:0]    axiSlaves_3_writeOnly_aw_payload_prot;
  wire                axiSlaves_3_writeOnly_w_valid;
  wire                axiSlaves_3_writeOnly_w_ready;
  wire       [31:0]   axiSlaves_3_writeOnly_w_payload_data;
  wire       [3:0]    axiSlaves_3_writeOnly_w_payload_strb;
  wire                axiSlaves_3_writeOnly_w_payload_last;
  wire                axiSlaves_3_writeOnly_b_valid;
  wire                axiSlaves_3_writeOnly_b_ready;
  wire       [5:0]    axiSlaves_3_writeOnly_b_payload_id;
  wire       [1:0]    axiSlaves_3_writeOnly_b_payload_resp;
  wire                axiMasters_0_readOnly_ar_valid;
  wire                axiMasters_0_readOnly_ar_ready;
  wire       [12:0]   axiMasters_0_readOnly_ar_payload_addr;
  wire       [3:0]    axiMasters_0_readOnly_ar_payload_id;
  wire       [3:0]    axiMasters_0_readOnly_ar_payload_region;
  wire       [7:0]    axiMasters_0_readOnly_ar_payload_len;
  wire       [2:0]    axiMasters_0_readOnly_ar_payload_size;
  wire       [1:0]    axiMasters_0_readOnly_ar_payload_burst;
  wire       [0:0]    axiMasters_0_readOnly_ar_payload_lock;
  wire       [3:0]    axiMasters_0_readOnly_ar_payload_cache;
  wire       [3:0]    axiMasters_0_readOnly_ar_payload_qos;
  wire       [2:0]    axiMasters_0_readOnly_ar_payload_prot;
  wire                axiMasters_0_readOnly_r_valid;
  wire                axiMasters_0_readOnly_r_ready;
  wire       [31:0]   axiMasters_0_readOnly_r_payload_data;
  wire       [3:0]    axiMasters_0_readOnly_r_payload_id;
  wire       [1:0]    axiMasters_0_readOnly_r_payload_resp;
  wire                axiMasters_0_readOnly_r_payload_last;
  wire                axiMasters_0_writeOnly_aw_valid;
  wire                axiMasters_0_writeOnly_aw_ready;
  wire       [12:0]   axiMasters_0_writeOnly_aw_payload_addr;
  wire       [3:0]    axiMasters_0_writeOnly_aw_payload_id;
  wire       [3:0]    axiMasters_0_writeOnly_aw_payload_region;
  wire       [7:0]    axiMasters_0_writeOnly_aw_payload_len;
  wire       [2:0]    axiMasters_0_writeOnly_aw_payload_size;
  wire       [1:0]    axiMasters_0_writeOnly_aw_payload_burst;
  wire       [0:0]    axiMasters_0_writeOnly_aw_payload_lock;
  wire       [3:0]    axiMasters_0_writeOnly_aw_payload_cache;
  wire       [3:0]    axiMasters_0_writeOnly_aw_payload_qos;
  wire       [2:0]    axiMasters_0_writeOnly_aw_payload_prot;
  wire                axiMasters_0_writeOnly_w_valid;
  wire                axiMasters_0_writeOnly_w_ready;
  wire       [31:0]   axiMasters_0_writeOnly_w_payload_data;
  wire       [3:0]    axiMasters_0_writeOnly_w_payload_strb;
  wire                axiMasters_0_writeOnly_w_payload_last;
  wire                axiMasters_0_writeOnly_b_valid;
  wire                axiMasters_0_writeOnly_b_ready;
  wire       [3:0]    axiMasters_0_writeOnly_b_payload_id;
  wire       [1:0]    axiMasters_0_writeOnly_b_payload_resp;
  wire                axiMasters_1_readOnly_ar_valid;
  wire                axiMasters_1_readOnly_ar_ready;
  wire       [12:0]   axiMasters_1_readOnly_ar_payload_addr;
  wire       [3:0]    axiMasters_1_readOnly_ar_payload_id;
  wire       [3:0]    axiMasters_1_readOnly_ar_payload_region;
  wire       [7:0]    axiMasters_1_readOnly_ar_payload_len;
  wire       [2:0]    axiMasters_1_readOnly_ar_payload_size;
  wire       [1:0]    axiMasters_1_readOnly_ar_payload_burst;
  wire       [0:0]    axiMasters_1_readOnly_ar_payload_lock;
  wire       [3:0]    axiMasters_1_readOnly_ar_payload_cache;
  wire       [3:0]    axiMasters_1_readOnly_ar_payload_qos;
  wire       [2:0]    axiMasters_1_readOnly_ar_payload_prot;
  wire                axiMasters_1_readOnly_r_valid;
  wire                axiMasters_1_readOnly_r_ready;
  wire       [31:0]   axiMasters_1_readOnly_r_payload_data;
  wire       [3:0]    axiMasters_1_readOnly_r_payload_id;
  wire       [1:0]    axiMasters_1_readOnly_r_payload_resp;
  wire                axiMasters_1_readOnly_r_payload_last;
  wire                axiMasters_1_writeOnly_aw_valid;
  wire                axiMasters_1_writeOnly_aw_ready;
  wire       [12:0]   axiMasters_1_writeOnly_aw_payload_addr;
  wire       [3:0]    axiMasters_1_writeOnly_aw_payload_id;
  wire       [3:0]    axiMasters_1_writeOnly_aw_payload_region;
  wire       [7:0]    axiMasters_1_writeOnly_aw_payload_len;
  wire       [2:0]    axiMasters_1_writeOnly_aw_payload_size;
  wire       [1:0]    axiMasters_1_writeOnly_aw_payload_burst;
  wire       [0:0]    axiMasters_1_writeOnly_aw_payload_lock;
  wire       [3:0]    axiMasters_1_writeOnly_aw_payload_cache;
  wire       [3:0]    axiMasters_1_writeOnly_aw_payload_qos;
  wire       [2:0]    axiMasters_1_writeOnly_aw_payload_prot;
  wire                axiMasters_1_writeOnly_w_valid;
  wire                axiMasters_1_writeOnly_w_ready;
  wire       [31:0]   axiMasters_1_writeOnly_w_payload_data;
  wire       [3:0]    axiMasters_1_writeOnly_w_payload_strb;
  wire                axiMasters_1_writeOnly_w_payload_last;
  wire                axiMasters_1_writeOnly_b_valid;
  wire                axiMasters_1_writeOnly_b_ready;
  wire       [3:0]    axiMasters_1_writeOnly_b_payload_id;
  wire       [1:0]    axiMasters_1_writeOnly_b_payload_resp;
  wire                axiMasters_2_readOnly_ar_valid;
  wire                axiMasters_2_readOnly_ar_ready;
  wire       [12:0]   axiMasters_2_readOnly_ar_payload_addr;
  wire       [3:0]    axiMasters_2_readOnly_ar_payload_id;
  wire       [3:0]    axiMasters_2_readOnly_ar_payload_region;
  wire       [7:0]    axiMasters_2_readOnly_ar_payload_len;
  wire       [2:0]    axiMasters_2_readOnly_ar_payload_size;
  wire       [1:0]    axiMasters_2_readOnly_ar_payload_burst;
  wire       [0:0]    axiMasters_2_readOnly_ar_payload_lock;
  wire       [3:0]    axiMasters_2_readOnly_ar_payload_cache;
  wire       [3:0]    axiMasters_2_readOnly_ar_payload_qos;
  wire       [2:0]    axiMasters_2_readOnly_ar_payload_prot;
  wire                axiMasters_2_readOnly_r_valid;
  wire                axiMasters_2_readOnly_r_ready;
  wire       [31:0]   axiMasters_2_readOnly_r_payload_data;
  wire       [3:0]    axiMasters_2_readOnly_r_payload_id;
  wire       [1:0]    axiMasters_2_readOnly_r_payload_resp;
  wire                axiMasters_2_readOnly_r_payload_last;
  wire                axiMasters_2_writeOnly_aw_valid;
  wire                axiMasters_2_writeOnly_aw_ready;
  wire       [12:0]   axiMasters_2_writeOnly_aw_payload_addr;
  wire       [3:0]    axiMasters_2_writeOnly_aw_payload_id;
  wire       [3:0]    axiMasters_2_writeOnly_aw_payload_region;
  wire       [7:0]    axiMasters_2_writeOnly_aw_payload_len;
  wire       [2:0]    axiMasters_2_writeOnly_aw_payload_size;
  wire       [1:0]    axiMasters_2_writeOnly_aw_payload_burst;
  wire       [0:0]    axiMasters_2_writeOnly_aw_payload_lock;
  wire       [3:0]    axiMasters_2_writeOnly_aw_payload_cache;
  wire       [3:0]    axiMasters_2_writeOnly_aw_payload_qos;
  wire       [2:0]    axiMasters_2_writeOnly_aw_payload_prot;
  wire                axiMasters_2_writeOnly_w_valid;
  wire                axiMasters_2_writeOnly_w_ready;
  wire       [31:0]   axiMasters_2_writeOnly_w_payload_data;
  wire       [3:0]    axiMasters_2_writeOnly_w_payload_strb;
  wire                axiMasters_2_writeOnly_w_payload_last;
  wire                axiMasters_2_writeOnly_b_valid;
  wire                axiMasters_2_writeOnly_b_ready;
  wire       [3:0]    axiMasters_2_writeOnly_b_payload_id;
  wire       [1:0]    axiMasters_2_writeOnly_b_payload_resp;
  wire                _zz_1;
  wire                _zz_2;
  reg                 _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  reg                 _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  reg                 _zz_9;
  wire                _zz_10;
  wire                _zz_11;
  reg                 _zz_12;
  wire                _zz_13;
  wire                _zz_14;
  reg                 _zz_15;
  wire                _zz_16;
  wire                _zz_17;
  reg                 _zz_18;
  wire                _zz_19;
  wire                _zz_20;
  reg                 _zz_21;
  wire                _zz_22;
  wire                _zz_23;
  reg                 _zz_24;
  wire                _zz_25;
  wire                _zz_26;
  reg                 _zz_27;
  wire                _zz_28;
  wire                _zz_29;
  reg                 _zz_30;
  wire                _zz_31;
  wire                _zz_32;
  reg                 _zz_33;
  wire                _zz_34;
  wire                _zz_35;
  reg                 _zz_36;
  wire                _zz_37;
  wire                _zz_38;
  reg                 _zz_39;
  wire                _zz_40;
  wire                _zz_41;
  reg                 _zz_42;
  wire                _zz_43;
  wire                _zz_44;
  reg                 _zz_45;
  wire                _zz_46;
  wire                _zz_47;
  reg                 _zz_48;
  wire                _zz_49;
  wire                _zz_50;
  reg                 _zz_51;
  wire                _zz_52;
  wire                _zz_53;
  reg                 _zz_54;

  Axi4ReadOnlyDecoder axiMasters_0_readOnly_decoder (
    .io_input_ar_valid                 (axiMasters_0_readOnly_ar_valid                                     ), //i
    .io_input_ar_ready                 (axiMasters_0_readOnly_decoder_io_input_ar_ready                    ), //o
    .io_input_ar_payload_addr          (axiMasters_0_readOnly_ar_payload_addr[12:0]                        ), //i
    .io_input_ar_payload_id            (axiMasters_0_readOnly_ar_payload_id[3:0]                           ), //i
    .io_input_ar_payload_region        (axiMasters_0_readOnly_ar_payload_region[3:0]                       ), //i
    .io_input_ar_payload_len           (axiMasters_0_readOnly_ar_payload_len[7:0]                          ), //i
    .io_input_ar_payload_size          (axiMasters_0_readOnly_ar_payload_size[2:0]                         ), //i
    .io_input_ar_payload_burst         (axiMasters_0_readOnly_ar_payload_burst[1:0]                        ), //i
    .io_input_ar_payload_lock          (axiMasters_0_readOnly_ar_payload_lock                              ), //i
    .io_input_ar_payload_cache         (axiMasters_0_readOnly_ar_payload_cache[3:0]                        ), //i
    .io_input_ar_payload_qos           (axiMasters_0_readOnly_ar_payload_qos[3:0]                          ), //i
    .io_input_ar_payload_prot          (axiMasters_0_readOnly_ar_payload_prot[2:0]                         ), //i
    .io_input_r_valid                  (axiMasters_0_readOnly_decoder_io_input_r_valid                     ), //o
    .io_input_r_ready                  (axiMasters_0_readOnly_r_ready                                      ), //i
    .io_input_r_payload_data           (axiMasters_0_readOnly_decoder_io_input_r_payload_data[31:0]        ), //o
    .io_input_r_payload_id             (axiMasters_0_readOnly_decoder_io_input_r_payload_id[3:0]           ), //o
    .io_input_r_payload_resp           (axiMasters_0_readOnly_decoder_io_input_r_payload_resp[1:0]         ), //o
    .io_input_r_payload_last           (axiMasters_0_readOnly_decoder_io_input_r_payload_last              ), //o
    .io_outputs_0_ar_valid             (axiMasters_0_readOnly_decoder_io_outputs_0_ar_valid                ), //o
    .io_outputs_0_ar_ready             (_zz_55                                                             ), //i
    .io_outputs_0_ar_payload_addr      (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_addr[12:0]   ), //o
    .io_outputs_0_ar_payload_id        (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_id[3:0]      ), //o
    .io_outputs_0_ar_payload_region    (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_region[3:0]  ), //o
    .io_outputs_0_ar_payload_len       (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_len[7:0]     ), //o
    .io_outputs_0_ar_payload_size      (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_size[2:0]    ), //o
    .io_outputs_0_ar_payload_burst     (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_burst[1:0]   ), //o
    .io_outputs_0_ar_payload_lock      (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_lock         ), //o
    .io_outputs_0_ar_payload_cache     (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_cache[3:0]   ), //o
    .io_outputs_0_ar_payload_qos       (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_qos[3:0]     ), //o
    .io_outputs_0_ar_payload_prot      (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_prot[2:0]    ), //o
    .io_outputs_0_r_valid              (axiSlaves_1_readOnly_arbiter_io_inputs_0_r_valid                   ), //i
    .io_outputs_0_r_ready              (axiMasters_0_readOnly_decoder_io_outputs_0_r_ready                 ), //o
    .io_outputs_0_r_payload_data       (axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_data[31:0]      ), //i
    .io_outputs_0_r_payload_id         (_zz_56[3:0]                                                        ), //i
    .io_outputs_0_r_payload_resp       (axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_resp[1:0]       ), //i
    .io_outputs_0_r_payload_last       (axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_last            ), //i
    .io_outputs_1_ar_valid             (axiMasters_0_readOnly_decoder_io_outputs_1_ar_valid                ), //o
    .io_outputs_1_ar_ready             (_zz_57                                                             ), //i
    .io_outputs_1_ar_payload_addr      (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_addr[12:0]   ), //o
    .io_outputs_1_ar_payload_id        (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_id[3:0]      ), //o
    .io_outputs_1_ar_payload_region    (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_region[3:0]  ), //o
    .io_outputs_1_ar_payload_len       (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_len[7:0]     ), //o
    .io_outputs_1_ar_payload_size      (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_size[2:0]    ), //o
    .io_outputs_1_ar_payload_burst     (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_burst[1:0]   ), //o
    .io_outputs_1_ar_payload_lock      (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_lock         ), //o
    .io_outputs_1_ar_payload_cache     (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_cache[3:0]   ), //o
    .io_outputs_1_ar_payload_qos       (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_qos[3:0]     ), //o
    .io_outputs_1_ar_payload_prot      (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_prot[2:0]    ), //o
    .io_outputs_1_r_valid              (axiSlaves_2_readOnly_arbiter_io_inputs_0_r_valid                   ), //i
    .io_outputs_1_r_ready              (axiMasters_0_readOnly_decoder_io_outputs_1_r_ready                 ), //o
    .io_outputs_1_r_payload_data       (axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_data[31:0]      ), //i
    .io_outputs_1_r_payload_id         (_zz_58[3:0]                                                        ), //i
    .io_outputs_1_r_payload_resp       (axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_resp[1:0]       ), //i
    .io_outputs_1_r_payload_last       (axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_last            ), //i
    .io_outputs_2_ar_valid             (axiMasters_0_readOnly_decoder_io_outputs_2_ar_valid                ), //o
    .io_outputs_2_ar_ready             (_zz_59                                                             ), //i
    .io_outputs_2_ar_payload_addr      (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_addr[12:0]   ), //o
    .io_outputs_2_ar_payload_id        (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_id[3:0]      ), //o
    .io_outputs_2_ar_payload_region    (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_region[3:0]  ), //o
    .io_outputs_2_ar_payload_len       (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_len[7:0]     ), //o
    .io_outputs_2_ar_payload_size      (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_size[2:0]    ), //o
    .io_outputs_2_ar_payload_burst     (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_burst[1:0]   ), //o
    .io_outputs_2_ar_payload_lock      (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_lock         ), //o
    .io_outputs_2_ar_payload_cache     (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_cache[3:0]   ), //o
    .io_outputs_2_ar_payload_qos       (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_qos[3:0]     ), //o
    .io_outputs_2_ar_payload_prot      (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_prot[2:0]    ), //o
    .io_outputs_2_r_valid              (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_valid                   ), //i
    .io_outputs_2_r_ready              (axiMasters_0_readOnly_decoder_io_outputs_2_r_ready                 ), //o
    .io_outputs_2_r_payload_data       (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_data[31:0]      ), //i
    .io_outputs_2_r_payload_id         (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_id[3:0]         ), //i
    .io_outputs_2_r_payload_resp       (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_resp[1:0]       ), //i
    .io_outputs_2_r_payload_last       (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_last            ), //i
    .clk                               (clk                                                                ), //i
    .reset                             (reset                                                              )  //i
  );
  Axi4WriteOnlyDecoder axiMasters_0_writeOnly_decoder (
    .io_input_aw_valid                 (axiMasters_0_writeOnly_aw_valid                                     ), //i
    .io_input_aw_ready                 (axiMasters_0_writeOnly_decoder_io_input_aw_ready                    ), //o
    .io_input_aw_payload_addr          (axiMasters_0_writeOnly_aw_payload_addr[12:0]                        ), //i
    .io_input_aw_payload_id            (axiMasters_0_writeOnly_aw_payload_id[3:0]                           ), //i
    .io_input_aw_payload_region        (axiMasters_0_writeOnly_aw_payload_region[3:0]                       ), //i
    .io_input_aw_payload_len           (axiMasters_0_writeOnly_aw_payload_len[7:0]                          ), //i
    .io_input_aw_payload_size          (axiMasters_0_writeOnly_aw_payload_size[2:0]                         ), //i
    .io_input_aw_payload_burst         (axiMasters_0_writeOnly_aw_payload_burst[1:0]                        ), //i
    .io_input_aw_payload_lock          (axiMasters_0_writeOnly_aw_payload_lock                              ), //i
    .io_input_aw_payload_cache         (axiMasters_0_writeOnly_aw_payload_cache[3:0]                        ), //i
    .io_input_aw_payload_qos           (axiMasters_0_writeOnly_aw_payload_qos[3:0]                          ), //i
    .io_input_aw_payload_prot          (axiMasters_0_writeOnly_aw_payload_prot[2:0]                         ), //i
    .io_input_w_valid                  (axiMasters_0_writeOnly_w_valid                                      ), //i
    .io_input_w_ready                  (axiMasters_0_writeOnly_decoder_io_input_w_ready                     ), //o
    .io_input_w_payload_data           (axiMasters_0_writeOnly_w_payload_data[31:0]                         ), //i
    .io_input_w_payload_strb           (axiMasters_0_writeOnly_w_payload_strb[3:0]                          ), //i
    .io_input_w_payload_last           (axiMasters_0_writeOnly_w_payload_last                               ), //i
    .io_input_b_valid                  (axiMasters_0_writeOnly_decoder_io_input_b_valid                     ), //o
    .io_input_b_ready                  (axiMasters_0_writeOnly_b_ready                                      ), //i
    .io_input_b_payload_id             (axiMasters_0_writeOnly_decoder_io_input_b_payload_id[3:0]           ), //o
    .io_input_b_payload_resp           (axiMasters_0_writeOnly_decoder_io_input_b_payload_resp[1:0]         ), //o
    .io_outputs_0_aw_valid             (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_valid                ), //o
    .io_outputs_0_aw_ready             (_zz_60                                                              ), //i
    .io_outputs_0_aw_payload_addr      (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_addr[12:0]   ), //o
    .io_outputs_0_aw_payload_id        (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_id[3:0]      ), //o
    .io_outputs_0_aw_payload_region    (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_region[3:0]  ), //o
    .io_outputs_0_aw_payload_len       (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_len[7:0]     ), //o
    .io_outputs_0_aw_payload_size      (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_size[2:0]    ), //o
    .io_outputs_0_aw_payload_burst     (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_burst[1:0]   ), //o
    .io_outputs_0_aw_payload_lock      (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_lock         ), //o
    .io_outputs_0_aw_payload_cache     (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_cache[3:0]   ), //o
    .io_outputs_0_aw_payload_qos       (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_qos[3:0]     ), //o
    .io_outputs_0_aw_payload_prot      (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_prot[2:0]    ), //o
    .io_outputs_0_w_valid              (axiMasters_0_writeOnly_decoder_io_outputs_0_w_valid                 ), //o
    .io_outputs_0_w_ready              (axiSlaves_1_writeOnly_arbiter_io_inputs_0_w_ready                   ), //i
    .io_outputs_0_w_payload_data       (axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_data[31:0]    ), //o
    .io_outputs_0_w_payload_strb       (axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_strb[3:0]     ), //o
    .io_outputs_0_w_payload_last       (axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_last          ), //o
    .io_outputs_0_b_valid              (axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_valid                   ), //i
    .io_outputs_0_b_ready              (axiMasters_0_writeOnly_decoder_io_outputs_0_b_ready                 ), //o
    .io_outputs_0_b_payload_id         (_zz_61[3:0]                                                         ), //i
    .io_outputs_0_b_payload_resp       (axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_resp[1:0]       ), //i
    .io_outputs_1_aw_valid             (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_valid                ), //o
    .io_outputs_1_aw_ready             (_zz_62                                                              ), //i
    .io_outputs_1_aw_payload_addr      (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_addr[12:0]   ), //o
    .io_outputs_1_aw_payload_id        (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_id[3:0]      ), //o
    .io_outputs_1_aw_payload_region    (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_region[3:0]  ), //o
    .io_outputs_1_aw_payload_len       (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_len[7:0]     ), //o
    .io_outputs_1_aw_payload_size      (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_size[2:0]    ), //o
    .io_outputs_1_aw_payload_burst     (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_burst[1:0]   ), //o
    .io_outputs_1_aw_payload_lock      (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_lock         ), //o
    .io_outputs_1_aw_payload_cache     (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_cache[3:0]   ), //o
    .io_outputs_1_aw_payload_qos       (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_qos[3:0]     ), //o
    .io_outputs_1_aw_payload_prot      (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_prot[2:0]    ), //o
    .io_outputs_1_w_valid              (axiMasters_0_writeOnly_decoder_io_outputs_1_w_valid                 ), //o
    .io_outputs_1_w_ready              (axiSlaves_2_writeOnly_arbiter_io_inputs_0_w_ready                   ), //i
    .io_outputs_1_w_payload_data       (axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_data[31:0]    ), //o
    .io_outputs_1_w_payload_strb       (axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_strb[3:0]     ), //o
    .io_outputs_1_w_payload_last       (axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_last          ), //o
    .io_outputs_1_b_valid              (axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_valid                   ), //i
    .io_outputs_1_b_ready              (axiMasters_0_writeOnly_decoder_io_outputs_1_b_ready                 ), //o
    .io_outputs_1_b_payload_id         (_zz_63[3:0]                                                         ), //i
    .io_outputs_1_b_payload_resp       (axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_resp[1:0]       ), //i
    .io_outputs_2_aw_valid             (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_valid                ), //o
    .io_outputs_2_aw_ready             (_zz_64                                                              ), //i
    .io_outputs_2_aw_payload_addr      (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_addr[12:0]   ), //o
    .io_outputs_2_aw_payload_id        (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_id[3:0]      ), //o
    .io_outputs_2_aw_payload_region    (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_region[3:0]  ), //o
    .io_outputs_2_aw_payload_len       (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_len[7:0]     ), //o
    .io_outputs_2_aw_payload_size      (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_size[2:0]    ), //o
    .io_outputs_2_aw_payload_burst     (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_burst[1:0]   ), //o
    .io_outputs_2_aw_payload_lock      (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_lock         ), //o
    .io_outputs_2_aw_payload_cache     (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_cache[3:0]   ), //o
    .io_outputs_2_aw_payload_qos       (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_qos[3:0]     ), //o
    .io_outputs_2_aw_payload_prot      (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_prot[2:0]    ), //o
    .io_outputs_2_w_valid              (axiMasters_0_writeOnly_decoder_io_outputs_2_w_valid                 ), //o
    .io_outputs_2_w_ready              (axiSlaves_3_writeOnly_arbiter_io_inputs_0_w_ready                   ), //i
    .io_outputs_2_w_payload_data       (axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_data[31:0]    ), //o
    .io_outputs_2_w_payload_strb       (axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_strb[3:0]     ), //o
    .io_outputs_2_w_payload_last       (axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_last          ), //o
    .io_outputs_2_b_valid              (axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_valid                   ), //i
    .io_outputs_2_b_ready              (axiMasters_0_writeOnly_decoder_io_outputs_2_b_ready                 ), //o
    .io_outputs_2_b_payload_id         (axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_id[3:0]         ), //i
    .io_outputs_2_b_payload_resp       (axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_resp[1:0]       ), //i
    .clk                               (clk                                                                 ), //i
    .reset                             (reset                                                               )  //i
  );
  Axi4ReadOnlyDecoder_1 axiMasters_1_readOnly_decoder (
    .io_input_ar_valid                 (axiMasters_1_readOnly_ar_valid                                     ), //i
    .io_input_ar_ready                 (axiMasters_1_readOnly_decoder_io_input_ar_ready                    ), //o
    .io_input_ar_payload_addr          (axiMasters_1_readOnly_ar_payload_addr[12:0]                        ), //i
    .io_input_ar_payload_id            (axiMasters_1_readOnly_ar_payload_id[3:0]                           ), //i
    .io_input_ar_payload_region        (axiMasters_1_readOnly_ar_payload_region[3:0]                       ), //i
    .io_input_ar_payload_len           (axiMasters_1_readOnly_ar_payload_len[7:0]                          ), //i
    .io_input_ar_payload_size          (axiMasters_1_readOnly_ar_payload_size[2:0]                         ), //i
    .io_input_ar_payload_burst         (axiMasters_1_readOnly_ar_payload_burst[1:0]                        ), //i
    .io_input_ar_payload_lock          (axiMasters_1_readOnly_ar_payload_lock                              ), //i
    .io_input_ar_payload_cache         (axiMasters_1_readOnly_ar_payload_cache[3:0]                        ), //i
    .io_input_ar_payload_qos           (axiMasters_1_readOnly_ar_payload_qos[3:0]                          ), //i
    .io_input_ar_payload_prot          (axiMasters_1_readOnly_ar_payload_prot[2:0]                         ), //i
    .io_input_r_valid                  (axiMasters_1_readOnly_decoder_io_input_r_valid                     ), //o
    .io_input_r_ready                  (axiMasters_1_readOnly_r_ready                                      ), //i
    .io_input_r_payload_data           (axiMasters_1_readOnly_decoder_io_input_r_payload_data[31:0]        ), //o
    .io_input_r_payload_id             (axiMasters_1_readOnly_decoder_io_input_r_payload_id[3:0]           ), //o
    .io_input_r_payload_resp           (axiMasters_1_readOnly_decoder_io_input_r_payload_resp[1:0]         ), //o
    .io_input_r_payload_last           (axiMasters_1_readOnly_decoder_io_input_r_payload_last              ), //o
    .io_outputs_0_ar_valid             (axiMasters_1_readOnly_decoder_io_outputs_0_ar_valid                ), //o
    .io_outputs_0_ar_ready             (_zz_65                                                             ), //i
    .io_outputs_0_ar_payload_addr      (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_addr[12:0]   ), //o
    .io_outputs_0_ar_payload_id        (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_id[3:0]      ), //o
    .io_outputs_0_ar_payload_region    (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_region[3:0]  ), //o
    .io_outputs_0_ar_payload_len       (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_len[7:0]     ), //o
    .io_outputs_0_ar_payload_size      (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_size[2:0]    ), //o
    .io_outputs_0_ar_payload_burst     (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_burst[1:0]   ), //o
    .io_outputs_0_ar_payload_lock      (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_lock         ), //o
    .io_outputs_0_ar_payload_cache     (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_cache[3:0]   ), //o
    .io_outputs_0_ar_payload_qos       (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_qos[3:0]     ), //o
    .io_outputs_0_ar_payload_prot      (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_prot[2:0]    ), //o
    .io_outputs_0_r_valid              (axiSlaves_0_readOnly_arbiter_io_inputs_0_r_valid                   ), //i
    .io_outputs_0_r_ready              (axiMasters_1_readOnly_decoder_io_outputs_0_r_ready                 ), //o
    .io_outputs_0_r_payload_data       (axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_data[31:0]      ), //i
    .io_outputs_0_r_payload_id         (_zz_66[3:0]                                                        ), //i
    .io_outputs_0_r_payload_resp       (axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_resp[1:0]       ), //i
    .io_outputs_0_r_payload_last       (axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_last            ), //i
    .io_outputs_1_ar_valid             (axiMasters_1_readOnly_decoder_io_outputs_1_ar_valid                ), //o
    .io_outputs_1_ar_ready             (_zz_67                                                             ), //i
    .io_outputs_1_ar_payload_addr      (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_addr[12:0]   ), //o
    .io_outputs_1_ar_payload_id        (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_id[3:0]      ), //o
    .io_outputs_1_ar_payload_region    (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_region[3:0]  ), //o
    .io_outputs_1_ar_payload_len       (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_len[7:0]     ), //o
    .io_outputs_1_ar_payload_size      (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_size[2:0]    ), //o
    .io_outputs_1_ar_payload_burst     (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_burst[1:0]   ), //o
    .io_outputs_1_ar_payload_lock      (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_lock         ), //o
    .io_outputs_1_ar_payload_cache     (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_cache[3:0]   ), //o
    .io_outputs_1_ar_payload_qos       (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_qos[3:0]     ), //o
    .io_outputs_1_ar_payload_prot      (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_prot[2:0]    ), //o
    .io_outputs_1_r_valid              (axiSlaves_2_readOnly_arbiter_io_inputs_1_r_valid                   ), //i
    .io_outputs_1_r_ready              (axiMasters_1_readOnly_decoder_io_outputs_1_r_ready                 ), //o
    .io_outputs_1_r_payload_data       (axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_data[31:0]      ), //i
    .io_outputs_1_r_payload_id         (_zz_68[3:0]                                                        ), //i
    .io_outputs_1_r_payload_resp       (axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_resp[1:0]       ), //i
    .io_outputs_1_r_payload_last       (axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_last            ), //i
    .io_outputs_2_ar_valid             (axiMasters_1_readOnly_decoder_io_outputs_2_ar_valid                ), //o
    .io_outputs_2_ar_ready             (_zz_69                                                             ), //i
    .io_outputs_2_ar_payload_addr      (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_addr[12:0]   ), //o
    .io_outputs_2_ar_payload_id        (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_id[3:0]      ), //o
    .io_outputs_2_ar_payload_region    (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_region[3:0]  ), //o
    .io_outputs_2_ar_payload_len       (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_len[7:0]     ), //o
    .io_outputs_2_ar_payload_size      (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_size[2:0]    ), //o
    .io_outputs_2_ar_payload_burst     (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_burst[1:0]   ), //o
    .io_outputs_2_ar_payload_lock      (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_lock         ), //o
    .io_outputs_2_ar_payload_cache     (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_cache[3:0]   ), //o
    .io_outputs_2_ar_payload_qos       (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_qos[3:0]     ), //o
    .io_outputs_2_ar_payload_prot      (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_prot[2:0]    ), //o
    .io_outputs_2_r_valid              (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_valid                   ), //i
    .io_outputs_2_r_ready              (axiMasters_1_readOnly_decoder_io_outputs_2_r_ready                 ), //o
    .io_outputs_2_r_payload_data       (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_data[31:0]      ), //i
    .io_outputs_2_r_payload_id         (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_id[3:0]         ), //i
    .io_outputs_2_r_payload_resp       (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_resp[1:0]       ), //i
    .io_outputs_2_r_payload_last       (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_last            ), //i
    .clk                               (clk                                                                ), //i
    .reset                             (reset                                                              )  //i
  );
  Axi4WriteOnlyDecoder_1 axiMasters_1_writeOnly_decoder (
    .io_input_aw_valid                 (axiMasters_1_writeOnly_aw_valid                                     ), //i
    .io_input_aw_ready                 (axiMasters_1_writeOnly_decoder_io_input_aw_ready                    ), //o
    .io_input_aw_payload_addr          (axiMasters_1_writeOnly_aw_payload_addr[12:0]                        ), //i
    .io_input_aw_payload_id            (axiMasters_1_writeOnly_aw_payload_id[3:0]                           ), //i
    .io_input_aw_payload_region        (axiMasters_1_writeOnly_aw_payload_region[3:0]                       ), //i
    .io_input_aw_payload_len           (axiMasters_1_writeOnly_aw_payload_len[7:0]                          ), //i
    .io_input_aw_payload_size          (axiMasters_1_writeOnly_aw_payload_size[2:0]                         ), //i
    .io_input_aw_payload_burst         (axiMasters_1_writeOnly_aw_payload_burst[1:0]                        ), //i
    .io_input_aw_payload_lock          (axiMasters_1_writeOnly_aw_payload_lock                              ), //i
    .io_input_aw_payload_cache         (axiMasters_1_writeOnly_aw_payload_cache[3:0]                        ), //i
    .io_input_aw_payload_qos           (axiMasters_1_writeOnly_aw_payload_qos[3:0]                          ), //i
    .io_input_aw_payload_prot          (axiMasters_1_writeOnly_aw_payload_prot[2:0]                         ), //i
    .io_input_w_valid                  (axiMasters_1_writeOnly_w_valid                                      ), //i
    .io_input_w_ready                  (axiMasters_1_writeOnly_decoder_io_input_w_ready                     ), //o
    .io_input_w_payload_data           (axiMasters_1_writeOnly_w_payload_data[31:0]                         ), //i
    .io_input_w_payload_strb           (axiMasters_1_writeOnly_w_payload_strb[3:0]                          ), //i
    .io_input_w_payload_last           (axiMasters_1_writeOnly_w_payload_last                               ), //i
    .io_input_b_valid                  (axiMasters_1_writeOnly_decoder_io_input_b_valid                     ), //o
    .io_input_b_ready                  (axiMasters_1_writeOnly_b_ready                                      ), //i
    .io_input_b_payload_id             (axiMasters_1_writeOnly_decoder_io_input_b_payload_id[3:0]           ), //o
    .io_input_b_payload_resp           (axiMasters_1_writeOnly_decoder_io_input_b_payload_resp[1:0]         ), //o
    .io_outputs_0_aw_valid             (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_valid                ), //o
    .io_outputs_0_aw_ready             (_zz_70                                                              ), //i
    .io_outputs_0_aw_payload_addr      (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_addr[12:0]   ), //o
    .io_outputs_0_aw_payload_id        (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_id[3:0]      ), //o
    .io_outputs_0_aw_payload_region    (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_region[3:0]  ), //o
    .io_outputs_0_aw_payload_len       (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_len[7:0]     ), //o
    .io_outputs_0_aw_payload_size      (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_size[2:0]    ), //o
    .io_outputs_0_aw_payload_burst     (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_burst[1:0]   ), //o
    .io_outputs_0_aw_payload_lock      (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_lock         ), //o
    .io_outputs_0_aw_payload_cache     (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_cache[3:0]   ), //o
    .io_outputs_0_aw_payload_qos       (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_qos[3:0]     ), //o
    .io_outputs_0_aw_payload_prot      (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_prot[2:0]    ), //o
    .io_outputs_0_w_valid              (axiMasters_1_writeOnly_decoder_io_outputs_0_w_valid                 ), //o
    .io_outputs_0_w_ready              (axiSlaves_0_writeOnly_arbiter_io_inputs_0_w_ready                   ), //i
    .io_outputs_0_w_payload_data       (axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_data[31:0]    ), //o
    .io_outputs_0_w_payload_strb       (axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_strb[3:0]     ), //o
    .io_outputs_0_w_payload_last       (axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_last          ), //o
    .io_outputs_0_b_valid              (axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_valid                   ), //i
    .io_outputs_0_b_ready              (axiMasters_1_writeOnly_decoder_io_outputs_0_b_ready                 ), //o
    .io_outputs_0_b_payload_id         (_zz_71[3:0]                                                         ), //i
    .io_outputs_0_b_payload_resp       (axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_resp[1:0]       ), //i
    .io_outputs_1_aw_valid             (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_valid                ), //o
    .io_outputs_1_aw_ready             (_zz_72                                                              ), //i
    .io_outputs_1_aw_payload_addr      (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_addr[12:0]   ), //o
    .io_outputs_1_aw_payload_id        (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_id[3:0]      ), //o
    .io_outputs_1_aw_payload_region    (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_region[3:0]  ), //o
    .io_outputs_1_aw_payload_len       (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_len[7:0]     ), //o
    .io_outputs_1_aw_payload_size      (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_size[2:0]    ), //o
    .io_outputs_1_aw_payload_burst     (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_burst[1:0]   ), //o
    .io_outputs_1_aw_payload_lock      (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_lock         ), //o
    .io_outputs_1_aw_payload_cache     (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_cache[3:0]   ), //o
    .io_outputs_1_aw_payload_qos       (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_qos[3:0]     ), //o
    .io_outputs_1_aw_payload_prot      (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_prot[2:0]    ), //o
    .io_outputs_1_w_valid              (axiMasters_1_writeOnly_decoder_io_outputs_1_w_valid                 ), //o
    .io_outputs_1_w_ready              (axiSlaves_2_writeOnly_arbiter_io_inputs_1_w_ready                   ), //i
    .io_outputs_1_w_payload_data       (axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_data[31:0]    ), //o
    .io_outputs_1_w_payload_strb       (axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_strb[3:0]     ), //o
    .io_outputs_1_w_payload_last       (axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_last          ), //o
    .io_outputs_1_b_valid              (axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_valid                   ), //i
    .io_outputs_1_b_ready              (axiMasters_1_writeOnly_decoder_io_outputs_1_b_ready                 ), //o
    .io_outputs_1_b_payload_id         (_zz_73[3:0]                                                         ), //i
    .io_outputs_1_b_payload_resp       (axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_resp[1:0]       ), //i
    .io_outputs_2_aw_valid             (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_valid                ), //o
    .io_outputs_2_aw_ready             (_zz_74                                                              ), //i
    .io_outputs_2_aw_payload_addr      (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_addr[12:0]   ), //o
    .io_outputs_2_aw_payload_id        (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_id[3:0]      ), //o
    .io_outputs_2_aw_payload_region    (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_region[3:0]  ), //o
    .io_outputs_2_aw_payload_len       (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_len[7:0]     ), //o
    .io_outputs_2_aw_payload_size      (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_size[2:0]    ), //o
    .io_outputs_2_aw_payload_burst     (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_burst[1:0]   ), //o
    .io_outputs_2_aw_payload_lock      (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_lock         ), //o
    .io_outputs_2_aw_payload_cache     (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_cache[3:0]   ), //o
    .io_outputs_2_aw_payload_qos       (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_qos[3:0]     ), //o
    .io_outputs_2_aw_payload_prot      (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_prot[2:0]    ), //o
    .io_outputs_2_w_valid              (axiMasters_1_writeOnly_decoder_io_outputs_2_w_valid                 ), //o
    .io_outputs_2_w_ready              (axiSlaves_3_writeOnly_arbiter_io_inputs_1_w_ready                   ), //i
    .io_outputs_2_w_payload_data       (axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_data[31:0]    ), //o
    .io_outputs_2_w_payload_strb       (axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_strb[3:0]     ), //o
    .io_outputs_2_w_payload_last       (axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_last          ), //o
    .io_outputs_2_b_valid              (axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_valid                   ), //i
    .io_outputs_2_b_ready              (axiMasters_1_writeOnly_decoder_io_outputs_2_b_ready                 ), //o
    .io_outputs_2_b_payload_id         (axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_id[3:0]         ), //i
    .io_outputs_2_b_payload_resp       (axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_resp[1:0]       ), //i
    .clk                               (clk                                                                 ), //i
    .reset                             (reset                                                               )  //i
  );
  Axi4ReadOnlyDecoder_2 axiMasters_2_readOnly_decoder (
    .io_input_ar_valid                 (axiMasters_2_readOnly_ar_valid                                     ), //i
    .io_input_ar_ready                 (axiMasters_2_readOnly_decoder_io_input_ar_ready                    ), //o
    .io_input_ar_payload_addr          (axiMasters_2_readOnly_ar_payload_addr[12:0]                        ), //i
    .io_input_ar_payload_id            (axiMasters_2_readOnly_ar_payload_id[3:0]                           ), //i
    .io_input_ar_payload_region        (axiMasters_2_readOnly_ar_payload_region[3:0]                       ), //i
    .io_input_ar_payload_len           (axiMasters_2_readOnly_ar_payload_len[7:0]                          ), //i
    .io_input_ar_payload_size          (axiMasters_2_readOnly_ar_payload_size[2:0]                         ), //i
    .io_input_ar_payload_burst         (axiMasters_2_readOnly_ar_payload_burst[1:0]                        ), //i
    .io_input_ar_payload_lock          (axiMasters_2_readOnly_ar_payload_lock                              ), //i
    .io_input_ar_payload_cache         (axiMasters_2_readOnly_ar_payload_cache[3:0]                        ), //i
    .io_input_ar_payload_qos           (axiMasters_2_readOnly_ar_payload_qos[3:0]                          ), //i
    .io_input_ar_payload_prot          (axiMasters_2_readOnly_ar_payload_prot[2:0]                         ), //i
    .io_input_r_valid                  (axiMasters_2_readOnly_decoder_io_input_r_valid                     ), //o
    .io_input_r_ready                  (axiMasters_2_readOnly_r_ready                                      ), //i
    .io_input_r_payload_data           (axiMasters_2_readOnly_decoder_io_input_r_payload_data[31:0]        ), //o
    .io_input_r_payload_id             (axiMasters_2_readOnly_decoder_io_input_r_payload_id[3:0]           ), //o
    .io_input_r_payload_resp           (axiMasters_2_readOnly_decoder_io_input_r_payload_resp[1:0]         ), //o
    .io_input_r_payload_last           (axiMasters_2_readOnly_decoder_io_input_r_payload_last              ), //o
    .io_outputs_0_ar_valid             (axiMasters_2_readOnly_decoder_io_outputs_0_ar_valid                ), //o
    .io_outputs_0_ar_ready             (_zz_75                                                             ), //i
    .io_outputs_0_ar_payload_addr      (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_addr[12:0]   ), //o
    .io_outputs_0_ar_payload_id        (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_id[3:0]      ), //o
    .io_outputs_0_ar_payload_region    (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_region[3:0]  ), //o
    .io_outputs_0_ar_payload_len       (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_len[7:0]     ), //o
    .io_outputs_0_ar_payload_size      (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_size[2:0]    ), //o
    .io_outputs_0_ar_payload_burst     (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_burst[1:0]   ), //o
    .io_outputs_0_ar_payload_lock      (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_lock         ), //o
    .io_outputs_0_ar_payload_cache     (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_cache[3:0]   ), //o
    .io_outputs_0_ar_payload_qos       (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_qos[3:0]     ), //o
    .io_outputs_0_ar_payload_prot      (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_prot[2:0]    ), //o
    .io_outputs_0_r_valid              (axiSlaves_0_readOnly_arbiter_io_inputs_1_r_valid                   ), //i
    .io_outputs_0_r_ready              (axiMasters_2_readOnly_decoder_io_outputs_0_r_ready                 ), //o
    .io_outputs_0_r_payload_data       (axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_data[31:0]      ), //i
    .io_outputs_0_r_payload_id         (_zz_76[3:0]                                                        ), //i
    .io_outputs_0_r_payload_resp       (axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_resp[1:0]       ), //i
    .io_outputs_0_r_payload_last       (axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_last            ), //i
    .io_outputs_1_ar_valid             (axiMasters_2_readOnly_decoder_io_outputs_1_ar_valid                ), //o
    .io_outputs_1_ar_ready             (_zz_77                                                             ), //i
    .io_outputs_1_ar_payload_addr      (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_addr[12:0]   ), //o
    .io_outputs_1_ar_payload_id        (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_id[3:0]      ), //o
    .io_outputs_1_ar_payload_region    (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_region[3:0]  ), //o
    .io_outputs_1_ar_payload_len       (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_len[7:0]     ), //o
    .io_outputs_1_ar_payload_size      (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_size[2:0]    ), //o
    .io_outputs_1_ar_payload_burst     (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_burst[1:0]   ), //o
    .io_outputs_1_ar_payload_lock      (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_lock         ), //o
    .io_outputs_1_ar_payload_cache     (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_cache[3:0]   ), //o
    .io_outputs_1_ar_payload_qos       (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_qos[3:0]     ), //o
    .io_outputs_1_ar_payload_prot      (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_prot[2:0]    ), //o
    .io_outputs_1_r_valid              (axiSlaves_1_readOnly_arbiter_io_inputs_1_r_valid                   ), //i
    .io_outputs_1_r_ready              (axiMasters_2_readOnly_decoder_io_outputs_1_r_ready                 ), //o
    .io_outputs_1_r_payload_data       (axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_data[31:0]      ), //i
    .io_outputs_1_r_payload_id         (_zz_78[3:0]                                                        ), //i
    .io_outputs_1_r_payload_resp       (axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_resp[1:0]       ), //i
    .io_outputs_1_r_payload_last       (axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_last            ), //i
    .io_outputs_2_ar_valid             (axiMasters_2_readOnly_decoder_io_outputs_2_ar_valid                ), //o
    .io_outputs_2_ar_ready             (_zz_79                                                             ), //i
    .io_outputs_2_ar_payload_addr      (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_addr[12:0]   ), //o
    .io_outputs_2_ar_payload_id        (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_id[3:0]      ), //o
    .io_outputs_2_ar_payload_region    (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_region[3:0]  ), //o
    .io_outputs_2_ar_payload_len       (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_len[7:0]     ), //o
    .io_outputs_2_ar_payload_size      (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_size[2:0]    ), //o
    .io_outputs_2_ar_payload_burst     (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_burst[1:0]   ), //o
    .io_outputs_2_ar_payload_lock      (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_lock         ), //o
    .io_outputs_2_ar_payload_cache     (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_cache[3:0]   ), //o
    .io_outputs_2_ar_payload_qos       (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_qos[3:0]     ), //o
    .io_outputs_2_ar_payload_prot      (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_prot[2:0]    ), //o
    .io_outputs_2_r_valid              (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_valid                   ), //i
    .io_outputs_2_r_ready              (axiMasters_2_readOnly_decoder_io_outputs_2_r_ready                 ), //o
    .io_outputs_2_r_payload_data       (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_data[31:0]      ), //i
    .io_outputs_2_r_payload_id         (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_id[3:0]         ), //i
    .io_outputs_2_r_payload_resp       (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_resp[1:0]       ), //i
    .io_outputs_2_r_payload_last       (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_last            ), //i
    .clk                               (clk                                                                ), //i
    .reset                             (reset                                                              )  //i
  );
  Axi4WriteOnlyDecoder_2 axiMasters_2_writeOnly_decoder (
    .io_input_aw_valid                 (axiMasters_2_writeOnly_aw_valid                                     ), //i
    .io_input_aw_ready                 (axiMasters_2_writeOnly_decoder_io_input_aw_ready                    ), //o
    .io_input_aw_payload_addr          (axiMasters_2_writeOnly_aw_payload_addr[12:0]                        ), //i
    .io_input_aw_payload_id            (axiMasters_2_writeOnly_aw_payload_id[3:0]                           ), //i
    .io_input_aw_payload_region        (axiMasters_2_writeOnly_aw_payload_region[3:0]                       ), //i
    .io_input_aw_payload_len           (axiMasters_2_writeOnly_aw_payload_len[7:0]                          ), //i
    .io_input_aw_payload_size          (axiMasters_2_writeOnly_aw_payload_size[2:0]                         ), //i
    .io_input_aw_payload_burst         (axiMasters_2_writeOnly_aw_payload_burst[1:0]                        ), //i
    .io_input_aw_payload_lock          (axiMasters_2_writeOnly_aw_payload_lock                              ), //i
    .io_input_aw_payload_cache         (axiMasters_2_writeOnly_aw_payload_cache[3:0]                        ), //i
    .io_input_aw_payload_qos           (axiMasters_2_writeOnly_aw_payload_qos[3:0]                          ), //i
    .io_input_aw_payload_prot          (axiMasters_2_writeOnly_aw_payload_prot[2:0]                         ), //i
    .io_input_w_valid                  (axiMasters_2_writeOnly_w_valid                                      ), //i
    .io_input_w_ready                  (axiMasters_2_writeOnly_decoder_io_input_w_ready                     ), //o
    .io_input_w_payload_data           (axiMasters_2_writeOnly_w_payload_data[31:0]                         ), //i
    .io_input_w_payload_strb           (axiMasters_2_writeOnly_w_payload_strb[3:0]                          ), //i
    .io_input_w_payload_last           (axiMasters_2_writeOnly_w_payload_last                               ), //i
    .io_input_b_valid                  (axiMasters_2_writeOnly_decoder_io_input_b_valid                     ), //o
    .io_input_b_ready                  (axiMasters_2_writeOnly_b_ready                                      ), //i
    .io_input_b_payload_id             (axiMasters_2_writeOnly_decoder_io_input_b_payload_id[3:0]           ), //o
    .io_input_b_payload_resp           (axiMasters_2_writeOnly_decoder_io_input_b_payload_resp[1:0]         ), //o
    .io_outputs_0_aw_valid             (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_valid                ), //o
    .io_outputs_0_aw_ready             (_zz_80                                                              ), //i
    .io_outputs_0_aw_payload_addr      (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_addr[12:0]   ), //o
    .io_outputs_0_aw_payload_id        (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_id[3:0]      ), //o
    .io_outputs_0_aw_payload_region    (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_region[3:0]  ), //o
    .io_outputs_0_aw_payload_len       (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_len[7:0]     ), //o
    .io_outputs_0_aw_payload_size      (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_size[2:0]    ), //o
    .io_outputs_0_aw_payload_burst     (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_burst[1:0]   ), //o
    .io_outputs_0_aw_payload_lock      (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_lock         ), //o
    .io_outputs_0_aw_payload_cache     (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_cache[3:0]   ), //o
    .io_outputs_0_aw_payload_qos       (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_qos[3:0]     ), //o
    .io_outputs_0_aw_payload_prot      (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_prot[2:0]    ), //o
    .io_outputs_0_w_valid              (axiMasters_2_writeOnly_decoder_io_outputs_0_w_valid                 ), //o
    .io_outputs_0_w_ready              (axiSlaves_0_writeOnly_arbiter_io_inputs_1_w_ready                   ), //i
    .io_outputs_0_w_payload_data       (axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_data[31:0]    ), //o
    .io_outputs_0_w_payload_strb       (axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_strb[3:0]     ), //o
    .io_outputs_0_w_payload_last       (axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_last          ), //o
    .io_outputs_0_b_valid              (axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_valid                   ), //i
    .io_outputs_0_b_ready              (axiMasters_2_writeOnly_decoder_io_outputs_0_b_ready                 ), //o
    .io_outputs_0_b_payload_id         (_zz_81[3:0]                                                         ), //i
    .io_outputs_0_b_payload_resp       (axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_resp[1:0]       ), //i
    .io_outputs_1_aw_valid             (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_valid                ), //o
    .io_outputs_1_aw_ready             (_zz_82                                                              ), //i
    .io_outputs_1_aw_payload_addr      (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_addr[12:0]   ), //o
    .io_outputs_1_aw_payload_id        (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_id[3:0]      ), //o
    .io_outputs_1_aw_payload_region    (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_region[3:0]  ), //o
    .io_outputs_1_aw_payload_len       (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_len[7:0]     ), //o
    .io_outputs_1_aw_payload_size      (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_size[2:0]    ), //o
    .io_outputs_1_aw_payload_burst     (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_burst[1:0]   ), //o
    .io_outputs_1_aw_payload_lock      (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_lock         ), //o
    .io_outputs_1_aw_payload_cache     (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_cache[3:0]   ), //o
    .io_outputs_1_aw_payload_qos       (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_qos[3:0]     ), //o
    .io_outputs_1_aw_payload_prot      (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_prot[2:0]    ), //o
    .io_outputs_1_w_valid              (axiMasters_2_writeOnly_decoder_io_outputs_1_w_valid                 ), //o
    .io_outputs_1_w_ready              (axiSlaves_1_writeOnly_arbiter_io_inputs_1_w_ready                   ), //i
    .io_outputs_1_w_payload_data       (axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_data[31:0]    ), //o
    .io_outputs_1_w_payload_strb       (axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_strb[3:0]     ), //o
    .io_outputs_1_w_payload_last       (axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_last          ), //o
    .io_outputs_1_b_valid              (axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_valid                   ), //i
    .io_outputs_1_b_ready              (axiMasters_2_writeOnly_decoder_io_outputs_1_b_ready                 ), //o
    .io_outputs_1_b_payload_id         (_zz_83[3:0]                                                         ), //i
    .io_outputs_1_b_payload_resp       (axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_resp[1:0]       ), //i
    .io_outputs_2_aw_valid             (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_valid                ), //o
    .io_outputs_2_aw_ready             (_zz_84                                                              ), //i
    .io_outputs_2_aw_payload_addr      (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_addr[12:0]   ), //o
    .io_outputs_2_aw_payload_id        (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_id[3:0]      ), //o
    .io_outputs_2_aw_payload_region    (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_region[3:0]  ), //o
    .io_outputs_2_aw_payload_len       (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_len[7:0]     ), //o
    .io_outputs_2_aw_payload_size      (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_size[2:0]    ), //o
    .io_outputs_2_aw_payload_burst     (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_burst[1:0]   ), //o
    .io_outputs_2_aw_payload_lock      (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_lock         ), //o
    .io_outputs_2_aw_payload_cache     (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_cache[3:0]   ), //o
    .io_outputs_2_aw_payload_qos       (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_qos[3:0]     ), //o
    .io_outputs_2_aw_payload_prot      (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_prot[2:0]    ), //o
    .io_outputs_2_w_valid              (axiMasters_2_writeOnly_decoder_io_outputs_2_w_valid                 ), //o
    .io_outputs_2_w_ready              (axiSlaves_3_writeOnly_arbiter_io_inputs_2_w_ready                   ), //i
    .io_outputs_2_w_payload_data       (axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_data[31:0]    ), //o
    .io_outputs_2_w_payload_strb       (axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_strb[3:0]     ), //o
    .io_outputs_2_w_payload_last       (axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_last          ), //o
    .io_outputs_2_b_valid              (axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_valid                   ), //i
    .io_outputs_2_b_ready              (axiMasters_2_writeOnly_decoder_io_outputs_2_b_ready                 ), //o
    .io_outputs_2_b_payload_id         (axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_id[3:0]         ), //i
    .io_outputs_2_b_payload_resp       (axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_resp[1:0]       ), //i
    .clk                               (clk                                                                 ), //i
    .reset                             (reset                                                               )  //i
  );
  Axi4ReadOnlyArbiter axiSlaves_0_readOnly_arbiter (
    .io_inputs_0_ar_valid             (_zz_19                                                             ), //i
    .io_inputs_0_ar_ready             (axiSlaves_0_readOnly_arbiter_io_inputs_0_ar_ready                  ), //o
    .io_inputs_0_ar_payload_addr      (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_addr[12:0]   ), //i
    .io_inputs_0_ar_payload_id        (_zz_85[4:0]                                                        ), //i
    .io_inputs_0_ar_payload_region    (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_region[3:0]  ), //i
    .io_inputs_0_ar_payload_len       (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_len[7:0]     ), //i
    .io_inputs_0_ar_payload_size      (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_size[2:0]    ), //i
    .io_inputs_0_ar_payload_burst     (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_burst[1:0]   ), //i
    .io_inputs_0_ar_payload_lock      (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_lock         ), //i
    .io_inputs_0_ar_payload_cache     (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_cache[3:0]   ), //i
    .io_inputs_0_ar_payload_qos       (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_qos[3:0]     ), //i
    .io_inputs_0_ar_payload_prot      (axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_prot[2:0]    ), //i
    .io_inputs_0_r_valid              (axiSlaves_0_readOnly_arbiter_io_inputs_0_r_valid                   ), //o
    .io_inputs_0_r_ready              (axiMasters_1_readOnly_decoder_io_outputs_0_r_ready                 ), //i
    .io_inputs_0_r_payload_data       (axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_data[31:0]      ), //o
    .io_inputs_0_r_payload_id         (axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_id[4:0]         ), //o
    .io_inputs_0_r_payload_resp       (axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_resp[1:0]       ), //o
    .io_inputs_0_r_payload_last       (axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_last            ), //o
    .io_inputs_1_ar_valid             (_zz_37                                                             ), //i
    .io_inputs_1_ar_ready             (axiSlaves_0_readOnly_arbiter_io_inputs_1_ar_ready                  ), //o
    .io_inputs_1_ar_payload_addr      (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_addr[12:0]   ), //i
    .io_inputs_1_ar_payload_id        (_zz_86[4:0]                                                        ), //i
    .io_inputs_1_ar_payload_region    (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_region[3:0]  ), //i
    .io_inputs_1_ar_payload_len       (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_len[7:0]     ), //i
    .io_inputs_1_ar_payload_size      (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_size[2:0]    ), //i
    .io_inputs_1_ar_payload_burst     (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_burst[1:0]   ), //i
    .io_inputs_1_ar_payload_lock      (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_lock         ), //i
    .io_inputs_1_ar_payload_cache     (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_cache[3:0]   ), //i
    .io_inputs_1_ar_payload_qos       (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_qos[3:0]     ), //i
    .io_inputs_1_ar_payload_prot      (axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_prot[2:0]    ), //i
    .io_inputs_1_r_valid              (axiSlaves_0_readOnly_arbiter_io_inputs_1_r_valid                   ), //o
    .io_inputs_1_r_ready              (axiMasters_2_readOnly_decoder_io_outputs_0_r_ready                 ), //i
    .io_inputs_1_r_payload_data       (axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_data[31:0]      ), //o
    .io_inputs_1_r_payload_id         (axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_id[4:0]         ), //o
    .io_inputs_1_r_payload_resp       (axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_resp[1:0]       ), //o
    .io_inputs_1_r_payload_last       (axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_last            ), //o
    .io_output_ar_valid               (axiSlaves_0_readOnly_arbiter_io_output_ar_valid                    ), //o
    .io_output_ar_ready               (axiSlaves_0_readOnly_ar_ready                                      ), //i
    .io_output_ar_payload_addr        (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_addr[12:0]       ), //o
    .io_output_ar_payload_id          (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_id[5:0]          ), //o
    .io_output_ar_payload_region      (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_region[3:0]      ), //o
    .io_output_ar_payload_len         (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_len[7:0]         ), //o
    .io_output_ar_payload_size        (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_size[2:0]        ), //o
    .io_output_ar_payload_burst       (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_burst[1:0]       ), //o
    .io_output_ar_payload_lock        (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_lock             ), //o
    .io_output_ar_payload_cache       (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_cache[3:0]       ), //o
    .io_output_ar_payload_qos         (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_qos[3:0]         ), //o
    .io_output_ar_payload_prot        (axiSlaves_0_readOnly_arbiter_io_output_ar_payload_prot[2:0]        ), //o
    .io_output_r_valid                (axiSlaves_0_readOnly_r_valid                                       ), //i
    .io_output_r_ready                (axiSlaves_0_readOnly_arbiter_io_output_r_ready                     ), //o
    .io_output_r_payload_data         (axiSlaves_0_readOnly_r_payload_data[31:0]                          ), //i
    .io_output_r_payload_id           (axiSlaves_0_readOnly_r_payload_id[5:0]                             ), //i
    .io_output_r_payload_resp         (axiSlaves_0_readOnly_r_payload_resp[1:0]                           ), //i
    .io_output_r_payload_last         (axiSlaves_0_readOnly_r_payload_last                                ), //i
    .clk                              (clk                                                                ), //i
    .reset                            (reset                                                              )  //i
  );
  Axi4WriteOnlyArbiter axiSlaves_0_writeOnly_arbiter (
    .io_inputs_0_aw_valid             (_zz_28                                                              ), //i
    .io_inputs_0_aw_ready             (axiSlaves_0_writeOnly_arbiter_io_inputs_0_aw_ready                  ), //o
    .io_inputs_0_aw_payload_addr      (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_addr[12:0]   ), //i
    .io_inputs_0_aw_payload_id        (_zz_87[4:0]                                                         ), //i
    .io_inputs_0_aw_payload_region    (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_region[3:0]  ), //i
    .io_inputs_0_aw_payload_len       (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_len[7:0]     ), //i
    .io_inputs_0_aw_payload_size      (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_size[2:0]    ), //i
    .io_inputs_0_aw_payload_burst     (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_burst[1:0]   ), //i
    .io_inputs_0_aw_payload_lock      (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_lock         ), //i
    .io_inputs_0_aw_payload_cache     (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_cache[3:0]   ), //i
    .io_inputs_0_aw_payload_qos       (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_qos[3:0]     ), //i
    .io_inputs_0_aw_payload_prot      (axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_prot[2:0]    ), //i
    .io_inputs_0_w_valid              (axiMasters_1_writeOnly_decoder_io_outputs_0_w_valid                 ), //i
    .io_inputs_0_w_ready              (axiSlaves_0_writeOnly_arbiter_io_inputs_0_w_ready                   ), //o
    .io_inputs_0_w_payload_data       (axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_data[31:0]    ), //i
    .io_inputs_0_w_payload_strb       (axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_strb[3:0]     ), //i
    .io_inputs_0_w_payload_last       (axiMasters_1_writeOnly_decoder_io_outputs_0_w_payload_last          ), //i
    .io_inputs_0_b_valid              (axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_valid                   ), //o
    .io_inputs_0_b_ready              (axiMasters_1_writeOnly_decoder_io_outputs_0_b_ready                 ), //i
    .io_inputs_0_b_payload_id         (axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_id[4:0]         ), //o
    .io_inputs_0_b_payload_resp       (axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_resp[1:0]       ), //o
    .io_inputs_1_aw_valid             (_zz_46                                                              ), //i
    .io_inputs_1_aw_ready             (axiSlaves_0_writeOnly_arbiter_io_inputs_1_aw_ready                  ), //o
    .io_inputs_1_aw_payload_addr      (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_addr[12:0]   ), //i
    .io_inputs_1_aw_payload_id        (_zz_88[4:0]                                                         ), //i
    .io_inputs_1_aw_payload_region    (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_region[3:0]  ), //i
    .io_inputs_1_aw_payload_len       (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_len[7:0]     ), //i
    .io_inputs_1_aw_payload_size      (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_size[2:0]    ), //i
    .io_inputs_1_aw_payload_burst     (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_burst[1:0]   ), //i
    .io_inputs_1_aw_payload_lock      (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_lock         ), //i
    .io_inputs_1_aw_payload_cache     (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_cache[3:0]   ), //i
    .io_inputs_1_aw_payload_qos       (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_qos[3:0]     ), //i
    .io_inputs_1_aw_payload_prot      (axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_prot[2:0]    ), //i
    .io_inputs_1_w_valid              (axiMasters_2_writeOnly_decoder_io_outputs_0_w_valid                 ), //i
    .io_inputs_1_w_ready              (axiSlaves_0_writeOnly_arbiter_io_inputs_1_w_ready                   ), //o
    .io_inputs_1_w_payload_data       (axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_data[31:0]    ), //i
    .io_inputs_1_w_payload_strb       (axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_strb[3:0]     ), //i
    .io_inputs_1_w_payload_last       (axiMasters_2_writeOnly_decoder_io_outputs_0_w_payload_last          ), //i
    .io_inputs_1_b_valid              (axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_valid                   ), //o
    .io_inputs_1_b_ready              (axiMasters_2_writeOnly_decoder_io_outputs_0_b_ready                 ), //i
    .io_inputs_1_b_payload_id         (axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_id[4:0]         ), //o
    .io_inputs_1_b_payload_resp       (axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_resp[1:0]       ), //o
    .io_output_aw_valid               (axiSlaves_0_writeOnly_arbiter_io_output_aw_valid                    ), //o
    .io_output_aw_ready               (axiSlaves_0_writeOnly_aw_ready                                      ), //i
    .io_output_aw_payload_addr        (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_addr[12:0]       ), //o
    .io_output_aw_payload_id          (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_id[5:0]          ), //o
    .io_output_aw_payload_region      (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_region[3:0]      ), //o
    .io_output_aw_payload_len         (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_len[7:0]         ), //o
    .io_output_aw_payload_size        (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_size[2:0]        ), //o
    .io_output_aw_payload_burst       (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_burst[1:0]       ), //o
    .io_output_aw_payload_lock        (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_lock             ), //o
    .io_output_aw_payload_cache       (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_cache[3:0]       ), //o
    .io_output_aw_payload_qos         (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_qos[3:0]         ), //o
    .io_output_aw_payload_prot        (axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_prot[2:0]        ), //o
    .io_output_w_valid                (axiSlaves_0_writeOnly_arbiter_io_output_w_valid                     ), //o
    .io_output_w_ready                (axiSlaves_0_writeOnly_w_ready                                       ), //i
    .io_output_w_payload_data         (axiSlaves_0_writeOnly_arbiter_io_output_w_payload_data[31:0]        ), //o
    .io_output_w_payload_strb         (axiSlaves_0_writeOnly_arbiter_io_output_w_payload_strb[3:0]         ), //o
    .io_output_w_payload_last         (axiSlaves_0_writeOnly_arbiter_io_output_w_payload_last              ), //o
    .io_output_b_valid                (axiSlaves_0_writeOnly_b_valid                                       ), //i
    .io_output_b_ready                (axiSlaves_0_writeOnly_arbiter_io_output_b_ready                     ), //o
    .io_output_b_payload_id           (axiSlaves_0_writeOnly_b_payload_id[5:0]                             ), //i
    .io_output_b_payload_resp         (axiSlaves_0_writeOnly_b_payload_resp[1:0]                           ), //i
    .clk                              (clk                                                                 ), //i
    .reset                            (reset                                                               )  //i
  );
  Axi4ReadOnlyArbiter axiSlaves_1_readOnly_arbiter (
    .io_inputs_0_ar_valid             (_zz_1                                                              ), //i
    .io_inputs_0_ar_ready             (axiSlaves_1_readOnly_arbiter_io_inputs_0_ar_ready                  ), //o
    .io_inputs_0_ar_payload_addr      (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_addr[12:0]   ), //i
    .io_inputs_0_ar_payload_id        (_zz_89[4:0]                                                        ), //i
    .io_inputs_0_ar_payload_region    (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_region[3:0]  ), //i
    .io_inputs_0_ar_payload_len       (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_len[7:0]     ), //i
    .io_inputs_0_ar_payload_size      (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_size[2:0]    ), //i
    .io_inputs_0_ar_payload_burst     (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_burst[1:0]   ), //i
    .io_inputs_0_ar_payload_lock      (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_lock         ), //i
    .io_inputs_0_ar_payload_cache     (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_cache[3:0]   ), //i
    .io_inputs_0_ar_payload_qos       (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_qos[3:0]     ), //i
    .io_inputs_0_ar_payload_prot      (axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_prot[2:0]    ), //i
    .io_inputs_0_r_valid              (axiSlaves_1_readOnly_arbiter_io_inputs_0_r_valid                   ), //o
    .io_inputs_0_r_ready              (axiMasters_0_readOnly_decoder_io_outputs_0_r_ready                 ), //i
    .io_inputs_0_r_payload_data       (axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_data[31:0]      ), //o
    .io_inputs_0_r_payload_id         (axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_id[4:0]         ), //o
    .io_inputs_0_r_payload_resp       (axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_resp[1:0]       ), //o
    .io_inputs_0_r_payload_last       (axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_last            ), //o
    .io_inputs_1_ar_valid             (_zz_40                                                             ), //i
    .io_inputs_1_ar_ready             (axiSlaves_1_readOnly_arbiter_io_inputs_1_ar_ready                  ), //o
    .io_inputs_1_ar_payload_addr      (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_addr[12:0]   ), //i
    .io_inputs_1_ar_payload_id        (_zz_90[4:0]                                                        ), //i
    .io_inputs_1_ar_payload_region    (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_region[3:0]  ), //i
    .io_inputs_1_ar_payload_len       (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_len[7:0]     ), //i
    .io_inputs_1_ar_payload_size      (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_size[2:0]    ), //i
    .io_inputs_1_ar_payload_burst     (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_burst[1:0]   ), //i
    .io_inputs_1_ar_payload_lock      (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_lock         ), //i
    .io_inputs_1_ar_payload_cache     (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_cache[3:0]   ), //i
    .io_inputs_1_ar_payload_qos       (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_qos[3:0]     ), //i
    .io_inputs_1_ar_payload_prot      (axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_prot[2:0]    ), //i
    .io_inputs_1_r_valid              (axiSlaves_1_readOnly_arbiter_io_inputs_1_r_valid                   ), //o
    .io_inputs_1_r_ready              (axiMasters_2_readOnly_decoder_io_outputs_1_r_ready                 ), //i
    .io_inputs_1_r_payload_data       (axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_data[31:0]      ), //o
    .io_inputs_1_r_payload_id         (axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_id[4:0]         ), //o
    .io_inputs_1_r_payload_resp       (axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_resp[1:0]       ), //o
    .io_inputs_1_r_payload_last       (axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_last            ), //o
    .io_output_ar_valid               (axiSlaves_1_readOnly_arbiter_io_output_ar_valid                    ), //o
    .io_output_ar_ready               (axiSlaves_1_readOnly_ar_ready                                      ), //i
    .io_output_ar_payload_addr        (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_addr[12:0]       ), //o
    .io_output_ar_payload_id          (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_id[5:0]          ), //o
    .io_output_ar_payload_region      (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_region[3:0]      ), //o
    .io_output_ar_payload_len         (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_len[7:0]         ), //o
    .io_output_ar_payload_size        (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_size[2:0]        ), //o
    .io_output_ar_payload_burst       (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_burst[1:0]       ), //o
    .io_output_ar_payload_lock        (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_lock             ), //o
    .io_output_ar_payload_cache       (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_cache[3:0]       ), //o
    .io_output_ar_payload_qos         (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_qos[3:0]         ), //o
    .io_output_ar_payload_prot        (axiSlaves_1_readOnly_arbiter_io_output_ar_payload_prot[2:0]        ), //o
    .io_output_r_valid                (axiSlaves_1_readOnly_r_valid                                       ), //i
    .io_output_r_ready                (axiSlaves_1_readOnly_arbiter_io_output_r_ready                     ), //o
    .io_output_r_payload_data         (axiSlaves_1_readOnly_r_payload_data[31:0]                          ), //i
    .io_output_r_payload_id           (axiSlaves_1_readOnly_r_payload_id[5:0]                             ), //i
    .io_output_r_payload_resp         (axiSlaves_1_readOnly_r_payload_resp[1:0]                           ), //i
    .io_output_r_payload_last         (axiSlaves_1_readOnly_r_payload_last                                ), //i
    .clk                              (clk                                                                ), //i
    .reset                            (reset                                                              )  //i
  );
  Axi4WriteOnlyArbiter axiSlaves_1_writeOnly_arbiter (
    .io_inputs_0_aw_valid             (_zz_10                                                              ), //i
    .io_inputs_0_aw_ready             (axiSlaves_1_writeOnly_arbiter_io_inputs_0_aw_ready                  ), //o
    .io_inputs_0_aw_payload_addr      (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_addr[12:0]   ), //i
    .io_inputs_0_aw_payload_id        (_zz_91[4:0]                                                         ), //i
    .io_inputs_0_aw_payload_region    (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_region[3:0]  ), //i
    .io_inputs_0_aw_payload_len       (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_len[7:0]     ), //i
    .io_inputs_0_aw_payload_size      (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_size[2:0]    ), //i
    .io_inputs_0_aw_payload_burst     (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_burst[1:0]   ), //i
    .io_inputs_0_aw_payload_lock      (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_lock         ), //i
    .io_inputs_0_aw_payload_cache     (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_cache[3:0]   ), //i
    .io_inputs_0_aw_payload_qos       (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_qos[3:0]     ), //i
    .io_inputs_0_aw_payload_prot      (axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_prot[2:0]    ), //i
    .io_inputs_0_w_valid              (axiMasters_0_writeOnly_decoder_io_outputs_0_w_valid                 ), //i
    .io_inputs_0_w_ready              (axiSlaves_1_writeOnly_arbiter_io_inputs_0_w_ready                   ), //o
    .io_inputs_0_w_payload_data       (axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_data[31:0]    ), //i
    .io_inputs_0_w_payload_strb       (axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_strb[3:0]     ), //i
    .io_inputs_0_w_payload_last       (axiMasters_0_writeOnly_decoder_io_outputs_0_w_payload_last          ), //i
    .io_inputs_0_b_valid              (axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_valid                   ), //o
    .io_inputs_0_b_ready              (axiMasters_0_writeOnly_decoder_io_outputs_0_b_ready                 ), //i
    .io_inputs_0_b_payload_id         (axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_id[4:0]         ), //o
    .io_inputs_0_b_payload_resp       (axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_resp[1:0]       ), //o
    .io_inputs_1_aw_valid             (_zz_49                                                              ), //i
    .io_inputs_1_aw_ready             (axiSlaves_1_writeOnly_arbiter_io_inputs_1_aw_ready                  ), //o
    .io_inputs_1_aw_payload_addr      (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_addr[12:0]   ), //i
    .io_inputs_1_aw_payload_id        (_zz_92[4:0]                                                         ), //i
    .io_inputs_1_aw_payload_region    (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_region[3:0]  ), //i
    .io_inputs_1_aw_payload_len       (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_len[7:0]     ), //i
    .io_inputs_1_aw_payload_size      (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_size[2:0]    ), //i
    .io_inputs_1_aw_payload_burst     (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_burst[1:0]   ), //i
    .io_inputs_1_aw_payload_lock      (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_lock         ), //i
    .io_inputs_1_aw_payload_cache     (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_cache[3:0]   ), //i
    .io_inputs_1_aw_payload_qos       (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_qos[3:0]     ), //i
    .io_inputs_1_aw_payload_prot      (axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_prot[2:0]    ), //i
    .io_inputs_1_w_valid              (axiMasters_2_writeOnly_decoder_io_outputs_1_w_valid                 ), //i
    .io_inputs_1_w_ready              (axiSlaves_1_writeOnly_arbiter_io_inputs_1_w_ready                   ), //o
    .io_inputs_1_w_payload_data       (axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_data[31:0]    ), //i
    .io_inputs_1_w_payload_strb       (axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_strb[3:0]     ), //i
    .io_inputs_1_w_payload_last       (axiMasters_2_writeOnly_decoder_io_outputs_1_w_payload_last          ), //i
    .io_inputs_1_b_valid              (axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_valid                   ), //o
    .io_inputs_1_b_ready              (axiMasters_2_writeOnly_decoder_io_outputs_1_b_ready                 ), //i
    .io_inputs_1_b_payload_id         (axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_id[4:0]         ), //o
    .io_inputs_1_b_payload_resp       (axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_resp[1:0]       ), //o
    .io_output_aw_valid               (axiSlaves_1_writeOnly_arbiter_io_output_aw_valid                    ), //o
    .io_output_aw_ready               (axiSlaves_1_writeOnly_aw_ready                                      ), //i
    .io_output_aw_payload_addr        (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_addr[12:0]       ), //o
    .io_output_aw_payload_id          (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_id[5:0]          ), //o
    .io_output_aw_payload_region      (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_region[3:0]      ), //o
    .io_output_aw_payload_len         (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_len[7:0]         ), //o
    .io_output_aw_payload_size        (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_size[2:0]        ), //o
    .io_output_aw_payload_burst       (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_burst[1:0]       ), //o
    .io_output_aw_payload_lock        (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_lock             ), //o
    .io_output_aw_payload_cache       (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_cache[3:0]       ), //o
    .io_output_aw_payload_qos         (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_qos[3:0]         ), //o
    .io_output_aw_payload_prot        (axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_prot[2:0]        ), //o
    .io_output_w_valid                (axiSlaves_1_writeOnly_arbiter_io_output_w_valid                     ), //o
    .io_output_w_ready                (axiSlaves_1_writeOnly_w_ready                                       ), //i
    .io_output_w_payload_data         (axiSlaves_1_writeOnly_arbiter_io_output_w_payload_data[31:0]        ), //o
    .io_output_w_payload_strb         (axiSlaves_1_writeOnly_arbiter_io_output_w_payload_strb[3:0]         ), //o
    .io_output_w_payload_last         (axiSlaves_1_writeOnly_arbiter_io_output_w_payload_last              ), //o
    .io_output_b_valid                (axiSlaves_1_writeOnly_b_valid                                       ), //i
    .io_output_b_ready                (axiSlaves_1_writeOnly_arbiter_io_output_b_ready                     ), //o
    .io_output_b_payload_id           (axiSlaves_1_writeOnly_b_payload_id[5:0]                             ), //i
    .io_output_b_payload_resp         (axiSlaves_1_writeOnly_b_payload_resp[1:0]                           ), //i
    .clk                              (clk                                                                 ), //i
    .reset                            (reset                                                               )  //i
  );
  Axi4ReadOnlyArbiter axiSlaves_2_readOnly_arbiter (
    .io_inputs_0_ar_valid             (_zz_4                                                              ), //i
    .io_inputs_0_ar_ready             (axiSlaves_2_readOnly_arbiter_io_inputs_0_ar_ready                  ), //o
    .io_inputs_0_ar_payload_addr      (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_addr[12:0]   ), //i
    .io_inputs_0_ar_payload_id        (_zz_93[4:0]                                                        ), //i
    .io_inputs_0_ar_payload_region    (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_region[3:0]  ), //i
    .io_inputs_0_ar_payload_len       (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_len[7:0]     ), //i
    .io_inputs_0_ar_payload_size      (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_size[2:0]    ), //i
    .io_inputs_0_ar_payload_burst     (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_burst[1:0]   ), //i
    .io_inputs_0_ar_payload_lock      (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_lock         ), //i
    .io_inputs_0_ar_payload_cache     (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_cache[3:0]   ), //i
    .io_inputs_0_ar_payload_qos       (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_qos[3:0]     ), //i
    .io_inputs_0_ar_payload_prot      (axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_prot[2:0]    ), //i
    .io_inputs_0_r_valid              (axiSlaves_2_readOnly_arbiter_io_inputs_0_r_valid                   ), //o
    .io_inputs_0_r_ready              (axiMasters_0_readOnly_decoder_io_outputs_1_r_ready                 ), //i
    .io_inputs_0_r_payload_data       (axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_data[31:0]      ), //o
    .io_inputs_0_r_payload_id         (axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_id[4:0]         ), //o
    .io_inputs_0_r_payload_resp       (axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_resp[1:0]       ), //o
    .io_inputs_0_r_payload_last       (axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_last            ), //o
    .io_inputs_1_ar_valid             (_zz_22                                                             ), //i
    .io_inputs_1_ar_ready             (axiSlaves_2_readOnly_arbiter_io_inputs_1_ar_ready                  ), //o
    .io_inputs_1_ar_payload_addr      (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_addr[12:0]   ), //i
    .io_inputs_1_ar_payload_id        (_zz_94[4:0]                                                        ), //i
    .io_inputs_1_ar_payload_region    (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_region[3:0]  ), //i
    .io_inputs_1_ar_payload_len       (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_len[7:0]     ), //i
    .io_inputs_1_ar_payload_size      (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_size[2:0]    ), //i
    .io_inputs_1_ar_payload_burst     (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_burst[1:0]   ), //i
    .io_inputs_1_ar_payload_lock      (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_lock         ), //i
    .io_inputs_1_ar_payload_cache     (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_cache[3:0]   ), //i
    .io_inputs_1_ar_payload_qos       (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_qos[3:0]     ), //i
    .io_inputs_1_ar_payload_prot      (axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_prot[2:0]    ), //i
    .io_inputs_1_r_valid              (axiSlaves_2_readOnly_arbiter_io_inputs_1_r_valid                   ), //o
    .io_inputs_1_r_ready              (axiMasters_1_readOnly_decoder_io_outputs_1_r_ready                 ), //i
    .io_inputs_1_r_payload_data       (axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_data[31:0]      ), //o
    .io_inputs_1_r_payload_id         (axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_id[4:0]         ), //o
    .io_inputs_1_r_payload_resp       (axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_resp[1:0]       ), //o
    .io_inputs_1_r_payload_last       (axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_last            ), //o
    .io_output_ar_valid               (axiSlaves_2_readOnly_arbiter_io_output_ar_valid                    ), //o
    .io_output_ar_ready               (axiSlaves_2_readOnly_ar_ready                                      ), //i
    .io_output_ar_payload_addr        (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_addr[12:0]       ), //o
    .io_output_ar_payload_id          (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_id[5:0]          ), //o
    .io_output_ar_payload_region      (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_region[3:0]      ), //o
    .io_output_ar_payload_len         (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_len[7:0]         ), //o
    .io_output_ar_payload_size        (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_size[2:0]        ), //o
    .io_output_ar_payload_burst       (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_burst[1:0]       ), //o
    .io_output_ar_payload_lock        (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_lock             ), //o
    .io_output_ar_payload_cache       (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_cache[3:0]       ), //o
    .io_output_ar_payload_qos         (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_qos[3:0]         ), //o
    .io_output_ar_payload_prot        (axiSlaves_2_readOnly_arbiter_io_output_ar_payload_prot[2:0]        ), //o
    .io_output_r_valid                (axiSlaves_2_readOnly_r_valid                                       ), //i
    .io_output_r_ready                (axiSlaves_2_readOnly_arbiter_io_output_r_ready                     ), //o
    .io_output_r_payload_data         (axiSlaves_2_readOnly_r_payload_data[31:0]                          ), //i
    .io_output_r_payload_id           (axiSlaves_2_readOnly_r_payload_id[5:0]                             ), //i
    .io_output_r_payload_resp         (axiSlaves_2_readOnly_r_payload_resp[1:0]                           ), //i
    .io_output_r_payload_last         (axiSlaves_2_readOnly_r_payload_last                                ), //i
    .clk                              (clk                                                                ), //i
    .reset                            (reset                                                              )  //i
  );
  Axi4WriteOnlyArbiter axiSlaves_2_writeOnly_arbiter (
    .io_inputs_0_aw_valid             (_zz_13                                                              ), //i
    .io_inputs_0_aw_ready             (axiSlaves_2_writeOnly_arbiter_io_inputs_0_aw_ready                  ), //o
    .io_inputs_0_aw_payload_addr      (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_addr[12:0]   ), //i
    .io_inputs_0_aw_payload_id        (_zz_95[4:0]                                                         ), //i
    .io_inputs_0_aw_payload_region    (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_region[3:0]  ), //i
    .io_inputs_0_aw_payload_len       (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_len[7:0]     ), //i
    .io_inputs_0_aw_payload_size      (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_size[2:0]    ), //i
    .io_inputs_0_aw_payload_burst     (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_burst[1:0]   ), //i
    .io_inputs_0_aw_payload_lock      (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_lock         ), //i
    .io_inputs_0_aw_payload_cache     (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_cache[3:0]   ), //i
    .io_inputs_0_aw_payload_qos       (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_qos[3:0]     ), //i
    .io_inputs_0_aw_payload_prot      (axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_prot[2:0]    ), //i
    .io_inputs_0_w_valid              (axiMasters_0_writeOnly_decoder_io_outputs_1_w_valid                 ), //i
    .io_inputs_0_w_ready              (axiSlaves_2_writeOnly_arbiter_io_inputs_0_w_ready                   ), //o
    .io_inputs_0_w_payload_data       (axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_data[31:0]    ), //i
    .io_inputs_0_w_payload_strb       (axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_strb[3:0]     ), //i
    .io_inputs_0_w_payload_last       (axiMasters_0_writeOnly_decoder_io_outputs_1_w_payload_last          ), //i
    .io_inputs_0_b_valid              (axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_valid                   ), //o
    .io_inputs_0_b_ready              (axiMasters_0_writeOnly_decoder_io_outputs_1_b_ready                 ), //i
    .io_inputs_0_b_payload_id         (axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_id[4:0]         ), //o
    .io_inputs_0_b_payload_resp       (axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_resp[1:0]       ), //o
    .io_inputs_1_aw_valid             (_zz_31                                                              ), //i
    .io_inputs_1_aw_ready             (axiSlaves_2_writeOnly_arbiter_io_inputs_1_aw_ready                  ), //o
    .io_inputs_1_aw_payload_addr      (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_addr[12:0]   ), //i
    .io_inputs_1_aw_payload_id        (_zz_96[4:0]                                                         ), //i
    .io_inputs_1_aw_payload_region    (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_region[3:0]  ), //i
    .io_inputs_1_aw_payload_len       (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_len[7:0]     ), //i
    .io_inputs_1_aw_payload_size      (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_size[2:0]    ), //i
    .io_inputs_1_aw_payload_burst     (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_burst[1:0]   ), //i
    .io_inputs_1_aw_payload_lock      (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_lock         ), //i
    .io_inputs_1_aw_payload_cache     (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_cache[3:0]   ), //i
    .io_inputs_1_aw_payload_qos       (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_qos[3:0]     ), //i
    .io_inputs_1_aw_payload_prot      (axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_prot[2:0]    ), //i
    .io_inputs_1_w_valid              (axiMasters_1_writeOnly_decoder_io_outputs_1_w_valid                 ), //i
    .io_inputs_1_w_ready              (axiSlaves_2_writeOnly_arbiter_io_inputs_1_w_ready                   ), //o
    .io_inputs_1_w_payload_data       (axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_data[31:0]    ), //i
    .io_inputs_1_w_payload_strb       (axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_strb[3:0]     ), //i
    .io_inputs_1_w_payload_last       (axiMasters_1_writeOnly_decoder_io_outputs_1_w_payload_last          ), //i
    .io_inputs_1_b_valid              (axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_valid                   ), //o
    .io_inputs_1_b_ready              (axiMasters_1_writeOnly_decoder_io_outputs_1_b_ready                 ), //i
    .io_inputs_1_b_payload_id         (axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_id[4:0]         ), //o
    .io_inputs_1_b_payload_resp       (axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_resp[1:0]       ), //o
    .io_output_aw_valid               (axiSlaves_2_writeOnly_arbiter_io_output_aw_valid                    ), //o
    .io_output_aw_ready               (axiSlaves_2_writeOnly_aw_ready                                      ), //i
    .io_output_aw_payload_addr        (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_addr[12:0]       ), //o
    .io_output_aw_payload_id          (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_id[5:0]          ), //o
    .io_output_aw_payload_region      (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_region[3:0]      ), //o
    .io_output_aw_payload_len         (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_len[7:0]         ), //o
    .io_output_aw_payload_size        (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_size[2:0]        ), //o
    .io_output_aw_payload_burst       (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_burst[1:0]       ), //o
    .io_output_aw_payload_lock        (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_lock             ), //o
    .io_output_aw_payload_cache       (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_cache[3:0]       ), //o
    .io_output_aw_payload_qos         (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_qos[3:0]         ), //o
    .io_output_aw_payload_prot        (axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_prot[2:0]        ), //o
    .io_output_w_valid                (axiSlaves_2_writeOnly_arbiter_io_output_w_valid                     ), //o
    .io_output_w_ready                (axiSlaves_2_writeOnly_w_ready                                       ), //i
    .io_output_w_payload_data         (axiSlaves_2_writeOnly_arbiter_io_output_w_payload_data[31:0]        ), //o
    .io_output_w_payload_strb         (axiSlaves_2_writeOnly_arbiter_io_output_w_payload_strb[3:0]         ), //o
    .io_output_w_payload_last         (axiSlaves_2_writeOnly_arbiter_io_output_w_payload_last              ), //o
    .io_output_b_valid                (axiSlaves_2_writeOnly_b_valid                                       ), //i
    .io_output_b_ready                (axiSlaves_2_writeOnly_arbiter_io_output_b_ready                     ), //o
    .io_output_b_payload_id           (axiSlaves_2_writeOnly_b_payload_id[5:0]                             ), //i
    .io_output_b_payload_resp         (axiSlaves_2_writeOnly_b_payload_resp[1:0]                           ), //i
    .clk                              (clk                                                                 ), //i
    .reset                            (reset                                                               )  //i
  );
  Axi4ReadOnlyArbiter_3 axiSlaves_3_readOnly_arbiter (
    .io_inputs_0_ar_valid             (_zz_7                                                              ), //i
    .io_inputs_0_ar_ready             (axiSlaves_3_readOnly_arbiter_io_inputs_0_ar_ready                  ), //o
    .io_inputs_0_ar_payload_addr      (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_addr[12:0]   ), //i
    .io_inputs_0_ar_payload_id        (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_id[3:0]      ), //i
    .io_inputs_0_ar_payload_region    (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_region[3:0]  ), //i
    .io_inputs_0_ar_payload_len       (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_len[7:0]     ), //i
    .io_inputs_0_ar_payload_size      (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_size[2:0]    ), //i
    .io_inputs_0_ar_payload_burst     (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_burst[1:0]   ), //i
    .io_inputs_0_ar_payload_lock      (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_lock         ), //i
    .io_inputs_0_ar_payload_cache     (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_cache[3:0]   ), //i
    .io_inputs_0_ar_payload_qos       (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_qos[3:0]     ), //i
    .io_inputs_0_ar_payload_prot      (axiMasters_0_readOnly_decoder_io_outputs_2_ar_payload_prot[2:0]    ), //i
    .io_inputs_0_r_valid              (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_valid                   ), //o
    .io_inputs_0_r_ready              (axiMasters_0_readOnly_decoder_io_outputs_2_r_ready                 ), //i
    .io_inputs_0_r_payload_data       (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_data[31:0]      ), //o
    .io_inputs_0_r_payload_id         (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_id[3:0]         ), //o
    .io_inputs_0_r_payload_resp       (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_resp[1:0]       ), //o
    .io_inputs_0_r_payload_last       (axiSlaves_3_readOnly_arbiter_io_inputs_0_r_payload_last            ), //o
    .io_inputs_1_ar_valid             (_zz_25                                                             ), //i
    .io_inputs_1_ar_ready             (axiSlaves_3_readOnly_arbiter_io_inputs_1_ar_ready                  ), //o
    .io_inputs_1_ar_payload_addr      (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_addr[12:0]   ), //i
    .io_inputs_1_ar_payload_id        (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_id[3:0]      ), //i
    .io_inputs_1_ar_payload_region    (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_region[3:0]  ), //i
    .io_inputs_1_ar_payload_len       (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_len[7:0]     ), //i
    .io_inputs_1_ar_payload_size      (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_size[2:0]    ), //i
    .io_inputs_1_ar_payload_burst     (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_burst[1:0]   ), //i
    .io_inputs_1_ar_payload_lock      (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_lock         ), //i
    .io_inputs_1_ar_payload_cache     (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_cache[3:0]   ), //i
    .io_inputs_1_ar_payload_qos       (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_qos[3:0]     ), //i
    .io_inputs_1_ar_payload_prot      (axiMasters_1_readOnly_decoder_io_outputs_2_ar_payload_prot[2:0]    ), //i
    .io_inputs_1_r_valid              (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_valid                   ), //o
    .io_inputs_1_r_ready              (axiMasters_1_readOnly_decoder_io_outputs_2_r_ready                 ), //i
    .io_inputs_1_r_payload_data       (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_data[31:0]      ), //o
    .io_inputs_1_r_payload_id         (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_id[3:0]         ), //o
    .io_inputs_1_r_payload_resp       (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_resp[1:0]       ), //o
    .io_inputs_1_r_payload_last       (axiSlaves_3_readOnly_arbiter_io_inputs_1_r_payload_last            ), //o
    .io_inputs_2_ar_valid             (_zz_43                                                             ), //i
    .io_inputs_2_ar_ready             (axiSlaves_3_readOnly_arbiter_io_inputs_2_ar_ready                  ), //o
    .io_inputs_2_ar_payload_addr      (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_addr[12:0]   ), //i
    .io_inputs_2_ar_payload_id        (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_id[3:0]      ), //i
    .io_inputs_2_ar_payload_region    (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_region[3:0]  ), //i
    .io_inputs_2_ar_payload_len       (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_len[7:0]     ), //i
    .io_inputs_2_ar_payload_size      (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_size[2:0]    ), //i
    .io_inputs_2_ar_payload_burst     (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_burst[1:0]   ), //i
    .io_inputs_2_ar_payload_lock      (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_lock         ), //i
    .io_inputs_2_ar_payload_cache     (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_cache[3:0]   ), //i
    .io_inputs_2_ar_payload_qos       (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_qos[3:0]     ), //i
    .io_inputs_2_ar_payload_prot      (axiMasters_2_readOnly_decoder_io_outputs_2_ar_payload_prot[2:0]    ), //i
    .io_inputs_2_r_valid              (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_valid                   ), //o
    .io_inputs_2_r_ready              (axiMasters_2_readOnly_decoder_io_outputs_2_r_ready                 ), //i
    .io_inputs_2_r_payload_data       (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_data[31:0]      ), //o
    .io_inputs_2_r_payload_id         (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_id[3:0]         ), //o
    .io_inputs_2_r_payload_resp       (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_resp[1:0]       ), //o
    .io_inputs_2_r_payload_last       (axiSlaves_3_readOnly_arbiter_io_inputs_2_r_payload_last            ), //o
    .io_output_ar_valid               (axiSlaves_3_readOnly_arbiter_io_output_ar_valid                    ), //o
    .io_output_ar_ready               (axiSlaves_3_readOnly_ar_ready                                      ), //i
    .io_output_ar_payload_addr        (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_addr[12:0]       ), //o
    .io_output_ar_payload_id          (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_id[5:0]          ), //o
    .io_output_ar_payload_region      (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_region[3:0]      ), //o
    .io_output_ar_payload_len         (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_len[7:0]         ), //o
    .io_output_ar_payload_size        (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_size[2:0]        ), //o
    .io_output_ar_payload_burst       (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_burst[1:0]       ), //o
    .io_output_ar_payload_lock        (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_lock             ), //o
    .io_output_ar_payload_cache       (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_cache[3:0]       ), //o
    .io_output_ar_payload_qos         (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_qos[3:0]         ), //o
    .io_output_ar_payload_prot        (axiSlaves_3_readOnly_arbiter_io_output_ar_payload_prot[2:0]        ), //o
    .io_output_r_valid                (axiSlaves_3_readOnly_r_valid                                       ), //i
    .io_output_r_ready                (axiSlaves_3_readOnly_arbiter_io_output_r_ready                     ), //o
    .io_output_r_payload_data         (axiSlaves_3_readOnly_r_payload_data[31:0]                          ), //i
    .io_output_r_payload_id           (axiSlaves_3_readOnly_r_payload_id[5:0]                             ), //i
    .io_output_r_payload_resp         (axiSlaves_3_readOnly_r_payload_resp[1:0]                           ), //i
    .io_output_r_payload_last         (axiSlaves_3_readOnly_r_payload_last                                ), //i
    .clk                              (clk                                                                ), //i
    .reset                            (reset                                                              )  //i
  );
  Axi4WriteOnlyArbiter_3 axiSlaves_3_writeOnly_arbiter (
    .io_inputs_0_aw_valid             (_zz_16                                                              ), //i
    .io_inputs_0_aw_ready             (axiSlaves_3_writeOnly_arbiter_io_inputs_0_aw_ready                  ), //o
    .io_inputs_0_aw_payload_addr      (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_addr[12:0]   ), //i
    .io_inputs_0_aw_payload_id        (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_id[3:0]      ), //i
    .io_inputs_0_aw_payload_region    (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_region[3:0]  ), //i
    .io_inputs_0_aw_payload_len       (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_len[7:0]     ), //i
    .io_inputs_0_aw_payload_size      (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_size[2:0]    ), //i
    .io_inputs_0_aw_payload_burst     (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_burst[1:0]   ), //i
    .io_inputs_0_aw_payload_lock      (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_lock         ), //i
    .io_inputs_0_aw_payload_cache     (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_cache[3:0]   ), //i
    .io_inputs_0_aw_payload_qos       (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_qos[3:0]     ), //i
    .io_inputs_0_aw_payload_prot      (axiMasters_0_writeOnly_decoder_io_outputs_2_aw_payload_prot[2:0]    ), //i
    .io_inputs_0_w_valid              (axiMasters_0_writeOnly_decoder_io_outputs_2_w_valid                 ), //i
    .io_inputs_0_w_ready              (axiSlaves_3_writeOnly_arbiter_io_inputs_0_w_ready                   ), //o
    .io_inputs_0_w_payload_data       (axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_data[31:0]    ), //i
    .io_inputs_0_w_payload_strb       (axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_strb[3:0]     ), //i
    .io_inputs_0_w_payload_last       (axiMasters_0_writeOnly_decoder_io_outputs_2_w_payload_last          ), //i
    .io_inputs_0_b_valid              (axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_valid                   ), //o
    .io_inputs_0_b_ready              (axiMasters_0_writeOnly_decoder_io_outputs_2_b_ready                 ), //i
    .io_inputs_0_b_payload_id         (axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_id[3:0]         ), //o
    .io_inputs_0_b_payload_resp       (axiSlaves_3_writeOnly_arbiter_io_inputs_0_b_payload_resp[1:0]       ), //o
    .io_inputs_1_aw_valid             (_zz_34                                                              ), //i
    .io_inputs_1_aw_ready             (axiSlaves_3_writeOnly_arbiter_io_inputs_1_aw_ready                  ), //o
    .io_inputs_1_aw_payload_addr      (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_addr[12:0]   ), //i
    .io_inputs_1_aw_payload_id        (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_id[3:0]      ), //i
    .io_inputs_1_aw_payload_region    (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_region[3:0]  ), //i
    .io_inputs_1_aw_payload_len       (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_len[7:0]     ), //i
    .io_inputs_1_aw_payload_size      (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_size[2:0]    ), //i
    .io_inputs_1_aw_payload_burst     (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_burst[1:0]   ), //i
    .io_inputs_1_aw_payload_lock      (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_lock         ), //i
    .io_inputs_1_aw_payload_cache     (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_cache[3:0]   ), //i
    .io_inputs_1_aw_payload_qos       (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_qos[3:0]     ), //i
    .io_inputs_1_aw_payload_prot      (axiMasters_1_writeOnly_decoder_io_outputs_2_aw_payload_prot[2:0]    ), //i
    .io_inputs_1_w_valid              (axiMasters_1_writeOnly_decoder_io_outputs_2_w_valid                 ), //i
    .io_inputs_1_w_ready              (axiSlaves_3_writeOnly_arbiter_io_inputs_1_w_ready                   ), //o
    .io_inputs_1_w_payload_data       (axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_data[31:0]    ), //i
    .io_inputs_1_w_payload_strb       (axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_strb[3:0]     ), //i
    .io_inputs_1_w_payload_last       (axiMasters_1_writeOnly_decoder_io_outputs_2_w_payload_last          ), //i
    .io_inputs_1_b_valid              (axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_valid                   ), //o
    .io_inputs_1_b_ready              (axiMasters_1_writeOnly_decoder_io_outputs_2_b_ready                 ), //i
    .io_inputs_1_b_payload_id         (axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_id[3:0]         ), //o
    .io_inputs_1_b_payload_resp       (axiSlaves_3_writeOnly_arbiter_io_inputs_1_b_payload_resp[1:0]       ), //o
    .io_inputs_2_aw_valid             (_zz_52                                                              ), //i
    .io_inputs_2_aw_ready             (axiSlaves_3_writeOnly_arbiter_io_inputs_2_aw_ready                  ), //o
    .io_inputs_2_aw_payload_addr      (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_addr[12:0]   ), //i
    .io_inputs_2_aw_payload_id        (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_id[3:0]      ), //i
    .io_inputs_2_aw_payload_region    (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_region[3:0]  ), //i
    .io_inputs_2_aw_payload_len       (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_len[7:0]     ), //i
    .io_inputs_2_aw_payload_size      (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_size[2:0]    ), //i
    .io_inputs_2_aw_payload_burst     (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_burst[1:0]   ), //i
    .io_inputs_2_aw_payload_lock      (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_lock         ), //i
    .io_inputs_2_aw_payload_cache     (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_cache[3:0]   ), //i
    .io_inputs_2_aw_payload_qos       (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_qos[3:0]     ), //i
    .io_inputs_2_aw_payload_prot      (axiMasters_2_writeOnly_decoder_io_outputs_2_aw_payload_prot[2:0]    ), //i
    .io_inputs_2_w_valid              (axiMasters_2_writeOnly_decoder_io_outputs_2_w_valid                 ), //i
    .io_inputs_2_w_ready              (axiSlaves_3_writeOnly_arbiter_io_inputs_2_w_ready                   ), //o
    .io_inputs_2_w_payload_data       (axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_data[31:0]    ), //i
    .io_inputs_2_w_payload_strb       (axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_strb[3:0]     ), //i
    .io_inputs_2_w_payload_last       (axiMasters_2_writeOnly_decoder_io_outputs_2_w_payload_last          ), //i
    .io_inputs_2_b_valid              (axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_valid                   ), //o
    .io_inputs_2_b_ready              (axiMasters_2_writeOnly_decoder_io_outputs_2_b_ready                 ), //i
    .io_inputs_2_b_payload_id         (axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_id[3:0]         ), //o
    .io_inputs_2_b_payload_resp       (axiSlaves_3_writeOnly_arbiter_io_inputs_2_b_payload_resp[1:0]       ), //o
    .io_output_aw_valid               (axiSlaves_3_writeOnly_arbiter_io_output_aw_valid                    ), //o
    .io_output_aw_ready               (axiSlaves_3_writeOnly_aw_ready                                      ), //i
    .io_output_aw_payload_addr        (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_addr[12:0]       ), //o
    .io_output_aw_payload_id          (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_id[5:0]          ), //o
    .io_output_aw_payload_region      (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_region[3:0]      ), //o
    .io_output_aw_payload_len         (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_len[7:0]         ), //o
    .io_output_aw_payload_size        (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_size[2:0]        ), //o
    .io_output_aw_payload_burst       (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_burst[1:0]       ), //o
    .io_output_aw_payload_lock        (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_lock             ), //o
    .io_output_aw_payload_cache       (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_cache[3:0]       ), //o
    .io_output_aw_payload_qos         (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_qos[3:0]         ), //o
    .io_output_aw_payload_prot        (axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_prot[2:0]        ), //o
    .io_output_w_valid                (axiSlaves_3_writeOnly_arbiter_io_output_w_valid                     ), //o
    .io_output_w_ready                (axiSlaves_3_writeOnly_w_ready                                       ), //i
    .io_output_w_payload_data         (axiSlaves_3_writeOnly_arbiter_io_output_w_payload_data[31:0]        ), //o
    .io_output_w_payload_strb         (axiSlaves_3_writeOnly_arbiter_io_output_w_payload_strb[3:0]         ), //o
    .io_output_w_payload_last         (axiSlaves_3_writeOnly_arbiter_io_output_w_payload_last              ), //o
    .io_output_b_valid                (axiSlaves_3_writeOnly_b_valid                                       ), //i
    .io_output_b_ready                (axiSlaves_3_writeOnly_arbiter_io_output_b_ready                     ), //o
    .io_output_b_payload_id           (axiSlaves_3_writeOnly_b_payload_id[5:0]                             ), //i
    .io_output_b_payload_resp         (axiSlaves_3_writeOnly_b_payload_resp[1:0]                           ), //i
    .clk                              (clk                                                                 ), //i
    .reset                            (reset                                                               )  //i
  );
  assign axiSlaves_0_ar_valid = axiSlaves_0_readOnly_ar_valid;
  assign axiSlaves_0_readOnly_ar_ready = axiSlaves_0_ar_ready;
  assign axiSlaves_0_ar_payload_addr = axiSlaves_0_readOnly_ar_payload_addr;
  assign axiSlaves_0_ar_payload_id = axiSlaves_0_readOnly_ar_payload_id;
  assign axiSlaves_0_ar_payload_region = axiSlaves_0_readOnly_ar_payload_region;
  assign axiSlaves_0_ar_payload_len = axiSlaves_0_readOnly_ar_payload_len;
  assign axiSlaves_0_ar_payload_size = axiSlaves_0_readOnly_ar_payload_size;
  assign axiSlaves_0_ar_payload_burst = axiSlaves_0_readOnly_ar_payload_burst;
  assign axiSlaves_0_ar_payload_lock = axiSlaves_0_readOnly_ar_payload_lock;
  assign axiSlaves_0_ar_payload_cache = axiSlaves_0_readOnly_ar_payload_cache;
  assign axiSlaves_0_ar_payload_qos = axiSlaves_0_readOnly_ar_payload_qos;
  assign axiSlaves_0_ar_payload_prot = axiSlaves_0_readOnly_ar_payload_prot;
  assign axiSlaves_0_readOnly_r_valid = axiSlaves_0_r_valid;
  assign axiSlaves_0_r_ready = axiSlaves_0_readOnly_r_ready;
  assign axiSlaves_0_readOnly_r_payload_data = axiSlaves_0_r_payload_data;
  assign axiSlaves_0_readOnly_r_payload_last = axiSlaves_0_r_payload_last;
  assign axiSlaves_0_readOnly_r_payload_id = axiSlaves_0_r_payload_id;
  assign axiSlaves_0_readOnly_r_payload_resp = axiSlaves_0_r_payload_resp;
  assign axiSlaves_0_aw_valid = axiSlaves_0_writeOnly_aw_valid;
  assign axiSlaves_0_writeOnly_aw_ready = axiSlaves_0_aw_ready;
  assign axiSlaves_0_aw_payload_addr = axiSlaves_0_writeOnly_aw_payload_addr;
  assign axiSlaves_0_aw_payload_id = axiSlaves_0_writeOnly_aw_payload_id;
  assign axiSlaves_0_aw_payload_region = axiSlaves_0_writeOnly_aw_payload_region;
  assign axiSlaves_0_aw_payload_len = axiSlaves_0_writeOnly_aw_payload_len;
  assign axiSlaves_0_aw_payload_size = axiSlaves_0_writeOnly_aw_payload_size;
  assign axiSlaves_0_aw_payload_burst = axiSlaves_0_writeOnly_aw_payload_burst;
  assign axiSlaves_0_aw_payload_lock = axiSlaves_0_writeOnly_aw_payload_lock;
  assign axiSlaves_0_aw_payload_cache = axiSlaves_0_writeOnly_aw_payload_cache;
  assign axiSlaves_0_aw_payload_qos = axiSlaves_0_writeOnly_aw_payload_qos;
  assign axiSlaves_0_aw_payload_prot = axiSlaves_0_writeOnly_aw_payload_prot;
  assign axiSlaves_0_w_valid = axiSlaves_0_writeOnly_w_valid;
  assign axiSlaves_0_writeOnly_w_ready = axiSlaves_0_w_ready;
  assign axiSlaves_0_w_payload_data = axiSlaves_0_writeOnly_w_payload_data;
  assign axiSlaves_0_w_payload_strb = axiSlaves_0_writeOnly_w_payload_strb;
  assign axiSlaves_0_w_payload_last = axiSlaves_0_writeOnly_w_payload_last;
  assign axiSlaves_0_writeOnly_b_valid = axiSlaves_0_b_valid;
  assign axiSlaves_0_b_ready = axiSlaves_0_writeOnly_b_ready;
  assign axiSlaves_0_writeOnly_b_payload_id = axiSlaves_0_b_payload_id;
  assign axiSlaves_0_writeOnly_b_payload_resp = axiSlaves_0_b_payload_resp;
  assign axiSlaves_1_ar_valid = axiSlaves_1_readOnly_ar_valid;
  assign axiSlaves_1_readOnly_ar_ready = axiSlaves_1_ar_ready;
  assign axiSlaves_1_ar_payload_addr = axiSlaves_1_readOnly_ar_payload_addr;
  assign axiSlaves_1_ar_payload_id = axiSlaves_1_readOnly_ar_payload_id;
  assign axiSlaves_1_ar_payload_region = axiSlaves_1_readOnly_ar_payload_region;
  assign axiSlaves_1_ar_payload_len = axiSlaves_1_readOnly_ar_payload_len;
  assign axiSlaves_1_ar_payload_size = axiSlaves_1_readOnly_ar_payload_size;
  assign axiSlaves_1_ar_payload_burst = axiSlaves_1_readOnly_ar_payload_burst;
  assign axiSlaves_1_ar_payload_lock = axiSlaves_1_readOnly_ar_payload_lock;
  assign axiSlaves_1_ar_payload_cache = axiSlaves_1_readOnly_ar_payload_cache;
  assign axiSlaves_1_ar_payload_qos = axiSlaves_1_readOnly_ar_payload_qos;
  assign axiSlaves_1_ar_payload_prot = axiSlaves_1_readOnly_ar_payload_prot;
  assign axiSlaves_1_readOnly_r_valid = axiSlaves_1_r_valid;
  assign axiSlaves_1_r_ready = axiSlaves_1_readOnly_r_ready;
  assign axiSlaves_1_readOnly_r_payload_data = axiSlaves_1_r_payload_data;
  assign axiSlaves_1_readOnly_r_payload_last = axiSlaves_1_r_payload_last;
  assign axiSlaves_1_readOnly_r_payload_id = axiSlaves_1_r_payload_id;
  assign axiSlaves_1_readOnly_r_payload_resp = axiSlaves_1_r_payload_resp;
  assign axiSlaves_1_aw_valid = axiSlaves_1_writeOnly_aw_valid;
  assign axiSlaves_1_writeOnly_aw_ready = axiSlaves_1_aw_ready;
  assign axiSlaves_1_aw_payload_addr = axiSlaves_1_writeOnly_aw_payload_addr;
  assign axiSlaves_1_aw_payload_id = axiSlaves_1_writeOnly_aw_payload_id;
  assign axiSlaves_1_aw_payload_region = axiSlaves_1_writeOnly_aw_payload_region;
  assign axiSlaves_1_aw_payload_len = axiSlaves_1_writeOnly_aw_payload_len;
  assign axiSlaves_1_aw_payload_size = axiSlaves_1_writeOnly_aw_payload_size;
  assign axiSlaves_1_aw_payload_burst = axiSlaves_1_writeOnly_aw_payload_burst;
  assign axiSlaves_1_aw_payload_lock = axiSlaves_1_writeOnly_aw_payload_lock;
  assign axiSlaves_1_aw_payload_cache = axiSlaves_1_writeOnly_aw_payload_cache;
  assign axiSlaves_1_aw_payload_qos = axiSlaves_1_writeOnly_aw_payload_qos;
  assign axiSlaves_1_aw_payload_prot = axiSlaves_1_writeOnly_aw_payload_prot;
  assign axiSlaves_1_w_valid = axiSlaves_1_writeOnly_w_valid;
  assign axiSlaves_1_writeOnly_w_ready = axiSlaves_1_w_ready;
  assign axiSlaves_1_w_payload_data = axiSlaves_1_writeOnly_w_payload_data;
  assign axiSlaves_1_w_payload_strb = axiSlaves_1_writeOnly_w_payload_strb;
  assign axiSlaves_1_w_payload_last = axiSlaves_1_writeOnly_w_payload_last;
  assign axiSlaves_1_writeOnly_b_valid = axiSlaves_1_b_valid;
  assign axiSlaves_1_b_ready = axiSlaves_1_writeOnly_b_ready;
  assign axiSlaves_1_writeOnly_b_payload_id = axiSlaves_1_b_payload_id;
  assign axiSlaves_1_writeOnly_b_payload_resp = axiSlaves_1_b_payload_resp;
  assign axiSlaves_2_ar_valid = axiSlaves_2_readOnly_ar_valid;
  assign axiSlaves_2_readOnly_ar_ready = axiSlaves_2_ar_ready;
  assign axiSlaves_2_ar_payload_addr = axiSlaves_2_readOnly_ar_payload_addr;
  assign axiSlaves_2_ar_payload_id = axiSlaves_2_readOnly_ar_payload_id;
  assign axiSlaves_2_ar_payload_region = axiSlaves_2_readOnly_ar_payload_region;
  assign axiSlaves_2_ar_payload_len = axiSlaves_2_readOnly_ar_payload_len;
  assign axiSlaves_2_ar_payload_size = axiSlaves_2_readOnly_ar_payload_size;
  assign axiSlaves_2_ar_payload_burst = axiSlaves_2_readOnly_ar_payload_burst;
  assign axiSlaves_2_ar_payload_lock = axiSlaves_2_readOnly_ar_payload_lock;
  assign axiSlaves_2_ar_payload_cache = axiSlaves_2_readOnly_ar_payload_cache;
  assign axiSlaves_2_ar_payload_qos = axiSlaves_2_readOnly_ar_payload_qos;
  assign axiSlaves_2_ar_payload_prot = axiSlaves_2_readOnly_ar_payload_prot;
  assign axiSlaves_2_readOnly_r_valid = axiSlaves_2_r_valid;
  assign axiSlaves_2_r_ready = axiSlaves_2_readOnly_r_ready;
  assign axiSlaves_2_readOnly_r_payload_data = axiSlaves_2_r_payload_data;
  assign axiSlaves_2_readOnly_r_payload_last = axiSlaves_2_r_payload_last;
  assign axiSlaves_2_readOnly_r_payload_id = axiSlaves_2_r_payload_id;
  assign axiSlaves_2_readOnly_r_payload_resp = axiSlaves_2_r_payload_resp;
  assign axiSlaves_2_aw_valid = axiSlaves_2_writeOnly_aw_valid;
  assign axiSlaves_2_writeOnly_aw_ready = axiSlaves_2_aw_ready;
  assign axiSlaves_2_aw_payload_addr = axiSlaves_2_writeOnly_aw_payload_addr;
  assign axiSlaves_2_aw_payload_id = axiSlaves_2_writeOnly_aw_payload_id;
  assign axiSlaves_2_aw_payload_region = axiSlaves_2_writeOnly_aw_payload_region;
  assign axiSlaves_2_aw_payload_len = axiSlaves_2_writeOnly_aw_payload_len;
  assign axiSlaves_2_aw_payload_size = axiSlaves_2_writeOnly_aw_payload_size;
  assign axiSlaves_2_aw_payload_burst = axiSlaves_2_writeOnly_aw_payload_burst;
  assign axiSlaves_2_aw_payload_lock = axiSlaves_2_writeOnly_aw_payload_lock;
  assign axiSlaves_2_aw_payload_cache = axiSlaves_2_writeOnly_aw_payload_cache;
  assign axiSlaves_2_aw_payload_qos = axiSlaves_2_writeOnly_aw_payload_qos;
  assign axiSlaves_2_aw_payload_prot = axiSlaves_2_writeOnly_aw_payload_prot;
  assign axiSlaves_2_w_valid = axiSlaves_2_writeOnly_w_valid;
  assign axiSlaves_2_writeOnly_w_ready = axiSlaves_2_w_ready;
  assign axiSlaves_2_w_payload_data = axiSlaves_2_writeOnly_w_payload_data;
  assign axiSlaves_2_w_payload_strb = axiSlaves_2_writeOnly_w_payload_strb;
  assign axiSlaves_2_w_payload_last = axiSlaves_2_writeOnly_w_payload_last;
  assign axiSlaves_2_writeOnly_b_valid = axiSlaves_2_b_valid;
  assign axiSlaves_2_b_ready = axiSlaves_2_writeOnly_b_ready;
  assign axiSlaves_2_writeOnly_b_payload_id = axiSlaves_2_b_payload_id;
  assign axiSlaves_2_writeOnly_b_payload_resp = axiSlaves_2_b_payload_resp;
  assign axiSlaves_3_ar_valid = axiSlaves_3_readOnly_ar_valid;
  assign axiSlaves_3_readOnly_ar_ready = axiSlaves_3_ar_ready;
  assign axiSlaves_3_ar_payload_addr = axiSlaves_3_readOnly_ar_payload_addr;
  assign axiSlaves_3_ar_payload_id = axiSlaves_3_readOnly_ar_payload_id;
  assign axiSlaves_3_ar_payload_region = axiSlaves_3_readOnly_ar_payload_region;
  assign axiSlaves_3_ar_payload_len = axiSlaves_3_readOnly_ar_payload_len;
  assign axiSlaves_3_ar_payload_size = axiSlaves_3_readOnly_ar_payload_size;
  assign axiSlaves_3_ar_payload_burst = axiSlaves_3_readOnly_ar_payload_burst;
  assign axiSlaves_3_ar_payload_lock = axiSlaves_3_readOnly_ar_payload_lock;
  assign axiSlaves_3_ar_payload_cache = axiSlaves_3_readOnly_ar_payload_cache;
  assign axiSlaves_3_ar_payload_qos = axiSlaves_3_readOnly_ar_payload_qos;
  assign axiSlaves_3_ar_payload_prot = axiSlaves_3_readOnly_ar_payload_prot;
  assign axiSlaves_3_readOnly_r_valid = axiSlaves_3_r_valid;
  assign axiSlaves_3_r_ready = axiSlaves_3_readOnly_r_ready;
  assign axiSlaves_3_readOnly_r_payload_data = axiSlaves_3_r_payload_data;
  assign axiSlaves_3_readOnly_r_payload_last = axiSlaves_3_r_payload_last;
  assign axiSlaves_3_readOnly_r_payload_id = axiSlaves_3_r_payload_id;
  assign axiSlaves_3_readOnly_r_payload_resp = axiSlaves_3_r_payload_resp;
  assign axiSlaves_3_aw_valid = axiSlaves_3_writeOnly_aw_valid;
  assign axiSlaves_3_writeOnly_aw_ready = axiSlaves_3_aw_ready;
  assign axiSlaves_3_aw_payload_addr = axiSlaves_3_writeOnly_aw_payload_addr;
  assign axiSlaves_3_aw_payload_id = axiSlaves_3_writeOnly_aw_payload_id;
  assign axiSlaves_3_aw_payload_region = axiSlaves_3_writeOnly_aw_payload_region;
  assign axiSlaves_3_aw_payload_len = axiSlaves_3_writeOnly_aw_payload_len;
  assign axiSlaves_3_aw_payload_size = axiSlaves_3_writeOnly_aw_payload_size;
  assign axiSlaves_3_aw_payload_burst = axiSlaves_3_writeOnly_aw_payload_burst;
  assign axiSlaves_3_aw_payload_lock = axiSlaves_3_writeOnly_aw_payload_lock;
  assign axiSlaves_3_aw_payload_cache = axiSlaves_3_writeOnly_aw_payload_cache;
  assign axiSlaves_3_aw_payload_qos = axiSlaves_3_writeOnly_aw_payload_qos;
  assign axiSlaves_3_aw_payload_prot = axiSlaves_3_writeOnly_aw_payload_prot;
  assign axiSlaves_3_w_valid = axiSlaves_3_writeOnly_w_valid;
  assign axiSlaves_3_writeOnly_w_ready = axiSlaves_3_w_ready;
  assign axiSlaves_3_w_payload_data = axiSlaves_3_writeOnly_w_payload_data;
  assign axiSlaves_3_w_payload_strb = axiSlaves_3_writeOnly_w_payload_strb;
  assign axiSlaves_3_w_payload_last = axiSlaves_3_writeOnly_w_payload_last;
  assign axiSlaves_3_writeOnly_b_valid = axiSlaves_3_b_valid;
  assign axiSlaves_3_b_ready = axiSlaves_3_writeOnly_b_ready;
  assign axiSlaves_3_writeOnly_b_payload_id = axiSlaves_3_b_payload_id;
  assign axiSlaves_3_writeOnly_b_payload_resp = axiSlaves_3_b_payload_resp;
  assign axiMasters_0_readOnly_ar_valid = axiMasters_0_ar_valid;
  assign axiMasters_0_ar_ready = axiMasters_0_readOnly_ar_ready;
  assign axiMasters_0_readOnly_ar_payload_addr = axiMasters_0_ar_payload_addr;
  assign axiMasters_0_readOnly_ar_payload_id = axiMasters_0_ar_payload_id;
  assign axiMasters_0_readOnly_ar_payload_region = axiMasters_0_ar_payload_region;
  assign axiMasters_0_readOnly_ar_payload_len = axiMasters_0_ar_payload_len;
  assign axiMasters_0_readOnly_ar_payload_size = axiMasters_0_ar_payload_size;
  assign axiMasters_0_readOnly_ar_payload_burst = axiMasters_0_ar_payload_burst;
  assign axiMasters_0_readOnly_ar_payload_lock = axiMasters_0_ar_payload_lock;
  assign axiMasters_0_readOnly_ar_payload_cache = axiMasters_0_ar_payload_cache;
  assign axiMasters_0_readOnly_ar_payload_qos = axiMasters_0_ar_payload_qos;
  assign axiMasters_0_readOnly_ar_payload_prot = axiMasters_0_ar_payload_prot;
  assign axiMasters_0_r_valid = axiMasters_0_readOnly_r_valid;
  assign axiMasters_0_readOnly_r_ready = axiMasters_0_r_ready;
  assign axiMasters_0_r_payload_data = axiMasters_0_readOnly_r_payload_data;
  assign axiMasters_0_r_payload_last = axiMasters_0_readOnly_r_payload_last;
  assign axiMasters_0_r_payload_id = axiMasters_0_readOnly_r_payload_id;
  assign axiMasters_0_r_payload_resp = axiMasters_0_readOnly_r_payload_resp;
  assign axiMasters_0_writeOnly_aw_valid = axiMasters_0_aw_valid;
  assign axiMasters_0_aw_ready = axiMasters_0_writeOnly_aw_ready;
  assign axiMasters_0_writeOnly_aw_payload_addr = axiMasters_0_aw_payload_addr;
  assign axiMasters_0_writeOnly_aw_payload_id = axiMasters_0_aw_payload_id;
  assign axiMasters_0_writeOnly_aw_payload_region = axiMasters_0_aw_payload_region;
  assign axiMasters_0_writeOnly_aw_payload_len = axiMasters_0_aw_payload_len;
  assign axiMasters_0_writeOnly_aw_payload_size = axiMasters_0_aw_payload_size;
  assign axiMasters_0_writeOnly_aw_payload_burst = axiMasters_0_aw_payload_burst;
  assign axiMasters_0_writeOnly_aw_payload_lock = axiMasters_0_aw_payload_lock;
  assign axiMasters_0_writeOnly_aw_payload_cache = axiMasters_0_aw_payload_cache;
  assign axiMasters_0_writeOnly_aw_payload_qos = axiMasters_0_aw_payload_qos;
  assign axiMasters_0_writeOnly_aw_payload_prot = axiMasters_0_aw_payload_prot;
  assign axiMasters_0_writeOnly_w_valid = axiMasters_0_w_valid;
  assign axiMasters_0_w_ready = axiMasters_0_writeOnly_w_ready;
  assign axiMasters_0_writeOnly_w_payload_data = axiMasters_0_w_payload_data;
  assign axiMasters_0_writeOnly_w_payload_strb = axiMasters_0_w_payload_strb;
  assign axiMasters_0_writeOnly_w_payload_last = axiMasters_0_w_payload_last;
  assign axiMasters_0_b_valid = axiMasters_0_writeOnly_b_valid;
  assign axiMasters_0_writeOnly_b_ready = axiMasters_0_b_ready;
  assign axiMasters_0_b_payload_id = axiMasters_0_writeOnly_b_payload_id;
  assign axiMasters_0_b_payload_resp = axiMasters_0_writeOnly_b_payload_resp;
  assign axiMasters_1_readOnly_ar_valid = axiMasters_1_ar_valid;
  assign axiMasters_1_ar_ready = axiMasters_1_readOnly_ar_ready;
  assign axiMasters_1_readOnly_ar_payload_addr = axiMasters_1_ar_payload_addr;
  assign axiMasters_1_readOnly_ar_payload_id = axiMasters_1_ar_payload_id;
  assign axiMasters_1_readOnly_ar_payload_region = axiMasters_1_ar_payload_region;
  assign axiMasters_1_readOnly_ar_payload_len = axiMasters_1_ar_payload_len;
  assign axiMasters_1_readOnly_ar_payload_size = axiMasters_1_ar_payload_size;
  assign axiMasters_1_readOnly_ar_payload_burst = axiMasters_1_ar_payload_burst;
  assign axiMasters_1_readOnly_ar_payload_lock = axiMasters_1_ar_payload_lock;
  assign axiMasters_1_readOnly_ar_payload_cache = axiMasters_1_ar_payload_cache;
  assign axiMasters_1_readOnly_ar_payload_qos = axiMasters_1_ar_payload_qos;
  assign axiMasters_1_readOnly_ar_payload_prot = axiMasters_1_ar_payload_prot;
  assign axiMasters_1_r_valid = axiMasters_1_readOnly_r_valid;
  assign axiMasters_1_readOnly_r_ready = axiMasters_1_r_ready;
  assign axiMasters_1_r_payload_data = axiMasters_1_readOnly_r_payload_data;
  assign axiMasters_1_r_payload_last = axiMasters_1_readOnly_r_payload_last;
  assign axiMasters_1_r_payload_id = axiMasters_1_readOnly_r_payload_id;
  assign axiMasters_1_r_payload_resp = axiMasters_1_readOnly_r_payload_resp;
  assign axiMasters_1_writeOnly_aw_valid = axiMasters_1_aw_valid;
  assign axiMasters_1_aw_ready = axiMasters_1_writeOnly_aw_ready;
  assign axiMasters_1_writeOnly_aw_payload_addr = axiMasters_1_aw_payload_addr;
  assign axiMasters_1_writeOnly_aw_payload_id = axiMasters_1_aw_payload_id;
  assign axiMasters_1_writeOnly_aw_payload_region = axiMasters_1_aw_payload_region;
  assign axiMasters_1_writeOnly_aw_payload_len = axiMasters_1_aw_payload_len;
  assign axiMasters_1_writeOnly_aw_payload_size = axiMasters_1_aw_payload_size;
  assign axiMasters_1_writeOnly_aw_payload_burst = axiMasters_1_aw_payload_burst;
  assign axiMasters_1_writeOnly_aw_payload_lock = axiMasters_1_aw_payload_lock;
  assign axiMasters_1_writeOnly_aw_payload_cache = axiMasters_1_aw_payload_cache;
  assign axiMasters_1_writeOnly_aw_payload_qos = axiMasters_1_aw_payload_qos;
  assign axiMasters_1_writeOnly_aw_payload_prot = axiMasters_1_aw_payload_prot;
  assign axiMasters_1_writeOnly_w_valid = axiMasters_1_w_valid;
  assign axiMasters_1_w_ready = axiMasters_1_writeOnly_w_ready;
  assign axiMasters_1_writeOnly_w_payload_data = axiMasters_1_w_payload_data;
  assign axiMasters_1_writeOnly_w_payload_strb = axiMasters_1_w_payload_strb;
  assign axiMasters_1_writeOnly_w_payload_last = axiMasters_1_w_payload_last;
  assign axiMasters_1_b_valid = axiMasters_1_writeOnly_b_valid;
  assign axiMasters_1_writeOnly_b_ready = axiMasters_1_b_ready;
  assign axiMasters_1_b_payload_id = axiMasters_1_writeOnly_b_payload_id;
  assign axiMasters_1_b_payload_resp = axiMasters_1_writeOnly_b_payload_resp;
  assign axiMasters_2_readOnly_ar_valid = axiMasters_2_ar_valid;
  assign axiMasters_2_ar_ready = axiMasters_2_readOnly_ar_ready;
  assign axiMasters_2_readOnly_ar_payload_addr = axiMasters_2_ar_payload_addr;
  assign axiMasters_2_readOnly_ar_payload_id = axiMasters_2_ar_payload_id;
  assign axiMasters_2_readOnly_ar_payload_region = axiMasters_2_ar_payload_region;
  assign axiMasters_2_readOnly_ar_payload_len = axiMasters_2_ar_payload_len;
  assign axiMasters_2_readOnly_ar_payload_size = axiMasters_2_ar_payload_size;
  assign axiMasters_2_readOnly_ar_payload_burst = axiMasters_2_ar_payload_burst;
  assign axiMasters_2_readOnly_ar_payload_lock = axiMasters_2_ar_payload_lock;
  assign axiMasters_2_readOnly_ar_payload_cache = axiMasters_2_ar_payload_cache;
  assign axiMasters_2_readOnly_ar_payload_qos = axiMasters_2_ar_payload_qos;
  assign axiMasters_2_readOnly_ar_payload_prot = axiMasters_2_ar_payload_prot;
  assign axiMasters_2_r_valid = axiMasters_2_readOnly_r_valid;
  assign axiMasters_2_readOnly_r_ready = axiMasters_2_r_ready;
  assign axiMasters_2_r_payload_data = axiMasters_2_readOnly_r_payload_data;
  assign axiMasters_2_r_payload_last = axiMasters_2_readOnly_r_payload_last;
  assign axiMasters_2_r_payload_id = axiMasters_2_readOnly_r_payload_id;
  assign axiMasters_2_r_payload_resp = axiMasters_2_readOnly_r_payload_resp;
  assign axiMasters_2_writeOnly_aw_valid = axiMasters_2_aw_valid;
  assign axiMasters_2_aw_ready = axiMasters_2_writeOnly_aw_ready;
  assign axiMasters_2_writeOnly_aw_payload_addr = axiMasters_2_aw_payload_addr;
  assign axiMasters_2_writeOnly_aw_payload_id = axiMasters_2_aw_payload_id;
  assign axiMasters_2_writeOnly_aw_payload_region = axiMasters_2_aw_payload_region;
  assign axiMasters_2_writeOnly_aw_payload_len = axiMasters_2_aw_payload_len;
  assign axiMasters_2_writeOnly_aw_payload_size = axiMasters_2_aw_payload_size;
  assign axiMasters_2_writeOnly_aw_payload_burst = axiMasters_2_aw_payload_burst;
  assign axiMasters_2_writeOnly_aw_payload_lock = axiMasters_2_aw_payload_lock;
  assign axiMasters_2_writeOnly_aw_payload_cache = axiMasters_2_aw_payload_cache;
  assign axiMasters_2_writeOnly_aw_payload_qos = axiMasters_2_aw_payload_qos;
  assign axiMasters_2_writeOnly_aw_payload_prot = axiMasters_2_aw_payload_prot;
  assign axiMasters_2_writeOnly_w_valid = axiMasters_2_w_valid;
  assign axiMasters_2_w_ready = axiMasters_2_writeOnly_w_ready;
  assign axiMasters_2_writeOnly_w_payload_data = axiMasters_2_w_payload_data;
  assign axiMasters_2_writeOnly_w_payload_strb = axiMasters_2_w_payload_strb;
  assign axiMasters_2_writeOnly_w_payload_last = axiMasters_2_w_payload_last;
  assign axiMasters_2_b_valid = axiMasters_2_writeOnly_b_valid;
  assign axiMasters_2_writeOnly_b_ready = axiMasters_2_b_ready;
  assign axiMasters_2_b_payload_id = axiMasters_2_writeOnly_b_payload_id;
  assign axiMasters_2_b_payload_resp = axiMasters_2_writeOnly_b_payload_resp;
  assign _zz_1 = _zz_3;
  assign _zz_55 = (_zz_2 && _zz_3);
  assign _zz_2 = axiSlaves_1_readOnly_arbiter_io_inputs_0_ar_ready;
  assign _zz_56 = axiSlaves_1_readOnly_arbiter_io_inputs_0_r_payload_id[3:0];
  assign _zz_4 = _zz_6;
  assign _zz_57 = (_zz_5 && _zz_6);
  assign _zz_5 = axiSlaves_2_readOnly_arbiter_io_inputs_0_ar_ready;
  assign _zz_58 = axiSlaves_2_readOnly_arbiter_io_inputs_0_r_payload_id[3:0];
  assign _zz_7 = _zz_9;
  assign _zz_59 = (_zz_8 && _zz_9);
  assign _zz_8 = axiSlaves_3_readOnly_arbiter_io_inputs_0_ar_ready;
  assign axiMasters_0_readOnly_ar_ready = axiMasters_0_readOnly_decoder_io_input_ar_ready;
  assign axiMasters_0_readOnly_r_valid = axiMasters_0_readOnly_decoder_io_input_r_valid;
  assign axiMasters_0_readOnly_r_payload_data = axiMasters_0_readOnly_decoder_io_input_r_payload_data;
  assign axiMasters_0_readOnly_r_payload_last = axiMasters_0_readOnly_decoder_io_input_r_payload_last;
  assign axiMasters_0_readOnly_r_payload_id = axiMasters_0_readOnly_decoder_io_input_r_payload_id;
  assign axiMasters_0_readOnly_r_payload_resp = axiMasters_0_readOnly_decoder_io_input_r_payload_resp;
  assign _zz_10 = _zz_12;
  assign _zz_60 = (_zz_11 && _zz_12);
  assign _zz_11 = axiSlaves_1_writeOnly_arbiter_io_inputs_0_aw_ready;
  assign _zz_61 = axiSlaves_1_writeOnly_arbiter_io_inputs_0_b_payload_id[3:0];
  assign _zz_13 = _zz_15;
  assign _zz_62 = (_zz_14 && _zz_15);
  assign _zz_14 = axiSlaves_2_writeOnly_arbiter_io_inputs_0_aw_ready;
  assign _zz_63 = axiSlaves_2_writeOnly_arbiter_io_inputs_0_b_payload_id[3:0];
  assign _zz_16 = _zz_18;
  assign _zz_64 = (_zz_17 && _zz_18);
  assign _zz_17 = axiSlaves_3_writeOnly_arbiter_io_inputs_0_aw_ready;
  assign axiMasters_0_writeOnly_aw_ready = axiMasters_0_writeOnly_decoder_io_input_aw_ready;
  assign axiMasters_0_writeOnly_w_ready = axiMasters_0_writeOnly_decoder_io_input_w_ready;
  assign axiMasters_0_writeOnly_b_valid = axiMasters_0_writeOnly_decoder_io_input_b_valid;
  assign axiMasters_0_writeOnly_b_payload_id = axiMasters_0_writeOnly_decoder_io_input_b_payload_id;
  assign axiMasters_0_writeOnly_b_payload_resp = axiMasters_0_writeOnly_decoder_io_input_b_payload_resp;
  assign _zz_19 = _zz_21;
  assign _zz_65 = (_zz_20 && _zz_21);
  assign _zz_20 = axiSlaves_0_readOnly_arbiter_io_inputs_0_ar_ready;
  assign _zz_66 = axiSlaves_0_readOnly_arbiter_io_inputs_0_r_payload_id[3:0];
  assign _zz_22 = _zz_24;
  assign _zz_67 = (_zz_23 && _zz_24);
  assign _zz_23 = axiSlaves_2_readOnly_arbiter_io_inputs_1_ar_ready;
  assign _zz_68 = axiSlaves_2_readOnly_arbiter_io_inputs_1_r_payload_id[3:0];
  assign _zz_25 = _zz_27;
  assign _zz_69 = (_zz_26 && _zz_27);
  assign _zz_26 = axiSlaves_3_readOnly_arbiter_io_inputs_1_ar_ready;
  assign axiMasters_1_readOnly_ar_ready = axiMasters_1_readOnly_decoder_io_input_ar_ready;
  assign axiMasters_1_readOnly_r_valid = axiMasters_1_readOnly_decoder_io_input_r_valid;
  assign axiMasters_1_readOnly_r_payload_data = axiMasters_1_readOnly_decoder_io_input_r_payload_data;
  assign axiMasters_1_readOnly_r_payload_last = axiMasters_1_readOnly_decoder_io_input_r_payload_last;
  assign axiMasters_1_readOnly_r_payload_id = axiMasters_1_readOnly_decoder_io_input_r_payload_id;
  assign axiMasters_1_readOnly_r_payload_resp = axiMasters_1_readOnly_decoder_io_input_r_payload_resp;
  assign _zz_28 = _zz_30;
  assign _zz_70 = (_zz_29 && _zz_30);
  assign _zz_29 = axiSlaves_0_writeOnly_arbiter_io_inputs_0_aw_ready;
  assign _zz_71 = axiSlaves_0_writeOnly_arbiter_io_inputs_0_b_payload_id[3:0];
  assign _zz_31 = _zz_33;
  assign _zz_72 = (_zz_32 && _zz_33);
  assign _zz_32 = axiSlaves_2_writeOnly_arbiter_io_inputs_1_aw_ready;
  assign _zz_73 = axiSlaves_2_writeOnly_arbiter_io_inputs_1_b_payload_id[3:0];
  assign _zz_34 = _zz_36;
  assign _zz_74 = (_zz_35 && _zz_36);
  assign _zz_35 = axiSlaves_3_writeOnly_arbiter_io_inputs_1_aw_ready;
  assign axiMasters_1_writeOnly_aw_ready = axiMasters_1_writeOnly_decoder_io_input_aw_ready;
  assign axiMasters_1_writeOnly_w_ready = axiMasters_1_writeOnly_decoder_io_input_w_ready;
  assign axiMasters_1_writeOnly_b_valid = axiMasters_1_writeOnly_decoder_io_input_b_valid;
  assign axiMasters_1_writeOnly_b_payload_id = axiMasters_1_writeOnly_decoder_io_input_b_payload_id;
  assign axiMasters_1_writeOnly_b_payload_resp = axiMasters_1_writeOnly_decoder_io_input_b_payload_resp;
  assign _zz_37 = _zz_39;
  assign _zz_75 = (_zz_38 && _zz_39);
  assign _zz_38 = axiSlaves_0_readOnly_arbiter_io_inputs_1_ar_ready;
  assign _zz_76 = axiSlaves_0_readOnly_arbiter_io_inputs_1_r_payload_id[3:0];
  assign _zz_40 = _zz_42;
  assign _zz_77 = (_zz_41 && _zz_42);
  assign _zz_41 = axiSlaves_1_readOnly_arbiter_io_inputs_1_ar_ready;
  assign _zz_78 = axiSlaves_1_readOnly_arbiter_io_inputs_1_r_payload_id[3:0];
  assign _zz_43 = _zz_45;
  assign _zz_79 = (_zz_44 && _zz_45);
  assign _zz_44 = axiSlaves_3_readOnly_arbiter_io_inputs_2_ar_ready;
  assign axiMasters_2_readOnly_ar_ready = axiMasters_2_readOnly_decoder_io_input_ar_ready;
  assign axiMasters_2_readOnly_r_valid = axiMasters_2_readOnly_decoder_io_input_r_valid;
  assign axiMasters_2_readOnly_r_payload_data = axiMasters_2_readOnly_decoder_io_input_r_payload_data;
  assign axiMasters_2_readOnly_r_payload_last = axiMasters_2_readOnly_decoder_io_input_r_payload_last;
  assign axiMasters_2_readOnly_r_payload_id = axiMasters_2_readOnly_decoder_io_input_r_payload_id;
  assign axiMasters_2_readOnly_r_payload_resp = axiMasters_2_readOnly_decoder_io_input_r_payload_resp;
  assign _zz_46 = _zz_48;
  assign _zz_80 = (_zz_47 && _zz_48);
  assign _zz_47 = axiSlaves_0_writeOnly_arbiter_io_inputs_1_aw_ready;
  assign _zz_81 = axiSlaves_0_writeOnly_arbiter_io_inputs_1_b_payload_id[3:0];
  assign _zz_49 = _zz_51;
  assign _zz_82 = (_zz_50 && _zz_51);
  assign _zz_50 = axiSlaves_1_writeOnly_arbiter_io_inputs_1_aw_ready;
  assign _zz_83 = axiSlaves_1_writeOnly_arbiter_io_inputs_1_b_payload_id[3:0];
  assign _zz_52 = _zz_54;
  assign _zz_84 = (_zz_53 && _zz_54);
  assign _zz_53 = axiSlaves_3_writeOnly_arbiter_io_inputs_2_aw_ready;
  assign axiMasters_2_writeOnly_aw_ready = axiMasters_2_writeOnly_decoder_io_input_aw_ready;
  assign axiMasters_2_writeOnly_w_ready = axiMasters_2_writeOnly_decoder_io_input_w_ready;
  assign axiMasters_2_writeOnly_b_valid = axiMasters_2_writeOnly_decoder_io_input_b_valid;
  assign axiMasters_2_writeOnly_b_payload_id = axiMasters_2_writeOnly_decoder_io_input_b_payload_id;
  assign axiMasters_2_writeOnly_b_payload_resp = axiMasters_2_writeOnly_decoder_io_input_b_payload_resp;
  assign _zz_85 = {1'd0, axiMasters_1_readOnly_decoder_io_outputs_0_ar_payload_id};
  assign _zz_86 = {1'd0, axiMasters_2_readOnly_decoder_io_outputs_0_ar_payload_id};
  assign axiSlaves_0_readOnly_ar_valid = axiSlaves_0_readOnly_arbiter_io_output_ar_valid;
  assign axiSlaves_0_readOnly_ar_payload_addr = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_addr;
  assign axiSlaves_0_readOnly_ar_payload_id = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_id;
  assign axiSlaves_0_readOnly_ar_payload_region = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_region;
  assign axiSlaves_0_readOnly_ar_payload_len = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_len;
  assign axiSlaves_0_readOnly_ar_payload_size = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_size;
  assign axiSlaves_0_readOnly_ar_payload_burst = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_burst;
  assign axiSlaves_0_readOnly_ar_payload_lock = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_lock;
  assign axiSlaves_0_readOnly_ar_payload_cache = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_cache;
  assign axiSlaves_0_readOnly_ar_payload_qos = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_qos;
  assign axiSlaves_0_readOnly_ar_payload_prot = axiSlaves_0_readOnly_arbiter_io_output_ar_payload_prot;
  assign axiSlaves_0_readOnly_r_ready = axiSlaves_0_readOnly_arbiter_io_output_r_ready;
  assign _zz_87 = {1'd0, axiMasters_1_writeOnly_decoder_io_outputs_0_aw_payload_id};
  assign _zz_88 = {1'd0, axiMasters_2_writeOnly_decoder_io_outputs_0_aw_payload_id};
  assign axiSlaves_0_writeOnly_aw_valid = axiSlaves_0_writeOnly_arbiter_io_output_aw_valid;
  assign axiSlaves_0_writeOnly_aw_payload_addr = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_addr;
  assign axiSlaves_0_writeOnly_aw_payload_id = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_id;
  assign axiSlaves_0_writeOnly_aw_payload_region = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_region;
  assign axiSlaves_0_writeOnly_aw_payload_len = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_len;
  assign axiSlaves_0_writeOnly_aw_payload_size = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_size;
  assign axiSlaves_0_writeOnly_aw_payload_burst = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_burst;
  assign axiSlaves_0_writeOnly_aw_payload_lock = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_lock;
  assign axiSlaves_0_writeOnly_aw_payload_cache = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_cache;
  assign axiSlaves_0_writeOnly_aw_payload_qos = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_qos;
  assign axiSlaves_0_writeOnly_aw_payload_prot = axiSlaves_0_writeOnly_arbiter_io_output_aw_payload_prot;
  assign axiSlaves_0_writeOnly_w_valid = axiSlaves_0_writeOnly_arbiter_io_output_w_valid;
  assign axiSlaves_0_writeOnly_w_payload_data = axiSlaves_0_writeOnly_arbiter_io_output_w_payload_data;
  assign axiSlaves_0_writeOnly_w_payload_strb = axiSlaves_0_writeOnly_arbiter_io_output_w_payload_strb;
  assign axiSlaves_0_writeOnly_w_payload_last = axiSlaves_0_writeOnly_arbiter_io_output_w_payload_last;
  assign axiSlaves_0_writeOnly_b_ready = axiSlaves_0_writeOnly_arbiter_io_output_b_ready;
  assign _zz_89 = {1'd0, axiMasters_0_readOnly_decoder_io_outputs_0_ar_payload_id};
  assign _zz_90 = {1'd0, axiMasters_2_readOnly_decoder_io_outputs_1_ar_payload_id};
  assign axiSlaves_1_readOnly_ar_valid = axiSlaves_1_readOnly_arbiter_io_output_ar_valid;
  assign axiSlaves_1_readOnly_ar_payload_addr = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_addr;
  assign axiSlaves_1_readOnly_ar_payload_id = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_id;
  assign axiSlaves_1_readOnly_ar_payload_region = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_region;
  assign axiSlaves_1_readOnly_ar_payload_len = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_len;
  assign axiSlaves_1_readOnly_ar_payload_size = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_size;
  assign axiSlaves_1_readOnly_ar_payload_burst = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_burst;
  assign axiSlaves_1_readOnly_ar_payload_lock = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_lock;
  assign axiSlaves_1_readOnly_ar_payload_cache = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_cache;
  assign axiSlaves_1_readOnly_ar_payload_qos = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_qos;
  assign axiSlaves_1_readOnly_ar_payload_prot = axiSlaves_1_readOnly_arbiter_io_output_ar_payload_prot;
  assign axiSlaves_1_readOnly_r_ready = axiSlaves_1_readOnly_arbiter_io_output_r_ready;
  assign _zz_91 = {1'd0, axiMasters_0_writeOnly_decoder_io_outputs_0_aw_payload_id};
  assign _zz_92 = {1'd0, axiMasters_2_writeOnly_decoder_io_outputs_1_aw_payload_id};
  assign axiSlaves_1_writeOnly_aw_valid = axiSlaves_1_writeOnly_arbiter_io_output_aw_valid;
  assign axiSlaves_1_writeOnly_aw_payload_addr = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_addr;
  assign axiSlaves_1_writeOnly_aw_payload_id = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_id;
  assign axiSlaves_1_writeOnly_aw_payload_region = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_region;
  assign axiSlaves_1_writeOnly_aw_payload_len = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_len;
  assign axiSlaves_1_writeOnly_aw_payload_size = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_size;
  assign axiSlaves_1_writeOnly_aw_payload_burst = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_burst;
  assign axiSlaves_1_writeOnly_aw_payload_lock = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_lock;
  assign axiSlaves_1_writeOnly_aw_payload_cache = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_cache;
  assign axiSlaves_1_writeOnly_aw_payload_qos = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_qos;
  assign axiSlaves_1_writeOnly_aw_payload_prot = axiSlaves_1_writeOnly_arbiter_io_output_aw_payload_prot;
  assign axiSlaves_1_writeOnly_w_valid = axiSlaves_1_writeOnly_arbiter_io_output_w_valid;
  assign axiSlaves_1_writeOnly_w_payload_data = axiSlaves_1_writeOnly_arbiter_io_output_w_payload_data;
  assign axiSlaves_1_writeOnly_w_payload_strb = axiSlaves_1_writeOnly_arbiter_io_output_w_payload_strb;
  assign axiSlaves_1_writeOnly_w_payload_last = axiSlaves_1_writeOnly_arbiter_io_output_w_payload_last;
  assign axiSlaves_1_writeOnly_b_ready = axiSlaves_1_writeOnly_arbiter_io_output_b_ready;
  assign _zz_93 = {1'd0, axiMasters_0_readOnly_decoder_io_outputs_1_ar_payload_id};
  assign _zz_94 = {1'd0, axiMasters_1_readOnly_decoder_io_outputs_1_ar_payload_id};
  assign axiSlaves_2_readOnly_ar_valid = axiSlaves_2_readOnly_arbiter_io_output_ar_valid;
  assign axiSlaves_2_readOnly_ar_payload_addr = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_addr;
  assign axiSlaves_2_readOnly_ar_payload_id = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_id;
  assign axiSlaves_2_readOnly_ar_payload_region = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_region;
  assign axiSlaves_2_readOnly_ar_payload_len = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_len;
  assign axiSlaves_2_readOnly_ar_payload_size = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_size;
  assign axiSlaves_2_readOnly_ar_payload_burst = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_burst;
  assign axiSlaves_2_readOnly_ar_payload_lock = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_lock;
  assign axiSlaves_2_readOnly_ar_payload_cache = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_cache;
  assign axiSlaves_2_readOnly_ar_payload_qos = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_qos;
  assign axiSlaves_2_readOnly_ar_payload_prot = axiSlaves_2_readOnly_arbiter_io_output_ar_payload_prot;
  assign axiSlaves_2_readOnly_r_ready = axiSlaves_2_readOnly_arbiter_io_output_r_ready;
  assign _zz_95 = {1'd0, axiMasters_0_writeOnly_decoder_io_outputs_1_aw_payload_id};
  assign _zz_96 = {1'd0, axiMasters_1_writeOnly_decoder_io_outputs_1_aw_payload_id};
  assign axiSlaves_2_writeOnly_aw_valid = axiSlaves_2_writeOnly_arbiter_io_output_aw_valid;
  assign axiSlaves_2_writeOnly_aw_payload_addr = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_addr;
  assign axiSlaves_2_writeOnly_aw_payload_id = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_id;
  assign axiSlaves_2_writeOnly_aw_payload_region = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_region;
  assign axiSlaves_2_writeOnly_aw_payload_len = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_len;
  assign axiSlaves_2_writeOnly_aw_payload_size = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_size;
  assign axiSlaves_2_writeOnly_aw_payload_burst = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_burst;
  assign axiSlaves_2_writeOnly_aw_payload_lock = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_lock;
  assign axiSlaves_2_writeOnly_aw_payload_cache = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_cache;
  assign axiSlaves_2_writeOnly_aw_payload_qos = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_qos;
  assign axiSlaves_2_writeOnly_aw_payload_prot = axiSlaves_2_writeOnly_arbiter_io_output_aw_payload_prot;
  assign axiSlaves_2_writeOnly_w_valid = axiSlaves_2_writeOnly_arbiter_io_output_w_valid;
  assign axiSlaves_2_writeOnly_w_payload_data = axiSlaves_2_writeOnly_arbiter_io_output_w_payload_data;
  assign axiSlaves_2_writeOnly_w_payload_strb = axiSlaves_2_writeOnly_arbiter_io_output_w_payload_strb;
  assign axiSlaves_2_writeOnly_w_payload_last = axiSlaves_2_writeOnly_arbiter_io_output_w_payload_last;
  assign axiSlaves_2_writeOnly_b_ready = axiSlaves_2_writeOnly_arbiter_io_output_b_ready;
  assign axiSlaves_3_readOnly_ar_valid = axiSlaves_3_readOnly_arbiter_io_output_ar_valid;
  assign axiSlaves_3_readOnly_ar_payload_addr = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_addr;
  assign axiSlaves_3_readOnly_ar_payload_id = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_id;
  assign axiSlaves_3_readOnly_ar_payload_region = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_region;
  assign axiSlaves_3_readOnly_ar_payload_len = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_len;
  assign axiSlaves_3_readOnly_ar_payload_size = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_size;
  assign axiSlaves_3_readOnly_ar_payload_burst = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_burst;
  assign axiSlaves_3_readOnly_ar_payload_lock = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_lock;
  assign axiSlaves_3_readOnly_ar_payload_cache = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_cache;
  assign axiSlaves_3_readOnly_ar_payload_qos = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_qos;
  assign axiSlaves_3_readOnly_ar_payload_prot = axiSlaves_3_readOnly_arbiter_io_output_ar_payload_prot;
  assign axiSlaves_3_readOnly_r_ready = axiSlaves_3_readOnly_arbiter_io_output_r_ready;
  assign axiSlaves_3_writeOnly_aw_valid = axiSlaves_3_writeOnly_arbiter_io_output_aw_valid;
  assign axiSlaves_3_writeOnly_aw_payload_addr = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_addr;
  assign axiSlaves_3_writeOnly_aw_payload_id = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_id;
  assign axiSlaves_3_writeOnly_aw_payload_region = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_region;
  assign axiSlaves_3_writeOnly_aw_payload_len = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_len;
  assign axiSlaves_3_writeOnly_aw_payload_size = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_size;
  assign axiSlaves_3_writeOnly_aw_payload_burst = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_burst;
  assign axiSlaves_3_writeOnly_aw_payload_lock = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_lock;
  assign axiSlaves_3_writeOnly_aw_payload_cache = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_cache;
  assign axiSlaves_3_writeOnly_aw_payload_qos = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_qos;
  assign axiSlaves_3_writeOnly_aw_payload_prot = axiSlaves_3_writeOnly_arbiter_io_output_aw_payload_prot;
  assign axiSlaves_3_writeOnly_w_valid = axiSlaves_3_writeOnly_arbiter_io_output_w_valid;
  assign axiSlaves_3_writeOnly_w_payload_data = axiSlaves_3_writeOnly_arbiter_io_output_w_payload_data;
  assign axiSlaves_3_writeOnly_w_payload_strb = axiSlaves_3_writeOnly_arbiter_io_output_w_payload_strb;
  assign axiSlaves_3_writeOnly_w_payload_last = axiSlaves_3_writeOnly_arbiter_io_output_w_payload_last;
  assign axiSlaves_3_writeOnly_b_ready = axiSlaves_3_writeOnly_arbiter_io_output_b_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_3 <= 1'b0;
      _zz_6 <= 1'b0;
      _zz_9 <= 1'b0;
      _zz_12 <= 1'b0;
      _zz_15 <= 1'b0;
      _zz_18 <= 1'b0;
      _zz_21 <= 1'b0;
      _zz_24 <= 1'b0;
      _zz_27 <= 1'b0;
      _zz_30 <= 1'b0;
      _zz_33 <= 1'b0;
      _zz_36 <= 1'b0;
      _zz_39 <= 1'b0;
      _zz_42 <= 1'b0;
      _zz_45 <= 1'b0;
      _zz_48 <= 1'b0;
      _zz_51 <= 1'b0;
      _zz_54 <= 1'b0;
    end else begin
      if(axiMasters_0_readOnly_decoder_io_outputs_0_ar_valid)begin
        _zz_3 <= 1'b1;
      end
      if((_zz_1 && _zz_2))begin
        _zz_3 <= 1'b0;
      end
      if(axiMasters_0_readOnly_decoder_io_outputs_1_ar_valid)begin
        _zz_6 <= 1'b1;
      end
      if((_zz_4 && _zz_5))begin
        _zz_6 <= 1'b0;
      end
      if(axiMasters_0_readOnly_decoder_io_outputs_2_ar_valid)begin
        _zz_9 <= 1'b1;
      end
      if((_zz_7 && _zz_8))begin
        _zz_9 <= 1'b0;
      end
      if(axiMasters_0_writeOnly_decoder_io_outputs_0_aw_valid)begin
        _zz_12 <= 1'b1;
      end
      if((_zz_10 && _zz_11))begin
        _zz_12 <= 1'b0;
      end
      if(axiMasters_0_writeOnly_decoder_io_outputs_1_aw_valid)begin
        _zz_15 <= 1'b1;
      end
      if((_zz_13 && _zz_14))begin
        _zz_15 <= 1'b0;
      end
      if(axiMasters_0_writeOnly_decoder_io_outputs_2_aw_valid)begin
        _zz_18 <= 1'b1;
      end
      if((_zz_16 && _zz_17))begin
        _zz_18 <= 1'b0;
      end
      if(axiMasters_1_readOnly_decoder_io_outputs_0_ar_valid)begin
        _zz_21 <= 1'b1;
      end
      if((_zz_19 && _zz_20))begin
        _zz_21 <= 1'b0;
      end
      if(axiMasters_1_readOnly_decoder_io_outputs_1_ar_valid)begin
        _zz_24 <= 1'b1;
      end
      if((_zz_22 && _zz_23))begin
        _zz_24 <= 1'b0;
      end
      if(axiMasters_1_readOnly_decoder_io_outputs_2_ar_valid)begin
        _zz_27 <= 1'b1;
      end
      if((_zz_25 && _zz_26))begin
        _zz_27 <= 1'b0;
      end
      if(axiMasters_1_writeOnly_decoder_io_outputs_0_aw_valid)begin
        _zz_30 <= 1'b1;
      end
      if((_zz_28 && _zz_29))begin
        _zz_30 <= 1'b0;
      end
      if(axiMasters_1_writeOnly_decoder_io_outputs_1_aw_valid)begin
        _zz_33 <= 1'b1;
      end
      if((_zz_31 && _zz_32))begin
        _zz_33 <= 1'b0;
      end
      if(axiMasters_1_writeOnly_decoder_io_outputs_2_aw_valid)begin
        _zz_36 <= 1'b1;
      end
      if((_zz_34 && _zz_35))begin
        _zz_36 <= 1'b0;
      end
      if(axiMasters_2_readOnly_decoder_io_outputs_0_ar_valid)begin
        _zz_39 <= 1'b1;
      end
      if((_zz_37 && _zz_38))begin
        _zz_39 <= 1'b0;
      end
      if(axiMasters_2_readOnly_decoder_io_outputs_1_ar_valid)begin
        _zz_42 <= 1'b1;
      end
      if((_zz_40 && _zz_41))begin
        _zz_42 <= 1'b0;
      end
      if(axiMasters_2_readOnly_decoder_io_outputs_2_ar_valid)begin
        _zz_45 <= 1'b1;
      end
      if((_zz_43 && _zz_44))begin
        _zz_45 <= 1'b0;
      end
      if(axiMasters_2_writeOnly_decoder_io_outputs_0_aw_valid)begin
        _zz_48 <= 1'b1;
      end
      if((_zz_46 && _zz_47))begin
        _zz_48 <= 1'b0;
      end
      if(axiMasters_2_writeOnly_decoder_io_outputs_1_aw_valid)begin
        _zz_51 <= 1'b1;
      end
      if((_zz_49 && _zz_50))begin
        _zz_51 <= 1'b0;
      end
      if(axiMasters_2_writeOnly_decoder_io_outputs_2_aw_valid)begin
        _zz_54 <= 1'b1;
      end
      if((_zz_52 && _zz_53))begin
        _zz_54 <= 1'b0;
      end
    end
  end


endmodule

module Axi4WriteOnlyArbiter_3 (
  input               io_inputs_0_aw_valid,
  output              io_inputs_0_aw_ready,
  input      [12:0]   io_inputs_0_aw_payload_addr,
  input      [3:0]    io_inputs_0_aw_payload_id,
  input      [3:0]    io_inputs_0_aw_payload_region,
  input      [7:0]    io_inputs_0_aw_payload_len,
  input      [2:0]    io_inputs_0_aw_payload_size,
  input      [1:0]    io_inputs_0_aw_payload_burst,
  input      [0:0]    io_inputs_0_aw_payload_lock,
  input      [3:0]    io_inputs_0_aw_payload_cache,
  input      [3:0]    io_inputs_0_aw_payload_qos,
  input      [2:0]    io_inputs_0_aw_payload_prot,
  input               io_inputs_0_w_valid,
  output              io_inputs_0_w_ready,
  input      [31:0]   io_inputs_0_w_payload_data,
  input      [3:0]    io_inputs_0_w_payload_strb,
  input               io_inputs_0_w_payload_last,
  output              io_inputs_0_b_valid,
  input               io_inputs_0_b_ready,
  output     [3:0]    io_inputs_0_b_payload_id,
  output     [1:0]    io_inputs_0_b_payload_resp,
  input               io_inputs_1_aw_valid,
  output              io_inputs_1_aw_ready,
  input      [12:0]   io_inputs_1_aw_payload_addr,
  input      [3:0]    io_inputs_1_aw_payload_id,
  input      [3:0]    io_inputs_1_aw_payload_region,
  input      [7:0]    io_inputs_1_aw_payload_len,
  input      [2:0]    io_inputs_1_aw_payload_size,
  input      [1:0]    io_inputs_1_aw_payload_burst,
  input      [0:0]    io_inputs_1_aw_payload_lock,
  input      [3:0]    io_inputs_1_aw_payload_cache,
  input      [3:0]    io_inputs_1_aw_payload_qos,
  input      [2:0]    io_inputs_1_aw_payload_prot,
  input               io_inputs_1_w_valid,
  output              io_inputs_1_w_ready,
  input      [31:0]   io_inputs_1_w_payload_data,
  input      [3:0]    io_inputs_1_w_payload_strb,
  input               io_inputs_1_w_payload_last,
  output              io_inputs_1_b_valid,
  input               io_inputs_1_b_ready,
  output     [3:0]    io_inputs_1_b_payload_id,
  output     [1:0]    io_inputs_1_b_payload_resp,
  input               io_inputs_2_aw_valid,
  output              io_inputs_2_aw_ready,
  input      [12:0]   io_inputs_2_aw_payload_addr,
  input      [3:0]    io_inputs_2_aw_payload_id,
  input      [3:0]    io_inputs_2_aw_payload_region,
  input      [7:0]    io_inputs_2_aw_payload_len,
  input      [2:0]    io_inputs_2_aw_payload_size,
  input      [1:0]    io_inputs_2_aw_payload_burst,
  input      [0:0]    io_inputs_2_aw_payload_lock,
  input      [3:0]    io_inputs_2_aw_payload_cache,
  input      [3:0]    io_inputs_2_aw_payload_qos,
  input      [2:0]    io_inputs_2_aw_payload_prot,
  input               io_inputs_2_w_valid,
  output              io_inputs_2_w_ready,
  input      [31:0]   io_inputs_2_w_payload_data,
  input      [3:0]    io_inputs_2_w_payload_strb,
  input               io_inputs_2_w_payload_last,
  output              io_inputs_2_b_valid,
  input               io_inputs_2_b_ready,
  output     [3:0]    io_inputs_2_b_payload_id,
  output     [1:0]    io_inputs_2_b_payload_resp,
  output              io_output_aw_valid,
  input               io_output_aw_ready,
  output     [12:0]   io_output_aw_payload_addr,
  output     [5:0]    io_output_aw_payload_id,
  output     [3:0]    io_output_aw_payload_region,
  output     [7:0]    io_output_aw_payload_len,
  output     [2:0]    io_output_aw_payload_size,
  output     [1:0]    io_output_aw_payload_burst,
  output     [0:0]    io_output_aw_payload_lock,
  output     [3:0]    io_output_aw_payload_cache,
  output     [3:0]    io_output_aw_payload_qos,
  output     [2:0]    io_output_aw_payload_prot,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [5:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               clk,
  input               reset
);
  wire                _zz_1;
  wire                _zz_2;
  reg                 _zz_3;
  reg        [31:0]   _zz_4;
  reg        [3:0]    _zz_5;
  reg                 _zz_6;
  reg                 _zz_7;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_inputs_2_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [12:0]   cmdArbiter_io_output_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire       [1:0]    cmdArbiter_io_chosen;
  wire       [2:0]    cmdArbiter_io_chosenOH;
  wire                cmdArbiter_io_output_fork_io_input_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_0_valid;
  wire       [12:0]   cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_region;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_prot;
  wire                cmdArbiter_io_output_fork_io_outputs_1_valid;
  wire       [12:0]   cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_region;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_prot;
  wire                cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_occupancy;
  wire                cmdArbiter_io_output_fork_io_outputs_1_translated_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_translated_ready;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_translated_payload;
  wire       [1:0]    writeRspIndex;
  wire                writeRspSels_0;
  wire                writeRspSels_1;
  wire                writeRspSels_2;

  StreamArbiter_6 cmdArbiter (
    .io_inputs_0_valid             (io_inputs_0_aw_valid                      ), //i
    .io_inputs_0_ready             (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr      (io_inputs_0_aw_payload_addr[12:0]         ), //i
    .io_inputs_0_payload_id        (io_inputs_0_aw_payload_id[3:0]            ), //i
    .io_inputs_0_payload_region    (io_inputs_0_aw_payload_region[3:0]        ), //i
    .io_inputs_0_payload_len       (io_inputs_0_aw_payload_len[7:0]           ), //i
    .io_inputs_0_payload_size      (io_inputs_0_aw_payload_size[2:0]          ), //i
    .io_inputs_0_payload_burst     (io_inputs_0_aw_payload_burst[1:0]         ), //i
    .io_inputs_0_payload_lock      (io_inputs_0_aw_payload_lock               ), //i
    .io_inputs_0_payload_cache     (io_inputs_0_aw_payload_cache[3:0]         ), //i
    .io_inputs_0_payload_qos       (io_inputs_0_aw_payload_qos[3:0]           ), //i
    .io_inputs_0_payload_prot      (io_inputs_0_aw_payload_prot[2:0]          ), //i
    .io_inputs_1_valid             (io_inputs_1_aw_valid                      ), //i
    .io_inputs_1_ready             (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr      (io_inputs_1_aw_payload_addr[12:0]         ), //i
    .io_inputs_1_payload_id        (io_inputs_1_aw_payload_id[3:0]            ), //i
    .io_inputs_1_payload_region    (io_inputs_1_aw_payload_region[3:0]        ), //i
    .io_inputs_1_payload_len       (io_inputs_1_aw_payload_len[7:0]           ), //i
    .io_inputs_1_payload_size      (io_inputs_1_aw_payload_size[2:0]          ), //i
    .io_inputs_1_payload_burst     (io_inputs_1_aw_payload_burst[1:0]         ), //i
    .io_inputs_1_payload_lock      (io_inputs_1_aw_payload_lock               ), //i
    .io_inputs_1_payload_cache     (io_inputs_1_aw_payload_cache[3:0]         ), //i
    .io_inputs_1_payload_qos       (io_inputs_1_aw_payload_qos[3:0]           ), //i
    .io_inputs_1_payload_prot      (io_inputs_1_aw_payload_prot[2:0]          ), //i
    .io_inputs_2_valid             (io_inputs_2_aw_valid                      ), //i
    .io_inputs_2_ready             (cmdArbiter_io_inputs_2_ready              ), //o
    .io_inputs_2_payload_addr      (io_inputs_2_aw_payload_addr[12:0]         ), //i
    .io_inputs_2_payload_id        (io_inputs_2_aw_payload_id[3:0]            ), //i
    .io_inputs_2_payload_region    (io_inputs_2_aw_payload_region[3:0]        ), //i
    .io_inputs_2_payload_len       (io_inputs_2_aw_payload_len[7:0]           ), //i
    .io_inputs_2_payload_size      (io_inputs_2_aw_payload_size[2:0]          ), //i
    .io_inputs_2_payload_burst     (io_inputs_2_aw_payload_burst[1:0]         ), //i
    .io_inputs_2_payload_lock      (io_inputs_2_aw_payload_lock               ), //i
    .io_inputs_2_payload_cache     (io_inputs_2_aw_payload_cache[3:0]         ), //i
    .io_inputs_2_payload_qos       (io_inputs_2_aw_payload_qos[3:0]           ), //i
    .io_inputs_2_payload_prot      (io_inputs_2_aw_payload_prot[2:0]          ), //i
    .io_output_valid               (cmdArbiter_io_output_valid                ), //o
    .io_output_ready               (cmdArbiter_io_output_fork_io_input_ready  ), //i
    .io_output_payload_addr        (cmdArbiter_io_output_payload_addr[12:0]   ), //o
    .io_output_payload_id          (cmdArbiter_io_output_payload_id[3:0]      ), //o
    .io_output_payload_region      (cmdArbiter_io_output_payload_region[3:0]  ), //o
    .io_output_payload_len         (cmdArbiter_io_output_payload_len[7:0]     ), //o
    .io_output_payload_size        (cmdArbiter_io_output_payload_size[2:0]    ), //o
    .io_output_payload_burst       (cmdArbiter_io_output_payload_burst[1:0]   ), //o
    .io_output_payload_lock        (cmdArbiter_io_output_payload_lock         ), //o
    .io_output_payload_cache       (cmdArbiter_io_output_payload_cache[3:0]   ), //o
    .io_output_payload_qos         (cmdArbiter_io_output_payload_qos[3:0]     ), //o
    .io_output_payload_prot        (cmdArbiter_io_output_payload_prot[2:0]    ), //o
    .io_chosen                     (cmdArbiter_io_chosen[1:0]                 ), //o
    .io_chosenOH                   (cmdArbiter_io_chosenOH[2:0]               ), //o
    .clk                           (clk                                       ), //i
    .reset                         (reset                                     )  //i
  );
  StreamFork_3 cmdArbiter_io_output_fork (
    .io_input_valid                 (cmdArbiter_io_output_valid                                  ), //i
    .io_input_ready                 (cmdArbiter_io_output_fork_io_input_ready                    ), //o
    .io_input_payload_addr          (cmdArbiter_io_output_payload_addr[12:0]                     ), //i
    .io_input_payload_id            (cmdArbiter_io_output_payload_id[3:0]                        ), //i
    .io_input_payload_region        (cmdArbiter_io_output_payload_region[3:0]                    ), //i
    .io_input_payload_len           (cmdArbiter_io_output_payload_len[7:0]                       ), //i
    .io_input_payload_size          (cmdArbiter_io_output_payload_size[2:0]                      ), //i
    .io_input_payload_burst         (cmdArbiter_io_output_payload_burst[1:0]                     ), //i
    .io_input_payload_lock          (cmdArbiter_io_output_payload_lock                           ), //i
    .io_input_payload_cache         (cmdArbiter_io_output_payload_cache[3:0]                     ), //i
    .io_input_payload_qos           (cmdArbiter_io_output_payload_qos[3:0]                       ), //i
    .io_input_payload_prot          (cmdArbiter_io_output_payload_prot[2:0]                      ), //i
    .io_outputs_0_valid             (cmdArbiter_io_output_fork_io_outputs_0_valid                ), //o
    .io_outputs_0_ready             (io_output_aw_ready                                          ), //i
    .io_outputs_0_payload_addr      (cmdArbiter_io_output_fork_io_outputs_0_payload_addr[12:0]   ), //o
    .io_outputs_0_payload_id        (cmdArbiter_io_output_fork_io_outputs_0_payload_id[3:0]      ), //o
    .io_outputs_0_payload_region    (cmdArbiter_io_output_fork_io_outputs_0_payload_region[3:0]  ), //o
    .io_outputs_0_payload_len       (cmdArbiter_io_output_fork_io_outputs_0_payload_len[7:0]     ), //o
    .io_outputs_0_payload_size      (cmdArbiter_io_output_fork_io_outputs_0_payload_size[2:0]    ), //o
    .io_outputs_0_payload_burst     (cmdArbiter_io_output_fork_io_outputs_0_payload_burst[1:0]   ), //o
    .io_outputs_0_payload_lock      (cmdArbiter_io_output_fork_io_outputs_0_payload_lock         ), //o
    .io_outputs_0_payload_cache     (cmdArbiter_io_output_fork_io_outputs_0_payload_cache[3:0]   ), //o
    .io_outputs_0_payload_qos       (cmdArbiter_io_output_fork_io_outputs_0_payload_qos[3:0]     ), //o
    .io_outputs_0_payload_prot      (cmdArbiter_io_output_fork_io_outputs_0_payload_prot[2:0]    ), //o
    .io_outputs_1_valid             (cmdArbiter_io_output_fork_io_outputs_1_valid                ), //o
    .io_outputs_1_ready             (cmdArbiter_io_output_fork_io_outputs_1_translated_ready     ), //i
    .io_outputs_1_payload_addr      (cmdArbiter_io_output_fork_io_outputs_1_payload_addr[12:0]   ), //o
    .io_outputs_1_payload_id        (cmdArbiter_io_output_fork_io_outputs_1_payload_id[3:0]      ), //o
    .io_outputs_1_payload_region    (cmdArbiter_io_output_fork_io_outputs_1_payload_region[3:0]  ), //o
    .io_outputs_1_payload_len       (cmdArbiter_io_output_fork_io_outputs_1_payload_len[7:0]     ), //o
    .io_outputs_1_payload_size      (cmdArbiter_io_output_fork_io_outputs_1_payload_size[2:0]    ), //o
    .io_outputs_1_payload_burst     (cmdArbiter_io_output_fork_io_outputs_1_payload_burst[1:0]   ), //o
    .io_outputs_1_payload_lock      (cmdArbiter_io_output_fork_io_outputs_1_payload_lock         ), //o
    .io_outputs_1_payload_cache     (cmdArbiter_io_output_fork_io_outputs_1_payload_cache[3:0]   ), //o
    .io_outputs_1_payload_qos       (cmdArbiter_io_output_fork_io_outputs_1_payload_qos[3:0]     ), //o
    .io_outputs_1_payload_prot      (cmdArbiter_io_output_fork_io_outputs_1_payload_prot[2:0]    ), //o
    .clk                            (clk                                                         ), //i
    .reset                          (reset                                                       )  //i
  );
  StreamFifoLowLatency_3 cmdArbiter_io_output_fork_io_outputs_1_translated_fifo (
    .io_push_valid      (cmdArbiter_io_output_fork_io_outputs_1_translated_valid                     ), //i
    .io_push_ready      (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready        ), //o
    .io_push_payload    (cmdArbiter_io_output_fork_io_outputs_1_translated_payload[1:0]              ), //i
    .io_pop_valid       (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid         ), //o
    .io_pop_ready       (_zz_1                                                                       ), //i
    .io_pop_payload     (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload[1:0]  ), //o
    .io_flush           (_zz_2                                                                       ), //i
    .io_occupancy       (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_occupancy[2:0]    ), //o
    .clk                (clk                                                                         ), //i
    .reset              (reset                                                                       )  //i
  );
  always @(*) begin
    case(cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload)
      2'b00 : begin
        _zz_3 = io_inputs_0_w_valid;
        _zz_4 = io_inputs_0_w_payload_data;
        _zz_5 = io_inputs_0_w_payload_strb;
        _zz_6 = io_inputs_0_w_payload_last;
      end
      2'b01 : begin
        _zz_3 = io_inputs_1_w_valid;
        _zz_4 = io_inputs_1_w_payload_data;
        _zz_5 = io_inputs_1_w_payload_strb;
        _zz_6 = io_inputs_1_w_payload_last;
      end
      default : begin
        _zz_3 = io_inputs_2_w_valid;
        _zz_4 = io_inputs_2_w_payload_data;
        _zz_5 = io_inputs_2_w_payload_strb;
        _zz_6 = io_inputs_2_w_payload_last;
      end
    endcase
  end

  always @(*) begin
    case(writeRspIndex)
      2'b00 : begin
        _zz_7 = io_inputs_0_b_ready;
      end
      2'b01 : begin
        _zz_7 = io_inputs_1_b_ready;
      end
      default : begin
        _zz_7 = io_inputs_2_b_ready;
      end
    endcase
  end

  assign io_inputs_0_aw_ready = cmdArbiter_io_inputs_0_ready;
  assign io_inputs_1_aw_ready = cmdArbiter_io_inputs_1_ready;
  assign io_inputs_2_aw_ready = cmdArbiter_io_inputs_2_ready;
  assign io_output_aw_valid = cmdArbiter_io_output_fork_io_outputs_0_valid;
  assign io_output_aw_payload_addr = cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  assign io_output_aw_payload_region = cmdArbiter_io_output_fork_io_outputs_0_payload_region;
  assign io_output_aw_payload_len = cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  assign io_output_aw_payload_size = cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  assign io_output_aw_payload_burst = cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  assign io_output_aw_payload_lock = cmdArbiter_io_output_fork_io_outputs_0_payload_lock;
  assign io_output_aw_payload_cache = cmdArbiter_io_output_fork_io_outputs_0_payload_cache;
  assign io_output_aw_payload_qos = cmdArbiter_io_output_fork_io_outputs_0_payload_qos;
  assign io_output_aw_payload_prot = cmdArbiter_io_output_fork_io_outputs_0_payload_prot;
  assign io_output_aw_payload_id = {cmdArbiter_io_chosen,cmdArbiter_io_output_payload_id};
  assign cmdArbiter_io_output_fork_io_outputs_1_translated_valid = cmdArbiter_io_output_fork_io_outputs_1_valid;
  assign cmdArbiter_io_output_fork_io_outputs_1_translated_payload = cmdArbiter_io_chosen;
  assign cmdArbiter_io_output_fork_io_outputs_1_translated_ready = cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready;
  assign io_output_w_valid = (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid && _zz_3);
  assign io_output_w_payload_data = _zz_4;
  assign io_output_w_payload_strb = _zz_5;
  assign io_output_w_payload_last = _zz_6;
  assign io_inputs_0_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload == 2'b00));
  assign io_inputs_1_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload == 2'b01));
  assign io_inputs_2_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload == 2'b10));
  assign _zz_1 = ((io_output_w_valid && io_output_w_ready) && io_output_w_payload_last);
  assign writeRspIndex = io_output_b_payload_id[5 : 4];
  assign writeRspSels_0 = (writeRspIndex == 2'b00);
  assign writeRspSels_1 = (writeRspIndex == 2'b01);
  assign writeRspSels_2 = (writeRspIndex == 2'b10);
  assign io_inputs_0_b_valid = (io_output_b_valid && writeRspSels_0);
  assign io_inputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_inputs_0_b_payload_id = io_output_b_payload_id[3 : 0];
  assign io_inputs_1_b_valid = (io_output_b_valid && writeRspSels_1);
  assign io_inputs_1_b_payload_resp = io_output_b_payload_resp;
  assign io_inputs_1_b_payload_id = io_output_b_payload_id[3 : 0];
  assign io_inputs_2_b_valid = (io_output_b_valid && writeRspSels_2);
  assign io_inputs_2_b_payload_resp = io_output_b_payload_resp;
  assign io_inputs_2_b_payload_id = io_output_b_payload_id[3 : 0];
  assign io_output_b_ready = _zz_7;
  assign _zz_2 = 1'b0;

endmodule

module Axi4ReadOnlyArbiter_3 (
  input               io_inputs_0_ar_valid,
  output              io_inputs_0_ar_ready,
  input      [12:0]   io_inputs_0_ar_payload_addr,
  input      [3:0]    io_inputs_0_ar_payload_id,
  input      [3:0]    io_inputs_0_ar_payload_region,
  input      [7:0]    io_inputs_0_ar_payload_len,
  input      [2:0]    io_inputs_0_ar_payload_size,
  input      [1:0]    io_inputs_0_ar_payload_burst,
  input      [0:0]    io_inputs_0_ar_payload_lock,
  input      [3:0]    io_inputs_0_ar_payload_cache,
  input      [3:0]    io_inputs_0_ar_payload_qos,
  input      [2:0]    io_inputs_0_ar_payload_prot,
  output              io_inputs_0_r_valid,
  input               io_inputs_0_r_ready,
  output     [31:0]   io_inputs_0_r_payload_data,
  output     [3:0]    io_inputs_0_r_payload_id,
  output     [1:0]    io_inputs_0_r_payload_resp,
  output              io_inputs_0_r_payload_last,
  input               io_inputs_1_ar_valid,
  output              io_inputs_1_ar_ready,
  input      [12:0]   io_inputs_1_ar_payload_addr,
  input      [3:0]    io_inputs_1_ar_payload_id,
  input      [3:0]    io_inputs_1_ar_payload_region,
  input      [7:0]    io_inputs_1_ar_payload_len,
  input      [2:0]    io_inputs_1_ar_payload_size,
  input      [1:0]    io_inputs_1_ar_payload_burst,
  input      [0:0]    io_inputs_1_ar_payload_lock,
  input      [3:0]    io_inputs_1_ar_payload_cache,
  input      [3:0]    io_inputs_1_ar_payload_qos,
  input      [2:0]    io_inputs_1_ar_payload_prot,
  output              io_inputs_1_r_valid,
  input               io_inputs_1_r_ready,
  output     [31:0]   io_inputs_1_r_payload_data,
  output     [3:0]    io_inputs_1_r_payload_id,
  output     [1:0]    io_inputs_1_r_payload_resp,
  output              io_inputs_1_r_payload_last,
  input               io_inputs_2_ar_valid,
  output              io_inputs_2_ar_ready,
  input      [12:0]   io_inputs_2_ar_payload_addr,
  input      [3:0]    io_inputs_2_ar_payload_id,
  input      [3:0]    io_inputs_2_ar_payload_region,
  input      [7:0]    io_inputs_2_ar_payload_len,
  input      [2:0]    io_inputs_2_ar_payload_size,
  input      [1:0]    io_inputs_2_ar_payload_burst,
  input      [0:0]    io_inputs_2_ar_payload_lock,
  input      [3:0]    io_inputs_2_ar_payload_cache,
  input      [3:0]    io_inputs_2_ar_payload_qos,
  input      [2:0]    io_inputs_2_ar_payload_prot,
  output              io_inputs_2_r_valid,
  input               io_inputs_2_r_ready,
  output     [31:0]   io_inputs_2_r_payload_data,
  output     [3:0]    io_inputs_2_r_payload_id,
  output     [1:0]    io_inputs_2_r_payload_resp,
  output              io_inputs_2_r_payload_last,
  output              io_output_ar_valid,
  input               io_output_ar_ready,
  output     [12:0]   io_output_ar_payload_addr,
  output     [5:0]    io_output_ar_payload_id,
  output     [3:0]    io_output_ar_payload_region,
  output     [7:0]    io_output_ar_payload_len,
  output     [2:0]    io_output_ar_payload_size,
  output     [1:0]    io_output_ar_payload_burst,
  output     [0:0]    io_output_ar_payload_lock,
  output     [3:0]    io_output_ar_payload_cache,
  output     [3:0]    io_output_ar_payload_qos,
  output     [2:0]    io_output_ar_payload_prot,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [5:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_inputs_2_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [12:0]   cmdArbiter_io_output_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire       [1:0]    cmdArbiter_io_chosen;
  wire       [2:0]    cmdArbiter_io_chosenOH;
  wire       [1:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;
  wire                readRspSels_2;

  StreamArbiter_6 cmdArbiter (
    .io_inputs_0_valid             (io_inputs_0_ar_valid                      ), //i
    .io_inputs_0_ready             (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr      (io_inputs_0_ar_payload_addr[12:0]         ), //i
    .io_inputs_0_payload_id        (io_inputs_0_ar_payload_id[3:0]            ), //i
    .io_inputs_0_payload_region    (io_inputs_0_ar_payload_region[3:0]        ), //i
    .io_inputs_0_payload_len       (io_inputs_0_ar_payload_len[7:0]           ), //i
    .io_inputs_0_payload_size      (io_inputs_0_ar_payload_size[2:0]          ), //i
    .io_inputs_0_payload_burst     (io_inputs_0_ar_payload_burst[1:0]         ), //i
    .io_inputs_0_payload_lock      (io_inputs_0_ar_payload_lock               ), //i
    .io_inputs_0_payload_cache     (io_inputs_0_ar_payload_cache[3:0]         ), //i
    .io_inputs_0_payload_qos       (io_inputs_0_ar_payload_qos[3:0]           ), //i
    .io_inputs_0_payload_prot      (io_inputs_0_ar_payload_prot[2:0]          ), //i
    .io_inputs_1_valid             (io_inputs_1_ar_valid                      ), //i
    .io_inputs_1_ready             (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr      (io_inputs_1_ar_payload_addr[12:0]         ), //i
    .io_inputs_1_payload_id        (io_inputs_1_ar_payload_id[3:0]            ), //i
    .io_inputs_1_payload_region    (io_inputs_1_ar_payload_region[3:0]        ), //i
    .io_inputs_1_payload_len       (io_inputs_1_ar_payload_len[7:0]           ), //i
    .io_inputs_1_payload_size      (io_inputs_1_ar_payload_size[2:0]          ), //i
    .io_inputs_1_payload_burst     (io_inputs_1_ar_payload_burst[1:0]         ), //i
    .io_inputs_1_payload_lock      (io_inputs_1_ar_payload_lock               ), //i
    .io_inputs_1_payload_cache     (io_inputs_1_ar_payload_cache[3:0]         ), //i
    .io_inputs_1_payload_qos       (io_inputs_1_ar_payload_qos[3:0]           ), //i
    .io_inputs_1_payload_prot      (io_inputs_1_ar_payload_prot[2:0]          ), //i
    .io_inputs_2_valid             (io_inputs_2_ar_valid                      ), //i
    .io_inputs_2_ready             (cmdArbiter_io_inputs_2_ready              ), //o
    .io_inputs_2_payload_addr      (io_inputs_2_ar_payload_addr[12:0]         ), //i
    .io_inputs_2_payload_id        (io_inputs_2_ar_payload_id[3:0]            ), //i
    .io_inputs_2_payload_region    (io_inputs_2_ar_payload_region[3:0]        ), //i
    .io_inputs_2_payload_len       (io_inputs_2_ar_payload_len[7:0]           ), //i
    .io_inputs_2_payload_size      (io_inputs_2_ar_payload_size[2:0]          ), //i
    .io_inputs_2_payload_burst     (io_inputs_2_ar_payload_burst[1:0]         ), //i
    .io_inputs_2_payload_lock      (io_inputs_2_ar_payload_lock               ), //i
    .io_inputs_2_payload_cache     (io_inputs_2_ar_payload_cache[3:0]         ), //i
    .io_inputs_2_payload_qos       (io_inputs_2_ar_payload_qos[3:0]           ), //i
    .io_inputs_2_payload_prot      (io_inputs_2_ar_payload_prot[2:0]          ), //i
    .io_output_valid               (cmdArbiter_io_output_valid                ), //o
    .io_output_ready               (io_output_ar_ready                        ), //i
    .io_output_payload_addr        (cmdArbiter_io_output_payload_addr[12:0]   ), //o
    .io_output_payload_id          (cmdArbiter_io_output_payload_id[3:0]      ), //o
    .io_output_payload_region      (cmdArbiter_io_output_payload_region[3:0]  ), //o
    .io_output_payload_len         (cmdArbiter_io_output_payload_len[7:0]     ), //o
    .io_output_payload_size        (cmdArbiter_io_output_payload_size[2:0]    ), //o
    .io_output_payload_burst       (cmdArbiter_io_output_payload_burst[1:0]   ), //o
    .io_output_payload_lock        (cmdArbiter_io_output_payload_lock         ), //o
    .io_output_payload_cache       (cmdArbiter_io_output_payload_cache[3:0]   ), //o
    .io_output_payload_qos         (cmdArbiter_io_output_payload_qos[3:0]     ), //o
    .io_output_payload_prot        (cmdArbiter_io_output_payload_prot[2:0]    ), //o
    .io_chosen                     (cmdArbiter_io_chosen[1:0]                 ), //o
    .io_chosenOH                   (cmdArbiter_io_chosenOH[2:0]               ), //o
    .clk                           (clk                                       ), //i
    .reset                         (reset                                     )  //i
  );
  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_1 = io_inputs_0_r_ready;
      end
      2'b01 : begin
        _zz_1 = io_inputs_1_r_ready;
      end
      default : begin
        _zz_1 = io_inputs_2_r_ready;
      end
    endcase
  end

  assign io_inputs_0_ar_ready = cmdArbiter_io_inputs_0_ready;
  assign io_inputs_1_ar_ready = cmdArbiter_io_inputs_1_ready;
  assign io_inputs_2_ar_ready = cmdArbiter_io_inputs_2_ready;
  assign io_output_ar_valid = cmdArbiter_io_output_valid;
  assign io_output_ar_payload_addr = cmdArbiter_io_output_payload_addr;
  assign io_output_ar_payload_region = cmdArbiter_io_output_payload_region;
  assign io_output_ar_payload_len = cmdArbiter_io_output_payload_len;
  assign io_output_ar_payload_size = cmdArbiter_io_output_payload_size;
  assign io_output_ar_payload_burst = cmdArbiter_io_output_payload_burst;
  assign io_output_ar_payload_lock = cmdArbiter_io_output_payload_lock;
  assign io_output_ar_payload_cache = cmdArbiter_io_output_payload_cache;
  assign io_output_ar_payload_qos = cmdArbiter_io_output_payload_qos;
  assign io_output_ar_payload_prot = cmdArbiter_io_output_payload_prot;
  assign io_output_ar_payload_id = {cmdArbiter_io_chosen,cmdArbiter_io_output_payload_id};
  assign readRspIndex = io_output_r_payload_id[5 : 4];
  assign readRspSels_0 = (readRspIndex == 2'b00);
  assign readRspSels_1 = (readRspIndex == 2'b01);
  assign readRspSels_2 = (readRspIndex == 2'b10);
  assign io_inputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_inputs_0_r_payload_data = io_output_r_payload_data;
  assign io_inputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_inputs_0_r_payload_last = io_output_r_payload_last;
  assign io_inputs_0_r_payload_id = io_output_r_payload_id[3 : 0];
  assign io_inputs_1_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_inputs_1_r_payload_data = io_output_r_payload_data;
  assign io_inputs_1_r_payload_resp = io_output_r_payload_resp;
  assign io_inputs_1_r_payload_last = io_output_r_payload_last;
  assign io_inputs_1_r_payload_id = io_output_r_payload_id[3 : 0];
  assign io_inputs_2_r_valid = (io_output_r_valid && readRspSels_2);
  assign io_inputs_2_r_payload_data = io_output_r_payload_data;
  assign io_inputs_2_r_payload_resp = io_output_r_payload_resp;
  assign io_inputs_2_r_payload_last = io_output_r_payload_last;
  assign io_inputs_2_r_payload_id = io_output_r_payload_id[3 : 0];
  assign io_output_r_ready = _zz_1;

endmodule

//Axi4WriteOnlyArbiter replaced by Axi4WriteOnlyArbiter

//Axi4ReadOnlyArbiter replaced by Axi4ReadOnlyArbiter

//Axi4WriteOnlyArbiter replaced by Axi4WriteOnlyArbiter

//Axi4ReadOnlyArbiter replaced by Axi4ReadOnlyArbiter

module Axi4WriteOnlyArbiter (
  input               io_inputs_0_aw_valid,
  output              io_inputs_0_aw_ready,
  input      [12:0]   io_inputs_0_aw_payload_addr,
  input      [4:0]    io_inputs_0_aw_payload_id,
  input      [3:0]    io_inputs_0_aw_payload_region,
  input      [7:0]    io_inputs_0_aw_payload_len,
  input      [2:0]    io_inputs_0_aw_payload_size,
  input      [1:0]    io_inputs_0_aw_payload_burst,
  input      [0:0]    io_inputs_0_aw_payload_lock,
  input      [3:0]    io_inputs_0_aw_payload_cache,
  input      [3:0]    io_inputs_0_aw_payload_qos,
  input      [2:0]    io_inputs_0_aw_payload_prot,
  input               io_inputs_0_w_valid,
  output              io_inputs_0_w_ready,
  input      [31:0]   io_inputs_0_w_payload_data,
  input      [3:0]    io_inputs_0_w_payload_strb,
  input               io_inputs_0_w_payload_last,
  output              io_inputs_0_b_valid,
  input               io_inputs_0_b_ready,
  output     [4:0]    io_inputs_0_b_payload_id,
  output     [1:0]    io_inputs_0_b_payload_resp,
  input               io_inputs_1_aw_valid,
  output              io_inputs_1_aw_ready,
  input      [12:0]   io_inputs_1_aw_payload_addr,
  input      [4:0]    io_inputs_1_aw_payload_id,
  input      [3:0]    io_inputs_1_aw_payload_region,
  input      [7:0]    io_inputs_1_aw_payload_len,
  input      [2:0]    io_inputs_1_aw_payload_size,
  input      [1:0]    io_inputs_1_aw_payload_burst,
  input      [0:0]    io_inputs_1_aw_payload_lock,
  input      [3:0]    io_inputs_1_aw_payload_cache,
  input      [3:0]    io_inputs_1_aw_payload_qos,
  input      [2:0]    io_inputs_1_aw_payload_prot,
  input               io_inputs_1_w_valid,
  output              io_inputs_1_w_ready,
  input      [31:0]   io_inputs_1_w_payload_data,
  input      [3:0]    io_inputs_1_w_payload_strb,
  input               io_inputs_1_w_payload_last,
  output              io_inputs_1_b_valid,
  input               io_inputs_1_b_ready,
  output     [4:0]    io_inputs_1_b_payload_id,
  output     [1:0]    io_inputs_1_b_payload_resp,
  output              io_output_aw_valid,
  input               io_output_aw_ready,
  output     [12:0]   io_output_aw_payload_addr,
  output     [5:0]    io_output_aw_payload_id,
  output     [3:0]    io_output_aw_payload_region,
  output     [7:0]    io_output_aw_payload_len,
  output     [2:0]    io_output_aw_payload_size,
  output     [1:0]    io_output_aw_payload_burst,
  output     [0:0]    io_output_aw_payload_lock,
  output     [3:0]    io_output_aw_payload_cache,
  output     [3:0]    io_output_aw_payload_qos,
  output     [2:0]    io_output_aw_payload_prot,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [5:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               clk,
  input               reset
);
  wire                _zz_1;
  wire                _zz_2;
  reg                 _zz_3;
  reg        [31:0]   _zz_4;
  reg        [3:0]    _zz_5;
  reg                 _zz_6;
  reg                 _zz_7;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [12:0]   cmdArbiter_io_output_payload_addr;
  wire       [4:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdArbiter_io_output_fork_io_input_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_0_valid;
  wire       [12:0]   cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  wire       [4:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_region;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_prot;
  wire                cmdArbiter_io_output_fork_io_outputs_1_valid;
  wire       [12:0]   cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  wire       [4:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_region;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_prot;
  wire                cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_occupancy;
  wire                cmdArbiter_io_output_fork_io_outputs_1_translated_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_translated_ready;
  wire       [0:0]    cmdArbiter_io_output_fork_io_outputs_1_translated_payload;
  wire       [0:0]    writeRspIndex;
  wire                writeRspSels_0;
  wire                writeRspSels_1;

  StreamArbiter cmdArbiter (
    .io_inputs_0_valid             (io_inputs_0_aw_valid                      ), //i
    .io_inputs_0_ready             (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr      (io_inputs_0_aw_payload_addr[12:0]         ), //i
    .io_inputs_0_payload_id        (io_inputs_0_aw_payload_id[4:0]            ), //i
    .io_inputs_0_payload_region    (io_inputs_0_aw_payload_region[3:0]        ), //i
    .io_inputs_0_payload_len       (io_inputs_0_aw_payload_len[7:0]           ), //i
    .io_inputs_0_payload_size      (io_inputs_0_aw_payload_size[2:0]          ), //i
    .io_inputs_0_payload_burst     (io_inputs_0_aw_payload_burst[1:0]         ), //i
    .io_inputs_0_payload_lock      (io_inputs_0_aw_payload_lock               ), //i
    .io_inputs_0_payload_cache     (io_inputs_0_aw_payload_cache[3:0]         ), //i
    .io_inputs_0_payload_qos       (io_inputs_0_aw_payload_qos[3:0]           ), //i
    .io_inputs_0_payload_prot      (io_inputs_0_aw_payload_prot[2:0]          ), //i
    .io_inputs_1_valid             (io_inputs_1_aw_valid                      ), //i
    .io_inputs_1_ready             (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr      (io_inputs_1_aw_payload_addr[12:0]         ), //i
    .io_inputs_1_payload_id        (io_inputs_1_aw_payload_id[4:0]            ), //i
    .io_inputs_1_payload_region    (io_inputs_1_aw_payload_region[3:0]        ), //i
    .io_inputs_1_payload_len       (io_inputs_1_aw_payload_len[7:0]           ), //i
    .io_inputs_1_payload_size      (io_inputs_1_aw_payload_size[2:0]          ), //i
    .io_inputs_1_payload_burst     (io_inputs_1_aw_payload_burst[1:0]         ), //i
    .io_inputs_1_payload_lock      (io_inputs_1_aw_payload_lock               ), //i
    .io_inputs_1_payload_cache     (io_inputs_1_aw_payload_cache[3:0]         ), //i
    .io_inputs_1_payload_qos       (io_inputs_1_aw_payload_qos[3:0]           ), //i
    .io_inputs_1_payload_prot      (io_inputs_1_aw_payload_prot[2:0]          ), //i
    .io_output_valid               (cmdArbiter_io_output_valid                ), //o
    .io_output_ready               (cmdArbiter_io_output_fork_io_input_ready  ), //i
    .io_output_payload_addr        (cmdArbiter_io_output_payload_addr[12:0]   ), //o
    .io_output_payload_id          (cmdArbiter_io_output_payload_id[4:0]      ), //o
    .io_output_payload_region      (cmdArbiter_io_output_payload_region[3:0]  ), //o
    .io_output_payload_len         (cmdArbiter_io_output_payload_len[7:0]     ), //o
    .io_output_payload_size        (cmdArbiter_io_output_payload_size[2:0]    ), //o
    .io_output_payload_burst       (cmdArbiter_io_output_payload_burst[1:0]   ), //o
    .io_output_payload_lock        (cmdArbiter_io_output_payload_lock         ), //o
    .io_output_payload_cache       (cmdArbiter_io_output_payload_cache[3:0]   ), //o
    .io_output_payload_qos         (cmdArbiter_io_output_payload_qos[3:0]     ), //o
    .io_output_payload_prot        (cmdArbiter_io_output_payload_prot[2:0]    ), //o
    .io_chosen                     (cmdArbiter_io_chosen                      ), //o
    .io_chosenOH                   (cmdArbiter_io_chosenOH[1:0]               ), //o
    .clk                           (clk                                       ), //i
    .reset                         (reset                                     )  //i
  );
  StreamFork cmdArbiter_io_output_fork (
    .io_input_valid                 (cmdArbiter_io_output_valid                                  ), //i
    .io_input_ready                 (cmdArbiter_io_output_fork_io_input_ready                    ), //o
    .io_input_payload_addr          (cmdArbiter_io_output_payload_addr[12:0]                     ), //i
    .io_input_payload_id            (cmdArbiter_io_output_payload_id[4:0]                        ), //i
    .io_input_payload_region        (cmdArbiter_io_output_payload_region[3:0]                    ), //i
    .io_input_payload_len           (cmdArbiter_io_output_payload_len[7:0]                       ), //i
    .io_input_payload_size          (cmdArbiter_io_output_payload_size[2:0]                      ), //i
    .io_input_payload_burst         (cmdArbiter_io_output_payload_burst[1:0]                     ), //i
    .io_input_payload_lock          (cmdArbiter_io_output_payload_lock                           ), //i
    .io_input_payload_cache         (cmdArbiter_io_output_payload_cache[3:0]                     ), //i
    .io_input_payload_qos           (cmdArbiter_io_output_payload_qos[3:0]                       ), //i
    .io_input_payload_prot          (cmdArbiter_io_output_payload_prot[2:0]                      ), //i
    .io_outputs_0_valid             (cmdArbiter_io_output_fork_io_outputs_0_valid                ), //o
    .io_outputs_0_ready             (io_output_aw_ready                                          ), //i
    .io_outputs_0_payload_addr      (cmdArbiter_io_output_fork_io_outputs_0_payload_addr[12:0]   ), //o
    .io_outputs_0_payload_id        (cmdArbiter_io_output_fork_io_outputs_0_payload_id[4:0]      ), //o
    .io_outputs_0_payload_region    (cmdArbiter_io_output_fork_io_outputs_0_payload_region[3:0]  ), //o
    .io_outputs_0_payload_len       (cmdArbiter_io_output_fork_io_outputs_0_payload_len[7:0]     ), //o
    .io_outputs_0_payload_size      (cmdArbiter_io_output_fork_io_outputs_0_payload_size[2:0]    ), //o
    .io_outputs_0_payload_burst     (cmdArbiter_io_output_fork_io_outputs_0_payload_burst[1:0]   ), //o
    .io_outputs_0_payload_lock      (cmdArbiter_io_output_fork_io_outputs_0_payload_lock         ), //o
    .io_outputs_0_payload_cache     (cmdArbiter_io_output_fork_io_outputs_0_payload_cache[3:0]   ), //o
    .io_outputs_0_payload_qos       (cmdArbiter_io_output_fork_io_outputs_0_payload_qos[3:0]     ), //o
    .io_outputs_0_payload_prot      (cmdArbiter_io_output_fork_io_outputs_0_payload_prot[2:0]    ), //o
    .io_outputs_1_valid             (cmdArbiter_io_output_fork_io_outputs_1_valid                ), //o
    .io_outputs_1_ready             (cmdArbiter_io_output_fork_io_outputs_1_translated_ready     ), //i
    .io_outputs_1_payload_addr      (cmdArbiter_io_output_fork_io_outputs_1_payload_addr[12:0]   ), //o
    .io_outputs_1_payload_id        (cmdArbiter_io_output_fork_io_outputs_1_payload_id[4:0]      ), //o
    .io_outputs_1_payload_region    (cmdArbiter_io_output_fork_io_outputs_1_payload_region[3:0]  ), //o
    .io_outputs_1_payload_len       (cmdArbiter_io_output_fork_io_outputs_1_payload_len[7:0]     ), //o
    .io_outputs_1_payload_size      (cmdArbiter_io_output_fork_io_outputs_1_payload_size[2:0]    ), //o
    .io_outputs_1_payload_burst     (cmdArbiter_io_output_fork_io_outputs_1_payload_burst[1:0]   ), //o
    .io_outputs_1_payload_lock      (cmdArbiter_io_output_fork_io_outputs_1_payload_lock         ), //o
    .io_outputs_1_payload_cache     (cmdArbiter_io_output_fork_io_outputs_1_payload_cache[3:0]   ), //o
    .io_outputs_1_payload_qos       (cmdArbiter_io_output_fork_io_outputs_1_payload_qos[3:0]     ), //o
    .io_outputs_1_payload_prot      (cmdArbiter_io_output_fork_io_outputs_1_payload_prot[2:0]    ), //o
    .clk                            (clk                                                         ), //i
    .reset                          (reset                                                       )  //i
  );
  StreamFifoLowLatency cmdArbiter_io_output_fork_io_outputs_1_translated_fifo (
    .io_push_valid      (cmdArbiter_io_output_fork_io_outputs_1_translated_valid                   ), //i
    .io_push_ready      (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready      ), //o
    .io_push_payload    (cmdArbiter_io_output_fork_io_outputs_1_translated_payload                 ), //i
    .io_pop_valid       (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid       ), //o
    .io_pop_ready       (_zz_1                                                                     ), //i
    .io_pop_payload     (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload     ), //o
    .io_flush           (_zz_2                                                                     ), //i
    .io_occupancy       (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_occupancy[2:0]  ), //o
    .clk                (clk                                                                       ), //i
    .reset              (reset                                                                     )  //i
  );
  always @(*) begin
    case(cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload)
      1'b0 : begin
        _zz_3 = io_inputs_0_w_valid;
        _zz_4 = io_inputs_0_w_payload_data;
        _zz_5 = io_inputs_0_w_payload_strb;
        _zz_6 = io_inputs_0_w_payload_last;
      end
      default : begin
        _zz_3 = io_inputs_1_w_valid;
        _zz_4 = io_inputs_1_w_payload_data;
        _zz_5 = io_inputs_1_w_payload_strb;
        _zz_6 = io_inputs_1_w_payload_last;
      end
    endcase
  end

  always @(*) begin
    case(writeRspIndex)
      1'b0 : begin
        _zz_7 = io_inputs_0_b_ready;
      end
      default : begin
        _zz_7 = io_inputs_1_b_ready;
      end
    endcase
  end

  assign io_inputs_0_aw_ready = cmdArbiter_io_inputs_0_ready;
  assign io_inputs_1_aw_ready = cmdArbiter_io_inputs_1_ready;
  assign io_output_aw_valid = cmdArbiter_io_output_fork_io_outputs_0_valid;
  assign io_output_aw_payload_addr = cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  assign io_output_aw_payload_region = cmdArbiter_io_output_fork_io_outputs_0_payload_region;
  assign io_output_aw_payload_len = cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  assign io_output_aw_payload_size = cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  assign io_output_aw_payload_burst = cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  assign io_output_aw_payload_lock = cmdArbiter_io_output_fork_io_outputs_0_payload_lock;
  assign io_output_aw_payload_cache = cmdArbiter_io_output_fork_io_outputs_0_payload_cache;
  assign io_output_aw_payload_qos = cmdArbiter_io_output_fork_io_outputs_0_payload_qos;
  assign io_output_aw_payload_prot = cmdArbiter_io_output_fork_io_outputs_0_payload_prot;
  assign io_output_aw_payload_id = {cmdArbiter_io_chosen,cmdArbiter_io_output_payload_id};
  assign cmdArbiter_io_output_fork_io_outputs_1_translated_valid = cmdArbiter_io_output_fork_io_outputs_1_valid;
  assign cmdArbiter_io_output_fork_io_outputs_1_translated_payload = cmdArbiter_io_chosen;
  assign cmdArbiter_io_output_fork_io_outputs_1_translated_ready = cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_push_ready;
  assign io_output_w_valid = (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid && _zz_3);
  assign io_output_w_payload_data = _zz_4;
  assign io_output_w_payload_strb = _zz_5;
  assign io_output_w_payload_last = _zz_6;
  assign io_inputs_0_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload == 1'b0));
  assign io_inputs_1_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_valid && io_output_w_ready) && (cmdArbiter_io_output_fork_io_outputs_1_translated_fifo_io_pop_payload == 1'b1));
  assign _zz_1 = ((io_output_w_valid && io_output_w_ready) && io_output_w_payload_last);
  assign writeRspIndex = io_output_b_payload_id[5 : 5];
  assign writeRspSels_0 = (writeRspIndex == 1'b0);
  assign writeRspSels_1 = (writeRspIndex == 1'b1);
  assign io_inputs_0_b_valid = (io_output_b_valid && writeRspSels_0);
  assign io_inputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_inputs_0_b_payload_id = io_output_b_payload_id[4 : 0];
  assign io_inputs_1_b_valid = (io_output_b_valid && writeRspSels_1);
  assign io_inputs_1_b_payload_resp = io_output_b_payload_resp;
  assign io_inputs_1_b_payload_id = io_output_b_payload_id[4 : 0];
  assign io_output_b_ready = _zz_7;
  assign _zz_2 = 1'b0;

endmodule

module Axi4ReadOnlyArbiter (
  input               io_inputs_0_ar_valid,
  output              io_inputs_0_ar_ready,
  input      [12:0]   io_inputs_0_ar_payload_addr,
  input      [4:0]    io_inputs_0_ar_payload_id,
  input      [3:0]    io_inputs_0_ar_payload_region,
  input      [7:0]    io_inputs_0_ar_payload_len,
  input      [2:0]    io_inputs_0_ar_payload_size,
  input      [1:0]    io_inputs_0_ar_payload_burst,
  input      [0:0]    io_inputs_0_ar_payload_lock,
  input      [3:0]    io_inputs_0_ar_payload_cache,
  input      [3:0]    io_inputs_0_ar_payload_qos,
  input      [2:0]    io_inputs_0_ar_payload_prot,
  output              io_inputs_0_r_valid,
  input               io_inputs_0_r_ready,
  output     [31:0]   io_inputs_0_r_payload_data,
  output     [4:0]    io_inputs_0_r_payload_id,
  output     [1:0]    io_inputs_0_r_payload_resp,
  output              io_inputs_0_r_payload_last,
  input               io_inputs_1_ar_valid,
  output              io_inputs_1_ar_ready,
  input      [12:0]   io_inputs_1_ar_payload_addr,
  input      [4:0]    io_inputs_1_ar_payload_id,
  input      [3:0]    io_inputs_1_ar_payload_region,
  input      [7:0]    io_inputs_1_ar_payload_len,
  input      [2:0]    io_inputs_1_ar_payload_size,
  input      [1:0]    io_inputs_1_ar_payload_burst,
  input      [0:0]    io_inputs_1_ar_payload_lock,
  input      [3:0]    io_inputs_1_ar_payload_cache,
  input      [3:0]    io_inputs_1_ar_payload_qos,
  input      [2:0]    io_inputs_1_ar_payload_prot,
  output              io_inputs_1_r_valid,
  input               io_inputs_1_r_ready,
  output     [31:0]   io_inputs_1_r_payload_data,
  output     [4:0]    io_inputs_1_r_payload_id,
  output     [1:0]    io_inputs_1_r_payload_resp,
  output              io_inputs_1_r_payload_last,
  output              io_output_ar_valid,
  input               io_output_ar_ready,
  output     [12:0]   io_output_ar_payload_addr,
  output     [5:0]    io_output_ar_payload_id,
  output     [3:0]    io_output_ar_payload_region,
  output     [7:0]    io_output_ar_payload_len,
  output     [2:0]    io_output_ar_payload_size,
  output     [1:0]    io_output_ar_payload_burst,
  output     [0:0]    io_output_ar_payload_lock,
  output     [3:0]    io_output_ar_payload_cache,
  output     [3:0]    io_output_ar_payload_qos,
  output     [2:0]    io_output_ar_payload_prot,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [5:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [12:0]   cmdArbiter_io_output_payload_addr;
  wire       [4:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  StreamArbiter cmdArbiter (
    .io_inputs_0_valid             (io_inputs_0_ar_valid                      ), //i
    .io_inputs_0_ready             (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr      (io_inputs_0_ar_payload_addr[12:0]         ), //i
    .io_inputs_0_payload_id        (io_inputs_0_ar_payload_id[4:0]            ), //i
    .io_inputs_0_payload_region    (io_inputs_0_ar_payload_region[3:0]        ), //i
    .io_inputs_0_payload_len       (io_inputs_0_ar_payload_len[7:0]           ), //i
    .io_inputs_0_payload_size      (io_inputs_0_ar_payload_size[2:0]          ), //i
    .io_inputs_0_payload_burst     (io_inputs_0_ar_payload_burst[1:0]         ), //i
    .io_inputs_0_payload_lock      (io_inputs_0_ar_payload_lock               ), //i
    .io_inputs_0_payload_cache     (io_inputs_0_ar_payload_cache[3:0]         ), //i
    .io_inputs_0_payload_qos       (io_inputs_0_ar_payload_qos[3:0]           ), //i
    .io_inputs_0_payload_prot      (io_inputs_0_ar_payload_prot[2:0]          ), //i
    .io_inputs_1_valid             (io_inputs_1_ar_valid                      ), //i
    .io_inputs_1_ready             (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr      (io_inputs_1_ar_payload_addr[12:0]         ), //i
    .io_inputs_1_payload_id        (io_inputs_1_ar_payload_id[4:0]            ), //i
    .io_inputs_1_payload_region    (io_inputs_1_ar_payload_region[3:0]        ), //i
    .io_inputs_1_payload_len       (io_inputs_1_ar_payload_len[7:0]           ), //i
    .io_inputs_1_payload_size      (io_inputs_1_ar_payload_size[2:0]          ), //i
    .io_inputs_1_payload_burst     (io_inputs_1_ar_payload_burst[1:0]         ), //i
    .io_inputs_1_payload_lock      (io_inputs_1_ar_payload_lock               ), //i
    .io_inputs_1_payload_cache     (io_inputs_1_ar_payload_cache[3:0]         ), //i
    .io_inputs_1_payload_qos       (io_inputs_1_ar_payload_qos[3:0]           ), //i
    .io_inputs_1_payload_prot      (io_inputs_1_ar_payload_prot[2:0]          ), //i
    .io_output_valid               (cmdArbiter_io_output_valid                ), //o
    .io_output_ready               (io_output_ar_ready                        ), //i
    .io_output_payload_addr        (cmdArbiter_io_output_payload_addr[12:0]   ), //o
    .io_output_payload_id          (cmdArbiter_io_output_payload_id[4:0]      ), //o
    .io_output_payload_region      (cmdArbiter_io_output_payload_region[3:0]  ), //o
    .io_output_payload_len         (cmdArbiter_io_output_payload_len[7:0]     ), //o
    .io_output_payload_size        (cmdArbiter_io_output_payload_size[2:0]    ), //o
    .io_output_payload_burst       (cmdArbiter_io_output_payload_burst[1:0]   ), //o
    .io_output_payload_lock        (cmdArbiter_io_output_payload_lock         ), //o
    .io_output_payload_cache       (cmdArbiter_io_output_payload_cache[3:0]   ), //o
    .io_output_payload_qos         (cmdArbiter_io_output_payload_qos[3:0]     ), //o
    .io_output_payload_prot        (cmdArbiter_io_output_payload_prot[2:0]    ), //o
    .io_chosen                     (cmdArbiter_io_chosen                      ), //o
    .io_chosenOH                   (cmdArbiter_io_chosenOH[1:0]               ), //o
    .clk                           (clk                                       ), //i
    .reset                         (reset                                     )  //i
  );
  always @(*) begin
    case(readRspIndex)
      1'b0 : begin
        _zz_1 = io_inputs_0_r_ready;
      end
      default : begin
        _zz_1 = io_inputs_1_r_ready;
      end
    endcase
  end

  assign io_inputs_0_ar_ready = cmdArbiter_io_inputs_0_ready;
  assign io_inputs_1_ar_ready = cmdArbiter_io_inputs_1_ready;
  assign io_output_ar_valid = cmdArbiter_io_output_valid;
  assign io_output_ar_payload_addr = cmdArbiter_io_output_payload_addr;
  assign io_output_ar_payload_region = cmdArbiter_io_output_payload_region;
  assign io_output_ar_payload_len = cmdArbiter_io_output_payload_len;
  assign io_output_ar_payload_size = cmdArbiter_io_output_payload_size;
  assign io_output_ar_payload_burst = cmdArbiter_io_output_payload_burst;
  assign io_output_ar_payload_lock = cmdArbiter_io_output_payload_lock;
  assign io_output_ar_payload_cache = cmdArbiter_io_output_payload_cache;
  assign io_output_ar_payload_qos = cmdArbiter_io_output_payload_qos;
  assign io_output_ar_payload_prot = cmdArbiter_io_output_payload_prot;
  assign io_output_ar_payload_id = {cmdArbiter_io_chosen,cmdArbiter_io_output_payload_id};
  assign readRspIndex = io_output_r_payload_id[5 : 5];
  assign readRspSels_0 = (readRspIndex == 1'b0);
  assign readRspSels_1 = (readRspIndex == 1'b1);
  assign io_inputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_inputs_0_r_payload_data = io_output_r_payload_data;
  assign io_inputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_inputs_0_r_payload_last = io_output_r_payload_last;
  assign io_inputs_0_r_payload_id = io_output_r_payload_id[4 : 0];
  assign io_inputs_1_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_inputs_1_r_payload_data = io_output_r_payload_data;
  assign io_inputs_1_r_payload_resp = io_output_r_payload_resp;
  assign io_inputs_1_r_payload_last = io_output_r_payload_last;
  assign io_inputs_1_r_payload_id = io_output_r_payload_id[4 : 0];
  assign io_output_r_ready = _zz_1;

endmodule

module Axi4WriteOnlyDecoder_2 (
  input               io_input_aw_valid,
  output              io_input_aw_ready,
  input      [12:0]   io_input_aw_payload_addr,
  input      [3:0]    io_input_aw_payload_id,
  input      [3:0]    io_input_aw_payload_region,
  input      [7:0]    io_input_aw_payload_len,
  input      [2:0]    io_input_aw_payload_size,
  input      [1:0]    io_input_aw_payload_burst,
  input      [0:0]    io_input_aw_payload_lock,
  input      [3:0]    io_input_aw_payload_cache,
  input      [3:0]    io_input_aw_payload_qos,
  input      [2:0]    io_input_aw_payload_prot,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [31:0]   io_input_w_payload_data,
  input      [3:0]    io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output reg [3:0]    io_input_b_payload_id,
  output reg [1:0]    io_input_b_payload_resp,
  output              io_outputs_0_aw_valid,
  input               io_outputs_0_aw_ready,
  output     [12:0]   io_outputs_0_aw_payload_addr,
  output     [3:0]    io_outputs_0_aw_payload_id,
  output     [3:0]    io_outputs_0_aw_payload_region,
  output     [7:0]    io_outputs_0_aw_payload_len,
  output     [2:0]    io_outputs_0_aw_payload_size,
  output     [1:0]    io_outputs_0_aw_payload_burst,
  output     [0:0]    io_outputs_0_aw_payload_lock,
  output     [3:0]    io_outputs_0_aw_payload_cache,
  output     [3:0]    io_outputs_0_aw_payload_qos,
  output     [2:0]    io_outputs_0_aw_payload_prot,
  output              io_outputs_0_w_valid,
  input               io_outputs_0_w_ready,
  output     [31:0]   io_outputs_0_w_payload_data,
  output     [3:0]    io_outputs_0_w_payload_strb,
  output              io_outputs_0_w_payload_last,
  input               io_outputs_0_b_valid,
  output              io_outputs_0_b_ready,
  input      [3:0]    io_outputs_0_b_payload_id,
  input      [1:0]    io_outputs_0_b_payload_resp,
  output              io_outputs_1_aw_valid,
  input               io_outputs_1_aw_ready,
  output     [12:0]   io_outputs_1_aw_payload_addr,
  output     [3:0]    io_outputs_1_aw_payload_id,
  output     [3:0]    io_outputs_1_aw_payload_region,
  output     [7:0]    io_outputs_1_aw_payload_len,
  output     [2:0]    io_outputs_1_aw_payload_size,
  output     [1:0]    io_outputs_1_aw_payload_burst,
  output     [0:0]    io_outputs_1_aw_payload_lock,
  output     [3:0]    io_outputs_1_aw_payload_cache,
  output     [3:0]    io_outputs_1_aw_payload_qos,
  output     [2:0]    io_outputs_1_aw_payload_prot,
  output              io_outputs_1_w_valid,
  input               io_outputs_1_w_ready,
  output     [31:0]   io_outputs_1_w_payload_data,
  output     [3:0]    io_outputs_1_w_payload_strb,
  output              io_outputs_1_w_payload_last,
  input               io_outputs_1_b_valid,
  output              io_outputs_1_b_ready,
  input      [3:0]    io_outputs_1_b_payload_id,
  input      [1:0]    io_outputs_1_b_payload_resp,
  output              io_outputs_2_aw_valid,
  input               io_outputs_2_aw_ready,
  output     [12:0]   io_outputs_2_aw_payload_addr,
  output     [3:0]    io_outputs_2_aw_payload_id,
  output     [3:0]    io_outputs_2_aw_payload_region,
  output     [7:0]    io_outputs_2_aw_payload_len,
  output     [2:0]    io_outputs_2_aw_payload_size,
  output     [1:0]    io_outputs_2_aw_payload_burst,
  output     [0:0]    io_outputs_2_aw_payload_lock,
  output     [3:0]    io_outputs_2_aw_payload_cache,
  output     [3:0]    io_outputs_2_aw_payload_qos,
  output     [2:0]    io_outputs_2_aw_payload_prot,
  output              io_outputs_2_w_valid,
  input               io_outputs_2_w_ready,
  output     [31:0]   io_outputs_2_w_payload_data,
  output     [3:0]    io_outputs_2_w_payload_strb,
  output              io_outputs_2_w_payload_last,
  input               io_outputs_2_b_valid,
  output              io_outputs_2_b_ready,
  input      [3:0]    io_outputs_2_b_payload_id,
  input      [1:0]    io_outputs_2_b_payload_resp,
  input               clk,
  input               reset
);
  wire                _zz_4;
  wire                _zz_5;
  reg        [3:0]    _zz_6;
  reg        [1:0]    _zz_7;
  wire                errorSlave_io_axi_aw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire       [3:0]    errorSlave_io_axi_b_payload_id;
  wire       [1:0]    errorSlave_io_axi_b_payload_resp;
  wire                cmdAllowedStart;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire       [2:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [2:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire       [1:0]    writeRspIndex;

  Axi4WriteOnlyErrorSlave errorSlave (
    .io_axi_aw_valid             (_zz_4                                  ), //i
    .io_axi_aw_ready             (errorSlave_io_axi_aw_ready             ), //o
    .io_axi_aw_payload_addr      (io_input_aw_payload_addr[12:0]         ), //i
    .io_axi_aw_payload_id        (io_input_aw_payload_id[3:0]            ), //i
    .io_axi_aw_payload_region    (io_input_aw_payload_region[3:0]        ), //i
    .io_axi_aw_payload_len       (io_input_aw_payload_len[7:0]           ), //i
    .io_axi_aw_payload_size      (io_input_aw_payload_size[2:0]          ), //i
    .io_axi_aw_payload_burst     (io_input_aw_payload_burst[1:0]         ), //i
    .io_axi_aw_payload_lock      (io_input_aw_payload_lock               ), //i
    .io_axi_aw_payload_cache     (io_input_aw_payload_cache[3:0]         ), //i
    .io_axi_aw_payload_qos       (io_input_aw_payload_qos[3:0]           ), //i
    .io_axi_aw_payload_prot      (io_input_aw_payload_prot[2:0]          ), //i
    .io_axi_w_valid              (_zz_5                                  ), //i
    .io_axi_w_ready              (errorSlave_io_axi_w_ready              ), //o
    .io_axi_w_payload_data       (io_input_w_payload_data[31:0]          ), //i
    .io_axi_w_payload_strb       (io_input_w_payload_strb[3:0]           ), //i
    .io_axi_w_payload_last       (io_input_w_payload_last                ), //i
    .io_axi_b_valid              (errorSlave_io_axi_b_valid              ), //o
    .io_axi_b_ready              (io_input_b_ready                       ), //i
    .io_axi_b_payload_id         (errorSlave_io_axi_b_payload_id[3:0]    ), //o
    .io_axi_b_payload_resp       (errorSlave_io_axi_b_payload_resp[1:0]  ), //o
    .clk                         (clk                                    ), //i
    .reset                       (reset                                  )  //i
  );
  always @(*) begin
    case(writeRspIndex)
      2'b00 : begin
        _zz_6 = io_outputs_0_b_payload_id;
        _zz_7 = io_outputs_0_b_payload_resp;
      end
      2'b01 : begin
        _zz_6 = io_outputs_1_b_payload_id;
        _zz_7 = io_outputs_1_b_payload_resp;
      end
      default : begin
        _zz_6 = io_outputs_2_b_payload_id;
        _zz_7 = io_outputs_2_b_payload_resp;
      end
    endcase
  end

  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_aw_valid && io_input_aw_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if((io_input_b_valid && io_input_b_ready))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  always @ (*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if(cmdAllowedStart)begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(((io_input_w_valid && io_input_w_ready) && io_input_w_payload_last))begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_willOverflowIfInc = ((pendingDataCounter_value == 3'b111) && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  always @ (*) begin
    if((pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt)))begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt))begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_aw_payload_addr & (~ 13'h03ff)) == 13'h0c00) && io_input_aw_valid),{(((io_input_aw_payload_addr & (~ 13'h03ff)) == 13'h0400) && io_input_aw_valid),(((io_input_aw_payload_addr & (~ 13'h03ff)) == 13'h0) && io_input_aw_valid)}};
  assign decodedCmdError = (decodedCmdSels == 3'b000);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_aw_valid && allowCmd) && _zz_1);
  assign io_input_aw_ready = ((((decodedCmdSels & {io_outputs_2_aw_ready,{io_outputs_1_aw_ready,io_outputs_0_aw_ready}}) != 3'b000) || (decodedCmdError && errorSlave_io_axi_aw_ready)) && allowCmd);
  assign _zz_4 = ((io_input_aw_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_aw_valid = ((io_input_aw_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_0_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_0_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_0_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_0_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_0_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_0_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_0_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_0_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_0_aw_payload_prot = io_input_aw_payload_prot;
  assign io_outputs_1_aw_valid = ((io_input_aw_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_1_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_1_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_1_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_1_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_1_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_1_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_1_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_1_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_1_aw_payload_prot = io_input_aw_payload_prot;
  assign io_outputs_2_aw_valid = ((io_input_aw_valid && decodedCmdSels[2]) && allowCmd);
  assign io_outputs_2_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_2_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_2_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_2_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_2_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_2_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_2_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_2_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_2_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_2_aw_payload_prot = io_input_aw_payload_prot;
  assign io_input_w_ready = ((((pendingSels & {io_outputs_2_w_ready,{io_outputs_1_w_ready,io_outputs_0_w_ready}}) != 3'b000) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign _zz_5 = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_2 = pendingSels[1];
  assign _zz_3 = pendingSels[2];
  assign io_outputs_0_w_valid = ((io_input_w_valid && pendingSels[0]) && allowData);
  assign io_outputs_0_w_payload_data = io_input_w_payload_data;
  assign io_outputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_0_w_payload_last = io_input_w_payload_last;
  assign io_outputs_1_w_valid = ((io_input_w_valid && _zz_2) && allowData);
  assign io_outputs_1_w_payload_data = io_input_w_payload_data;
  assign io_outputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_1_w_payload_last = io_input_w_payload_last;
  assign io_outputs_2_w_valid = ((io_input_w_valid && _zz_3) && allowData);
  assign io_outputs_2_w_payload_data = io_input_w_payload_data;
  assign io_outputs_2_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_2_w_payload_last = io_input_w_payload_last;
  assign writeRspIndex = {_zz_3,_zz_2};
  assign io_input_b_valid = (({io_outputs_2_b_valid,{io_outputs_1_b_valid,io_outputs_0_b_valid}} != 3'b000) || errorSlave_io_axi_b_valid);
  always @ (*) begin
    io_input_b_payload_id = _zz_6;
    if(pendingError)begin
      io_input_b_payload_id = errorSlave_io_axi_b_payload_id;
    end
  end

  always @ (*) begin
    io_input_b_payload_resp = _zz_7;
    if(pendingError)begin
      io_input_b_payload_resp = errorSlave_io_axi_b_payload_resp;
    end
  end

  assign io_outputs_0_b_ready = io_input_b_ready;
  assign io_outputs_1_b_ready = io_input_b_ready;
  assign io_outputs_2_b_ready = io_input_b_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 3'b000;
      pendingError <= 1'b0;
      _zz_1 <= 1'b1;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart)begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart)begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart)begin
        _zz_1 <= 1'b0;
      end
      if(io_input_aw_ready)begin
        _zz_1 <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder_2 (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [12:0]   io_input_ar_payload_addr,
  input      [3:0]    io_input_ar_payload_id,
  input      [3:0]    io_input_ar_payload_region,
  input      [7:0]    io_input_ar_payload_len,
  input      [2:0]    io_input_ar_payload_size,
  input      [1:0]    io_input_ar_payload_burst,
  input      [0:0]    io_input_ar_payload_lock,
  input      [3:0]    io_input_ar_payload_cache,
  input      [3:0]    io_input_ar_payload_qos,
  input      [2:0]    io_input_ar_payload_prot,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg [3:0]    io_input_r_payload_id,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [12:0]   io_outputs_0_ar_payload_addr,
  output     [3:0]    io_outputs_0_ar_payload_id,
  output     [3:0]    io_outputs_0_ar_payload_region,
  output     [7:0]    io_outputs_0_ar_payload_len,
  output     [2:0]    io_outputs_0_ar_payload_size,
  output     [1:0]    io_outputs_0_ar_payload_burst,
  output     [0:0]    io_outputs_0_ar_payload_lock,
  output     [3:0]    io_outputs_0_ar_payload_cache,
  output     [3:0]    io_outputs_0_ar_payload_qos,
  output     [2:0]    io_outputs_0_ar_payload_prot,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [31:0]   io_outputs_0_r_payload_data,
  input      [3:0]    io_outputs_0_r_payload_id,
  input      [1:0]    io_outputs_0_r_payload_resp,
  input               io_outputs_0_r_payload_last,
  output              io_outputs_1_ar_valid,
  input               io_outputs_1_ar_ready,
  output     [12:0]   io_outputs_1_ar_payload_addr,
  output     [3:0]    io_outputs_1_ar_payload_id,
  output     [3:0]    io_outputs_1_ar_payload_region,
  output     [7:0]    io_outputs_1_ar_payload_len,
  output     [2:0]    io_outputs_1_ar_payload_size,
  output     [1:0]    io_outputs_1_ar_payload_burst,
  output     [0:0]    io_outputs_1_ar_payload_lock,
  output     [3:0]    io_outputs_1_ar_payload_cache,
  output     [3:0]    io_outputs_1_ar_payload_qos,
  output     [2:0]    io_outputs_1_ar_payload_prot,
  input               io_outputs_1_r_valid,
  output              io_outputs_1_r_ready,
  input      [31:0]   io_outputs_1_r_payload_data,
  input      [3:0]    io_outputs_1_r_payload_id,
  input      [1:0]    io_outputs_1_r_payload_resp,
  input               io_outputs_1_r_payload_last,
  output              io_outputs_2_ar_valid,
  input               io_outputs_2_ar_ready,
  output     [12:0]   io_outputs_2_ar_payload_addr,
  output     [3:0]    io_outputs_2_ar_payload_id,
  output     [3:0]    io_outputs_2_ar_payload_region,
  output     [7:0]    io_outputs_2_ar_payload_len,
  output     [2:0]    io_outputs_2_ar_payload_size,
  output     [1:0]    io_outputs_2_ar_payload_burst,
  output     [0:0]    io_outputs_2_ar_payload_lock,
  output     [3:0]    io_outputs_2_ar_payload_cache,
  output     [3:0]    io_outputs_2_ar_payload_qos,
  output     [2:0]    io_outputs_2_ar_payload_prot,
  input               io_outputs_2_r_valid,
  output              io_outputs_2_r_ready,
  input      [31:0]   io_outputs_2_r_payload_data,
  input      [3:0]    io_outputs_2_r_payload_id,
  input      [1:0]    io_outputs_2_r_payload_resp,
  input               io_outputs_2_r_payload_last,
  input               clk,
  input               reset
);
  wire                _zz_3;
  reg        [31:0]   _zz_4;
  reg        [3:0]    _zz_5;
  reg        [1:0]    _zz_6;
  reg                 _zz_7;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [3:0]    errorSlave_io_axi_r_payload_id;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire       [2:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [2:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                _zz_1;
  wire                _zz_2;
  wire       [1:0]    readRspIndex;

  Axi4ReadOnlyErrorSlave errorSlave (
    .io_axi_ar_valid             (_zz_3                                   ), //i
    .io_axi_ar_ready             (errorSlave_io_axi_ar_ready              ), //o
    .io_axi_ar_payload_addr      (io_input_ar_payload_addr[12:0]          ), //i
    .io_axi_ar_payload_id        (io_input_ar_payload_id[3:0]             ), //i
    .io_axi_ar_payload_region    (io_input_ar_payload_region[3:0]         ), //i
    .io_axi_ar_payload_len       (io_input_ar_payload_len[7:0]            ), //i
    .io_axi_ar_payload_size      (io_input_ar_payload_size[2:0]           ), //i
    .io_axi_ar_payload_burst     (io_input_ar_payload_burst[1:0]          ), //i
    .io_axi_ar_payload_lock      (io_input_ar_payload_lock                ), //i
    .io_axi_ar_payload_cache     (io_input_ar_payload_cache[3:0]          ), //i
    .io_axi_ar_payload_qos       (io_input_ar_payload_qos[3:0]            ), //i
    .io_axi_ar_payload_prot      (io_input_ar_payload_prot[2:0]           ), //i
    .io_axi_r_valid              (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready              (io_input_r_ready                        ), //i
    .io_axi_r_payload_data       (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_id         (errorSlave_io_axi_r_payload_id[3:0]     ), //o
    .io_axi_r_payload_resp       (errorSlave_io_axi_r_payload_resp[1:0]   ), //o
    .io_axi_r_payload_last       (errorSlave_io_axi_r_payload_last        ), //o
    .clk                         (clk                                     ), //i
    .reset                       (reset                                   )  //i
  );
  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_4 = io_outputs_0_r_payload_data;
        _zz_5 = io_outputs_0_r_payload_id;
        _zz_6 = io_outputs_0_r_payload_resp;
        _zz_7 = io_outputs_0_r_payload_last;
      end
      2'b01 : begin
        _zz_4 = io_outputs_1_r_payload_data;
        _zz_5 = io_outputs_1_r_payload_id;
        _zz_6 = io_outputs_1_r_payload_resp;
        _zz_7 = io_outputs_1_r_payload_last;
      end
      default : begin
        _zz_4 = io_outputs_2_r_payload_data;
        _zz_5 = io_outputs_2_r_payload_id;
        _zz_6 = io_outputs_2_r_payload_resp;
        _zz_7 = io_outputs_2_r_payload_last;
      end
    endcase
  end

  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_ar_valid && io_input_ar_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_ar_payload_addr & (~ 13'h03ff)) == 13'h0c00) && io_input_ar_valid),{(((io_input_ar_payload_addr & (~ 13'h03ff)) == 13'h0400) && io_input_ar_valid),(((io_input_ar_payload_addr & (~ 13'h03ff)) == 13'h0) && io_input_ar_valid)}};
  assign decodedCmdError = (decodedCmdSels == 3'b000);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = ((((decodedCmdSels & {io_outputs_2_ar_ready,{io_outputs_1_ar_ready,io_outputs_0_ar_ready}}) != 3'b000) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign _zz_3 = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_0_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_0_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_0_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_0_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_0_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_1_ar_valid = ((io_input_ar_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_1_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_1_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_1_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_1_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_1_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_1_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_1_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_1_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_1_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_2_ar_valid = ((io_input_ar_valid && decodedCmdSels[2]) && allowCmd);
  assign io_outputs_2_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_2_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_2_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_2_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_2_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_2_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_2_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_2_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_2_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_2_ar_payload_prot = io_input_ar_payload_prot;
  assign _zz_1 = pendingSels[1];
  assign _zz_2 = pendingSels[2];
  assign readRspIndex = {_zz_2,_zz_1};
  always @ (*) begin
    io_input_r_valid = ({io_outputs_2_r_valid,{io_outputs_1_r_valid,io_outputs_0_r_valid}} != 3'b000);
    if(errorSlave_io_axi_r_valid)begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = _zz_4;
  always @ (*) begin
    io_input_r_payload_id = _zz_5;
    if(pendingError)begin
      io_input_r_payload_id = errorSlave_io_axi_r_payload_id;
    end
  end

  always @ (*) begin
    io_input_r_payload_resp = _zz_6;
    if(pendingError)begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @ (*) begin
    io_input_r_payload_last = _zz_7;
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  assign io_outputs_1_r_ready = io_input_r_ready;
  assign io_outputs_2_r_ready = io_input_r_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingSels <= 3'b000;
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready)begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready)begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module Axi4WriteOnlyDecoder_1 (
  input               io_input_aw_valid,
  output              io_input_aw_ready,
  input      [12:0]   io_input_aw_payload_addr,
  input      [3:0]    io_input_aw_payload_id,
  input      [3:0]    io_input_aw_payload_region,
  input      [7:0]    io_input_aw_payload_len,
  input      [2:0]    io_input_aw_payload_size,
  input      [1:0]    io_input_aw_payload_burst,
  input      [0:0]    io_input_aw_payload_lock,
  input      [3:0]    io_input_aw_payload_cache,
  input      [3:0]    io_input_aw_payload_qos,
  input      [2:0]    io_input_aw_payload_prot,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [31:0]   io_input_w_payload_data,
  input      [3:0]    io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output reg [3:0]    io_input_b_payload_id,
  output reg [1:0]    io_input_b_payload_resp,
  output              io_outputs_0_aw_valid,
  input               io_outputs_0_aw_ready,
  output     [12:0]   io_outputs_0_aw_payload_addr,
  output     [3:0]    io_outputs_0_aw_payload_id,
  output     [3:0]    io_outputs_0_aw_payload_region,
  output     [7:0]    io_outputs_0_aw_payload_len,
  output     [2:0]    io_outputs_0_aw_payload_size,
  output     [1:0]    io_outputs_0_aw_payload_burst,
  output     [0:0]    io_outputs_0_aw_payload_lock,
  output     [3:0]    io_outputs_0_aw_payload_cache,
  output     [3:0]    io_outputs_0_aw_payload_qos,
  output     [2:0]    io_outputs_0_aw_payload_prot,
  output              io_outputs_0_w_valid,
  input               io_outputs_0_w_ready,
  output     [31:0]   io_outputs_0_w_payload_data,
  output     [3:0]    io_outputs_0_w_payload_strb,
  output              io_outputs_0_w_payload_last,
  input               io_outputs_0_b_valid,
  output              io_outputs_0_b_ready,
  input      [3:0]    io_outputs_0_b_payload_id,
  input      [1:0]    io_outputs_0_b_payload_resp,
  output              io_outputs_1_aw_valid,
  input               io_outputs_1_aw_ready,
  output     [12:0]   io_outputs_1_aw_payload_addr,
  output     [3:0]    io_outputs_1_aw_payload_id,
  output     [3:0]    io_outputs_1_aw_payload_region,
  output     [7:0]    io_outputs_1_aw_payload_len,
  output     [2:0]    io_outputs_1_aw_payload_size,
  output     [1:0]    io_outputs_1_aw_payload_burst,
  output     [0:0]    io_outputs_1_aw_payload_lock,
  output     [3:0]    io_outputs_1_aw_payload_cache,
  output     [3:0]    io_outputs_1_aw_payload_qos,
  output     [2:0]    io_outputs_1_aw_payload_prot,
  output              io_outputs_1_w_valid,
  input               io_outputs_1_w_ready,
  output     [31:0]   io_outputs_1_w_payload_data,
  output     [3:0]    io_outputs_1_w_payload_strb,
  output              io_outputs_1_w_payload_last,
  input               io_outputs_1_b_valid,
  output              io_outputs_1_b_ready,
  input      [3:0]    io_outputs_1_b_payload_id,
  input      [1:0]    io_outputs_1_b_payload_resp,
  output              io_outputs_2_aw_valid,
  input               io_outputs_2_aw_ready,
  output     [12:0]   io_outputs_2_aw_payload_addr,
  output     [3:0]    io_outputs_2_aw_payload_id,
  output     [3:0]    io_outputs_2_aw_payload_region,
  output     [7:0]    io_outputs_2_aw_payload_len,
  output     [2:0]    io_outputs_2_aw_payload_size,
  output     [1:0]    io_outputs_2_aw_payload_burst,
  output     [0:0]    io_outputs_2_aw_payload_lock,
  output     [3:0]    io_outputs_2_aw_payload_cache,
  output     [3:0]    io_outputs_2_aw_payload_qos,
  output     [2:0]    io_outputs_2_aw_payload_prot,
  output              io_outputs_2_w_valid,
  input               io_outputs_2_w_ready,
  output     [31:0]   io_outputs_2_w_payload_data,
  output     [3:0]    io_outputs_2_w_payload_strb,
  output              io_outputs_2_w_payload_last,
  input               io_outputs_2_b_valid,
  output              io_outputs_2_b_ready,
  input      [3:0]    io_outputs_2_b_payload_id,
  input      [1:0]    io_outputs_2_b_payload_resp,
  input               clk,
  input               reset
);
  wire                _zz_4;
  wire                _zz_5;
  reg        [3:0]    _zz_6;
  reg        [1:0]    _zz_7;
  wire                errorSlave_io_axi_aw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire       [3:0]    errorSlave_io_axi_b_payload_id;
  wire       [1:0]    errorSlave_io_axi_b_payload_resp;
  wire                cmdAllowedStart;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire       [2:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [2:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire       [1:0]    writeRspIndex;

  Axi4WriteOnlyErrorSlave errorSlave (
    .io_axi_aw_valid             (_zz_4                                  ), //i
    .io_axi_aw_ready             (errorSlave_io_axi_aw_ready             ), //o
    .io_axi_aw_payload_addr      (io_input_aw_payload_addr[12:0]         ), //i
    .io_axi_aw_payload_id        (io_input_aw_payload_id[3:0]            ), //i
    .io_axi_aw_payload_region    (io_input_aw_payload_region[3:0]        ), //i
    .io_axi_aw_payload_len       (io_input_aw_payload_len[7:0]           ), //i
    .io_axi_aw_payload_size      (io_input_aw_payload_size[2:0]          ), //i
    .io_axi_aw_payload_burst     (io_input_aw_payload_burst[1:0]         ), //i
    .io_axi_aw_payload_lock      (io_input_aw_payload_lock               ), //i
    .io_axi_aw_payload_cache     (io_input_aw_payload_cache[3:0]         ), //i
    .io_axi_aw_payload_qos       (io_input_aw_payload_qos[3:0]           ), //i
    .io_axi_aw_payload_prot      (io_input_aw_payload_prot[2:0]          ), //i
    .io_axi_w_valid              (_zz_5                                  ), //i
    .io_axi_w_ready              (errorSlave_io_axi_w_ready              ), //o
    .io_axi_w_payload_data       (io_input_w_payload_data[31:0]          ), //i
    .io_axi_w_payload_strb       (io_input_w_payload_strb[3:0]           ), //i
    .io_axi_w_payload_last       (io_input_w_payload_last                ), //i
    .io_axi_b_valid              (errorSlave_io_axi_b_valid              ), //o
    .io_axi_b_ready              (io_input_b_ready                       ), //i
    .io_axi_b_payload_id         (errorSlave_io_axi_b_payload_id[3:0]    ), //o
    .io_axi_b_payload_resp       (errorSlave_io_axi_b_payload_resp[1:0]  ), //o
    .clk                         (clk                                    ), //i
    .reset                       (reset                                  )  //i
  );
  always @(*) begin
    case(writeRspIndex)
      2'b00 : begin
        _zz_6 = io_outputs_0_b_payload_id;
        _zz_7 = io_outputs_0_b_payload_resp;
      end
      2'b01 : begin
        _zz_6 = io_outputs_1_b_payload_id;
        _zz_7 = io_outputs_1_b_payload_resp;
      end
      default : begin
        _zz_6 = io_outputs_2_b_payload_id;
        _zz_7 = io_outputs_2_b_payload_resp;
      end
    endcase
  end

  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_aw_valid && io_input_aw_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if((io_input_b_valid && io_input_b_ready))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  always @ (*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if(cmdAllowedStart)begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(((io_input_w_valid && io_input_w_ready) && io_input_w_payload_last))begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_willOverflowIfInc = ((pendingDataCounter_value == 3'b111) && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  always @ (*) begin
    if((pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt)))begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt))begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_aw_payload_addr & (~ 13'h03ff)) == 13'h0c00) && io_input_aw_valid),{(((io_input_aw_payload_addr & (~ 13'h03ff)) == 13'h0800) && io_input_aw_valid),(((io_input_aw_payload_addr & (~ 13'h03ff)) == 13'h0) && io_input_aw_valid)}};
  assign decodedCmdError = (decodedCmdSels == 3'b000);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_aw_valid && allowCmd) && _zz_1);
  assign io_input_aw_ready = ((((decodedCmdSels & {io_outputs_2_aw_ready,{io_outputs_1_aw_ready,io_outputs_0_aw_ready}}) != 3'b000) || (decodedCmdError && errorSlave_io_axi_aw_ready)) && allowCmd);
  assign _zz_4 = ((io_input_aw_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_aw_valid = ((io_input_aw_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_0_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_0_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_0_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_0_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_0_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_0_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_0_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_0_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_0_aw_payload_prot = io_input_aw_payload_prot;
  assign io_outputs_1_aw_valid = ((io_input_aw_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_1_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_1_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_1_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_1_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_1_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_1_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_1_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_1_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_1_aw_payload_prot = io_input_aw_payload_prot;
  assign io_outputs_2_aw_valid = ((io_input_aw_valid && decodedCmdSels[2]) && allowCmd);
  assign io_outputs_2_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_2_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_2_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_2_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_2_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_2_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_2_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_2_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_2_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_2_aw_payload_prot = io_input_aw_payload_prot;
  assign io_input_w_ready = ((((pendingSels & {io_outputs_2_w_ready,{io_outputs_1_w_ready,io_outputs_0_w_ready}}) != 3'b000) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign _zz_5 = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_2 = pendingSels[1];
  assign _zz_3 = pendingSels[2];
  assign io_outputs_0_w_valid = ((io_input_w_valid && pendingSels[0]) && allowData);
  assign io_outputs_0_w_payload_data = io_input_w_payload_data;
  assign io_outputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_0_w_payload_last = io_input_w_payload_last;
  assign io_outputs_1_w_valid = ((io_input_w_valid && _zz_2) && allowData);
  assign io_outputs_1_w_payload_data = io_input_w_payload_data;
  assign io_outputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_1_w_payload_last = io_input_w_payload_last;
  assign io_outputs_2_w_valid = ((io_input_w_valid && _zz_3) && allowData);
  assign io_outputs_2_w_payload_data = io_input_w_payload_data;
  assign io_outputs_2_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_2_w_payload_last = io_input_w_payload_last;
  assign writeRspIndex = {_zz_3,_zz_2};
  assign io_input_b_valid = (({io_outputs_2_b_valid,{io_outputs_1_b_valid,io_outputs_0_b_valid}} != 3'b000) || errorSlave_io_axi_b_valid);
  always @ (*) begin
    io_input_b_payload_id = _zz_6;
    if(pendingError)begin
      io_input_b_payload_id = errorSlave_io_axi_b_payload_id;
    end
  end

  always @ (*) begin
    io_input_b_payload_resp = _zz_7;
    if(pendingError)begin
      io_input_b_payload_resp = errorSlave_io_axi_b_payload_resp;
    end
  end

  assign io_outputs_0_b_ready = io_input_b_ready;
  assign io_outputs_1_b_ready = io_input_b_ready;
  assign io_outputs_2_b_ready = io_input_b_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 3'b000;
      pendingError <= 1'b0;
      _zz_1 <= 1'b1;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart)begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart)begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart)begin
        _zz_1 <= 1'b0;
      end
      if(io_input_aw_ready)begin
        _zz_1 <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder_1 (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [12:0]   io_input_ar_payload_addr,
  input      [3:0]    io_input_ar_payload_id,
  input      [3:0]    io_input_ar_payload_region,
  input      [7:0]    io_input_ar_payload_len,
  input      [2:0]    io_input_ar_payload_size,
  input      [1:0]    io_input_ar_payload_burst,
  input      [0:0]    io_input_ar_payload_lock,
  input      [3:0]    io_input_ar_payload_cache,
  input      [3:0]    io_input_ar_payload_qos,
  input      [2:0]    io_input_ar_payload_prot,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg [3:0]    io_input_r_payload_id,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [12:0]   io_outputs_0_ar_payload_addr,
  output     [3:0]    io_outputs_0_ar_payload_id,
  output     [3:0]    io_outputs_0_ar_payload_region,
  output     [7:0]    io_outputs_0_ar_payload_len,
  output     [2:0]    io_outputs_0_ar_payload_size,
  output     [1:0]    io_outputs_0_ar_payload_burst,
  output     [0:0]    io_outputs_0_ar_payload_lock,
  output     [3:0]    io_outputs_0_ar_payload_cache,
  output     [3:0]    io_outputs_0_ar_payload_qos,
  output     [2:0]    io_outputs_0_ar_payload_prot,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [31:0]   io_outputs_0_r_payload_data,
  input      [3:0]    io_outputs_0_r_payload_id,
  input      [1:0]    io_outputs_0_r_payload_resp,
  input               io_outputs_0_r_payload_last,
  output              io_outputs_1_ar_valid,
  input               io_outputs_1_ar_ready,
  output     [12:0]   io_outputs_1_ar_payload_addr,
  output     [3:0]    io_outputs_1_ar_payload_id,
  output     [3:0]    io_outputs_1_ar_payload_region,
  output     [7:0]    io_outputs_1_ar_payload_len,
  output     [2:0]    io_outputs_1_ar_payload_size,
  output     [1:0]    io_outputs_1_ar_payload_burst,
  output     [0:0]    io_outputs_1_ar_payload_lock,
  output     [3:0]    io_outputs_1_ar_payload_cache,
  output     [3:0]    io_outputs_1_ar_payload_qos,
  output     [2:0]    io_outputs_1_ar_payload_prot,
  input               io_outputs_1_r_valid,
  output              io_outputs_1_r_ready,
  input      [31:0]   io_outputs_1_r_payload_data,
  input      [3:0]    io_outputs_1_r_payload_id,
  input      [1:0]    io_outputs_1_r_payload_resp,
  input               io_outputs_1_r_payload_last,
  output              io_outputs_2_ar_valid,
  input               io_outputs_2_ar_ready,
  output     [12:0]   io_outputs_2_ar_payload_addr,
  output     [3:0]    io_outputs_2_ar_payload_id,
  output     [3:0]    io_outputs_2_ar_payload_region,
  output     [7:0]    io_outputs_2_ar_payload_len,
  output     [2:0]    io_outputs_2_ar_payload_size,
  output     [1:0]    io_outputs_2_ar_payload_burst,
  output     [0:0]    io_outputs_2_ar_payload_lock,
  output     [3:0]    io_outputs_2_ar_payload_cache,
  output     [3:0]    io_outputs_2_ar_payload_qos,
  output     [2:0]    io_outputs_2_ar_payload_prot,
  input               io_outputs_2_r_valid,
  output              io_outputs_2_r_ready,
  input      [31:0]   io_outputs_2_r_payload_data,
  input      [3:0]    io_outputs_2_r_payload_id,
  input      [1:0]    io_outputs_2_r_payload_resp,
  input               io_outputs_2_r_payload_last,
  input               clk,
  input               reset
);
  wire                _zz_3;
  reg        [31:0]   _zz_4;
  reg        [3:0]    _zz_5;
  reg        [1:0]    _zz_6;
  reg                 _zz_7;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [3:0]    errorSlave_io_axi_r_payload_id;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire       [2:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [2:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                _zz_1;
  wire                _zz_2;
  wire       [1:0]    readRspIndex;

  Axi4ReadOnlyErrorSlave errorSlave (
    .io_axi_ar_valid             (_zz_3                                   ), //i
    .io_axi_ar_ready             (errorSlave_io_axi_ar_ready              ), //o
    .io_axi_ar_payload_addr      (io_input_ar_payload_addr[12:0]          ), //i
    .io_axi_ar_payload_id        (io_input_ar_payload_id[3:0]             ), //i
    .io_axi_ar_payload_region    (io_input_ar_payload_region[3:0]         ), //i
    .io_axi_ar_payload_len       (io_input_ar_payload_len[7:0]            ), //i
    .io_axi_ar_payload_size      (io_input_ar_payload_size[2:0]           ), //i
    .io_axi_ar_payload_burst     (io_input_ar_payload_burst[1:0]          ), //i
    .io_axi_ar_payload_lock      (io_input_ar_payload_lock                ), //i
    .io_axi_ar_payload_cache     (io_input_ar_payload_cache[3:0]          ), //i
    .io_axi_ar_payload_qos       (io_input_ar_payload_qos[3:0]            ), //i
    .io_axi_ar_payload_prot      (io_input_ar_payload_prot[2:0]           ), //i
    .io_axi_r_valid              (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready              (io_input_r_ready                        ), //i
    .io_axi_r_payload_data       (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_id         (errorSlave_io_axi_r_payload_id[3:0]     ), //o
    .io_axi_r_payload_resp       (errorSlave_io_axi_r_payload_resp[1:0]   ), //o
    .io_axi_r_payload_last       (errorSlave_io_axi_r_payload_last        ), //o
    .clk                         (clk                                     ), //i
    .reset                       (reset                                   )  //i
  );
  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_4 = io_outputs_0_r_payload_data;
        _zz_5 = io_outputs_0_r_payload_id;
        _zz_6 = io_outputs_0_r_payload_resp;
        _zz_7 = io_outputs_0_r_payload_last;
      end
      2'b01 : begin
        _zz_4 = io_outputs_1_r_payload_data;
        _zz_5 = io_outputs_1_r_payload_id;
        _zz_6 = io_outputs_1_r_payload_resp;
        _zz_7 = io_outputs_1_r_payload_last;
      end
      default : begin
        _zz_4 = io_outputs_2_r_payload_data;
        _zz_5 = io_outputs_2_r_payload_id;
        _zz_6 = io_outputs_2_r_payload_resp;
        _zz_7 = io_outputs_2_r_payload_last;
      end
    endcase
  end

  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_ar_valid && io_input_ar_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_ar_payload_addr & (~ 13'h03ff)) == 13'h0c00) && io_input_ar_valid),{(((io_input_ar_payload_addr & (~ 13'h03ff)) == 13'h0800) && io_input_ar_valid),(((io_input_ar_payload_addr & (~ 13'h03ff)) == 13'h0) && io_input_ar_valid)}};
  assign decodedCmdError = (decodedCmdSels == 3'b000);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = ((((decodedCmdSels & {io_outputs_2_ar_ready,{io_outputs_1_ar_ready,io_outputs_0_ar_ready}}) != 3'b000) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign _zz_3 = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_0_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_0_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_0_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_0_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_0_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_1_ar_valid = ((io_input_ar_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_1_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_1_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_1_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_1_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_1_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_1_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_1_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_1_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_1_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_2_ar_valid = ((io_input_ar_valid && decodedCmdSels[2]) && allowCmd);
  assign io_outputs_2_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_2_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_2_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_2_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_2_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_2_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_2_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_2_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_2_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_2_ar_payload_prot = io_input_ar_payload_prot;
  assign _zz_1 = pendingSels[1];
  assign _zz_2 = pendingSels[2];
  assign readRspIndex = {_zz_2,_zz_1};
  always @ (*) begin
    io_input_r_valid = ({io_outputs_2_r_valid,{io_outputs_1_r_valid,io_outputs_0_r_valid}} != 3'b000);
    if(errorSlave_io_axi_r_valid)begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = _zz_4;
  always @ (*) begin
    io_input_r_payload_id = _zz_5;
    if(pendingError)begin
      io_input_r_payload_id = errorSlave_io_axi_r_payload_id;
    end
  end

  always @ (*) begin
    io_input_r_payload_resp = _zz_6;
    if(pendingError)begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @ (*) begin
    io_input_r_payload_last = _zz_7;
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  assign io_outputs_1_r_ready = io_input_r_ready;
  assign io_outputs_2_r_ready = io_input_r_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingSels <= 3'b000;
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready)begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready)begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module Axi4WriteOnlyDecoder (
  input               io_input_aw_valid,
  output              io_input_aw_ready,
  input      [12:0]   io_input_aw_payload_addr,
  input      [3:0]    io_input_aw_payload_id,
  input      [3:0]    io_input_aw_payload_region,
  input      [7:0]    io_input_aw_payload_len,
  input      [2:0]    io_input_aw_payload_size,
  input      [1:0]    io_input_aw_payload_burst,
  input      [0:0]    io_input_aw_payload_lock,
  input      [3:0]    io_input_aw_payload_cache,
  input      [3:0]    io_input_aw_payload_qos,
  input      [2:0]    io_input_aw_payload_prot,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [31:0]   io_input_w_payload_data,
  input      [3:0]    io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output reg [3:0]    io_input_b_payload_id,
  output reg [1:0]    io_input_b_payload_resp,
  output              io_outputs_0_aw_valid,
  input               io_outputs_0_aw_ready,
  output     [12:0]   io_outputs_0_aw_payload_addr,
  output     [3:0]    io_outputs_0_aw_payload_id,
  output     [3:0]    io_outputs_0_aw_payload_region,
  output     [7:0]    io_outputs_0_aw_payload_len,
  output     [2:0]    io_outputs_0_aw_payload_size,
  output     [1:0]    io_outputs_0_aw_payload_burst,
  output     [0:0]    io_outputs_0_aw_payload_lock,
  output     [3:0]    io_outputs_0_aw_payload_cache,
  output     [3:0]    io_outputs_0_aw_payload_qos,
  output     [2:0]    io_outputs_0_aw_payload_prot,
  output              io_outputs_0_w_valid,
  input               io_outputs_0_w_ready,
  output     [31:0]   io_outputs_0_w_payload_data,
  output     [3:0]    io_outputs_0_w_payload_strb,
  output              io_outputs_0_w_payload_last,
  input               io_outputs_0_b_valid,
  output              io_outputs_0_b_ready,
  input      [3:0]    io_outputs_0_b_payload_id,
  input      [1:0]    io_outputs_0_b_payload_resp,
  output              io_outputs_1_aw_valid,
  input               io_outputs_1_aw_ready,
  output     [12:0]   io_outputs_1_aw_payload_addr,
  output     [3:0]    io_outputs_1_aw_payload_id,
  output     [3:0]    io_outputs_1_aw_payload_region,
  output     [7:0]    io_outputs_1_aw_payload_len,
  output     [2:0]    io_outputs_1_aw_payload_size,
  output     [1:0]    io_outputs_1_aw_payload_burst,
  output     [0:0]    io_outputs_1_aw_payload_lock,
  output     [3:0]    io_outputs_1_aw_payload_cache,
  output     [3:0]    io_outputs_1_aw_payload_qos,
  output     [2:0]    io_outputs_1_aw_payload_prot,
  output              io_outputs_1_w_valid,
  input               io_outputs_1_w_ready,
  output     [31:0]   io_outputs_1_w_payload_data,
  output     [3:0]    io_outputs_1_w_payload_strb,
  output              io_outputs_1_w_payload_last,
  input               io_outputs_1_b_valid,
  output              io_outputs_1_b_ready,
  input      [3:0]    io_outputs_1_b_payload_id,
  input      [1:0]    io_outputs_1_b_payload_resp,
  output              io_outputs_2_aw_valid,
  input               io_outputs_2_aw_ready,
  output     [12:0]   io_outputs_2_aw_payload_addr,
  output     [3:0]    io_outputs_2_aw_payload_id,
  output     [3:0]    io_outputs_2_aw_payload_region,
  output     [7:0]    io_outputs_2_aw_payload_len,
  output     [2:0]    io_outputs_2_aw_payload_size,
  output     [1:0]    io_outputs_2_aw_payload_burst,
  output     [0:0]    io_outputs_2_aw_payload_lock,
  output     [3:0]    io_outputs_2_aw_payload_cache,
  output     [3:0]    io_outputs_2_aw_payload_qos,
  output     [2:0]    io_outputs_2_aw_payload_prot,
  output              io_outputs_2_w_valid,
  input               io_outputs_2_w_ready,
  output     [31:0]   io_outputs_2_w_payload_data,
  output     [3:0]    io_outputs_2_w_payload_strb,
  output              io_outputs_2_w_payload_last,
  input               io_outputs_2_b_valid,
  output              io_outputs_2_b_ready,
  input      [3:0]    io_outputs_2_b_payload_id,
  input      [1:0]    io_outputs_2_b_payload_resp,
  input               clk,
  input               reset
);
  wire                _zz_4;
  wire                _zz_5;
  reg        [3:0]    _zz_6;
  reg        [1:0]    _zz_7;
  wire                errorSlave_io_axi_aw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire       [3:0]    errorSlave_io_axi_b_payload_id;
  wire       [1:0]    errorSlave_io_axi_b_payload_resp;
  wire                cmdAllowedStart;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire       [2:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [2:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire       [1:0]    writeRspIndex;

  Axi4WriteOnlyErrorSlave errorSlave (
    .io_axi_aw_valid             (_zz_4                                  ), //i
    .io_axi_aw_ready             (errorSlave_io_axi_aw_ready             ), //o
    .io_axi_aw_payload_addr      (io_input_aw_payload_addr[12:0]         ), //i
    .io_axi_aw_payload_id        (io_input_aw_payload_id[3:0]            ), //i
    .io_axi_aw_payload_region    (io_input_aw_payload_region[3:0]        ), //i
    .io_axi_aw_payload_len       (io_input_aw_payload_len[7:0]           ), //i
    .io_axi_aw_payload_size      (io_input_aw_payload_size[2:0]          ), //i
    .io_axi_aw_payload_burst     (io_input_aw_payload_burst[1:0]         ), //i
    .io_axi_aw_payload_lock      (io_input_aw_payload_lock               ), //i
    .io_axi_aw_payload_cache     (io_input_aw_payload_cache[3:0]         ), //i
    .io_axi_aw_payload_qos       (io_input_aw_payload_qos[3:0]           ), //i
    .io_axi_aw_payload_prot      (io_input_aw_payload_prot[2:0]          ), //i
    .io_axi_w_valid              (_zz_5                                  ), //i
    .io_axi_w_ready              (errorSlave_io_axi_w_ready              ), //o
    .io_axi_w_payload_data       (io_input_w_payload_data[31:0]          ), //i
    .io_axi_w_payload_strb       (io_input_w_payload_strb[3:0]           ), //i
    .io_axi_w_payload_last       (io_input_w_payload_last                ), //i
    .io_axi_b_valid              (errorSlave_io_axi_b_valid              ), //o
    .io_axi_b_ready              (io_input_b_ready                       ), //i
    .io_axi_b_payload_id         (errorSlave_io_axi_b_payload_id[3:0]    ), //o
    .io_axi_b_payload_resp       (errorSlave_io_axi_b_payload_resp[1:0]  ), //o
    .clk                         (clk                                    ), //i
    .reset                       (reset                                  )  //i
  );
  always @(*) begin
    case(writeRspIndex)
      2'b00 : begin
        _zz_6 = io_outputs_0_b_payload_id;
        _zz_7 = io_outputs_0_b_payload_resp;
      end
      2'b01 : begin
        _zz_6 = io_outputs_1_b_payload_id;
        _zz_7 = io_outputs_1_b_payload_resp;
      end
      default : begin
        _zz_6 = io_outputs_2_b_payload_id;
        _zz_7 = io_outputs_2_b_payload_resp;
      end
    endcase
  end

  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_aw_valid && io_input_aw_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if((io_input_b_valid && io_input_b_ready))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  always @ (*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if(cmdAllowedStart)begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(((io_input_w_valid && io_input_w_ready) && io_input_w_payload_last))begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_willOverflowIfInc = ((pendingDataCounter_value == 3'b111) && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  always @ (*) begin
    if((pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt)))begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt))begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_aw_payload_addr & (~ 13'h03ff)) == 13'h0c00) && io_input_aw_valid),{(((io_input_aw_payload_addr & (~ 13'h03ff)) == 13'h0800) && io_input_aw_valid),(((io_input_aw_payload_addr & (~ 13'h03ff)) == 13'h0400) && io_input_aw_valid)}};
  assign decodedCmdError = (decodedCmdSels == 3'b000);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_aw_valid && allowCmd) && _zz_1);
  assign io_input_aw_ready = ((((decodedCmdSels & {io_outputs_2_aw_ready,{io_outputs_1_aw_ready,io_outputs_0_aw_ready}}) != 3'b000) || (decodedCmdError && errorSlave_io_axi_aw_ready)) && allowCmd);
  assign _zz_4 = ((io_input_aw_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_aw_valid = ((io_input_aw_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_0_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_0_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_0_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_0_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_0_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_0_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_0_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_0_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_0_aw_payload_prot = io_input_aw_payload_prot;
  assign io_outputs_1_aw_valid = ((io_input_aw_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_1_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_1_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_1_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_1_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_1_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_1_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_1_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_1_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_1_aw_payload_prot = io_input_aw_payload_prot;
  assign io_outputs_2_aw_valid = ((io_input_aw_valid && decodedCmdSels[2]) && allowCmd);
  assign io_outputs_2_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_2_aw_payload_id = io_input_aw_payload_id;
  assign io_outputs_2_aw_payload_region = io_input_aw_payload_region;
  assign io_outputs_2_aw_payload_len = io_input_aw_payload_len;
  assign io_outputs_2_aw_payload_size = io_input_aw_payload_size;
  assign io_outputs_2_aw_payload_burst = io_input_aw_payload_burst;
  assign io_outputs_2_aw_payload_lock = io_input_aw_payload_lock;
  assign io_outputs_2_aw_payload_cache = io_input_aw_payload_cache;
  assign io_outputs_2_aw_payload_qos = io_input_aw_payload_qos;
  assign io_outputs_2_aw_payload_prot = io_input_aw_payload_prot;
  assign io_input_w_ready = ((((pendingSels & {io_outputs_2_w_ready,{io_outputs_1_w_ready,io_outputs_0_w_ready}}) != 3'b000) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign _zz_5 = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_2 = pendingSels[1];
  assign _zz_3 = pendingSels[2];
  assign io_outputs_0_w_valid = ((io_input_w_valid && pendingSels[0]) && allowData);
  assign io_outputs_0_w_payload_data = io_input_w_payload_data;
  assign io_outputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_0_w_payload_last = io_input_w_payload_last;
  assign io_outputs_1_w_valid = ((io_input_w_valid && _zz_2) && allowData);
  assign io_outputs_1_w_payload_data = io_input_w_payload_data;
  assign io_outputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_1_w_payload_last = io_input_w_payload_last;
  assign io_outputs_2_w_valid = ((io_input_w_valid && _zz_3) && allowData);
  assign io_outputs_2_w_payload_data = io_input_w_payload_data;
  assign io_outputs_2_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_2_w_payload_last = io_input_w_payload_last;
  assign writeRspIndex = {_zz_3,_zz_2};
  assign io_input_b_valid = (({io_outputs_2_b_valid,{io_outputs_1_b_valid,io_outputs_0_b_valid}} != 3'b000) || errorSlave_io_axi_b_valid);
  always @ (*) begin
    io_input_b_payload_id = _zz_6;
    if(pendingError)begin
      io_input_b_payload_id = errorSlave_io_axi_b_payload_id;
    end
  end

  always @ (*) begin
    io_input_b_payload_resp = _zz_7;
    if(pendingError)begin
      io_input_b_payload_resp = errorSlave_io_axi_b_payload_resp;
    end
  end

  assign io_outputs_0_b_ready = io_input_b_ready;
  assign io_outputs_1_b_ready = io_input_b_ready;
  assign io_outputs_2_b_ready = io_input_b_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 3'b000;
      pendingError <= 1'b0;
      _zz_1 <= 1'b1;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart)begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart)begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart)begin
        _zz_1 <= 1'b0;
      end
      if(io_input_aw_ready)begin
        _zz_1 <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [12:0]   io_input_ar_payload_addr,
  input      [3:0]    io_input_ar_payload_id,
  input      [3:0]    io_input_ar_payload_region,
  input      [7:0]    io_input_ar_payload_len,
  input      [2:0]    io_input_ar_payload_size,
  input      [1:0]    io_input_ar_payload_burst,
  input      [0:0]    io_input_ar_payload_lock,
  input      [3:0]    io_input_ar_payload_cache,
  input      [3:0]    io_input_ar_payload_qos,
  input      [2:0]    io_input_ar_payload_prot,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg [3:0]    io_input_r_payload_id,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [12:0]   io_outputs_0_ar_payload_addr,
  output     [3:0]    io_outputs_0_ar_payload_id,
  output     [3:0]    io_outputs_0_ar_payload_region,
  output     [7:0]    io_outputs_0_ar_payload_len,
  output     [2:0]    io_outputs_0_ar_payload_size,
  output     [1:0]    io_outputs_0_ar_payload_burst,
  output     [0:0]    io_outputs_0_ar_payload_lock,
  output     [3:0]    io_outputs_0_ar_payload_cache,
  output     [3:0]    io_outputs_0_ar_payload_qos,
  output     [2:0]    io_outputs_0_ar_payload_prot,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [31:0]   io_outputs_0_r_payload_data,
  input      [3:0]    io_outputs_0_r_payload_id,
  input      [1:0]    io_outputs_0_r_payload_resp,
  input               io_outputs_0_r_payload_last,
  output              io_outputs_1_ar_valid,
  input               io_outputs_1_ar_ready,
  output     [12:0]   io_outputs_1_ar_payload_addr,
  output     [3:0]    io_outputs_1_ar_payload_id,
  output     [3:0]    io_outputs_1_ar_payload_region,
  output     [7:0]    io_outputs_1_ar_payload_len,
  output     [2:0]    io_outputs_1_ar_payload_size,
  output     [1:0]    io_outputs_1_ar_payload_burst,
  output     [0:0]    io_outputs_1_ar_payload_lock,
  output     [3:0]    io_outputs_1_ar_payload_cache,
  output     [3:0]    io_outputs_1_ar_payload_qos,
  output     [2:0]    io_outputs_1_ar_payload_prot,
  input               io_outputs_1_r_valid,
  output              io_outputs_1_r_ready,
  input      [31:0]   io_outputs_1_r_payload_data,
  input      [3:0]    io_outputs_1_r_payload_id,
  input      [1:0]    io_outputs_1_r_payload_resp,
  input               io_outputs_1_r_payload_last,
  output              io_outputs_2_ar_valid,
  input               io_outputs_2_ar_ready,
  output     [12:0]   io_outputs_2_ar_payload_addr,
  output     [3:0]    io_outputs_2_ar_payload_id,
  output     [3:0]    io_outputs_2_ar_payload_region,
  output     [7:0]    io_outputs_2_ar_payload_len,
  output     [2:0]    io_outputs_2_ar_payload_size,
  output     [1:0]    io_outputs_2_ar_payload_burst,
  output     [0:0]    io_outputs_2_ar_payload_lock,
  output     [3:0]    io_outputs_2_ar_payload_cache,
  output     [3:0]    io_outputs_2_ar_payload_qos,
  output     [2:0]    io_outputs_2_ar_payload_prot,
  input               io_outputs_2_r_valid,
  output              io_outputs_2_r_ready,
  input      [31:0]   io_outputs_2_r_payload_data,
  input      [3:0]    io_outputs_2_r_payload_id,
  input      [1:0]    io_outputs_2_r_payload_resp,
  input               io_outputs_2_r_payload_last,
  input               clk,
  input               reset
);
  wire                _zz_3;
  reg        [31:0]   _zz_4;
  reg        [3:0]    _zz_5;
  reg        [1:0]    _zz_6;
  reg                 _zz_7;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [3:0]    errorSlave_io_axi_r_payload_id;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire       [2:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [2:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                _zz_1;
  wire                _zz_2;
  wire       [1:0]    readRspIndex;

  Axi4ReadOnlyErrorSlave errorSlave (
    .io_axi_ar_valid             (_zz_3                                   ), //i
    .io_axi_ar_ready             (errorSlave_io_axi_ar_ready              ), //o
    .io_axi_ar_payload_addr      (io_input_ar_payload_addr[12:0]          ), //i
    .io_axi_ar_payload_id        (io_input_ar_payload_id[3:0]             ), //i
    .io_axi_ar_payload_region    (io_input_ar_payload_region[3:0]         ), //i
    .io_axi_ar_payload_len       (io_input_ar_payload_len[7:0]            ), //i
    .io_axi_ar_payload_size      (io_input_ar_payload_size[2:0]           ), //i
    .io_axi_ar_payload_burst     (io_input_ar_payload_burst[1:0]          ), //i
    .io_axi_ar_payload_lock      (io_input_ar_payload_lock                ), //i
    .io_axi_ar_payload_cache     (io_input_ar_payload_cache[3:0]          ), //i
    .io_axi_ar_payload_qos       (io_input_ar_payload_qos[3:0]            ), //i
    .io_axi_ar_payload_prot      (io_input_ar_payload_prot[2:0]           ), //i
    .io_axi_r_valid              (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready              (io_input_r_ready                        ), //i
    .io_axi_r_payload_data       (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_id         (errorSlave_io_axi_r_payload_id[3:0]     ), //o
    .io_axi_r_payload_resp       (errorSlave_io_axi_r_payload_resp[1:0]   ), //o
    .io_axi_r_payload_last       (errorSlave_io_axi_r_payload_last        ), //o
    .clk                         (clk                                     ), //i
    .reset                       (reset                                   )  //i
  );
  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_4 = io_outputs_0_r_payload_data;
        _zz_5 = io_outputs_0_r_payload_id;
        _zz_6 = io_outputs_0_r_payload_resp;
        _zz_7 = io_outputs_0_r_payload_last;
      end
      2'b01 : begin
        _zz_4 = io_outputs_1_r_payload_data;
        _zz_5 = io_outputs_1_r_payload_id;
        _zz_6 = io_outputs_1_r_payload_resp;
        _zz_7 = io_outputs_1_r_payload_last;
      end
      default : begin
        _zz_4 = io_outputs_2_r_payload_data;
        _zz_5 = io_outputs_2_r_payload_id;
        _zz_6 = io_outputs_2_r_payload_resp;
        _zz_7 = io_outputs_2_r_payload_last;
      end
    endcase
  end

  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_ar_valid && io_input_ar_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_ar_payload_addr & (~ 13'h03ff)) == 13'h0c00) && io_input_ar_valid),{(((io_input_ar_payload_addr & (~ 13'h03ff)) == 13'h0800) && io_input_ar_valid),(((io_input_ar_payload_addr & (~ 13'h03ff)) == 13'h0400) && io_input_ar_valid)}};
  assign decodedCmdError = (decodedCmdSels == 3'b000);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = ((((decodedCmdSels & {io_outputs_2_ar_ready,{io_outputs_1_ar_ready,io_outputs_0_ar_ready}}) != 3'b000) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign _zz_3 = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_0_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_0_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_0_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_0_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_0_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_1_ar_valid = ((io_input_ar_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_1_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_1_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_1_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_1_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_1_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_1_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_1_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_1_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_1_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_2_ar_valid = ((io_input_ar_valid && decodedCmdSels[2]) && allowCmd);
  assign io_outputs_2_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_2_ar_payload_id = io_input_ar_payload_id;
  assign io_outputs_2_ar_payload_region = io_input_ar_payload_region;
  assign io_outputs_2_ar_payload_len = io_input_ar_payload_len;
  assign io_outputs_2_ar_payload_size = io_input_ar_payload_size;
  assign io_outputs_2_ar_payload_burst = io_input_ar_payload_burst;
  assign io_outputs_2_ar_payload_lock = io_input_ar_payload_lock;
  assign io_outputs_2_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_2_ar_payload_qos = io_input_ar_payload_qos;
  assign io_outputs_2_ar_payload_prot = io_input_ar_payload_prot;
  assign _zz_1 = pendingSels[1];
  assign _zz_2 = pendingSels[2];
  assign readRspIndex = {_zz_2,_zz_1};
  always @ (*) begin
    io_input_r_valid = ({io_outputs_2_r_valid,{io_outputs_1_r_valid,io_outputs_0_r_valid}} != 3'b000);
    if(errorSlave_io_axi_r_valid)begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = _zz_4;
  always @ (*) begin
    io_input_r_payload_id = _zz_5;
    if(pendingError)begin
      io_input_r_payload_id = errorSlave_io_axi_r_payload_id;
    end
  end

  always @ (*) begin
    io_input_r_payload_resp = _zz_6;
    if(pendingError)begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @ (*) begin
    io_input_r_payload_last = _zz_7;
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  assign io_outputs_1_r_ready = io_input_r_ready;
  assign io_outputs_2_r_ready = io_input_r_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingSels <= 3'b000;
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready)begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready)begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module StreamFifoLowLatency_3 (
  input               io_push_valid,
  output              io_push_ready,
  input      [1:0]    io_push_payload,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg [1:0]    io_pop_payload,
  input               io_flush,
  output     [2:0]    io_occupancy,
  input               clk,
  input               reset
);
  wire       [1:0]    _zz_2;
  wire                _zz_3;
  wire       [0:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire       [0:0]    _zz_6;
  wire       [1:0]    _zz_7;
  wire       [1:0]    _zz_8;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [1:0]    pushPtr_valueNext;
  reg        [1:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [1:0]    popPtr_valueNext;
  reg        [1:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [1:0]    ptrDif;
  (* ram_style = "distributed" *) reg [1:0] ram [0:3];

  assign _zz_3 = (! empty);
  assign _zz_4 = pushPtr_willIncrement;
  assign _zz_5 = {1'd0, _zz_4};
  assign _zz_6 = popPtr_willIncrement;
  assign _zz_7 = {1'd0, _zz_6};
  assign _zz_8 = io_push_payload;
  assign _zz_2 = ram[popPtr_value];
  always @ (posedge clk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_8;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 2'b11);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_5);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = 2'b00;
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 2'b11);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + _zz_7);
    if(popPtr_willClear)begin
      popPtr_valueNext = 2'b00;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  always @ (*) begin
    if(_zz_3)begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  always @ (*) begin
    if(_zz_3)begin
      io_pop_payload = _zz_2;
    end else begin
      io_pop_payload = io_push_payload;
    end
  end

  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pushPtr_value <= 2'b00;
      popPtr_value <= 2'b00;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFork_3 (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [12:0]   io_input_payload_addr,
  input      [3:0]    io_input_payload_id,
  input      [3:0]    io_input_payload_region,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input      [0:0]    io_input_payload_lock,
  input      [3:0]    io_input_payload_cache,
  input      [3:0]    io_input_payload_qos,
  input      [2:0]    io_input_payload_prot,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [12:0]   io_outputs_0_payload_addr,
  output     [3:0]    io_outputs_0_payload_id,
  output     [3:0]    io_outputs_0_payload_region,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output     [0:0]    io_outputs_0_payload_lock,
  output     [3:0]    io_outputs_0_payload_cache,
  output     [3:0]    io_outputs_0_payload_qos,
  output     [2:0]    io_outputs_0_payload_prot,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [12:0]   io_outputs_1_payload_addr,
  output     [3:0]    io_outputs_1_payload_id,
  output     [3:0]    io_outputs_1_payload_region,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output     [0:0]    io_outputs_1_payload_lock,
  output     [3:0]    io_outputs_1_payload_cache,
  output     [3:0]    io_outputs_1_payload_qos,
  output     [2:0]    io_outputs_1_payload_prot,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_region = io_input_payload_region;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_lock = io_input_payload_lock;
  assign io_outputs_0_payload_cache = io_input_payload_cache;
  assign io_outputs_0_payload_qos = io_input_payload_qos;
  assign io_outputs_0_payload_prot = io_input_payload_prot;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_region = io_input_payload_region;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_lock = io_input_payload_lock;
  assign io_outputs_1_payload_cache = io_input_payload_cache;
  assign io_outputs_1_payload_qos = io_input_payload_qos;
  assign io_outputs_1_payload_prot = io_input_payload_prot;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

//StreamArbiter_6 replaced by StreamArbiter_6

module StreamArbiter_6 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [12:0]   io_inputs_0_payload_addr,
  input      [3:0]    io_inputs_0_payload_id,
  input      [3:0]    io_inputs_0_payload_region,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input      [0:0]    io_inputs_0_payload_lock,
  input      [3:0]    io_inputs_0_payload_cache,
  input      [3:0]    io_inputs_0_payload_qos,
  input      [2:0]    io_inputs_0_payload_prot,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [12:0]   io_inputs_1_payload_addr,
  input      [3:0]    io_inputs_1_payload_id,
  input      [3:0]    io_inputs_1_payload_region,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input      [0:0]    io_inputs_1_payload_lock,
  input      [3:0]    io_inputs_1_payload_cache,
  input      [3:0]    io_inputs_1_payload_qos,
  input      [2:0]    io_inputs_1_payload_prot,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input      [12:0]   io_inputs_2_payload_addr,
  input      [3:0]    io_inputs_2_payload_id,
  input      [3:0]    io_inputs_2_payload_region,
  input      [7:0]    io_inputs_2_payload_len,
  input      [2:0]    io_inputs_2_payload_size,
  input      [1:0]    io_inputs_2_payload_burst,
  input      [0:0]    io_inputs_2_payload_lock,
  input      [3:0]    io_inputs_2_payload_cache,
  input      [3:0]    io_inputs_2_payload_qos,
  input      [2:0]    io_inputs_2_payload_prot,
  output              io_output_valid,
  input               io_output_ready,
  output     [12:0]   io_output_payload_addr,
  output     [3:0]    io_output_payload_id,
  output     [3:0]    io_output_payload_region,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output     [0:0]    io_output_payload_lock,
  output     [3:0]    io_output_payload_cache,
  output     [3:0]    io_output_payload_qos,
  output     [2:0]    io_output_payload_prot,
  output     [1:0]    io_chosen,
  output     [2:0]    io_chosenOH,
  input               clk,
  input               reset
);
  reg        [12:0]   _zz_8;
  reg        [3:0]    _zz_9;
  reg        [3:0]    _zz_10;
  reg        [7:0]    _zz_11;
  reg        [2:0]    _zz_12;
  reg        [1:0]    _zz_13;
  reg        [0:0]    _zz_14;
  reg        [3:0]    _zz_15;
  reg        [3:0]    _zz_16;
  reg        [2:0]    _zz_17;
  wire       [5:0]    _zz_18;
  wire       [2:0]    _zz_19;
  wire       [5:0]    _zz_20;
  wire       [0:0]    _zz_21;
  wire       [0:0]    _zz_22;
  wire       [0:0]    _zz_23;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  wire                maskProposal_2;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  wire       [2:0]    _zz_1;
  wire       [5:0]    _zz_2;
  wire       [5:0]    _zz_3;
  wire       [2:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire                _zz_6;
  wire                _zz_7;

  assign _zz_18 = (_zz_2 - _zz_20);
  assign _zz_19 = {maskLocked_1,{maskLocked_0,maskLocked_2}};
  assign _zz_20 = {3'd0, _zz_19};
  assign _zz_21 = _zz_4[0 : 0];
  assign _zz_22 = _zz_4[1 : 1];
  assign _zz_23 = _zz_4[2 : 2];
  always @(*) begin
    case(_zz_5)
      2'b00 : begin
        _zz_8 = io_inputs_0_payload_addr;
        _zz_9 = io_inputs_0_payload_id;
        _zz_10 = io_inputs_0_payload_region;
        _zz_11 = io_inputs_0_payload_len;
        _zz_12 = io_inputs_0_payload_size;
        _zz_13 = io_inputs_0_payload_burst;
        _zz_14 = io_inputs_0_payload_lock;
        _zz_15 = io_inputs_0_payload_cache;
        _zz_16 = io_inputs_0_payload_qos;
        _zz_17 = io_inputs_0_payload_prot;
      end
      2'b01 : begin
        _zz_8 = io_inputs_1_payload_addr;
        _zz_9 = io_inputs_1_payload_id;
        _zz_10 = io_inputs_1_payload_region;
        _zz_11 = io_inputs_1_payload_len;
        _zz_12 = io_inputs_1_payload_size;
        _zz_13 = io_inputs_1_payload_burst;
        _zz_14 = io_inputs_1_payload_lock;
        _zz_15 = io_inputs_1_payload_cache;
        _zz_16 = io_inputs_1_payload_qos;
        _zz_17 = io_inputs_1_payload_prot;
      end
      default : begin
        _zz_8 = io_inputs_2_payload_addr;
        _zz_9 = io_inputs_2_payload_id;
        _zz_10 = io_inputs_2_payload_region;
        _zz_11 = io_inputs_2_payload_len;
        _zz_12 = io_inputs_2_payload_size;
        _zz_13 = io_inputs_2_payload_burst;
        _zz_14 = io_inputs_2_payload_lock;
        _zz_15 = io_inputs_2_payload_cache;
        _zz_16 = io_inputs_2_payload_qos;
        _zz_17 = io_inputs_2_payload_prot;
      end
    endcase
  end

  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  assign _zz_1 = {io_inputs_2_valid,{io_inputs_1_valid,io_inputs_0_valid}};
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_18));
  assign _zz_4 = (_zz_3[5 : 3] | _zz_3[2 : 0]);
  assign maskProposal_0 = _zz_21[0];
  assign maskProposal_1 = _zz_22[0];
  assign maskProposal_2 = _zz_23[0];
  assign io_output_valid = (((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2));
  assign _zz_5 = {maskRouted_2,maskRouted_1};
  assign io_output_payload_addr = _zz_8;
  assign io_output_payload_id = _zz_9;
  assign io_output_payload_region = _zz_10;
  assign io_output_payload_len = _zz_11;
  assign io_output_payload_size = _zz_12;
  assign io_output_payload_burst = _zz_13;
  assign io_output_payload_lock = _zz_14;
  assign io_output_payload_cache = _zz_15;
  assign io_output_payload_qos = _zz_16;
  assign io_output_payload_prot = _zz_17;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_chosenOH = {maskRouted_2,{maskRouted_1,maskRouted_0}};
  assign _zz_6 = io_chosenOH[1];
  assign _zz_7 = io_chosenOH[2];
  assign io_chosen = {_zz_7,_zz_6};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b0;
      maskLocked_2 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
        maskLocked_2 <= maskRouted_2;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

//StreamFifoLowLatency replaced by StreamFifoLowLatency

//StreamFork replaced by StreamFork

//StreamArbiter replaced by StreamArbiter

//StreamArbiter replaced by StreamArbiter

//StreamFifoLowLatency replaced by StreamFifoLowLatency

//StreamFork replaced by StreamFork

//StreamArbiter replaced by StreamArbiter

//StreamArbiter replaced by StreamArbiter

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input      [0:0]    io_push_payload,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg [0:0]    io_pop_payload,
  input               io_flush,
  output     [2:0]    io_occupancy,
  input               clk,
  input               reset
);
  wire       [0:0]    _zz_2;
  wire                _zz_3;
  wire       [0:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire       [0:0]    _zz_6;
  wire       [1:0]    _zz_7;
  wire       [0:0]    _zz_8;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [1:0]    pushPtr_valueNext;
  reg        [1:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [1:0]    popPtr_valueNext;
  reg        [1:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [1:0]    ptrDif;
  (* ram_style = "distributed" *) reg [0:0] ram [0:3];

  assign _zz_3 = (! empty);
  assign _zz_4 = pushPtr_willIncrement;
  assign _zz_5 = {1'd0, _zz_4};
  assign _zz_6 = popPtr_willIncrement;
  assign _zz_7 = {1'd0, _zz_6};
  assign _zz_8 = io_push_payload;
  assign _zz_2 = ram[popPtr_value];
  always @ (posedge clk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_8;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 2'b11);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_5);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = 2'b00;
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 2'b11);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + _zz_7);
    if(popPtr_willClear)begin
      popPtr_valueNext = 2'b00;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  always @ (*) begin
    if(_zz_3)begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  always @ (*) begin
    if(_zz_3)begin
      io_pop_payload = _zz_2;
    end else begin
      io_pop_payload = io_push_payload;
    end
  end

  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pushPtr_value <= 2'b00;
      popPtr_value <= 2'b00;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFork (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [12:0]   io_input_payload_addr,
  input      [4:0]    io_input_payload_id,
  input      [3:0]    io_input_payload_region,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input      [0:0]    io_input_payload_lock,
  input      [3:0]    io_input_payload_cache,
  input      [3:0]    io_input_payload_qos,
  input      [2:0]    io_input_payload_prot,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [12:0]   io_outputs_0_payload_addr,
  output     [4:0]    io_outputs_0_payload_id,
  output     [3:0]    io_outputs_0_payload_region,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output     [0:0]    io_outputs_0_payload_lock,
  output     [3:0]    io_outputs_0_payload_cache,
  output     [3:0]    io_outputs_0_payload_qos,
  output     [2:0]    io_outputs_0_payload_prot,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [12:0]   io_outputs_1_payload_addr,
  output     [4:0]    io_outputs_1_payload_id,
  output     [3:0]    io_outputs_1_payload_region,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output     [0:0]    io_outputs_1_payload_lock,
  output     [3:0]    io_outputs_1_payload_cache,
  output     [3:0]    io_outputs_1_payload_qos,
  output     [2:0]    io_outputs_1_payload_prot,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_region = io_input_payload_region;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_lock = io_input_payload_lock;
  assign io_outputs_0_payload_cache = io_input_payload_cache;
  assign io_outputs_0_payload_qos = io_input_payload_qos;
  assign io_outputs_0_payload_prot = io_input_payload_prot;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_region = io_input_payload_region;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_lock = io_input_payload_lock;
  assign io_outputs_1_payload_cache = io_input_payload_cache;
  assign io_outputs_1_payload_qos = io_input_payload_qos;
  assign io_outputs_1_payload_prot = io_input_payload_prot;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

//StreamArbiter replaced by StreamArbiter

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [12:0]   io_inputs_0_payload_addr,
  input      [4:0]    io_inputs_0_payload_id,
  input      [3:0]    io_inputs_0_payload_region,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input      [0:0]    io_inputs_0_payload_lock,
  input      [3:0]    io_inputs_0_payload_cache,
  input      [3:0]    io_inputs_0_payload_qos,
  input      [2:0]    io_inputs_0_payload_prot,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [12:0]   io_inputs_1_payload_addr,
  input      [4:0]    io_inputs_1_payload_id,
  input      [3:0]    io_inputs_1_payload_region,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input      [0:0]    io_inputs_1_payload_lock,
  input      [3:0]    io_inputs_1_payload_cache,
  input      [3:0]    io_inputs_1_payload_qos,
  input      [2:0]    io_inputs_1_payload_prot,
  output              io_output_valid,
  input               io_output_ready,
  output     [12:0]   io_output_payload_addr,
  output     [4:0]    io_output_payload_id,
  output     [3:0]    io_output_payload_region,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output     [0:0]    io_output_payload_lock,
  output     [3:0]    io_output_payload_cache,
  output     [3:0]    io_output_payload_qos,
  output     [2:0]    io_output_payload_prot,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               clk,
  input               reset
);
  wire       [3:0]    _zz_6;
  wire       [1:0]    _zz_7;
  wire       [3:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [0:0]    _zz_10;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_1;
  wire       [3:0]    _zz_2;
  wire       [3:0]    _zz_3;
  wire       [1:0]    _zz_4;
  wire                _zz_5;

  assign _zz_6 = (_zz_2 - _zz_8);
  assign _zz_7 = {maskLocked_0,maskLocked_1};
  assign _zz_8 = {2'd0, _zz_7};
  assign _zz_9 = _zz_4[0 : 0];
  assign _zz_10 = _zz_4[1 : 1];
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_1 = {io_inputs_1_valid,io_inputs_0_valid};
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_6));
  assign _zz_4 = (_zz_3[3 : 2] | _zz_3[1 : 0]);
  assign maskProposal_0 = _zz_9[0];
  assign maskProposal_1 = _zz_10[0];
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_addr = (maskRouted_0 ? io_inputs_0_payload_addr : io_inputs_1_payload_addr);
  assign io_output_payload_id = (maskRouted_0 ? io_inputs_0_payload_id : io_inputs_1_payload_id);
  assign io_output_payload_region = (maskRouted_0 ? io_inputs_0_payload_region : io_inputs_1_payload_region);
  assign io_output_payload_len = (maskRouted_0 ? io_inputs_0_payload_len : io_inputs_1_payload_len);
  assign io_output_payload_size = (maskRouted_0 ? io_inputs_0_payload_size : io_inputs_1_payload_size);
  assign io_output_payload_burst = (maskRouted_0 ? io_inputs_0_payload_burst : io_inputs_1_payload_burst);
  assign io_output_payload_lock = (maskRouted_0 ? io_inputs_0_payload_lock : io_inputs_1_payload_lock);
  assign io_output_payload_cache = (maskRouted_0 ? io_inputs_0_payload_cache : io_inputs_1_payload_cache);
  assign io_output_payload_qos = (maskRouted_0 ? io_inputs_0_payload_qos : io_inputs_1_payload_qos);
  assign io_output_payload_prot = (maskRouted_0 ? io_inputs_0_payload_prot : io_inputs_1_payload_prot);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_5 = io_chosenOH[1];
  assign io_chosen = _zz_5;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

//Axi4WriteOnlyErrorSlave replaced by Axi4WriteOnlyErrorSlave

//Axi4ReadOnlyErrorSlave replaced by Axi4ReadOnlyErrorSlave

//Axi4WriteOnlyErrorSlave replaced by Axi4WriteOnlyErrorSlave

//Axi4ReadOnlyErrorSlave replaced by Axi4ReadOnlyErrorSlave

module Axi4WriteOnlyErrorSlave (
  input               io_axi_aw_valid,
  output              io_axi_aw_ready,
  input      [12:0]   io_axi_aw_payload_addr,
  input      [3:0]    io_axi_aw_payload_id,
  input      [3:0]    io_axi_aw_payload_region,
  input      [7:0]    io_axi_aw_payload_len,
  input      [2:0]    io_axi_aw_payload_size,
  input      [1:0]    io_axi_aw_payload_burst,
  input      [0:0]    io_axi_aw_payload_lock,
  input      [3:0]    io_axi_aw_payload_cache,
  input      [3:0]    io_axi_aw_payload_qos,
  input      [2:0]    io_axi_aw_payload_prot,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  input               clk,
  input               reset
);
  wire                _zz_1;
  reg                 consumeData;
  reg                 sendRsp;
  reg        [3:0]    id;

  assign _zz_1 = (io_axi_aw_valid && io_axi_aw_ready);
  assign io_axi_aw_ready = (! (consumeData || sendRsp));
  assign io_axi_w_ready = consumeData;
  assign io_axi_b_valid = sendRsp;
  assign io_axi_b_payload_resp = 2'b11;
  assign io_axi_b_payload_id = id;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      consumeData <= 1'b0;
      sendRsp <= 1'b0;
    end else begin
      if(_zz_1)begin
        consumeData <= 1'b1;
      end
      if(((io_axi_w_valid && io_axi_w_ready) && io_axi_w_payload_last))begin
        consumeData <= 1'b0;
        sendRsp <= 1'b1;
      end
      if((io_axi_b_valid && io_axi_b_ready))begin
        sendRsp <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_1)begin
      id <= io_axi_aw_payload_id;
    end
  end


endmodule

module Axi4ReadOnlyErrorSlave (
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [12:0]   io_axi_ar_payload_addr,
  input      [3:0]    io_axi_ar_payload_id,
  input      [3:0]    io_axi_ar_payload_region,
  input      [7:0]    io_axi_ar_payload_len,
  input      [2:0]    io_axi_ar_payload_size,
  input      [1:0]    io_axi_ar_payload_burst,
  input      [0:0]    io_axi_ar_payload_lock,
  input      [3:0]    io_axi_ar_payload_cache,
  input      [3:0]    io_axi_ar_payload_qos,
  input      [2:0]    io_axi_ar_payload_prot,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               clk,
  input               reset
);
  wire                _zz_1;
  reg                 sendRsp;
  reg        [3:0]    id;
  reg        [7:0]    remaining;
  wire                remainingZero;

  assign _zz_1 = (io_axi_ar_valid && io_axi_ar_ready);
  assign remainingZero = (remaining == 8'h0);
  assign io_axi_ar_ready = (! sendRsp);
  assign io_axi_r_valid = sendRsp;
  assign io_axi_r_payload_id = id;
  assign io_axi_r_payload_resp = 2'b11;
  assign io_axi_r_payload_last = remainingZero;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      sendRsp <= 1'b0;
    end else begin
      if(_zz_1)begin
        sendRsp <= 1'b1;
      end
      if(sendRsp)begin
        if(io_axi_r_ready)begin
          if(remainingZero)begin
            sendRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_1)begin
      remaining <= io_axi_ar_payload_len;
      id <= io_axi_ar_payload_id;
    end
    if(sendRsp)begin
      if(io_axi_r_ready)begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule
