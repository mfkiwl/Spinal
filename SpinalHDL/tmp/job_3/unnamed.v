// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : unnamed
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module unnamed (
  input      [0:0]    input_1,
  output     [0:0]    output_1
);
  reg        [0:0]    _zz_1;
  wire       [0:0]    _zz_2;

  assign _zz_2 = input_1[0];
  always @(*) begin
    case(_zz_2)
      1'b0 : begin
        _zz_1 = 1'b0;
      end
      default : begin
        _zz_1 = 1'b1;
      end
    endcase
  end

  assign output_1 = _zz_1;

endmodule
