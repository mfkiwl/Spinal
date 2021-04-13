// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : InternalClockTester
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module InternalClockTester (
  output     [7:0]    io_internalClkCounter,
  input               clk,
  input               reset
);
  wire                clockGenerator_1_internalClock;
  wire                clockGenerator_1_internalReset;
  wire       [7:0]    internClockDomain_counterComponent_io_counter;

  ClockGenerator clockGenerator_1 (
    .clk              (clk                             ), //i
    .reset            (reset                           ), //i
    .internalClock    (clockGenerator_1_internalClock  ), //o
    .internalReset    (clockGenerator_1_internalReset  )  //o
  );
  CounterComponent internClockDomain_counterComponent (
    .io_counter       (internClockDomain_counterComponent_io_counter[7:0]  ), //o
    .internalClock    (clockGenerator_1_internalClock                      ), //i
    .internalReset    (clockGenerator_1_internalReset                      )  //i
  );
  assign io_internalClkCounter = internClockDomain_counterComponent_io_counter;

endmodule

module CounterComponent (
  output     [7:0]    io_counter,
  input               internalClock,
  input               internalReset
);
  wire       [7:0]    sub_io_counter;

  CounterComponentSub sub (
    .io_counter       (sub_io_counter[7:0]  ), //o
    .internalClock    (internalClock        ), //i
    .internalReset    (internalReset        )  //i
  );
  assign io_counter = sub_io_counter;

endmodule

module ClockGenerator (
  input               clk,
  input               reset,
  output              internalClock,
  output              internalReset
);
  wire                sub_internalClock_1;
  wire                sub_internalReset_1;

  ClockGeneratorSub sub (
    .clk                (clk                  ), //i
    .reset              (reset                ), //i
    .internalClock_1    (sub_internalClock_1  ), //o
    .internalReset_1    (sub_internalReset_1  )  //o
  );
  assign internalClock = sub_internalClock_1;
  assign internalReset = sub_internalReset_1;

endmodule

module CounterComponentSub (
  output     [7:0]    io_counter,
  input               internalClock,
  input               internalReset
);
  wire       [0:0]    _zz_1;
  wire       [7:0]    _zz_2;
  reg                 counter_willIncrement;
  wire                counter_willClear;
  reg        [7:0]    counter_valueNext;
  reg        [7:0]    counter_value;
  wire                counter_willOverflowIfInc;
  wire                counter_willOverflow;
  function  zz_counter_willIncrement(input dummy);
    begin
      zz_counter_willIncrement = 1'b0;
      zz_counter_willIncrement = 1'b1;
    end
  endfunction
  wire  _zz_3;

  assign _zz_1 = counter_willIncrement;
  assign _zz_2 = {7'd0, _zz_1};
  assign _zz_3 = zz_counter_willIncrement(1'b0);
  always @ (*) counter_willIncrement = _zz_3;
  assign counter_willClear = 1'b0;
  assign counter_willOverflowIfInc = (counter_value == 8'hff);
  assign counter_willOverflow = (counter_willOverflowIfInc && counter_willIncrement);
  always @ (*) begin
    counter_valueNext = (counter_value + _zz_2);
    if(counter_willClear)begin
      counter_valueNext = 8'h0;
    end
  end

  assign io_counter = counter_value;
  always @ (posedge internalClock or posedge internalReset) begin
    if (internalReset) begin
      counter_value <= 8'h0;
    end else begin
      counter_value <= counter_valueNext;
    end
  end


endmodule

module ClockGeneratorSub (
  input               clk,
  input               reset,
  output              internalClock_1,
  output              internalReset_1
);
  wire                srcReset_buffercc_io_dataOut;
  wire       [0:0]    _zz_4;
  wire       [3:0]    _zz_5;
  wire                _zz_1;
  reg        [3:0]    _zz_2;
  reg        [3:0]    _zz_3;
  wire                internalClock;
  reg        [2:0]    initCounter;
  wire                srcReset;
  wire                internalReset;
  wire                resetBuffer_internalReset;

  assign _zz_4 = _zz_1;
  assign _zz_5 = {3'd0, _zz_4};
  BufferCC srcReset_buffercc (
    .io_dataIn        (srcReset                      ), //i
    .io_dataOut       (srcReset_buffercc_io_dataOut  ), //o
    .internalClock    (internalClock                 )  //i
  );
  always @ (*) begin
    _zz_2 = (_zz_3 + _zz_5);
    if(1'b0)begin
      _zz_2 = 4'b0000;
    end
  end

  assign _zz_1 = 1'b1;
  assign internalClock = _zz_3[0];
  assign srcReset = (initCounter != 3'b000);
  assign resetBuffer_internalReset = srcReset_buffercc_io_dataOut;
  assign internalReset = resetBuffer_internalReset;
  assign internalClock_1 = internalClock;
  assign internalReset_1 = internalReset;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_3 <= 4'b0000;
      initCounter <= 3'b111;
    end else begin
      _zz_3 <= _zz_2;
      if(srcReset)begin
        initCounter <= (initCounter - 3'b001);
      end
    end
  end


endmodule

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               internalClock
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge internalClock) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule
