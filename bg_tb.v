module B2G_tb ();

  reg [4:0] bin_i;
  wire [4:0] gray_o;

  B2G_design  DUT (.*);
integer i;
  initial begin
    for ( i=0; i<2**5; i=i+1) 
	 begin
      bin_i = i;
      #5;
    end
	#1000;
    $finish();
  end

  

endmodule
