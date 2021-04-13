// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [7:0]    readWrite_writeData,
  input               readWrite_enable,
  input               readWrite_write,
  output     [7:0]    readWrite_readData,
  input               readSyncPort_cmd_valid,
  output     [7:0]    readSyncPort_rsp,
  output     [7:0]    readAsyncPort_data,
  input               clk,
  input               reset
);
  wire       [7:0]    _zz_1;
  reg        [7:0]    _zz_2 = 8'b00000000;
  reg        [7:0]    _zz_3;
  reg        [7:0]    _zz_4;

  assign readWrite_readData = _zz_3;
  assign readSyncPort_rsp = _zz_4;
  assign readAsyncPort_data = _zz_1;
  assign _zz_1 = _zz_2;
  always @ (posedge clk) begin
    if(readWrite_enable)begin
      if(readWrite_write)begin
        _zz_2 <= readWrite_writeData;
      end else begin
        _zz_3 <= _zz_1;
      end
    end
    if(readSyncPort_cmd_valid)begin
      _zz_4 <= _zz_1;
    end
  end


endmodule
