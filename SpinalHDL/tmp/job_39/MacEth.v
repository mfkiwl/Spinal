// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : MacEth
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26


`define push_State_binary_sequential_type [0:0]
`define push_State_binary_sequential_LENGTH 1'b0
`define push_State_binary_sequential_DATA 1'b1

`define pop_State_binary_sequential_type [1:0]
`define pop_State_binary_sequential_LENGTH 2'b00
`define pop_State_binary_sequential_DATA 2'b01
`define pop_State_binary_sequential_WAIT_1 2'b10


module MacEth (
  input               io_phy_rx_valid,
  output              io_phy_rx_ready,
  input               io_phy_rx_payload_last,
  input               io_phy_rx_payload_fragment_error,
  input      [3:0]    io_phy_rx_payload_fragment_data,
  output              io_phy_tx_valid,
  input               io_phy_tx_ready,
  output              io_phy_tx_payload_last,
  output     [3:0]    io_phy_tx_payload_fragment_data,
  input               io_phy_colision,
  input               io_phy_busy,
  output              io_ctrl_rx_stream_valid,
  input               io_ctrl_rx_stream_ready,
  output     [31:0]   io_ctrl_rx_stream_payload,
  input               io_ctrl_rx_flush,
  input               io_ctrl_rx_alignerEnable,
  input               io_ctrl_rx_stats_clear,
  output     [7:0]    io_ctrl_rx_stats_drops,
  output     [7:0]    io_ctrl_rx_stats_errors,
  input               io_ctrl_tx_stream_valid,
  output              io_ctrl_tx_stream_ready,
  input      [31:0]   io_ctrl_tx_stream_payload,
  output     [7:0]    io_ctrl_tx_availability,
  input               io_ctrl_tx_flush,
  input               io_ctrl_tx_alignerEnable,
  output              io_sim_drop,
  output              io_sim_error,
  output              io_sim_commit,
  input               reset,
  input               txCd_clk,
  input               rxCd_clk,
  input               clk
);
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                bufferCC_10_io_dataOut;
  wire                bufferCC_11_io_dataOut;
  wire                rxFrontend_preamble_io_input_ready;
  wire                rxFrontend_preamble_io_output_valid;
  wire                rxFrontend_preamble_io_output_payload_last;
  wire                rxFrontend_preamble_io_output_payload_fragment_error;
  wire       [3:0]    rxFrontend_preamble_io_output_payload_fragment_data;
  wire                rxFrontend_checker_io_input_ready;
  wire                rxFrontend_checker_io_output_valid;
  wire                rxFrontend_checker_io_output_payload_last;
  wire                rxFrontend_checker_io_output_payload_fragment_error;
  wire       [3:0]    rxFrontend_checker_io_output_payload_fragment_data;
  wire                rxFrontend_aligner_io_input_ready;
  wire                rxFrontend_aligner_io_output_valid;
  wire                rxFrontend_aligner_io_output_payload_last;
  wire                rxFrontend_aligner_io_output_payload_fragment_error;
  wire       [3:0]    rxFrontend_aligner_io_output_payload_fragment_data;
  wire                io_ctrl_rx_alignerEnable_buffercc_io_dataOut;
  wire                rxFrontend_buffer_io_push_stream_ready;
  wire                rxFrontend_buffer_io_push_drop;
  wire                rxFrontend_buffer_io_push_commit;
  wire                rxFrontend_buffer_io_push_error;
  wire                rxFrontend_buffer_io_pop_stream_valid;
  wire       [31:0]   rxFrontend_buffer_io_pop_stream_payload;
  wire       [7:0]    rxFrontend_buffer_io_pop_stats_drops;
  wire       [7:0]    rxFrontend_buffer_io_pop_stats_errors;
  wire                txFrontend_buffer_io_push_stream_ready;
  wire       [7:0]    txFrontend_buffer_io_push_availability;
  wire                txFrontend_buffer_io_pop_stream_valid;
  wire                txFrontend_buffer_io_pop_stream_payload_last;
  wire       [3:0]    txFrontend_buffer_io_pop_stream_payload_fragment_data;
  wire                txBackend_aligner_io_input_ready;
  wire                txBackend_aligner_io_output_valid;
  wire                txBackend_aligner_io_output_payload_last;
  wire       [3:0]    txBackend_aligner_io_output_payload_fragment_data;
  wire                io_ctrl_tx_alignerEnable_buffercc_io_dataOut;
  wire                txBackend_padder_io_input_ready;
  wire                txBackend_padder_io_output_valid;
  wire                txBackend_padder_io_output_payload_last;
  wire       [3:0]    txBackend_padder_io_output_payload_fragment_data;
  wire                txBackend_crc_io_input_ready;
  wire                txBackend_crc_io_output_valid;
  wire                txBackend_crc_io_output_payload_last;
  wire       [3:0]    txBackend_crc_io_output_payload_fragment_data;
  wire                txBackend_header_io_input_ready;
  wire                txBackend_header_io_output_valid;
  wire                txBackend_header_io_output_payload_last;
  wire       [3:0]    txBackend_header_io_output_payload_fragment_data;
  wire                _zz_1;
  wire                rxReset;
  wire                _zz_2;
  wire                txReset;
  reg                 _zz_3;

  BufferCC_6 bufferCC_10 (
    .io_dataIn     (_zz_4                   ), //i
    .io_dataOut    (bufferCC_10_io_dataOut  ), //o
    .rxCd_clk      (rxCd_clk                ), //i
    ._zz_1         (_zz_1                   )  //i
  );
  BufferCC_7 bufferCC_11 (
    .io_dataIn     (_zz_5                   ), //i
    .io_dataOut    (bufferCC_11_io_dataOut  ), //o
    .txCd_clk      (txCd_clk                ), //i
    ._zz_1         (_zz_2                   )  //i
  );
  MacRxPreamble rxFrontend_preamble (
    .io_input_valid                      (io_phy_rx_valid                                           ), //i
    .io_input_ready                      (rxFrontend_preamble_io_input_ready                        ), //o
    .io_input_payload_last               (io_phy_rx_payload_last                                    ), //i
    .io_input_payload_fragment_error     (io_phy_rx_payload_fragment_error                          ), //i
    .io_input_payload_fragment_data      (io_phy_rx_payload_fragment_data[3:0]                      ), //i
    .io_output_valid                     (rxFrontend_preamble_io_output_valid                       ), //o
    .io_output_ready                     (rxFrontend_checker_io_input_ready                         ), //i
    .io_output_payload_last              (rxFrontend_preamble_io_output_payload_last                ), //o
    .io_output_payload_fragment_error    (rxFrontend_preamble_io_output_payload_fragment_error      ), //o
    .io_output_payload_fragment_data     (rxFrontend_preamble_io_output_payload_fragment_data[3:0]  ), //o
    .rxCd_clk                            (rxCd_clk                                                  ), //i
    .rxReset                             (rxReset                                                   )  //i
  );
  MacRxChecker rxFrontend_checker (
    .io_input_valid                      (rxFrontend_preamble_io_output_valid                       ), //i
    .io_input_ready                      (rxFrontend_checker_io_input_ready                         ), //o
    .io_input_payload_last               (rxFrontend_preamble_io_output_payload_last                ), //i
    .io_input_payload_fragment_error     (rxFrontend_preamble_io_output_payload_fragment_error      ), //i
    .io_input_payload_fragment_data      (rxFrontend_preamble_io_output_payload_fragment_data[3:0]  ), //i
    .io_output_valid                     (rxFrontend_checker_io_output_valid                        ), //o
    .io_output_ready                     (rxFrontend_aligner_io_input_ready                         ), //i
    .io_output_payload_last              (rxFrontend_checker_io_output_payload_last                 ), //o
    .io_output_payload_fragment_error    (rxFrontend_checker_io_output_payload_fragment_error       ), //o
    .io_output_payload_fragment_data     (rxFrontend_checker_io_output_payload_fragment_data[3:0]   ), //o
    .rxCd_clk                            (rxCd_clk                                                  ), //i
    .rxReset                             (rxReset                                                   )  //i
  );
  MacRxAligner rxFrontend_aligner (
    .io_enable                           (io_ctrl_rx_alignerEnable_buffercc_io_dataOut             ), //i
    .io_input_valid                      (rxFrontend_checker_io_output_valid                       ), //i
    .io_input_ready                      (rxFrontend_aligner_io_input_ready                        ), //o
    .io_input_payload_last               (rxFrontend_checker_io_output_payload_last                ), //i
    .io_input_payload_fragment_error     (rxFrontend_checker_io_output_payload_fragment_error      ), //i
    .io_input_payload_fragment_data      (rxFrontend_checker_io_output_payload_fragment_data[3:0]  ), //i
    .io_output_valid                     (rxFrontend_aligner_io_output_valid                       ), //o
    .io_output_ready                     (rxFrontend_buffer_io_push_stream_ready                   ), //i
    .io_output_payload_last              (rxFrontend_aligner_io_output_payload_last                ), //o
    .io_output_payload_fragment_error    (rxFrontend_aligner_io_output_payload_fragment_error      ), //o
    .io_output_payload_fragment_data     (rxFrontend_aligner_io_output_payload_fragment_data[3:0]  ), //o
    .rxCd_clk                            (rxCd_clk                                                 ), //i
    .rxReset                             (rxReset                                                  )  //i
  );
  BufferCC_8 io_ctrl_rx_alignerEnable_buffercc (
    .io_dataIn     (io_ctrl_rx_alignerEnable                      ), //i
    .io_dataOut    (io_ctrl_rx_alignerEnable_buffercc_io_dataOut  ), //o
    .rxCd_clk      (rxCd_clk                                      ), //i
    .rxReset       (rxReset                                       )  //i
  );
  MacRxBuffer rxFrontend_buffer (
    .io_push_stream_valid                     (rxFrontend_aligner_io_output_valid                       ), //i
    .io_push_stream_ready                     (rxFrontend_buffer_io_push_stream_ready                   ), //o
    .io_push_stream_payload_last              (rxFrontend_aligner_io_output_payload_last                ), //i
    .io_push_stream_payload_fragment_error    (rxFrontend_aligner_io_output_payload_fragment_error      ), //i
    .io_push_stream_payload_fragment_data     (rxFrontend_aligner_io_output_payload_fragment_data[3:0]  ), //i
    .io_push_drop                             (rxFrontend_buffer_io_push_drop                           ), //o
    .io_push_commit                           (rxFrontend_buffer_io_push_commit                         ), //o
    .io_push_error                            (rxFrontend_buffer_io_push_error                          ), //o
    .io_pop_stream_valid                      (rxFrontend_buffer_io_pop_stream_valid                    ), //o
    .io_pop_stream_ready                      (io_ctrl_rx_stream_ready                                  ), //i
    .io_pop_stream_payload                    (rxFrontend_buffer_io_pop_stream_payload[31:0]            ), //o
    .io_pop_stats_clear                       (io_ctrl_rx_stats_clear                                   ), //i
    .io_pop_stats_drops                       (rxFrontend_buffer_io_pop_stats_drops[7:0]                ), //o
    .io_pop_stats_errors                      (rxFrontend_buffer_io_pop_stats_errors[7:0]               ), //o
    .rxCd_clk                                 (rxCd_clk                                                 ), //i
    .rxReset                                  (rxReset                                                  ), //i
    .clk                                      (clk                                                      ), //i
    .reset                                    (reset                                                    ), //i
    .io_ctrl_rx_flush                         (io_ctrl_rx_flush                                         )  //i
  );
  MacTxBuffer txFrontend_buffer (
    .io_push_stream_valid                   (io_ctrl_tx_stream_valid                                     ), //i
    .io_push_stream_ready                   (txFrontend_buffer_io_push_stream_ready                      ), //o
    .io_push_stream_payload                 (io_ctrl_tx_stream_payload[31:0]                             ), //i
    .io_push_availability                   (txFrontend_buffer_io_push_availability[7:0]                 ), //o
    .io_pop_stream_valid                    (txFrontend_buffer_io_pop_stream_valid                       ), //o
    .io_pop_stream_ready                    (txBackend_aligner_io_input_ready                            ), //i
    .io_pop_stream_payload_last             (txFrontend_buffer_io_pop_stream_payload_last                ), //o
    .io_pop_stream_payload_fragment_data    (txFrontend_buffer_io_pop_stream_payload_fragment_data[3:0]  ), //o
    .io_pop_redo                            (_zz_6                                                       ), //i
    .io_pop_commit                          (_zz_3                                                       ), //i
    .clk                                    (clk                                                         ), //i
    .reset                                  (reset                                                       ), //i
    .io_ctrl_tx_flush                       (io_ctrl_tx_flush                                            ), //i
    .txCd_clk                               (txCd_clk                                                    ), //i
    .txReset                                (txReset                                                     )  //i
  );
  MacTxAligner txBackend_aligner (
    .io_enable                          (io_ctrl_tx_alignerEnable_buffercc_io_dataOut                ), //i
    .io_input_valid                     (txFrontend_buffer_io_pop_stream_valid                       ), //i
    .io_input_ready                     (txBackend_aligner_io_input_ready                            ), //o
    .io_input_payload_last              (txFrontend_buffer_io_pop_stream_payload_last                ), //i
    .io_input_payload_fragment_data     (txFrontend_buffer_io_pop_stream_payload_fragment_data[3:0]  ), //i
    .io_output_valid                    (txBackend_aligner_io_output_valid                           ), //o
    .io_output_ready                    (txBackend_padder_io_input_ready                             ), //i
    .io_output_payload_last             (txBackend_aligner_io_output_payload_last                    ), //o
    .io_output_payload_fragment_data    (txBackend_aligner_io_output_payload_fragment_data[3:0]      ), //o
    .txCd_clk                           (txCd_clk                                                    ), //i
    .txReset                            (txReset                                                     )  //i
  );
  BufferCC_9 io_ctrl_tx_alignerEnable_buffercc (
    .io_dataIn     (io_ctrl_tx_alignerEnable                      ), //i
    .io_dataOut    (io_ctrl_tx_alignerEnable_buffercc_io_dataOut  ), //o
    .txCd_clk      (txCd_clk                                      ), //i
    .txReset       (txReset                                       )  //i
  );
  MacTxPadder txBackend_padder (
    .io_input_valid                     (txBackend_aligner_io_output_valid                       ), //i
    .io_input_ready                     (txBackend_padder_io_input_ready                         ), //o
    .io_input_payload_last              (txBackend_aligner_io_output_payload_last                ), //i
    .io_input_payload_fragment_data     (txBackend_aligner_io_output_payload_fragment_data[3:0]  ), //i
    .io_output_valid                    (txBackend_padder_io_output_valid                        ), //o
    .io_output_ready                    (txBackend_crc_io_input_ready                            ), //i
    .io_output_payload_last             (txBackend_padder_io_output_payload_last                 ), //o
    .io_output_payload_fragment_data    (txBackend_padder_io_output_payload_fragment_data[3:0]   ), //o
    .txCd_clk                           (txCd_clk                                                ), //i
    .txReset                            (txReset                                                 )  //i
  );
  MacTxCrc txBackend_crc (
    .io_input_valid                     (txBackend_padder_io_output_valid                       ), //i
    .io_input_ready                     (txBackend_crc_io_input_ready                           ), //o
    .io_input_payload_last              (txBackend_padder_io_output_payload_last                ), //i
    .io_input_payload_fragment_data     (txBackend_padder_io_output_payload_fragment_data[3:0]  ), //i
    .io_output_valid                    (txBackend_crc_io_output_valid                          ), //o
    .io_output_ready                    (txBackend_header_io_input_ready                        ), //i
    .io_output_payload_last             (txBackend_crc_io_output_payload_last                   ), //o
    .io_output_payload_fragment_data    (txBackend_crc_io_output_payload_fragment_data[3:0]     ), //o
    .txCd_clk                           (txCd_clk                                               ), //i
    .txReset                            (txReset                                                )  //i
  );
  MacTxHeader txBackend_header (
    .io_input_valid                     (txBackend_crc_io_output_valid                          ), //i
    .io_input_ready                     (txBackend_header_io_input_ready                        ), //o
    .io_input_payload_last              (txBackend_crc_io_output_payload_last                   ), //i
    .io_input_payload_fragment_data     (txBackend_crc_io_output_payload_fragment_data[3:0]     ), //i
    .io_output_valid                    (txBackend_header_io_output_valid                       ), //o
    .io_output_ready                    (io_phy_tx_ready                                        ), //i
    .io_output_payload_last             (txBackend_header_io_output_payload_last                ), //o
    .io_output_payload_fragment_data    (txBackend_header_io_output_payload_fragment_data[3:0]  ), //o
    .txCd_clk                           (txCd_clk                                               ), //i
    .txReset                            (txReset                                                )  //i
  );
  assign _zz_1 = (reset || io_ctrl_rx_flush);
  assign _zz_4 = 1'b0;
  assign rxReset = bufferCC_10_io_dataOut;
  assign _zz_2 = (reset || io_ctrl_tx_flush);
  assign _zz_5 = 1'b0;
  assign txReset = bufferCC_11_io_dataOut;
  assign io_phy_rx_ready = rxFrontend_preamble_io_input_ready;
  assign io_sim_drop = rxFrontend_buffer_io_push_drop;
  assign io_sim_commit = rxFrontend_buffer_io_push_commit;
  assign io_sim_error = rxFrontend_buffer_io_push_error;
  assign io_ctrl_rx_stream_valid = rxFrontend_buffer_io_pop_stream_valid;
  assign io_ctrl_rx_stream_payload = rxFrontend_buffer_io_pop_stream_payload;
  assign io_ctrl_rx_stats_errors = rxFrontend_buffer_io_pop_stats_errors;
  assign io_ctrl_rx_stats_drops = rxFrontend_buffer_io_pop_stats_drops;
  assign io_ctrl_tx_stream_ready = txFrontend_buffer_io_push_stream_ready;
  assign io_ctrl_tx_availability = txFrontend_buffer_io_push_availability;
  assign io_phy_tx_valid = txBackend_header_io_output_valid;
  assign io_phy_tx_payload_last = txBackend_header_io_output_payload_last;
  assign io_phy_tx_payload_fragment_data = txBackend_header_io_output_payload_fragment_data;
  assign _zz_6 = 1'b0;
  always @ (posedge txCd_clk or posedge txReset) begin
    if (txReset) begin
      _zz_3 <= 1'b0;
    end else begin
      _zz_3 <= ((txBackend_header_io_output_valid && io_phy_tx_ready) && txBackend_header_io_output_payload_last);
    end
  end


endmodule

module MacTxHeader (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [3:0]    io_input_payload_fragment_data,
  output              io_output_valid,
  input               io_output_ready,
  output reg          io_output_payload_last,
  output reg [3:0]    io_output_payload_fragment_data,
  input               txCd_clk,
  input               txReset
);
  wire                _zz_1;
  reg        [4:0]    state;

  assign _zz_1 = (state == 5'h10);
  assign io_output_valid = io_input_valid;
  always @ (*) begin
    io_output_payload_last = 1'b0;
    if(_zz_1)begin
      io_output_payload_last = io_input_payload_last;
    end
  end

  always @ (*) begin
    io_input_ready = 1'b0;
    if(_zz_1)begin
      io_input_ready = io_output_ready;
    end
  end

  always @ (*) begin
    if(_zz_1)begin
      io_output_payload_fragment_data = io_input_payload_fragment_data;
    end else begin
      io_output_payload_fragment_data = 4'b0000;
      io_output_payload_fragment_data[0] = 1'b1;
      io_output_payload_fragment_data[2] = 1'b1;
      if((state == 5'h0f))begin
        io_output_payload_fragment_data[3] = 1'b1;
      end
    end
  end

  always @ (posedge txCd_clk or posedge txReset) begin
    if (txReset) begin
      state <= 5'h0;
    end else begin
      if(! _zz_1) begin
        if((io_output_valid && io_output_ready))begin
          state <= (state + 5'h01);
        end
      end
      if(((io_input_valid && io_input_ready) && io_input_payload_last))begin
        state <= 5'h0;
      end
    end
  end


endmodule

module MacTxCrc (
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [3:0]    io_input_payload_fragment_data,
  output reg          io_output_valid,
  input               io_output_ready,
  output reg          io_output_payload_last,
  output reg [3:0]    io_output_payload_fragment_data,
  input               txCd_clk,
  input               txReset
);
  wire                _zz_1;
  wire                _zz_2;
  reg        [3:0]    _zz_3;
  wire       [31:0]   crc_2_io_result;
  wire       [31:0]   crc_2_io_resultNext;
  wire                _zz_4;
  wire                _zz_5;
  reg                 emitCrc;
  reg        [2:0]    counter;

  assign _zz_4 = (! emitCrc);
  assign _zz_5 = (counter == 3'b111);
  Crc_1 crc_2 (
    .io_flush            (_zz_1                                ), //i
    .io_input_valid      (_zz_2                                ), //i
    .io_input_payload    (io_input_payload_fragment_data[3:0]  ), //i
    .io_result           (crc_2_io_result[31:0]                ), //o
    .io_resultNext       (crc_2_io_resultNext[31:0]            ), //o
    .txCd_clk            (txCd_clk                             ), //i
    .txReset             (txReset                              )  //i
  );
  always @(*) begin
    case(counter)
      3'b000 : begin
        _zz_3 = crc_2_io_result[3 : 0];
      end
      3'b001 : begin
        _zz_3 = crc_2_io_result[7 : 4];
      end
      3'b010 : begin
        _zz_3 = crc_2_io_result[11 : 8];
      end
      3'b011 : begin
        _zz_3 = crc_2_io_result[15 : 12];
      end
      3'b100 : begin
        _zz_3 = crc_2_io_result[19 : 16];
      end
      3'b101 : begin
        _zz_3 = crc_2_io_result[23 : 20];
      end
      3'b110 : begin
        _zz_3 = crc_2_io_result[27 : 24];
      end
      default : begin
        _zz_3 = crc_2_io_result[31 : 28];
      end
    endcase
  end

  assign _zz_2 = (io_input_valid && io_input_ready);
  assign _zz_1 = ((io_output_valid && io_output_ready) && io_output_payload_last);
  always @ (*) begin
    io_output_payload_last = 1'b0;
    if(! _zz_4) begin
      if(_zz_5)begin
        io_output_payload_last = 1'b1;
      end
    end
  end

  always @ (*) begin
    if(_zz_4)begin
      io_output_valid = io_input_valid;
    end else begin
      io_output_valid = 1'b1;
    end
  end

  always @ (*) begin
    if(_zz_4)begin
      io_output_payload_fragment_data = io_input_payload_fragment_data;
    end else begin
      io_output_payload_fragment_data = _zz_3;
    end
  end

  always @ (*) begin
    if(_zz_4)begin
      io_input_ready = io_output_ready;
    end else begin
      io_input_ready = 1'b0;
    end
  end

  always @ (posedge txCd_clk or posedge txReset) begin
    if (txReset) begin
      emitCrc <= 1'b0;
      counter <= 3'b000;
    end else begin
      if(((io_input_valid && io_input_ready) && io_input_payload_last))begin
        emitCrc <= 1'b1;
      end
      if(((io_output_valid && io_output_ready) && io_output_payload_last))begin
        emitCrc <= 1'b0;
      end
      if(! _zz_4) begin
        if(_zz_5)begin
          if(io_output_ready)begin
            emitCrc <= 1'b0;
          end
        end
        if(io_output_ready)begin
          counter <= (counter + 3'b001);
        end
      end
    end
  end


endmodule

module MacTxPadder (
  input               io_input_valid,
  output              io_input_ready,
  input               io_input_payload_last,
  input      [3:0]    io_input_payload_fragment_data,
  output reg          io_output_valid,
  input               io_output_ready,
  output reg          io_output_payload_last,
  output reg [3:0]    io_output_payload_fragment_data,
  input               txCd_clk,
  input               txReset
);
  reg        [6:0]    counter;
  wire                ok;
  reg                 io_input_payload_first;
  wire                fill;
  wire                _zz_1;

  assign ok = (counter == 7'h77);
  assign fill = ((counter != 7'h0) && io_input_payload_first);
  assign _zz_1 = (! fill);
  assign io_input_ready = (io_output_ready && _zz_1);
  always @ (*) begin
    io_output_valid = (io_input_valid && _zz_1);
    if(fill)begin
      io_output_valid = 1'b1;
    end
  end

  always @ (*) begin
    io_output_payload_last = io_input_payload_last;
    if((! ok))begin
      io_output_payload_last = 1'b0;
    end
    if(fill)begin
      io_output_payload_last = ok;
    end
  end

  always @ (*) begin
    io_output_payload_fragment_data = io_input_payload_fragment_data;
    if(fill)begin
      io_output_payload_fragment_data = 4'b0000;
    end
  end

  always @ (posedge txCd_clk or posedge txReset) begin
    if (txReset) begin
      counter <= 7'h0;
      io_input_payload_first <= 1'b1;
    end else begin
      if((io_input_valid && io_input_ready))begin
        io_input_payload_first <= io_input_payload_last;
      end
      if(((! ok) && ((counter != 7'h0) || (io_output_valid && io_output_ready))))begin
        counter <= (counter + 7'h01);
      end
      if(((io_output_valid && io_output_ready) && io_output_payload_last))begin
        counter <= 7'h0;
      end
    end
  end


endmodule

module BufferCC_9 (
  input               io_dataIn,
  output              io_dataOut,
  input               txCd_clk,
  input               txReset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge txCd_clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module MacTxAligner (
  input               io_enable,
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input      [3:0]    io_input_payload_fragment_data,
  output reg          io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output     [3:0]    io_output_payload_fragment_data,
  input               txCd_clk,
  input               txReset
);
  wire                _zz_1;
  reg        [2:0]    state;

  assign _zz_1 = (io_enable && (state != 3'b100));
  always @ (*) begin
    io_output_valid = io_input_valid;
    if(_zz_1)begin
      io_output_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_input_ready = io_output_ready;
    if(_zz_1)begin
      io_input_ready = 1'b1;
    end
  end

  assign io_output_payload_last = io_input_payload_last;
  assign io_output_payload_fragment_data = io_input_payload_fragment_data;
  always @ (posedge txCd_clk or posedge txReset) begin
    if (txReset) begin
      state <= 3'b000;
    end else begin
      if(_zz_1)begin
        if(io_input_valid)begin
          state <= (state + 3'b001);
        end
      end
      if(((io_input_valid && io_input_ready) && io_input_payload_last))begin
        state <= 3'b000;
      end
    end
  end


endmodule

module MacTxBuffer (
  input               io_push_stream_valid,
  output              io_push_stream_ready,
  input      [31:0]   io_push_stream_payload,
  output     [7:0]    io_push_availability,
  output reg          io_pop_stream_valid,
  input               io_pop_stream_ready,
  output reg          io_pop_stream_payload_last,
  output     [3:0]    io_pop_stream_payload_fragment_data,
  input               io_pop_redo,
  input               io_pop_commit,
  input               clk,
  input               reset,
  input               io_ctrl_tx_flush,
  input               txCd_clk,
  input               txReset
);
  reg                 _zz_1;
  reg        [3:0]    _zz_2;
  wire                fifo_io_push_stream_ready;
  wire       [7:0]    fifo_io_push_availability;
  wire                fifo_io_pop_stream_valid;
  wire       [31:0]   fifo_io_pop_stream_payload;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  wire       [11:0]   _zz_8;
  wire       [31:0]   _zz_9;
  wire       [31:0]   _zz_10;
  reg                 push_commit;
  reg        `push_State_binary_sequential_type push_state_1;
  reg        [11:0]   push_length;
  wire       [6:0]    push_wordCountMinusOne;
  reg        [6:0]    push_wordCounter;
  reg        `pop_State_binary_sequential_type pop_state_1;
  reg        [11:0]   pop_length;
  wire       [11:0]   pop_lengthMinusOne;
  reg        [6:0]    pop_wordCounter;
  wire       [6:0]    pop_wordCountEndAt;
  wire       [2:0]    pop_spliterEndAt;
  reg        [2:0]    pop_spliter;
  `ifndef SYNTHESIS
  reg [47:0] push_state_1_string;
  reg [47:0] pop_state_1_string;
  `endif


  assign _zz_3 = ((pop_wordCounter == pop_wordCountEndAt) && (pop_spliter == pop_spliterEndAt));
  assign _zz_4 = (pop_spliter == 3'b111);
  assign _zz_5 = (io_push_stream_valid && fifo_io_push_stream_ready);
  assign _zz_6 = (io_push_stream_valid && io_push_stream_ready);
  assign _zz_7 = (push_wordCounter == push_wordCountMinusOne);
  assign _zz_8 = (push_length - 12'h001);
  assign _zz_9 = io_push_stream_payload;
  assign _zz_10 = fifo_io_pop_stream_payload;
  MacTxManagedStreamFifoCc fifo (
    .io_push_stream_valid      (io_push_stream_valid              ), //i
    .io_push_stream_ready      (fifo_io_push_stream_ready         ), //o
    .io_push_stream_payload    (io_push_stream_payload[31:0]      ), //i
    .io_push_commit            (push_commit                       ), //i
    .io_push_availability      (fifo_io_push_availability[7:0]    ), //o
    .io_pop_stream_valid       (fifo_io_pop_stream_valid          ), //o
    .io_pop_stream_ready       (_zz_1                             ), //i
    .io_pop_stream_payload     (fifo_io_pop_stream_payload[31:0]  ), //o
    .io_pop_redo               (io_pop_redo                       ), //i
    .io_pop_commit             (io_pop_commit                     ), //i
    .clk                       (clk                               ), //i
    .reset                     (reset                             ), //i
    .io_ctrl_tx_flush          (io_ctrl_tx_flush                  ), //i
    .txCd_clk                  (txCd_clk                          ), //i
    .txReset                   (txReset                           )  //i
  );
  always @(*) begin
    case(pop_spliter)
      3'b000 : begin
        _zz_2 = fifo_io_pop_stream_payload[3 : 0];
      end
      3'b001 : begin
        _zz_2 = fifo_io_pop_stream_payload[7 : 4];
      end
      3'b010 : begin
        _zz_2 = fifo_io_pop_stream_payload[11 : 8];
      end
      3'b011 : begin
        _zz_2 = fifo_io_pop_stream_payload[15 : 12];
      end
      3'b100 : begin
        _zz_2 = fifo_io_pop_stream_payload[19 : 16];
      end
      3'b101 : begin
        _zz_2 = fifo_io_pop_stream_payload[23 : 20];
      end
      3'b110 : begin
        _zz_2 = fifo_io_pop_stream_payload[27 : 24];
      end
      default : begin
        _zz_2 = fifo_io_pop_stream_payload[31 : 28];
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(push_state_1)
      `push_State_binary_sequential_LENGTH : push_state_1_string = "LENGTH";
      `push_State_binary_sequential_DATA : push_state_1_string = "DATA  ";
      default : push_state_1_string = "??????";
    endcase
  end
  always @(*) begin
    case(pop_state_1)
      `pop_State_binary_sequential_LENGTH : pop_state_1_string = "LENGTH";
      `pop_State_binary_sequential_DATA : pop_state_1_string = "DATA  ";
      `pop_State_binary_sequential_WAIT_1 : pop_state_1_string = "WAIT_1";
      default : pop_state_1_string = "??????";
    endcase
  end
  `endif

  assign io_push_availability = fifo_io_push_availability;
  assign io_push_stream_ready = fifo_io_push_stream_ready;
  assign push_wordCountMinusOne = (_zz_8 >>> 5);
  assign pop_lengthMinusOne = (pop_length - 12'h001);
  assign pop_wordCountEndAt = (pop_lengthMinusOne >>> 5);
  assign pop_spliterEndAt = pop_lengthMinusOne[4 : 2];
  always @ (*) begin
    _zz_1 = 1'b0;
    case(pop_state_1)
      `pop_State_binary_sequential_LENGTH : begin
        if(fifo_io_pop_stream_valid)begin
          _zz_1 = 1'b1;
        end
      end
      `pop_State_binary_sequential_DATA : begin
        if(io_pop_stream_ready)begin
          if(_zz_3)begin
            _zz_1 = 1'b1;
          end
          if(_zz_4)begin
            _zz_1 = 1'b1;
          end
        end
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_pop_stream_valid = 1'b0;
    case(pop_state_1)
      `pop_State_binary_sequential_LENGTH : begin
      end
      `pop_State_binary_sequential_DATA : begin
        io_pop_stream_valid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    io_pop_stream_payload_last = 1'b0;
    case(pop_state_1)
      `pop_State_binary_sequential_LENGTH : begin
      end
      `pop_State_binary_sequential_DATA : begin
        if(io_pop_stream_ready)begin
          if(_zz_3)begin
            io_pop_stream_payload_last = 1'b1;
          end
        end
      end
      default : begin
      end
    endcase
  end

  assign io_pop_stream_payload_fragment_data = _zz_2;
  always @ (posedge clk) begin
    push_commit <= 1'b0;
    case(push_state_1)
      `push_State_binary_sequential_LENGTH : begin
        push_wordCounter <= 7'h0;
        if(_zz_5)begin
          push_length <= _zz_9[11:0];
        end
      end
      default : begin
        if(_zz_6)begin
          push_wordCounter <= (push_wordCounter + 7'h01);
          if(_zz_7)begin
            push_commit <= 1'b1;
          end
        end
      end
    endcase
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      push_state_1 <= `push_State_binary_sequential_LENGTH;
    end else begin
      if(io_ctrl_tx_flush) begin
      push_state_1 <= `push_State_binary_sequential_LENGTH;
      end else begin
        case(push_state_1)
          `push_State_binary_sequential_LENGTH : begin
            if(_zz_5)begin
              push_state_1 <= `push_State_binary_sequential_DATA;
            end
          end
          default : begin
            if(_zz_6)begin
              if(_zz_7)begin
                push_state_1 <= `push_State_binary_sequential_LENGTH;
              end
            end
          end
        endcase
      end
    end
  end

  always @ (posedge txCd_clk or posedge txReset) begin
    if (txReset) begin
      pop_state_1 <= `pop_State_binary_sequential_LENGTH;
    end else begin
      case(pop_state_1)
        `pop_State_binary_sequential_LENGTH : begin
          if(fifo_io_pop_stream_valid)begin
            pop_state_1 <= `pop_State_binary_sequential_DATA;
          end
        end
        `pop_State_binary_sequential_DATA : begin
          if(io_pop_stream_ready)begin
            if(_zz_3)begin
              pop_state_1 <= `pop_State_binary_sequential_WAIT_1;
            end
          end
        end
        default : begin
          if(io_pop_commit)begin
            pop_state_1 <= `pop_State_binary_sequential_LENGTH;
          end
        end
      endcase
      if(io_pop_redo)begin
        pop_state_1 <= `pop_State_binary_sequential_LENGTH;
      end
    end
  end

  always @ (posedge txCd_clk) begin
    case(pop_state_1)
      `pop_State_binary_sequential_LENGTH : begin
        pop_wordCounter <= 7'h0;
        pop_spliter <= 3'b000;
        if(fifo_io_pop_stream_valid)begin
          pop_length <= _zz_10[11:0];
        end
      end
      `pop_State_binary_sequential_DATA : begin
        if(io_pop_stream_ready)begin
          pop_spliter <= (pop_spliter + 3'b001);
          if(_zz_4)begin
            pop_wordCounter <= (pop_wordCounter + 7'h01);
          end
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module MacRxBuffer (
  input               io_push_stream_valid,
  output              io_push_stream_ready,
  input               io_push_stream_payload_last,
  input               io_push_stream_payload_fragment_error,
  input      [3:0]    io_push_stream_payload_fragment_data,
  output              io_push_drop,
  output              io_push_commit,
  output              io_push_error,
  output              io_pop_stream_valid,
  input               io_pop_stream_ready,
  output     [31:0]   io_pop_stream_payload,
  input               io_pop_stats_clear,
  output     [7:0]    io_pop_stats_drops,
  output     [7:0]    io_pop_stats_errors,
  input               rxCd_clk,
  input               rxReset,
  input               clk,
  input               reset,
  input               io_ctrl_rx_flush
);
  wire                _zz_7;
  wire                _zz_8;
  reg        [31:0]   _zz_9;
  wire       [7:0]    popToPushGray_buffercc_io_dataOut;
  wire       [7:0]    pushToPopGray_buffercc_io_dataOut;
  wire                pulseCCByToggle_2_io_pulseOut;
  wire                pulseCCByToggle_3_io_pulseOut;
  wire                _zz_10;
  wire                _zz_11;
  wire       [7:0]    _zz_12;
  wire       [7:0]    _zz_13;
  wire       [11:0]   _zz_14;
  wire       [7:0]    _zz_15;
  wire       [0:0]    _zz_16;
  wire       [7:0]    _zz_17;
  wire       [0:0]    _zz_18;
  wire       [7:0]    _zz_19;
  reg                 _zz_1;
  wire       [7:0]    popToPushGray;
  wire       [7:0]    pushToPopGray;
  reg        [7:0]    push_currentPtr;
  reg        [7:0]    push_oldPtr;
  wire       [7:0]    push_currentPtrPlusOne;
  wire       [7:0]    push_popPtrGray;
  reg        [7:0]    _zz_2;
  reg        [27:0]   push_buffer;
  reg        [2:0]    push_state_1;
  reg        [11:0]   push_length;
  reg                 push_port_valid;
  reg        [6:0]    push_port_payload_address;
  reg        [31:0]   push_port_payload_data;
  reg                 push_error;
  reg                 push_drop;
  reg                 push_doWrite;
  wire       [7:0]    _zz_3;
  wire                push_full;
  reg                 push_cleanup;
  reg                 push_commit;
  reg        [7:0]    pop_currentPtr;
  wire       [7:0]    pop_pushPtrGray;
  wire       [7:0]    pop_popPtrGray;
  reg        [7:0]    pop_popPtrGray_regNext;
  wire                pop_cmd_valid;
  wire                pop_cmd_ready;
  wire       [6:0]    pop_cmd_payload;
  wire                _zz_4;
  wire                _zz_5;
  reg                 _zz_6;
  reg        [7:0]    pop_stats_drops;
  reg        [7:0]    pop_stats_errors;
  reg [31:0] ram [0:127];

  assign _zz_10 = ((push_error || push_drop) || push_full);
  assign _zz_11 = (io_push_stream_valid && io_push_stream_ready);
  assign _zz_12 = (push_oldPtr >>> 1'b1);
  assign _zz_13 = (push_currentPtrPlusOne >>> 1'b1);
  assign _zz_14 = push_length;
  assign _zz_15 = (pop_currentPtr >>> 1'b1);
  assign _zz_16 = (pulseCCByToggle_2_io_pulseOut && (pop_stats_drops != 8'hff));
  assign _zz_17 = {7'd0, _zz_16};
  assign _zz_18 = (pulseCCByToggle_3_io_pulseOut && (pop_stats_errors != 8'hff));
  assign _zz_19 = {7'd0, _zz_18};
  always @ (posedge rxCd_clk) begin
    if(_zz_1) begin
      ram[push_port_payload_address] <= push_port_payload_data;
    end
  end

  always @ (posedge clk) begin
    if(pop_cmd_ready) begin
      _zz_9 <= ram[pop_cmd_payload];
    end
  end

  BufferCC_4 popToPushGray_buffercc (
    .io_dataIn     (popToPushGray[7:0]                      ), //i
    .io_dataOut    (popToPushGray_buffercc_io_dataOut[7:0]  ), //o
    .rxCd_clk      (rxCd_clk                                ), //i
    .rxReset       (rxReset                                 )  //i
  );
  BufferCC_5 pushToPopGray_buffercc (
    .io_dataIn           (pushToPopGray[7:0]                      ), //i
    .io_dataOut          (pushToPopGray_buffercc_io_dataOut[7:0]  ), //o
    .clk                 (clk                                     ), //i
    .reset               (reset                                   ), //i
    .io_ctrl_rx_flush    (io_ctrl_rx_flush                        )  //i
  );
  PulseCCByToggle pulseCCByToggle_2 (
    .io_pulseIn          (_zz_7                          ), //i
    .io_pulseOut         (pulseCCByToggle_2_io_pulseOut  ), //o
    .rxCd_clk            (rxCd_clk                       ), //i
    .rxReset             (rxReset                        ), //i
    .clk                 (clk                            ), //i
    .reset               (reset                          ), //i
    .io_ctrl_rx_flush    (io_ctrl_rx_flush               )  //i
  );
  PulseCCByToggle pulseCCByToggle_3 (
    .io_pulseIn          (_zz_8                          ), //i
    .io_pulseOut         (pulseCCByToggle_3_io_pulseOut  ), //o
    .rxCd_clk            (rxCd_clk                       ), //i
    .rxReset             (rxReset                        ), //i
    .clk                 (clk                            ), //i
    .reset               (reset                          ), //i
    .io_ctrl_rx_flush    (io_ctrl_rx_flush               )  //i
  );
  always @ (*) begin
    _zz_1 = 1'b0;
    if(push_port_valid)begin
      _zz_1 = 1'b1;
    end
  end

  assign push_currentPtrPlusOne = (push_currentPtr + 8'h01);
  assign push_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushToPopGray = _zz_2;
  always @ (*) begin
    push_port_valid = 1'b0;
    if(push_doWrite)begin
      if(! push_full) begin
        push_port_valid = 1'b1;
      end
    end
    if(push_commit)begin
      if(! _zz_10) begin
        push_port_valid = 1'b1;
      end
    end
  end

  always @ (*) begin
    push_port_payload_address = 7'h0;
    if(push_doWrite)begin
      if(! push_full) begin
        push_port_payload_address = push_currentPtrPlusOne[6:0];
      end
    end
    if(push_commit)begin
      if(! _zz_10) begin
        push_port_payload_address = push_oldPtr[6:0];
      end
    end
  end

  always @ (*) begin
    push_port_payload_data = 32'h0;
    if(push_doWrite)begin
      if(! push_full) begin
        push_port_payload_data = {io_push_stream_payload_fragment_data,push_buffer};
      end
    end
    if(push_commit)begin
      if(! _zz_10) begin
        push_port_payload_data = {20'd0, _zz_14};
      end
    end
  end

  always @ (*) begin
    push_doWrite = 1'b0;
    if(_zz_11)begin
      if((push_state_1 == 3'b111))begin
        push_doWrite = 1'b1;
      end
    end
    if((push_cleanup && (push_state_1 != 3'b000)))begin
      push_doWrite = 1'b1;
    end
  end

  assign _zz_3 = (_zz_13 ^ push_currentPtrPlusOne);
  assign push_full = ((_zz_3[7 : 6] == (~ push_popPtrGray[7 : 6])) && (_zz_3[5 : 0] == push_popPtrGray[5 : 0]));
  assign io_push_stream_ready = ((! push_cleanup) && (! push_commit));
  assign io_push_drop = (push_drop || (push_commit && push_full));
  assign io_push_commit = push_commit;
  assign io_push_error = push_error;
  assign pop_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign pop_popPtrGray = (_zz_15 ^ pop_currentPtr);
  assign popToPushGray = pop_popPtrGray_regNext;
  assign pop_cmd_valid = (! (pop_popPtrGray == pop_pushPtrGray));
  assign pop_cmd_payload = pop_currentPtr[6:0];
  assign pop_cmd_ready = ((! _zz_4) || _zz_5);
  assign _zz_4 = _zz_6;
  assign io_pop_stream_valid = _zz_4;
  assign _zz_5 = io_pop_stream_ready;
  assign io_pop_stream_payload = _zz_9;
  assign _zz_7 = (push_commit && push_drop);
  assign _zz_8 = (push_commit && push_error);
  assign io_pop_stats_drops = pop_stats_drops;
  assign io_pop_stats_errors = pop_stats_errors;
  always @ (posedge rxCd_clk or posedge rxReset) begin
    if (rxReset) begin
      push_currentPtr <= 8'h0;
      push_oldPtr <= 8'h0;
      _zz_2 <= 8'h0;
      push_state_1 <= 3'b000;
      push_length <= 12'h0;
      push_error <= 1'b0;
      push_drop <= 1'b0;
      push_cleanup <= 1'b0;
      push_commit <= 1'b0;
    end else begin
      _zz_2 <= (_zz_12 ^ push_oldPtr);
      if(((io_push_stream_valid && io_push_stream_ready) && io_push_stream_payload_fragment_error))begin
        push_error <= 1'b1;
      end
      if(_zz_11)begin
        push_state_1 <= (push_state_1 + 3'b001);
        push_length <= (push_length + 12'h004);
      end
      if(push_doWrite)begin
        if(push_full)begin
          push_drop <= 1'b1;
        end else begin
          push_currentPtr <= push_currentPtrPlusOne;
        end
      end
      push_cleanup <= ((io_push_stream_valid && io_push_stream_ready) && io_push_stream_payload_last);
      push_commit <= push_cleanup;
      if(push_commit)begin
        if(_zz_10)begin
          push_currentPtr <= push_oldPtr;
        end else begin
          push_oldPtr <= push_currentPtrPlusOne;
          push_currentPtr <= push_currentPtrPlusOne;
        end
        push_error <= 1'b0;
        push_drop <= 1'b0;
        push_state_1 <= 3'b000;
        push_length <= 12'h0;
      end
    end
  end

  always @ (posedge rxCd_clk) begin
    if(_zz_11)begin
      if((push_state_1 == 3'b000))begin
        push_buffer[3 : 0] <= io_push_stream_payload_fragment_data;
      end
      if((push_state_1 == 3'b001))begin
        push_buffer[7 : 4] <= io_push_stream_payload_fragment_data;
      end
      if((push_state_1 == 3'b010))begin
        push_buffer[11 : 8] <= io_push_stream_payload_fragment_data;
      end
      if((push_state_1 == 3'b011))begin
        push_buffer[15 : 12] <= io_push_stream_payload_fragment_data;
      end
      if((push_state_1 == 3'b100))begin
        push_buffer[19 : 16] <= io_push_stream_payload_fragment_data;
      end
      if((push_state_1 == 3'b101))begin
        push_buffer[23 : 20] <= io_push_stream_payload_fragment_data;
      end
      if((push_state_1 == 3'b110))begin
        push_buffer[27 : 24] <= io_push_stream_payload_fragment_data;
      end
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pop_currentPtr <= 8'h0;
      pop_popPtrGray_regNext <= 8'h0;
      _zz_6 <= 1'b0;
      pop_stats_drops <= 8'h0;
      pop_stats_errors <= 8'h0;
    end else begin
      if(io_ctrl_rx_flush) begin
      pop_currentPtr <= 8'h0;
      pop_popPtrGray_regNext <= 8'h0;
      _zz_6 <= 1'b0;
      pop_stats_drops <= 8'h0;
      pop_stats_errors <= 8'h0;
      end else begin
        pop_popPtrGray_regNext <= pop_popPtrGray;
        if(_zz_5)begin
          _zz_6 <= 1'b0;
        end
        if(pop_cmd_ready)begin
          _zz_6 <= pop_cmd_valid;
        end
        if((pop_cmd_valid && pop_cmd_ready))begin
          pop_currentPtr <= (pop_currentPtr + 8'h01);
        end
        pop_stats_drops <= (pop_stats_drops + _zz_17);
        pop_stats_errors <= (pop_stats_errors + _zz_19);
        if(io_pop_stats_clear)begin
          pop_stats_drops <= 8'h0;
          pop_stats_errors <= 8'h0;
        end
      end
    end
  end


endmodule

module BufferCC_8 (
  input               io_dataIn,
  output              io_dataOut,
  input               rxCd_clk,
  input               rxReset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge rxCd_clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module MacRxAligner (
  input               io_enable,
  input               io_input_valid,
  output reg          io_input_ready,
  input               io_input_payload_last,
  input               io_input_payload_fragment_error,
  input      [3:0]    io_input_payload_fragment_data,
  output reg          io_output_valid,
  input               io_output_ready,
  output reg          io_output_payload_last,
  output reg          io_output_payload_fragment_error,
  output     [3:0]    io_output_payload_fragment_data,
  input               rxCd_clk,
  input               rxReset
);
  wire                _zz_1;
  reg        [2:0]    state;

  assign _zz_1 = (io_enable && (state != 3'b100));
  always @ (*) begin
    io_output_valid = io_input_valid;
    if(_zz_1)begin
      io_output_valid = 1'b1;
    end
  end

  always @ (*) begin
    io_input_ready = io_output_ready;
    if(_zz_1)begin
      io_input_ready = 1'b0;
    end
  end

  always @ (*) begin
    io_output_payload_last = io_input_payload_last;
    if(_zz_1)begin
      io_output_payload_last = 1'b0;
    end
  end

  always @ (*) begin
    io_output_payload_fragment_error = io_input_payload_fragment_error;
    if(_zz_1)begin
      io_output_payload_fragment_error = 1'b0;
    end
  end

  assign io_output_payload_fragment_data = io_input_payload_fragment_data;
  always @ (posedge rxCd_clk or posedge rxReset) begin
    if (rxReset) begin
      state <= 3'b000;
    end else begin
      if(_zz_1)begin
        if(io_output_ready)begin
          state <= (state + 3'b001);
        end
      end
      if(((io_input_valid && io_input_ready) && io_input_payload_last))begin
        state <= 3'b000;
      end
    end
  end


endmodule

module MacRxChecker (
  input               io_input_valid,
  output              io_input_ready,
  input               io_input_payload_last,
  input               io_input_payload_fragment_error,
  input      [3:0]    io_input_payload_fragment_data,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output              io_output_payload_fragment_error,
  output     [3:0]    io_output_payload_fragment_data,
  input               rxCd_clk,
  input               rxReset
);
  wire                _zz_1;
  wire       [31:0]   crc_2_io_result;
  wire       [31:0]   crc_2_io_resultNext;
  wire                crcHit;

  Crc crc_2 (
    .io_flush            (_zz_1                                ), //i
    .io_input_valid      (io_input_valid                       ), //i
    .io_input_payload    (io_input_payload_fragment_data[3:0]  ), //i
    .io_result           (crc_2_io_result[31:0]                ), //o
    .io_resultNext       (crc_2_io_resultNext[31:0]            ), //o
    .rxCd_clk            (rxCd_clk                             ), //i
    .rxReset             (rxReset                              )  //i
  );
  assign _zz_1 = ((io_output_valid && io_output_ready) && io_output_payload_last);
  assign crcHit = (crc_2_io_resultNext == 32'h2144df1c);
  assign io_output_valid = io_input_valid;
  assign io_output_payload_last = io_input_payload_last;
  assign io_output_payload_fragment_data = io_input_payload_fragment_data;
  assign io_output_payload_fragment_error = (io_input_payload_fragment_error || (io_input_payload_last && (! crcHit)));
  assign io_input_ready = io_output_ready;

endmodule

module MacRxPreamble (
  input               io_input_valid,
  output              io_input_ready,
  input               io_input_payload_last,
  input               io_input_payload_fragment_error,
  input      [3:0]    io_input_payload_fragment_data,
  output reg          io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output              io_output_payload_fragment_error,
  output     [3:0]    io_output_payload_fragment_data,
  input               rxCd_clk,
  input               rxReset
);
  wire                _zz_11;
  wire                history_0_valid;
  wire                history_0_ready;
  wire                history_0_payload_last;
  wire                history_0_payload_fragment_error;
  wire       [3:0]    history_0_payload_fragment_data;
  wire                history_1_valid;
  wire                history_1_ready;
  wire                history_1_payload_last;
  wire                history_1_payload_fragment_error;
  wire       [3:0]    history_1_payload_fragment_data;
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire       [3:0]    _zz_5;
  reg                 _zz_6;
  reg                 _zz_7;
  reg                 _zz_8;
  reg                 _zz_9;
  reg        [3:0]    _zz_10;
  wire       [7:0]    historyDataCat;
  wire                hit;
  reg                 inFrame;

  assign _zz_11 = (! inFrame);
  assign _zz_1 = io_input_valid;
  assign _zz_2 = io_input_ready;
  assign _zz_3 = io_input_payload_last;
  assign _zz_4 = io_input_payload_fragment_error;
  assign _zz_5 = io_input_payload_fragment_data;
  assign history_0_valid = _zz_1;
  assign history_0_ready = _zz_2;
  assign history_0_payload_last = _zz_3;
  assign history_0_payload_fragment_error = _zz_4;
  assign history_0_payload_fragment_data = _zz_5;
  assign history_1_valid = _zz_6;
  assign history_1_ready = _zz_7;
  assign history_1_payload_last = _zz_8;
  assign history_1_payload_fragment_error = _zz_9;
  assign history_1_payload_fragment_data = _zz_10;
  assign historyDataCat = {history_0_payload_fragment_data,history_1_payload_fragment_data};
  assign hit = ((history_0_valid && history_1_valid) && (historyDataCat == 8'hd5));
  always @ (*) begin
    io_output_valid = 1'b0;
    if(! _zz_11) begin
      if(io_input_valid)begin
        io_output_valid = 1'b1;
      end
    end
  end

  assign io_output_payload_last = io_input_payload_last;
  assign io_output_payload_fragment_error = io_input_payload_fragment_error;
  assign io_output_payload_fragment_data = io_input_payload_fragment_data;
  assign io_input_ready = ((! inFrame) || io_output_ready);
  always @ (posedge rxCd_clk) begin
    if((io_input_valid && io_input_ready))begin
      _zz_6 <= _zz_1;
      _zz_7 <= _zz_2;
      _zz_8 <= _zz_3;
      _zz_9 <= _zz_4;
      _zz_10 <= _zz_5;
    end
  end

  always @ (posedge rxCd_clk or posedge rxReset) begin
    if (rxReset) begin
      inFrame <= 1'b0;
    end else begin
      if(_zz_11)begin
        if(hit)begin
          inFrame <= 1'b1;
        end
      end else begin
        if(io_input_valid)begin
          if((io_output_ready && io_input_payload_last))begin
            inFrame <= 1'b0;
          end
        end
      end
    end
  end


endmodule

module BufferCC_7 (
  input               io_dataIn,
  output              io_dataOut,
  input               txCd_clk,
  input               _zz_1
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge txCd_clk or posedge _zz_1) begin
    if (_zz_1) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_6 (
  input               io_dataIn,
  output              io_dataOut,
  input               rxCd_clk,
  input               _zz_1
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge rxCd_clk or posedge _zz_1) begin
    if (_zz_1) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module Crc_1 (
  input               io_flush,
  input               io_input_valid,
  input      [3:0]    io_input_payload,
  output     [31:0]   io_result,
  output     [31:0]   io_resultNext,
  input               txCd_clk,
  input               txReset
);
  wire       [31:0]   _zz_1;
  wire       [31:0]   _zz_2;
  wire       [31:0]   _zz_3;
  wire       [31:0]   _zz_4;
  wire                _zz_5;
  wire       [0:0]    _zz_6;
  wire       [20:0]   _zz_7;
  wire                _zz_8;
  wire       [0:0]    _zz_9;
  wire       [9:0]    _zz_10;
  wire                _zz_11;
  wire       [0:0]    _zz_12;
  wire       [20:0]   _zz_13;
  wire                _zz_14;
  wire       [0:0]    _zz_15;
  wire       [9:0]    _zz_16;
  reg        [31:0]   state_4;
  reg        [31:0]   state_3;
  reg        [31:0]   state_2;
  reg        [31:0]   state_1;
  reg        [31:0]   state;
  wire       [31:0]   stateXor;
  wire       [31:0]   accXor;

  assign _zz_1 = (state <<< 1);
  assign _zz_2 = (state_1 <<< 1);
  assign _zz_3 = (state_2 <<< 1);
  assign _zz_4 = (state_3 <<< 1);
  assign _zz_5 = stateXor[9];
  assign _zz_6 = stateXor[10];
  assign _zz_7 = {stateXor[11],{stateXor[12],{stateXor[13],{stateXor[14],{stateXor[15],{stateXor[16],{stateXor[17],{stateXor[18],{stateXor[19],{_zz_8,{_zz_9,_zz_10}}}}}}}}}}};
  assign _zz_8 = stateXor[20];
  assign _zz_9 = stateXor[21];
  assign _zz_10 = {stateXor[22],{stateXor[23],{stateXor[24],{stateXor[25],{stateXor[26],{stateXor[27],{stateXor[28],{stateXor[29],{stateXor[30],stateXor[31]}}}}}}}}};
  assign _zz_11 = accXor[9];
  assign _zz_12 = accXor[10];
  assign _zz_13 = {accXor[11],{accXor[12],{accXor[13],{accXor[14],{accXor[15],{accXor[16],{accXor[17],{accXor[18],{accXor[19],{_zz_14,{_zz_15,_zz_16}}}}}}}}}}};
  assign _zz_14 = accXor[20];
  assign _zz_15 = accXor[21];
  assign _zz_16 = {accXor[22],{accXor[23],{accXor[24],{accXor[25],{accXor[26],{accXor[27],{accXor[28],{accXor[29],{accXor[30],accXor[31]}}}}}}}}};
  always @ (*) begin
    state_4 = state_3;
    state_4 = (_zz_4 ^ ((io_input_payload[3] ^ state_3[31]) ? 32'h04c11db7 : 32'h0));
  end

  always @ (*) begin
    state_3 = state_2;
    state_3 = (_zz_3 ^ ((io_input_payload[2] ^ state_2[31]) ? 32'h04c11db7 : 32'h0));
  end

  always @ (*) begin
    state_2 = state_1;
    state_2 = (_zz_2 ^ ((io_input_payload[1] ^ state_1[31]) ? 32'h04c11db7 : 32'h0));
  end

  always @ (*) begin
    state_1 = state;
    state_1 = (_zz_1 ^ ((io_input_payload[0] ^ state[31]) ? 32'h04c11db7 : 32'h0));
  end

  assign stateXor = (state ^ 32'hffffffff);
  assign accXor = (state_4 ^ 32'hffffffff);
  assign io_result = {stateXor[0],{stateXor[1],{stateXor[2],{stateXor[3],{stateXor[4],{stateXor[5],{stateXor[6],{stateXor[7],{stateXor[8],{_zz_5,{_zz_6,_zz_7}}}}}}}}}}};
  assign io_resultNext = {accXor[0],{accXor[1],{accXor[2],{accXor[3],{accXor[4],{accXor[5],{accXor[6],{accXor[7],{accXor[8],{_zz_11,{_zz_12,_zz_13}}}}}}}}}}};
  always @ (posedge txCd_clk or posedge txReset) begin
    if (txReset) begin
      state <= 32'hffffffff;
    end else begin
      if(io_input_valid)begin
        state <= state_4;
      end
      if(io_flush)begin
        state <= 32'hffffffff;
      end
    end
  end


endmodule

module MacTxManagedStreamFifoCc (
  input               io_push_stream_valid,
  output              io_push_stream_ready,
  input      [31:0]   io_push_stream_payload,
  input               io_push_commit,
  output     [7:0]    io_push_availability,
  output              io_pop_stream_valid,
  input               io_pop_stream_ready,
  output     [31:0]   io_pop_stream_payload,
  input               io_pop_redo,
  input               io_pop_commit,
  input               clk,
  input               reset,
  input               io_ctrl_tx_flush,
  input               txCd_clk,
  input               txReset
);
  reg        [31:0]   _zz_15;
  wire       [7:0]    popToPushGray_buffercc_io_dataOut;
  wire       [7:0]    pushToPopGray_buffercc_io_dataOut;
  wire                _zz_16;
  wire       [7:0]    _zz_17;
  wire       [7:0]    _zz_18;
  wire       [6:0]    _zz_19;
  wire       [7:0]    _zz_20;
  wire       [7:0]    _zz_21;
  wire       [7:0]    _zz_22;
  reg                 _zz_1;
  wire       [7:0]    popToPushGray;
  wire       [7:0]    pushToPopGray;
  reg        [7:0]    push_currentPtr;
  reg        [7:0]    push_oldPtr;
  wire       [7:0]    push_popPtrGray;
  reg        [7:0]    _zz_2;
  wire       [7:0]    _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire                _zz_10;
  reg        [7:0]    pop_currentPtr;
  reg        [7:0]    pop_oldPtr;
  wire       [7:0]    pop_pushPtrGray;
  wire       [7:0]    pop_popPtrGray;
  reg        [7:0]    pop_popPtrGray_regNext;
  wire                pop_cmd_valid;
  wire                pop_cmd_ready;
  wire       [6:0]    pop_cmd_payload;
  reg        [7:0]    pop_commitPtr;
  wire                _zz_11;
  reg                 _zz_12;
  reg                 _zz_13;
  reg                 _zz_14;
  reg [31:0] ram [0:127];

  assign _zz_16 = (io_push_stream_valid && io_push_stream_ready);
  assign _zz_17 = (push_oldPtr >>> 1'b1);
  assign _zz_18 = (push_currentPtr >>> 1'b1);
  assign _zz_19 = push_currentPtr[6:0];
  assign _zz_20 = (push_currentPtr - {_zz_10,{_zz_9,{_zz_8,{_zz_7,{_zz_6,{_zz_5,{_zz_4,(push_popPtrGray[0] ^ _zz_4)}}}}}}});
  assign _zz_21 = (pop_oldPtr >>> 1'b1);
  assign _zz_22 = (pop_currentPtr >>> 1'b1);
  always @ (posedge clk) begin
    if(_zz_1) begin
      ram[_zz_19] <= io_push_stream_payload;
    end
  end

  always @ (posedge txCd_clk) begin
    if(pop_cmd_ready) begin
      _zz_15 <= ram[pop_cmd_payload];
    end
  end

  BufferCC_2 popToPushGray_buffercc (
    .io_dataIn           (popToPushGray[7:0]                      ), //i
    .io_dataOut          (popToPushGray_buffercc_io_dataOut[7:0]  ), //o
    .clk                 (clk                                     ), //i
    .reset               (reset                                   ), //i
    .io_ctrl_tx_flush    (io_ctrl_tx_flush                        )  //i
  );
  BufferCC_3 pushToPopGray_buffercc (
    .io_dataIn     (pushToPopGray[7:0]                      ), //i
    .io_dataOut    (pushToPopGray_buffercc_io_dataOut[7:0]  ), //o
    .txCd_clk      (txCd_clk                                ), //i
    .txReset       (txReset                                 )  //i
  );
  always @ (*) begin
    _zz_1 = 1'b0;
    if(_zz_16)begin
      _zz_1 = 1'b1;
    end
  end

  assign push_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushToPopGray = _zz_2;
  assign _zz_3 = (_zz_18 ^ push_currentPtr);
  assign io_push_stream_ready = (! ((_zz_3[7 : 6] == (~ push_popPtrGray[7 : 6])) && (_zz_3[5 : 0] == push_popPtrGray[5 : 0])));
  assign _zz_4 = (push_popPtrGray[1] ^ _zz_5);
  assign _zz_5 = (push_popPtrGray[2] ^ _zz_6);
  assign _zz_6 = (push_popPtrGray[3] ^ _zz_7);
  assign _zz_7 = (push_popPtrGray[4] ^ _zz_8);
  assign _zz_8 = (push_popPtrGray[5] ^ _zz_9);
  assign _zz_9 = (push_popPtrGray[6] ^ _zz_10);
  assign _zz_10 = push_popPtrGray[7];
  assign io_push_availability = (8'h80 - _zz_20);
  assign pop_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign pop_popPtrGray = (_zz_21 ^ pop_oldPtr);
  assign popToPushGray = pop_popPtrGray_regNext;
  assign pop_cmd_valid = ((! ((_zz_22 ^ pop_currentPtr) == pop_pushPtrGray)) && (! io_pop_redo));
  assign pop_cmd_payload = pop_currentPtr[6:0];
  assign pop_cmd_ready = ((! _zz_11) || _zz_12);
  assign _zz_11 = _zz_13;
  always @ (*) begin
    _zz_14 = _zz_11;
    if(io_pop_redo)begin
      _zz_14 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_12 = io_pop_stream_ready;
    if(io_pop_redo)begin
      _zz_12 = 1'b1;
    end
  end

  assign io_pop_stream_valid = _zz_14;
  assign io_pop_stream_payload = _zz_15;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      push_currentPtr <= 8'h0;
      push_oldPtr <= 8'h0;
      _zz_2 <= 8'h0;
    end else begin
      if(io_ctrl_tx_flush) begin
      push_currentPtr <= 8'h0;
      push_oldPtr <= 8'h0;
      _zz_2 <= 8'h0;
      end else begin
        _zz_2 <= (_zz_17 ^ push_oldPtr);
        if(_zz_16)begin
          push_currentPtr <= (push_currentPtr + 8'h01);
        end
        if(io_push_commit)begin
          push_oldPtr <= push_currentPtr;
        end
      end
    end
  end

  always @ (posedge txCd_clk or posedge txReset) begin
    if (txReset) begin
      pop_currentPtr <= 8'h0;
      pop_oldPtr <= 8'h0;
      pop_popPtrGray_regNext <= 8'h0;
      _zz_13 <= 1'b0;
    end else begin
      pop_popPtrGray_regNext <= pop_popPtrGray;
      if(_zz_12)begin
        _zz_13 <= 1'b0;
      end
      if(pop_cmd_ready)begin
        _zz_13 <= pop_cmd_valid;
      end
      if((pop_cmd_valid && pop_cmd_ready))begin
        pop_currentPtr <= (pop_currentPtr + 8'h01);
      end
      if(io_pop_redo)begin
        pop_currentPtr <= pop_oldPtr;
      end
      if(io_pop_commit)begin
        pop_oldPtr <= pop_commitPtr;
      end
    end
  end

  always @ (posedge txCd_clk) begin
    if((io_pop_stream_valid && io_pop_stream_ready))begin
      pop_commitPtr <= pop_currentPtr;
    end
  end


endmodule

//PulseCCByToggle replaced by PulseCCByToggle

module PulseCCByToggle (
  input               io_pulseIn,
  output              io_pulseOut,
  input               rxCd_clk,
  input               rxReset,
  input               clk,
  input               reset,
  input               io_ctrl_rx_flush
);
  wire                inArea_target_buffercc_io_dataOut;
  reg                 inArea_target;
  wire                outArea_target;
  reg                 outArea_hit;

  BufferCC inArea_target_buffercc (
    .io_dataIn           (inArea_target                      ), //i
    .io_dataOut          (inArea_target_buffercc_io_dataOut  ), //o
    .clk                 (clk                                ), //i
    .reset               (reset                              ), //i
    .io_ctrl_rx_flush    (io_ctrl_rx_flush                   )  //i
  );
  assign outArea_target = inArea_target_buffercc_io_dataOut;
  assign io_pulseOut = (outArea_target != outArea_hit);
  always @ (posedge rxCd_clk or posedge rxReset) begin
    if (rxReset) begin
      inArea_target <= 1'b0;
    end else begin
      if(io_pulseIn)begin
        inArea_target <= (! inArea_target);
      end
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      outArea_hit <= 1'b0;
    end else begin
      if(io_ctrl_rx_flush) begin
      outArea_hit <= 1'b0;
      end else begin
        if((outArea_target != outArea_hit))begin
          outArea_hit <= (! outArea_hit);
        end
      end
    end
  end


endmodule

module BufferCC_5 (
  input      [7:0]    io_dataIn,
  output     [7:0]    io_dataOut,
  input               clk,
  input               reset,
  input               io_ctrl_rx_flush
);
  (* async_reg = "true" *) reg        [7:0]    buffers_0;
  (* async_reg = "true" *) reg        [7:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      buffers_0 <= 8'h0;
      buffers_1 <= 8'h0;
    end else begin
      if(io_ctrl_rx_flush) begin
      buffers_0 <= 8'h0;
      buffers_1 <= 8'h0;
      end else begin
        buffers_0 <= io_dataIn;
        buffers_1 <= buffers_0;
      end
    end
  end


endmodule

module BufferCC_4 (
  input      [7:0]    io_dataIn,
  output     [7:0]    io_dataOut,
  input               rxCd_clk,
  input               rxReset
);
  (* async_reg = "true" *) reg        [7:0]    buffers_0;
  (* async_reg = "true" *) reg        [7:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge rxCd_clk or posedge rxReset) begin
    if (rxReset) begin
      buffers_0 <= 8'h0;
      buffers_1 <= 8'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module Crc (
  input               io_flush,
  input               io_input_valid,
  input      [3:0]    io_input_payload,
  output     [31:0]   io_result,
  output     [31:0]   io_resultNext,
  input               rxCd_clk,
  input               rxReset
);
  wire       [31:0]   _zz_1;
  wire       [31:0]   _zz_2;
  wire       [31:0]   _zz_3;
  wire       [31:0]   _zz_4;
  wire                _zz_5;
  wire       [0:0]    _zz_6;
  wire       [20:0]   _zz_7;
  wire                _zz_8;
  wire       [0:0]    _zz_9;
  wire       [9:0]    _zz_10;
  wire                _zz_11;
  wire       [0:0]    _zz_12;
  wire       [20:0]   _zz_13;
  wire                _zz_14;
  wire       [0:0]    _zz_15;
  wire       [9:0]    _zz_16;
  reg        [31:0]   state_4;
  reg        [31:0]   state_3;
  reg        [31:0]   state_2;
  reg        [31:0]   state_1;
  reg        [31:0]   state;
  wire       [31:0]   stateXor;
  wire       [31:0]   accXor;

  assign _zz_1 = (state <<< 1);
  assign _zz_2 = (state_1 <<< 1);
  assign _zz_3 = (state_2 <<< 1);
  assign _zz_4 = (state_3 <<< 1);
  assign _zz_5 = stateXor[9];
  assign _zz_6 = stateXor[10];
  assign _zz_7 = {stateXor[11],{stateXor[12],{stateXor[13],{stateXor[14],{stateXor[15],{stateXor[16],{stateXor[17],{stateXor[18],{stateXor[19],{_zz_8,{_zz_9,_zz_10}}}}}}}}}}};
  assign _zz_8 = stateXor[20];
  assign _zz_9 = stateXor[21];
  assign _zz_10 = {stateXor[22],{stateXor[23],{stateXor[24],{stateXor[25],{stateXor[26],{stateXor[27],{stateXor[28],{stateXor[29],{stateXor[30],stateXor[31]}}}}}}}}};
  assign _zz_11 = accXor[9];
  assign _zz_12 = accXor[10];
  assign _zz_13 = {accXor[11],{accXor[12],{accXor[13],{accXor[14],{accXor[15],{accXor[16],{accXor[17],{accXor[18],{accXor[19],{_zz_14,{_zz_15,_zz_16}}}}}}}}}}};
  assign _zz_14 = accXor[20];
  assign _zz_15 = accXor[21];
  assign _zz_16 = {accXor[22],{accXor[23],{accXor[24],{accXor[25],{accXor[26],{accXor[27],{accXor[28],{accXor[29],{accXor[30],accXor[31]}}}}}}}}};
  always @ (*) begin
    state_4 = state_3;
    state_4 = (_zz_4 ^ ((io_input_payload[3] ^ state_3[31]) ? 32'h04c11db7 : 32'h0));
  end

  always @ (*) begin
    state_3 = state_2;
    state_3 = (_zz_3 ^ ((io_input_payload[2] ^ state_2[31]) ? 32'h04c11db7 : 32'h0));
  end

  always @ (*) begin
    state_2 = state_1;
    state_2 = (_zz_2 ^ ((io_input_payload[1] ^ state_1[31]) ? 32'h04c11db7 : 32'h0));
  end

  always @ (*) begin
    state_1 = state;
    state_1 = (_zz_1 ^ ((io_input_payload[0] ^ state[31]) ? 32'h04c11db7 : 32'h0));
  end

  assign stateXor = (state ^ 32'hffffffff);
  assign accXor = (state_4 ^ 32'hffffffff);
  assign io_result = {stateXor[0],{stateXor[1],{stateXor[2],{stateXor[3],{stateXor[4],{stateXor[5],{stateXor[6],{stateXor[7],{stateXor[8],{_zz_5,{_zz_6,_zz_7}}}}}}}}}}};
  assign io_resultNext = {accXor[0],{accXor[1],{accXor[2],{accXor[3],{accXor[4],{accXor[5],{accXor[6],{accXor[7],{accXor[8],{_zz_11,{_zz_12,_zz_13}}}}}}}}}}};
  always @ (posedge rxCd_clk or posedge rxReset) begin
    if (rxReset) begin
      state <= 32'hffffffff;
    end else begin
      if(io_input_valid)begin
        state <= state_4;
      end
      if(io_flush)begin
        state <= 32'hffffffff;
      end
    end
  end


endmodule

module BufferCC_3 (
  input      [7:0]    io_dataIn,
  output     [7:0]    io_dataOut,
  input               txCd_clk,
  input               txReset
);
  (* async_reg = "true" *) reg        [7:0]    buffers_0;
  (* async_reg = "true" *) reg        [7:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge txCd_clk or posedge txReset) begin
    if (txReset) begin
      buffers_0 <= 8'h0;
      buffers_1 <= 8'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_2 (
  input      [7:0]    io_dataIn,
  output     [7:0]    io_dataOut,
  input               clk,
  input               reset,
  input               io_ctrl_tx_flush
);
  (* async_reg = "true" *) reg        [7:0]    buffers_0;
  (* async_reg = "true" *) reg        [7:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      buffers_0 <= 8'h0;
      buffers_1 <= 8'h0;
    end else begin
      if(io_ctrl_tx_flush) begin
      buffers_0 <= 8'h0;
      buffers_1 <= 8'h0;
      end else begin
        buffers_0 <= io_dataIn;
        buffers_1 <= buffers_0;
      end
    end
  end


endmodule

//BufferCC replaced by BufferCC

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               clk,
  input               reset,
  input               io_ctrl_rx_flush
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      if(io_ctrl_rx_flush) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
      end else begin
        buffers_0 <= io_dataIn;
        buffers_1 <= buffers_0;
      end
    end
  end


endmodule
