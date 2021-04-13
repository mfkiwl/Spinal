// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [7:0]    a,
  input               clk,
  input               reset
);

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
    end else begin
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((a != 8'h2a));
        `else
          if(!(a != 8'h2a)) begin
            $display("FAILURE ");
            $finish;
          end
        `endif
      `endif
    end
  end


endmodule
