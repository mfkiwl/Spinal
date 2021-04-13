// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : StreamFifo
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      [31:0]   io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [31:0]   io_pop_payload,
  input               io_flush,
  output     [0:0]    io_occupancy,
  output     [0:0]    io_availability,
  input               clk,
  input               reset
);
  wire                io_push_m2sPipe_valid;
  wire                io_push_m2sPipe_ready;
  wire       [31:0]   io_push_m2sPipe_payload;
  reg                 io_push_m2sPipe_rValid;
  reg        [31:0]   io_push_m2sPipe_rData;

  assign io_push_ready = ((1'b1 && (! io_push_m2sPipe_valid)) || io_push_m2sPipe_ready);
  assign io_push_m2sPipe_valid = io_push_m2sPipe_rValid;
  assign io_push_m2sPipe_payload = io_push_m2sPipe_rData;
  assign io_pop_valid = io_push_m2sPipe_valid;
  assign io_push_m2sPipe_ready = io_pop_ready;
  assign io_pop_payload = io_push_m2sPipe_payload;
  assign io_occupancy = io_pop_valid;
  assign io_availability = (! io_pop_valid);
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      io_push_m2sPipe_rValid <= 1'b0;
    end else begin
      if(io_push_ready)begin
        io_push_m2sPipe_rValid <= io_push_valid;
      end
      if(io_flush)begin
        io_push_m2sPipe_rValid <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(io_push_ready)begin
      io_push_m2sPipe_rData <= io_push_payload;
    end
  end


endmodule
