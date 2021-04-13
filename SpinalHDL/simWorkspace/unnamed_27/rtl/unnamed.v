// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input               readSyncPort_cmd_valid,
  output     [7:0]    readSyncPort_rsp,
  output     [7:0]    readAsyncPort_data,
  input               clk,
  input               reset
);
  reg        [7:0]    _zz_1;

  assign readSyncPort_rsp = _zz_1;
  assign readAsyncPort_data = 8'haa;
  always @ (posedge clk) begin
    if(readSyncPort_cmd_valid)begin
      _zz_1 <= 8'haa;
    end
  end


endmodule
