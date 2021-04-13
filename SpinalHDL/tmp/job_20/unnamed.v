// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input               writePort_valid,
  input      [7:0]    writePort_payload_data,
  input               readSyncPort_cmd_valid,
  output     [7:0]    readSyncPort_rsp,
  output     [7:0]    readAsyncPort_data,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  wire       [7:0]    _zz_2;
  reg        [7:0]    _zz_3 = 8'b00000000;
  reg        [7:0]    _zz_4;

  always @ (*) begin
    _zz_1 = 1'b0;
    if(writePort_valid)begin
      _zz_1 = 1'b1;
    end
  end

  assign readSyncPort_rsp = _zz_4;
  assign readAsyncPort_data = _zz_2;
  assign _zz_2 = _zz_3;
  always @ (posedge clk) begin
    if(_zz_1)begin
      _zz_3 <= writePort_payload_data;
    end
    if(readSyncPort_cmd_valid)begin
      _zz_4 <= _zz_2;
    end
  end


endmodule
