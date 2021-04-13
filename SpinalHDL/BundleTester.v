// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : BundleTester
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module BundleTester (
  input               io_conds_0,
  input               io_conds_1,
  input               io_conds_2,
  input               io_conds_3,
  input               io_conds_4,
  input               io_conds_5,
  input               io_conds_6,
  input               io_conds_7,
  input               io_inAA_0_a,
  input               io_inAA_0_c,
  input               io_inAA_0_b,
  input               io_inAA_0_d,
  input               io_inAA_1_a,
  input               io_inAA_1_c,
  input               io_inAA_1_b,
  input               io_inAA_1_d,
  input               io_inAA_2_a,
  input               io_inAA_2_c,
  input               io_inAA_2_b,
  input               io_inAA_2_d,
  input               io_inA_0_a,
  input               io_inA_0_c,
  output reg          io_outAA_a,
  output reg          io_outAA_c,
  output reg          io_outAA_b,
  output reg          io_outAA_d
);
  wire                zero_a;
  wire                zero_c;
  wire                zero_b;
  wire                zero_d;

  assign zero_a = 1'b0;
  assign zero_c = 1'b0;
  assign zero_b = 1'b0;
  assign zero_d = 1'b0;
  always @ (*) begin
    if(io_conds_0)begin
      io_outAA_a = io_inAA_0_a;
      io_outAA_a = io_inA_0_a;
    end else begin
      io_outAA_a = zero_a;
    end
    if(io_conds_1)begin
      io_outAA_a = io_inAA_1_a;
    end
  end

  always @ (*) begin
    if(io_conds_0)begin
      io_outAA_c = io_inAA_0_c;
      io_outAA_c = io_inA_0_c;
    end else begin
      io_outAA_c = zero_c;
    end
    if(io_conds_1)begin
      io_outAA_c = io_inAA_1_c;
    end
  end

  always @ (*) begin
    if(io_conds_0)begin
      io_outAA_b = io_inAA_0_b;
    end else begin
      io_outAA_b = zero_b;
    end
    if(io_conds_1)begin
      io_outAA_b = io_inAA_1_b;
    end
  end

  always @ (*) begin
    if(io_conds_0)begin
      io_outAA_d = io_inAA_0_d;
    end else begin
      io_outAA_d = zero_d;
    end
    if(io_conds_1)begin
      io_outAA_d = io_inAA_1_d;
    end
  end


endmodule
