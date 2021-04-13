// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : WishboneSimpleBusAdapted
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module WishboneSimpleBusAdapted (
  input               io_busIN_CYC,
  input               io_busIN_STB,
  output              io_busIN_ACK,
  input               io_busIN_WE,
  input      [7:0]    io_busIN_ADR,
  output     [7:0]    io_busIN_DAT_MISO,
  input      [7:0]    io_busIN_DAT_MOSI,
  output              io_busIN_STALL,
  output              io_busOUT_CYC,
  output              io_busOUT_STB,
  input               io_busOUT_ACK,
  output              io_busOUT_WE,
  output     [7:0]    io_busOUT_ADR,
  input      [7:0]    io_busOUT_DAT_MISO,
  output     [7:0]    io_busOUT_DAT_MOSI,
  input               clk,
  input               reset
);
  wire       [7:0]    io_busIN_adapter_io_wbm_DAT_MISO;
  wire                io_busIN_adapter_io_wbm_ACK;
  wire                io_busIN_adapter_io_wbm_STALL;
  wire       [7:0]    io_busIN_adapter_io_wbs_DAT_MOSI;
  wire       [7:0]    io_busIN_adapter_io_wbs_ADR;
  wire                io_busIN_adapter_io_wbs_CYC;
  wire                io_busIN_adapter_io_wbs_STB;
  wire                io_busIN_adapter_io_wbs_WE;
  reg                 ff;

  WishboneAdapter io_busIN_adapter (
    .io_wbm_CYC         (io_busIN_CYC                           ), //i
    .io_wbm_STB         (io_busIN_STB                           ), //i
    .io_wbm_ACK         (io_busIN_adapter_io_wbm_ACK            ), //o
    .io_wbm_WE          (io_busIN_WE                            ), //i
    .io_wbm_ADR         (io_busIN_ADR[7:0]                      ), //i
    .io_wbm_DAT_MISO    (io_busIN_adapter_io_wbm_DAT_MISO[7:0]  ), //o
    .io_wbm_DAT_MOSI    (io_busIN_DAT_MOSI[7:0]                 ), //i
    .io_wbm_STALL       (io_busIN_adapter_io_wbm_STALL          ), //o
    .io_wbs_CYC         (io_busIN_adapter_io_wbs_CYC            ), //o
    .io_wbs_STB         (io_busIN_adapter_io_wbs_STB            ), //o
    .io_wbs_ACK         (io_busOUT_ACK                          ), //i
    .io_wbs_WE          (io_busIN_adapter_io_wbs_WE             ), //o
    .io_wbs_ADR         (io_busIN_adapter_io_wbs_ADR[7:0]       ), //o
    .io_wbs_DAT_MISO    (io_busOUT_DAT_MISO[7:0]                ), //i
    .io_wbs_DAT_MOSI    (io_busIN_adapter_io_wbs_DAT_MOSI[7:0]  )  //o
  );
  assign io_busIN_ACK = io_busIN_adapter_io_wbm_ACK;
  assign io_busIN_DAT_MISO = io_busIN_adapter_io_wbm_DAT_MISO;
  assign io_busIN_STALL = io_busIN_adapter_io_wbm_STALL;
  assign io_busOUT_CYC = io_busIN_adapter_io_wbs_CYC;
  assign io_busOUT_STB = io_busIN_adapter_io_wbs_STB;
  assign io_busOUT_WE = io_busIN_adapter_io_wbs_WE;
  assign io_busOUT_ADR = io_busIN_adapter_io_wbs_ADR;
  assign io_busOUT_DAT_MOSI = io_busIN_adapter_io_wbs_DAT_MOSI;

endmodule

module WishboneAdapter (
  input               io_wbm_CYC,
  input               io_wbm_STB,
  output              io_wbm_ACK,
  input               io_wbm_WE,
  input      [7:0]    io_wbm_ADR,
  output     [7:0]    io_wbm_DAT_MISO,
  input      [7:0]    io_wbm_DAT_MOSI,
  output              io_wbm_STALL,
  output              io_wbs_CYC,
  output              io_wbs_STB,
  input               io_wbs_ACK,
  output              io_wbs_WE,
  output     [7:0]    io_wbs_ADR,
  input      [7:0]    io_wbs_DAT_MISO,
  output     [7:0]    io_wbs_DAT_MOSI
);

  assign io_wbs_CYC = io_wbm_CYC;
  assign io_wbs_STB = io_wbm_STB;
  assign io_wbs_WE = io_wbm_WE;
  assign io_wbm_ACK = io_wbs_ACK;
  assign io_wbs_ADR = io_wbm_ADR;
  assign io_wbs_DAT_MOSI = io_wbm_DAT_MOSI;
  assign io_wbm_DAT_MISO = io_wbs_DAT_MISO;
  assign io_wbm_STALL = (io_wbs_CYC ? (! io_wbs_ACK) : 1'b0);

endmodule
