// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [1:0]    input_1,
  output     [1:0]    output_1
);
  reg        [1:0]    _zz_1;
  wire       [1:0]    _zz_2;

  assign _zz_2 = {input_1[1],input_1[0]};
  always @(*) begin
    case(_zz_2)
      2'b00 : begin
        _zz_1 = 2'b00;
      end
      2'b01 : begin
        _zz_1 = 2'b01;
      end
      2'b10 : begin
        _zz_1 = 2'b01;
      end
      default : begin
        _zz_1 = 2'b10;
      end
    endcase
  end

  assign output_1 = _zz_1;

endmodule
