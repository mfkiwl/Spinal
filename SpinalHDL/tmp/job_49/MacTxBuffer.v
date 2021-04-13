// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : MacTxBuffer
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26


`define push_State_binary_sequential_type [0:0]
`define push_State_binary_sequential_LENGTH 1'b0
`define push_State_binary_sequential_DATA 1'b1

`define pop_State_binary_sequential_type [1:0]
`define pop_State_binary_sequential_LENGTH 2'b00
`define pop_State_binary_sequential_DATA 2'b01
`define pop_State_binary_sequential_WAIT_1 2'b10


module MacTxBuffer (
  input               io_push_stream_valid,
  output              io_push_stream_ready,
  input      [31:0]   io_push_stream_payload,
  output     [4:0]    io_push_availability,
  output reg          io_pop_stream_valid,
  input               io_pop_stream_ready,
  output reg          io_pop_stream_payload_last,
  output     [7:0]    io_pop_stream_payload_fragment_data,
  input               io_pop_redo,
  input               io_pop_commit,
  input               pushCd_clk,
  input               pushCd_reset,
  input               popCd_clk,
  input               popCd_reset
);
  reg                 _zz_1;
  reg        [7:0]    _zz_2;
  wire                fifo_io_push_stream_ready;
  wire       [4:0]    fifo_io_push_availability;
  wire                fifo_io_pop_stream_valid;
  wire       [31:0]   fifo_io_pop_stream_payload;
  wire                _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  wire       [8:0]    _zz_8;
  wire       [31:0]   _zz_9;
  wire       [31:0]   _zz_10;
  reg                 push_commit;
  reg        `push_State_binary_sequential_type push_state_1;
  reg        [8:0]    push_length;
  wire       [3:0]    push_wordCountMinusOne;
  reg        [3:0]    push_wordCounter;
  reg        `pop_State_binary_sequential_type pop_state_1;
  reg        [8:0]    pop_length;
  wire       [8:0]    pop_lengthMinusOne;
  reg        [3:0]    pop_wordCounter;
  wire       [3:0]    pop_wordCountEndAt;
  wire       [1:0]    pop_spliterEndAt;
  reg        [1:0]    pop_spliter;
  `ifndef SYNTHESIS
  reg [47:0] push_state_1_string;
  reg [47:0] pop_state_1_string;
  `endif


  assign _zz_3 = ((pop_wordCounter == pop_wordCountEndAt) && (pop_spliter == pop_spliterEndAt));
  assign _zz_4 = (pop_spliter == 2'b11);
  assign _zz_5 = (io_push_stream_valid && fifo_io_push_stream_ready);
  assign _zz_6 = (io_push_stream_valid && io_push_stream_ready);
  assign _zz_7 = (push_wordCounter == push_wordCountMinusOne);
  assign _zz_8 = (push_length - 9'h001);
  assign _zz_9 = io_push_stream_payload;
  assign _zz_10 = fifo_io_pop_stream_payload;
  MacTxManagedStreamFifoCc fifo (
    .io_push_stream_valid      (io_push_stream_valid              ), //i
    .io_push_stream_ready      (fifo_io_push_stream_ready         ), //o
    .io_push_stream_payload    (io_push_stream_payload[31:0]      ), //i
    .io_push_commit            (push_commit                       ), //i
    .io_push_availability      (fifo_io_push_availability[4:0]    ), //o
    .io_pop_stream_valid       (fifo_io_pop_stream_valid          ), //o
    .io_pop_stream_ready       (_zz_1                             ), //i
    .io_pop_stream_payload     (fifo_io_pop_stream_payload[31:0]  ), //o
    .io_pop_redo               (io_pop_redo                       ), //i
    .io_pop_commit             (io_pop_commit                     ), //i
    .pushCd_clk                (pushCd_clk                        ), //i
    .pushCd_reset              (pushCd_reset                      ), //i
    .popCd_clk                 (popCd_clk                         ), //i
    .popCd_reset               (popCd_reset                       )  //i
  );
  always @(*) begin
    case(pop_spliter)
      2'b00 : begin
        _zz_2 = fifo_io_pop_stream_payload[7 : 0];
      end
      2'b01 : begin
        _zz_2 = fifo_io_pop_stream_payload[15 : 8];
      end
      2'b10 : begin
        _zz_2 = fifo_io_pop_stream_payload[23 : 16];
      end
      default : begin
        _zz_2 = fifo_io_pop_stream_payload[31 : 24];
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
  assign pop_lengthMinusOne = (pop_length - 9'h001);
  assign pop_wordCountEndAt = (pop_lengthMinusOne >>> 5);
  assign pop_spliterEndAt = pop_lengthMinusOne[4 : 3];
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
  always @ (posedge pushCd_clk) begin
    push_commit <= 1'b0;
    case(push_state_1)
      `push_State_binary_sequential_LENGTH : begin
        push_wordCounter <= 4'b0000;
        if(_zz_5)begin
          push_length <= _zz_9[8:0];
        end
      end
      default : begin
        if(_zz_6)begin
          push_wordCounter <= (push_wordCounter + 4'b0001);
          if(_zz_7)begin
            push_commit <= 1'b1;
          end
        end
      end
    endcase
  end

  always @ (posedge pushCd_clk or posedge pushCd_reset) begin
    if (pushCd_reset) begin
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

  always @ (posedge popCd_clk or posedge popCd_reset) begin
    if (popCd_reset) begin
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

  always @ (posedge popCd_clk) begin
    case(pop_state_1)
      `pop_State_binary_sequential_LENGTH : begin
        pop_wordCounter <= 4'b0000;
        pop_spliter <= 2'b00;
        if(fifo_io_pop_stream_valid)begin
          pop_length <= _zz_10[8:0];
        end
      end
      `pop_State_binary_sequential_DATA : begin
        if(io_pop_stream_ready)begin
          pop_spliter <= (pop_spliter + 2'b01);
          if(_zz_4)begin
            pop_wordCounter <= (pop_wordCounter + 4'b0001);
          end
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module MacTxManagedStreamFifoCc (
  input               io_push_stream_valid,
  output              io_push_stream_ready,
  input      [31:0]   io_push_stream_payload,
  input               io_push_commit,
  output     [4:0]    io_push_availability,
  output              io_pop_stream_valid,
  input               io_pop_stream_ready,
  output     [31:0]   io_pop_stream_payload,
  input               io_pop_redo,
  input               io_pop_commit,
  input               pushCd_clk,
  input               pushCd_reset,
  input               popCd_clk,
  input               popCd_reset
);
  reg        [31:0]   _zz_12;
  wire       [4:0]    popToPushGray_buffercc_io_dataOut;
  wire       [4:0]    pushToPopGray_buffercc_io_dataOut;
  wire                _zz_13;
  wire       [4:0]    _zz_14;
  wire       [4:0]    _zz_15;
  wire       [3:0]    _zz_16;
  wire       [4:0]    _zz_17;
  wire       [4:0]    _zz_18;
  wire       [4:0]    _zz_19;
  reg                 _zz_1;
  wire       [4:0]    popToPushGray;
  wire       [4:0]    pushToPopGray;
  reg        [4:0]    push_currentPtr;
  reg        [4:0]    push_oldPtr;
  wire       [4:0]    push_popPtrGray;
  reg        [4:0]    _zz_2;
  wire       [4:0]    _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  wire                _zz_6;
  wire                _zz_7;
  reg        [4:0]    pop_currentPtr;
  reg        [4:0]    pop_oldPtr;
  wire       [4:0]    pop_pushPtrGray;
  wire       [4:0]    pop_popPtrGray;
  reg        [4:0]    pop_popPtrGray_regNext;
  wire                pop_cmd_valid;
  wire                pop_cmd_ready;
  wire       [3:0]    pop_cmd_payload;
  reg        [4:0]    pop_commitPtr;
  wire                _zz_8;
  reg                 _zz_9;
  reg                 _zz_10;
  reg                 _zz_11;
  reg [31:0] ram [0:15];

  assign _zz_13 = (io_push_stream_valid && io_push_stream_ready);
  assign _zz_14 = (push_oldPtr >>> 1'b1);
  assign _zz_15 = (push_currentPtr >>> 1'b1);
  assign _zz_16 = push_currentPtr[3:0];
  assign _zz_17 = (push_currentPtr - {_zz_7,{_zz_6,{_zz_5,{_zz_4,(push_popPtrGray[0] ^ _zz_4)}}}});
  assign _zz_18 = (pop_oldPtr >>> 1'b1);
  assign _zz_19 = (pop_currentPtr >>> 1'b1);
  always @ (posedge pushCd_clk) begin
    if(_zz_1) begin
      ram[_zz_16] <= io_push_stream_payload;
    end
  end

  always @ (posedge popCd_clk) begin
    if(pop_cmd_ready) begin
      _zz_12 <= ram[pop_cmd_payload];
    end
  end

  BufferCC popToPushGray_buffercc (
    .io_dataIn       (popToPushGray[4:0]                      ), //i
    .io_dataOut      (popToPushGray_buffercc_io_dataOut[4:0]  ), //o
    .pushCd_clk      (pushCd_clk                              ), //i
    .pushCd_reset    (pushCd_reset                            )  //i
  );
  BufferCC_1 pushToPopGray_buffercc (
    .io_dataIn      (pushToPopGray[4:0]                      ), //i
    .io_dataOut     (pushToPopGray_buffercc_io_dataOut[4:0]  ), //o
    .popCd_clk      (popCd_clk                               ), //i
    .popCd_reset    (popCd_reset                             )  //i
  );
  always @ (*) begin
    _zz_1 = 1'b0;
    if(_zz_13)begin
      _zz_1 = 1'b1;
    end
  end

  assign push_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushToPopGray = _zz_2;
  assign _zz_3 = (_zz_15 ^ push_currentPtr);
  assign io_push_stream_ready = (! ((_zz_3[4 : 3] == (~ push_popPtrGray[4 : 3])) && (_zz_3[2 : 0] == push_popPtrGray[2 : 0])));
  assign _zz_4 = (push_popPtrGray[1] ^ _zz_5);
  assign _zz_5 = (push_popPtrGray[2] ^ _zz_6);
  assign _zz_6 = (push_popPtrGray[3] ^ _zz_7);
  assign _zz_7 = push_popPtrGray[4];
  assign io_push_availability = (5'h10 - _zz_17);
  assign pop_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign pop_popPtrGray = (_zz_18 ^ pop_oldPtr);
  assign popToPushGray = pop_popPtrGray_regNext;
  assign pop_cmd_valid = ((! ((_zz_19 ^ pop_currentPtr) == pop_pushPtrGray)) && (! io_pop_redo));
  assign pop_cmd_payload = pop_currentPtr[3:0];
  assign pop_cmd_ready = ((! _zz_8) || _zz_9);
  assign _zz_8 = _zz_10;
  always @ (*) begin
    _zz_11 = _zz_8;
    if(io_pop_redo)begin
      _zz_11 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_9 = io_pop_stream_ready;
    if(io_pop_redo)begin
      _zz_9 = 1'b1;
    end
  end

  assign io_pop_stream_valid = _zz_11;
  assign io_pop_stream_payload = _zz_12;
  always @ (posedge pushCd_clk or posedge pushCd_reset) begin
    if (pushCd_reset) begin
      push_currentPtr <= 5'h0;
      push_oldPtr <= 5'h0;
      _zz_2 <= 5'h0;
    end else begin
      _zz_2 <= (_zz_14 ^ push_oldPtr);
      if(_zz_13)begin
        push_currentPtr <= (push_currentPtr + 5'h01);
      end
      if(io_push_commit)begin
        push_oldPtr <= push_currentPtr;
      end
    end
  end

  always @ (posedge popCd_clk or posedge popCd_reset) begin
    if (popCd_reset) begin
      pop_currentPtr <= 5'h0;
      pop_oldPtr <= 5'h0;
      pop_popPtrGray_regNext <= 5'h0;
      _zz_10 <= 1'b0;
    end else begin
      pop_popPtrGray_regNext <= pop_popPtrGray;
      if(_zz_9)begin
        _zz_10 <= 1'b0;
      end
      if(pop_cmd_ready)begin
        _zz_10 <= pop_cmd_valid;
      end
      if((pop_cmd_valid && pop_cmd_ready))begin
        pop_currentPtr <= (pop_currentPtr + 5'h01);
      end
      if(io_pop_redo)begin
        pop_currentPtr <= pop_oldPtr;
      end
      if(io_pop_commit)begin
        pop_oldPtr <= pop_commitPtr;
      end
    end
  end

  always @ (posedge popCd_clk) begin
    if((io_pop_stream_valid && io_pop_stream_ready))begin
      pop_commitPtr <= pop_currentPtr;
    end
  end


endmodule

module BufferCC_1 (
  input      [4:0]    io_dataIn,
  output     [4:0]    io_dataOut,
  input               popCd_clk,
  input               popCd_reset
);
  (* async_reg = "true" *) reg        [4:0]    buffers_0;
  (* async_reg = "true" *) reg        [4:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge popCd_clk or posedge popCd_reset) begin
    if (popCd_reset) begin
      buffers_0 <= 5'h0;
      buffers_1 <= 5'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC (
  input      [4:0]    io_dataIn,
  output     [4:0]    io_dataOut,
  input               pushCd_clk,
  input               pushCd_reset
);
  (* async_reg = "true" *) reg        [4:0]    buffers_0;
  (* async_reg = "true" *) reg        [4:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge pushCd_clk or posedge pushCd_reset) begin
    if (pushCd_reset) begin
      buffers_0 <= 5'h0;
      buffers_1 <= 5'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
