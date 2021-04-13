// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : StreamFifo
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_flag,
  input      [7:0]    io_push_payload_data,
  input      [4:0]    io_push_payload_color_r,
  input      [5:0]    io_push_payload_color_g,
  input      [4:0]    io_push_payload_color_b,
  output              io_pop_valid,
  input               io_pop_ready,
  output              io_pop_payload_flag,
  output     [7:0]    io_pop_payload_data,
  output     [4:0]    io_pop_payload_color_r,
  output     [5:0]    io_pop_payload_color_g,
  output     [4:0]    io_pop_payload_color_b,
  input               io_flush,
  output     [5:0]    io_occupancy,
  output     [5:0]    io_availability,
  input               clk,
  input               reset
);
  reg        [24:0]   _zz_5;
  wire       [0:0]    _zz_6;
  wire       [4:0]    _zz_7;
  wire       [0:0]    _zz_8;
  wire       [4:0]    _zz_9;
  wire       [0:0]    _zz_10;
  wire       [4:0]    _zz_11;
  wire                _zz_12;
  wire       [24:0]   _zz_13;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [4:0]    logic_pushPtr_valueNext;
  reg        [4:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [4:0]    logic_popPtr_valueNext;
  reg        [4:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_2;
  wire       [24:0]   _zz_3;
  wire       [15:0]   _zz_4;
  wire       [4:0]    logic_ptrDif;
  reg [24:0] logic_ram [0:31];

  assign _zz_6 = logic_pushPtr_willIncrement;
  assign _zz_7 = {4'd0, _zz_6};
  assign _zz_8 = logic_popPtr_willIncrement;
  assign _zz_9 = {4'd0, _zz_8};
  assign _zz_10 = _zz_3[0 : 0];
  assign _zz_11 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_12 = 1'b1;
  assign _zz_13 = {{io_push_payload_color_b,{io_push_payload_color_g,io_push_payload_color_r}},{io_push_payload_data,io_push_payload_flag}};
  always @ (posedge clk) begin
    if(_zz_12) begin
      _zz_5 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= _zz_13;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(logic_pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing)begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 5'h1f);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @ (*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_7);
    if(logic_pushPtr_willClear)begin
      logic_pushPtr_valueNext = 5'h0;
    end
  end

  always @ (*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping)begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 5'h1f);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @ (*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_9);
    if(logic_popPtr_willClear)begin
      logic_popPtr_valueNext = 5'h0;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_2 && (! logic_full))));
  assign _zz_3 = _zz_5;
  assign _zz_4 = _zz_3[24 : 9];
  assign io_pop_payload_flag = _zz_10[0];
  assign io_pop_payload_data = _zz_3[8 : 1];
  assign io_pop_payload_color_r = _zz_4[4 : 0];
  assign io_pop_payload_color_g = _zz_4[10 : 5];
  assign io_pop_payload_color_b = _zz_4[15 : 11];
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_11};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      logic_pushPtr_value <= 5'h0;
      logic_popPtr_value <= 5'h0;
      logic_risingOccupancy <= 1'b0;
      _zz_2 <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_2 <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if((logic_pushing != logic_popping))begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush)begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule
