// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input               src,
  input               sel,
  output reg          dst,
  input               clk,
  input               reset
);
  wire                src_buffercc_io_dataOut;

  BufferCC src_buffercc (
    .io_dataIn     (src                      ), //i
    .io_dataOut    (src_buffercc_io_dataOut  ), //o
    .clk           (clk                      ), //i
    .reset         (reset                    )  //i
  );
  always @ (*) begin
    dst = 1'b0;
    if(sel)begin
      dst = src_buffercc_io_dataOut;
    end
  end


endmodule

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               clk,
  input               reset
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
