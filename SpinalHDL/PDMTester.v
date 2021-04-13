// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : PDMTester
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26

`timescale 1ns/1ps 

module PDMTester (
  input               io_enable,
  input      [8:0]    io_density,
  output              io_output,
  input               clk,
  input               reset
);
  wire                PDMC_io_output;

  PDMCore PDMC (
    .io_enable     (io_enable        ), //i
    .io_density    (io_density[8:0]  ), //i
    .io_output     (PDMC_io_output   ), //o
    .clk           (clk              ), //i
    .reset         (reset            )  //i
  );
  assign io_output = PDMC_io_output;

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, PDMTester);
  end

endmodule

module PDMCore (
  input               io_enable,
  input      [8:0]    io_density,
  output              io_output,
  input               clk,
  input               reset
);
  reg        [7:0]    counter;
  reg                 outReg;
  wire       [8:0]    _zz_1;

  assign _zz_1 = ({1'b0,counter} + io_density);
  assign io_output = outReg;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      outReg <= 1'b0;
    end else begin
      if(io_enable)begin
        outReg <= _zz_1[8];
      end else begin
        outReg <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(io_enable)begin
      counter <= _zz_1[7 : 0];
    end else begin
      counter <= 8'h0;
    end
  end


endmodule
