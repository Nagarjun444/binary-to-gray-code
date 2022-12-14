// Binary to gray code

module B2G_design (
  input     wire[4:0] bin_i,
  output    wire[4:0] gray_o

);

  assign gray_o[4] = bin_i[4];

  genvar i;
  for (i=5-2; i>=0; i=i-1)
    assign gray_o[i] = bin_i[i+1] ^ bin_i[i];

endmodule
