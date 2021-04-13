// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : StreamFifoLowLatency
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_flag,
  input      [7:0]    io_push_payload_data,
  input      [4:0]    io_push_payload_color_r,
  input      [5:0]    io_push_payload_color_g,
  input      [4:0]    io_push_payload_color_b,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg          io_pop_payload_flag,
  output reg [7:0]    io_pop_payload_data,
  output reg [4:0]    io_pop_payload_color_r,
  output reg [5:0]    io_pop_payload_color_g,
  output reg [4:0]    io_pop_payload_color_b,
  input               io_flush,
  output     [1:0]    io_occupancy,
  input               clk,
  input               reset
);
  wire       [24:0]   _zz_4;
  wire                _zz_5;
  wire       [0:0]    _zz_6;
  wire       [24:0]   _zz_7;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [0:0]    pushPtr_valueNext;
  reg        [0:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [0:0]    popPtr_valueNext;
  reg        [0:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [24:0]   _zz_2;
  wire       [15:0]   _zz_3;
  wire       [0:0]    ptrDif;
  (* ram_style = "distributed" *) reg [24:0] ram [0:1];

  assign _zz_5 = (! empty);
  assign _zz_6 = _zz_2[0 : 0];
  assign _zz_7 = {{io_push_payload_color_b,{io_push_payload_color_g,io_push_payload_color_r}},{io_push_payload_data,io_push_payload_flag}};
  assign _zz_4 = ram[popPtr_value];
  always @ (posedge clk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_7;
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

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 1'b1);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + pushPtr_willIncrement);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = 1'b0;
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

  assign popPtr_willOverflowIfInc = (popPtr_value == 1'b1);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + popPtr_willIncrement);
    if(popPtr_willClear)begin
      popPtr_valueNext = 1'b0;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  always @ (*) begin
    if(_zz_5)begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  assign _zz_2 = _zz_4;
  assign _zz_3 = _zz_2[24 : 9];
  always @ (*) begin
    if(_zz_5)begin
      io_pop_payload_flag = _zz_6[0];
    end else begin
      io_pop_payload_flag = io_push_payload_flag;
    end
  end

  always @ (*) begin
    if(_zz_5)begin
      io_pop_payload_data = _zz_2[8 : 1];
    end else begin
      io_pop_payload_data = io_push_payload_data;
    end
  end

  always @ (*) begin
    if(_zz_5)begin
      io_pop_payload_color_r = _zz_3[4 : 0];
    end else begin
      io_pop_payload_color_r = io_push_payload_color_r;
    end
  end

  always @ (*) begin
    if(_zz_5)begin
      io_pop_payload_color_g = _zz_3[10 : 5];
    end else begin
      io_pop_payload_color_g = io_push_payload_color_g;
    end
  end

  always @ (*) begin
    if(_zz_5)begin
      io_pop_payload_color_b = _zz_3[15 : 11];
    end else begin
      io_pop_payload_color_b = io_push_payload_color_b;
    end
  end

  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pushPtr_value <= 1'b0;
      popPtr_value <= 1'b0;
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
