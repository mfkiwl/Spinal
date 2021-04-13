// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : StreamFifoCC
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module StreamFifoCC (
  input               io_push_valid,
  output              io_push_ready,
  input      [31:0]   io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [31:0]   io_pop_payload,
  output     [5:0]    io_pushOccupancy,
  output     [5:0]    io_popOccupancy,
  input               clkA_clk,
  input               clkB_clk
);
  reg        [31:0]   _zz_13;
  wire       [5:0]    popToPushGray_buffercc_io_dataOut;
  wire       [5:0]    pushToPopGray_buffercc_io_dataOut;
  wire                _zz_14;
  wire       [5:0]    _zz_15;
  wire       [4:0]    _zz_16;
  wire       [5:0]    _zz_17;
  wire       [4:0]    _zz_18;
  wire                _zz_19;
  reg                 _zz_1;
  wire       [5:0]    popToPushGray;
  wire       [5:0]    pushToPopGray;
  reg        [5:0]    pushCC_pushPtr = 6'h0;
  wire       [5:0]    pushCC_pushPtrPlus;
  reg        [5:0]    pushCC_pushPtrGray = 6'h0;
  wire       [5:0]    pushCC_popPtrGray;
  wire                pushCC_full;
  wire                _zz_2;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  reg        [5:0]    popCC_popPtr = 6'h0;
  wire       [5:0]    popCC_popPtrPlus;
  reg        [5:0]    popCC_popPtrGray = 6'h0;
  wire       [5:0]    popCC_pushPtrGray;
  wire                popCC_empty;
  wire       [5:0]    _zz_7;
  wire                _zz_8;
  wire                _zz_9;
  wire                _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  reg [31:0] ram [0:31];

  assign _zz_14 = (io_push_valid && io_push_ready);
  assign _zz_15 = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_16 = pushCC_pushPtr[4:0];
  assign _zz_17 = (popCC_popPtrPlus >>> 1'b1);
  assign _zz_18 = _zz_7[4:0];
  assign _zz_19 = 1'b1;
  always @ (posedge clkA_clk) begin
    if(_zz_1) begin
      ram[_zz_16] <= io_push_payload;
    end
  end

  always @ (posedge clkB_clk) begin
    if(_zz_19) begin
      _zz_13 <= ram[_zz_18];
    end
  end

  BufferCC popToPushGray_buffercc (
    .io_dataIn     (popToPushGray[5:0]                      ), //i
    .io_dataOut    (popToPushGray_buffercc_io_dataOut[5:0]  ), //o
    .clkA_clk      (clkA_clk                                )  //i
  );
  BufferCC_1 pushToPopGray_buffercc (
    .io_dataIn     (pushToPopGray[5:0]                      ), //i
    .io_dataOut    (pushToPopGray_buffercc_io_dataOut[5:0]  ), //o
    .clkB_clk      (clkB_clk                                )  //i
  );
  always @ (*) begin
    _zz_1 = 1'b0;
    if(_zz_14)begin
      _zz_1 = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 6'h01);
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[5 : 4] == (~ pushCC_popPtrGray[5 : 4])) && (pushCC_pushPtrGray[3 : 0] == pushCC_popPtrGray[3 : 0]));
  assign io_push_ready = (! pushCC_full);
  assign _zz_2 = (pushCC_popPtrGray[1] ^ _zz_3);
  assign _zz_3 = (pushCC_popPtrGray[2] ^ _zz_4);
  assign _zz_4 = (pushCC_popPtrGray[3] ^ _zz_5);
  assign _zz_5 = (pushCC_popPtrGray[4] ^ _zz_6);
  assign _zz_6 = pushCC_popPtrGray[5];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_6,{_zz_5,{_zz_4,{_zz_3,{_zz_2,(pushCC_popPtrGray[0] ^ _zz_2)}}}}});
  assign popCC_popPtrPlus = (popCC_popPtr + 6'h01);
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign io_pop_valid = (! popCC_empty);
  assign _zz_7 = ((io_pop_valid && io_pop_ready) ? popCC_popPtrPlus : popCC_popPtr);
  assign io_pop_payload = _zz_13;
  assign _zz_8 = (popCC_pushPtrGray[1] ^ _zz_9);
  assign _zz_9 = (popCC_pushPtrGray[2] ^ _zz_10);
  assign _zz_10 = (popCC_pushPtrGray[3] ^ _zz_11);
  assign _zz_11 = (popCC_pushPtrGray[4] ^ _zz_12);
  assign _zz_12 = popCC_pushPtrGray[5];
  assign io_popOccupancy = ({_zz_12,{_zz_11,{_zz_10,{_zz_9,{_zz_8,(popCC_pushPtrGray[0] ^ _zz_8)}}}}} - popCC_popPtr);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_popPtrGray;
  always @ (posedge clkA_clk) begin
    if((io_push_valid && io_push_ready))begin
      pushCC_pushPtrGray <= (_zz_15 ^ pushCC_pushPtrPlus);
    end
    if(_zz_14)begin
      pushCC_pushPtr <= pushCC_pushPtrPlus;
    end
  end

  always @ (posedge clkB_clk) begin
    if((io_pop_valid && io_pop_ready))begin
      popCC_popPtrGray <= (_zz_17 ^ popCC_popPtrPlus);
    end
    if((io_pop_valid && io_pop_ready))begin
      popCC_popPtr <= popCC_popPtrPlus;
    end
  end


endmodule

module BufferCC_1 (
  input      [5:0]    io_dataIn,
  output     [5:0]    io_dataOut,
  input               clkB_clk
);
  (* async_reg = "true" *) reg        [5:0]    buffers_0 = 6'h0;
  (* async_reg = "true" *) reg        [5:0]    buffers_1 = 6'h0;

  assign io_dataOut = buffers_1;
  always @ (posedge clkB_clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module BufferCC (
  input      [5:0]    io_dataIn,
  output     [5:0]    io_dataOut,
  input               clkA_clk
);
  (* async_reg = "true" *) reg        [5:0]    buffers_0 = 6'h0;
  (* async_reg = "true" *) reg        [5:0]    buffers_1 = 6'h0;

  assign io_dataOut = buffers_1;
  always @ (posedge clkA_clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule
